resource "aws_route_table_association" "mainsubnetassociation" {
  subnet_id      = aws_subnet.asicsindawssubnet01.id
  route_table_id = aws_route_table.asicsindawsrt01.id
}

resource "aws_route_table_association" "restored" {
  subnet_id = aws_subnet.restoredsubnet.id
  route_table_id = aws_route_table.restorert.id

}