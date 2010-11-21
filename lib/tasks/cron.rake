desc "Clear the outings daily"
task :cron => :environment do

  @all = Outing.all

  @all.each do |outing|
    outing.destroy
  end

end
