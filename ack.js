// Written
var main, ack;

ack = function(m, n) {
    if ( m === 0 ) return n + 1;
    else if ( n === 0 ) return ack(m - 1, 1);
    else return ack(m - 1, ack(m, n - 1));
};

main = function() {
    for (var i = 0; i < 5; i++) {
        for (var j=0; j < 5; j++) {
            if (i === 4 && j === 1) break; // Node stack limit
            var answer = ack(i, j);
            var sentence = "The ack of " + i + " and " + j + " is " + answer;
            console.log(sentence);
        }
    }
}

main()