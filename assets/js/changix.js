export default function changix() {

  const changelogSidebar = document.getElementsByClassName("changelog-sidebar")[0];
  const changelogSidebarCloseBtn = changelogSidebar.getElementsByClassName("close-btn")[0];
  const changelogBadgeContainer = document.getElementsByClassName("changelog-badge-container")[0];
  const changelogBadge = changelogBadgeContainer.getElementsByClassName("changelog-badge")[0];

  changelogBadgeContainer.addEventListener("click", () => {
    changelogSidebar.classList.toggle("open");
    changelogBadge.classList.remove("unread");
  })

  changelogSidebarCloseBtn.addEventListener("click", () => {
    changelogSidebar.classList.remove("open");
  })

}