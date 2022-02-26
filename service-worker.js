chrome.browserAction.onClicked(() => {
  chrome.windows.getCurrent().open("https://twitter.com", "_blank");
});
