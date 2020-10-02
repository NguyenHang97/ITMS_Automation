Given('the basket has {int} cucumbers') do |int|
    @so_a = int
end
    
When('{int} cucumbers are added to the basket') do |int|
    @so_b = int
end    
    
Then('the basket contains {int} cucumbers') do |int|
    so_c = @so_a + @so_b
    expect(int).to eql(so_c)
    
end    
