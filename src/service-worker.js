browser.browserAction.onClicked.addListener(async () => {
  const [tab] = await browser.tabs.query({
    active: true,
    currentWindow: true,
  });

  if (!tab) {
    return;
  }

  browser.tabs.create({
    active: true,
    url: "https://twitter.com/intent/tweet?url=" + tab.url,
  });
});
