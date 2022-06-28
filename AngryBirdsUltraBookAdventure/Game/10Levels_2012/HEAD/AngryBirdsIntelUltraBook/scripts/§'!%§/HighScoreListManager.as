package §'!%§
{
   public class HighScoreListManager
   {
       
      
      protected var §1N§:CachedFacebookFriends;
      
      protected var §8m§:Object;
      
      protected var §6![§:String;
      
      protected var §^Q§:String;
      
      protected var §!! §:String;
      
      public function HighScoreListManager(serverRoot:String, userId:String, userName:String)
      {
         this.§8m§ = {};
         super();
         this.§!! § = userName;
         this.§^Q§ = userId;
         this.§6![§ = serverRoot;
      }
      
      public function §1!_§() : CachedFacebookFriends
      {
         if(!this.§1N§)
         {
            this.§1N§ = new CachedFacebookFriends(this.§^Q§,this.§!! §,this.§6![§ + "/fb/friends",true);
         }
         return this.§1N§;
      }
      
      public function §]k§(dataObject:Object) : void
      {
         this.§1N§ = new CachedFacebookFriends(this.§^Q§,this.§!! §,this.§6![§ + "/fb/friends",true,dataObject);
      }
      
      public function §-!O§(episode:String, levelId:String, tournamentScores:Boolean = false) : CachedFacebookFriends
      {
         if(this.§8m§[levelId])
         {
            return this.§8m§[levelId];
         }
         return this.§8m§[levelId] = new CachedFacebookFriends(this.§^Q§,this.§!! §,this.§6![§ + "/getlevelscores/" + episode + "/" + levelId + "/" + tournamentScores.toString(),false);
      }
      
      public function §-l§(levels:Array) : void
      {
         var levelId:String = null;
         for each(levelId in levels)
         {
            if(this.§8m§[levelId])
            {
               this.§8m§[levelId] = null;
            }
         }
      }
      
      public function §3!X§(levelId:String) : CachedFacebookFriends
      {
         return this.§8m§[levelId];
      }
      
      public function get §>R§() : int
      {
         if(this.§1N§ == null)
         {
            return -1;
         }
         return this.§1N§.§>R§;
      }
   }
}
