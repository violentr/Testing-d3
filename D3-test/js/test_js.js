 var g = svg.selectAll("g")
    .data(partition.nodes(root))
    .enter().append("g");

var path = g.append("path")
  .attr("d", arc)
  .style("fill", function(d) { return color((d.children ? d : d.parent).name); })
  .on("click", click);
  
  
  var text = g.append("text")
  .attr("x", function(d) { return y(d.y); })
  .attr("dx", "6") // margin
  .attr("dy", ".35em") // vertical-align
  .text(function(d) { return d.name; });
  
  function computeTextRotation(d) {
  var angle = x(d.x + d.dx / 2) - Math.PI / 2;
  return angle / Math.PI * 180;
}

text.attr("transform", function(d) { return "rotate(" + computeTextRotation(d) + ")"; });

function click(d) {
  // fade out all text elements
  text.transition().attr("opacity", 0);

  path.transition()
    .duration(750)
    .attrTween("d", arcTween(d))
    .each("end", function(e, i) {
        // check if the animated element's data e lies within the visible angle span given in d
        if (e.x >= d.x && e.x < (d.x + d.dx)) {
          // get a selection of the associated text element
          var arcText = d3.select(this.parentNode).select("text");
          // fade in the text element and recalculate positions
          arcText.transition().duration(750)
            .attr("opacity", 1)
            .attr("transform", function() { return "rotate(" + computeTextRotation(e) + ")" })
            .attr("x", function(d) { return y(d.y); });
        }
    });
}