'use strict';

var $$Array = require("bs-platform/lib/js/array.js");
var Block = require("bs-platform/lib/js/block.js");
var Curry = require("bs-platform/lib/js/curry.js");
var React = require("react");

function Fold(Item) {
  var fold = function (_as) {
    return $$Array.fold_left(Item.$less$neg$great, Item.empty, _as);
  };
  return {
          fold: fold
        };
}

function BlinkingGreeting(Props) {
  var children = Props.children;
  var match = React.useState((function () {
          return true;
        }));
  var setShow = match[1];
  React.useEffect((function () {
          var id = setInterval((function (param) {
                  return Curry._1(setShow, (function (previousShow) {
                                return !previousShow;
                              }));
                }), 1000);
          return (function (param) {
                    clearInterval(id);
                    return /* () */0;
                  });
        }), ([]));
  var style = match[0] ? ({
        opacity: "1",
        transition: "opacity 1s"
      }) : ({
        opacity: "0",
        transition: "opacity 1s"
      });
  return React.createElement("div", {
              style: style
            }, children);
}

var $$this = /* This */Block.__(0, ["dog"]);

var make = BlinkingGreeting;

exports.$$this = $$this;
exports.Fold = Fold;
exports.make = make;
/* react Not a pure module */
