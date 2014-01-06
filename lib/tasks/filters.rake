desc "Remove filters older than a month"
task :remove_old_filters => :environment do
	Filter.delete_all ["created_at < ?" , 1.day.ago]
end