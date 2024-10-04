document.addEventListener('DOMContentLoaded', function() {
  const showFilteredCommentsButton = document.getElementById('show-comments-filtered');
  const showFilteredPointsButton = document.getElementById('show-points-filtered');
  const showAllButton = document.getElementById('show-all');
  const commentsTable = document.getElementById('comments-table');
  const titleComments = document.getElementById('title-comments');
  const pointsTable = document.getElementById('points-table');
  const titlePoints = document.getElementById('title-points');
  const entriesTable = document.getElementById('entries-table');
  const titleEntries = document.getElementById('title-entries');
  commentsTable.style.display = 'none';
  pointsTable.style.display = 'none';

  function toggleTables({showEntries, showComments, showPoints}) {
    entriesTable.style.display = showEntries ? 'block' : 'none';
    titleEntries.style.display = showEntries ? 'block' : 'none';
    commentsTable.style.display = showComments ? 'block' : 'none';
    titleComments.style.display = showComments ? 'block' : 'none';
    pointsTable.style.display = showPoints ? 'block' : 'none';
    titlePoints.style.display = showPoints ? 'block' : 'none';
  }

  function toggleButtons({showAll, showCommentsFilter, showPointsFilter}) {
    showAllButton.style.display = showAll ? 'block' : 'none';
    showFilteredCommentsButton.style.display = showCommentsFilter ? 'block' : 'none';
    showFilteredPointsButton.style.display = showPointsFilter ? 'block' : 'none';
  }

  showFilteredCommentsButton.addEventListener('click', function() {
    toggleTables({showEntries: false, showComments: true, showPoints: false});
    toggleButtons({showAll: true, showCommentsFilter: false, showPointsFilter: true});
  });

  showFilteredPointsButton.addEventListener('click', function() {
    toggleTables({showEntries: false, showComments: false, showPoints: true});
    toggleButtons({showAll: true, showCommentsFilter: true, showPointsFilter: false});
  });

  showAllButton.addEventListener('click', function() {
    toggleTables({showEntries: true, showComments: false, showPoints: false});
    toggleButtons({showAll: false, showCommentsFilter: true, showPointsFilter: true});
  });
});
