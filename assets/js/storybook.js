// If your components require any hooks or custom uploaders, or if your pages
// require connect parameters, uncomment the following lines and declare them as
// such:
//
import * as Hooks from "./hooks";
// import * as Params from "./params";
// import * as Uploaders from "./uploaders";

(function () {
  window.storybook = { Hooks };
})();

// If your components require alpinejs, you'll need to start
// alpine after the DOM is loaded and pass in an onBeforeElUpdated
//
// import Alpine from 'alpinejs'
// window.Alpine = Alpine
// document.addEventListener('DOMContentLoaded', () => {
//   window.Alpine.start();
// });

// (function () {
//   window.storybook = {
//     LiveSocketOptions: {
//       dom: {
//         onBeforeElUpdated(from, to) {
//           if (from._x_dataStack) {
//             window.Alpine.clone(from, to)
//           }
//         }
//       }
//     }
//   };
// })();

window.addEventListener("phx:js-exec", ({ detail }) => {
  document.querySelectorAll(detail.to).forEach((el) => {
    liveSocket.execJS(el, el.getAttribute(detail.attr));
  });
});


const targetNode = document.documentElement; 

// Set initial theme
targetNode.classList.add("light-theme");

const observer = new MutationObserver((mutationsList) => {
  mutationsList.forEach((mutation) => {
    if (mutation.attributeName === "class") {
      if (mutation.target.classList.contains("psb-dark")) {

        observer.disconnect();

        targetNode.classList.remove("light-theme");
        targetNode.classList.add("dark-theme");

        observer.observe(targetNode, { attributes: true });
      } else {
        observer.disconnect();

        targetNode.classList.remove("dark-theme");
        targetNode.classList.add("light-theme");

        observer.observe(targetNode, { attributes: true });

      }
    }
  });
});

// Start observing
observer.observe(targetNode, { attributes: true });
