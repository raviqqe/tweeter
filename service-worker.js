chrome.action.onClicked(() => {
  chrome.windows.getCurrent().open("https://twitter.com", "_blank");
});
