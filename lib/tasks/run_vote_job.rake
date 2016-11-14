desc "Get out the vote"
task :run_vote_job => :environment do
  puts "Starting the job"
  10.times do
    Jobs::VoteJob.perform
  end
  puts "success."
end
