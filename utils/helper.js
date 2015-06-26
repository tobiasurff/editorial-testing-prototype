module.exports = {
  getMonthAbbr: function(intMonth){
    var months = new Array(12);
    months[0] = 'Jan';
    months[1] = 'Feb';
    months[2] = 'Mar';
    months[3] = 'Apr';
    months[4] = 'May';
    months[5] = 'Jun';
    months[6] = 'July';
    months[7] = 'Aug';
    months[8] = 'Sept';
    months[9] = 'Oct';
    months[10] = 'Nov';
    months[11] = 'Dec';
    return months[intMonth];
  }
}