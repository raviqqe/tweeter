browser.browserAction.onClicked(() => {
  browser.windows.getCurrent().open("https://twitter.com", "_blank");
});
