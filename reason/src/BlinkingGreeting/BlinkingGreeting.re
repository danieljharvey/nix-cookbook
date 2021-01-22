type these('a, 'b) =
    | This('a)
    | That('b)
    | These('a, 'b);

let this = This("dog");

module type Semigroup = {
  type t;
  /* We don't use <> in the ML langs because <> is traditionally "is not equal" */
  let (<->): (t, t) => t;
};

module type Monoid = {
  include Semigroup;
  let empty: t;
};

module Fold = (Item: Monoid) => {
  type backingType = array(Item.t);
  let fold = (_as: backingType) : Item.t 
      => Array.fold_left(Item.(<->), Item.empty, _as);
};


[@react.component]
let make = (~children) => {
  let (show, setShow) = React.useState(() => true);

    // Notice that instead of `useEffect`, we have `useEffect0`. See
  // reasonml.github.io/reason-react/docs/en/components#hooks for more info
  React.useEffect0(() => {
    let id =
      Js.Global.setInterval(
        () => setShow(previousShow => !previousShow),
        1000,
      );

    Some(() => Js.Global.clearInterval(id));
  });
  
  let style =
    if (show) {
      ReactDOMRe.Style.make(~opacity="1", ~transition="opacity 1s", ());
    } else {
      ReactDOMRe.Style.make(~opacity="0", ~transition="opacity 1s", ());
    };

  <div style> children </div>;
};
