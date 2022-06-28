package §9R§
{
   public class HighScoreListManager
   {
       
      
      protected var §-3§:CachedFacebookFriends;
      
      protected var §]0§:Object;
      
      protected var §9<§:String;
      
      protected var §^+§:String;
      
      protected var §2'§:String;
      
      public function HighScoreListManager(serverRoot:String, userId:String, userName:String)
      {
         this.§]0§ = {};
         super();
         this.§2'§ = userName;
         this.§^+§ = userId;
         this.§9<§ = serverRoot;
      }
      
      public function §-!V§() : CachedFacebookFriends
      {
         if(!this.§-3§)
         {
            this.§-3§ = new CachedFacebookFriends(this.§^+§,this.§2'§,this.§9<§ + "/fb/friends",true);
         }
         return this.§-3§;
      }
      
      public function §2!$§(dataObject:Object) : void
      {
         this.§-3§ = new CachedFacebookFriends(this.§^+§,this.§2'§,this.§9<§ + "/fb/friends",true,dataObject);
      }
      
      public function §>3§(episode:String, levelId:String, tournamentScores:Boolean = false) : CachedFacebookFriends
      {
         if(this.§]0§[levelId])
         {
            return this.§]0§[levelId];
         }
         return this.§]0§[levelId] = new CachedFacebookFriends(this.§^+§,this.§2'§,this.§9<§ + "/getlevelscores/" + episode + "/" + levelId + "/" + tournamentScores.toString(),false);
      }
      
      public function §7$§(levels:Array) : void
      {
         var levelId:String = null;
         for each(levelId in levels)
         {
            if(this.§]0§[levelId])
            {
               this.§]0§[levelId] = null;
            }
         }
      }
      
      public function §>!`§(levelId:String) : CachedFacebookFriends
      {
         return this.§]0§[levelId];
      }
      
      public function get §"!J§() : int
      {
         if(this.§-3§ == null)
         {
            return -1;
         }
         return this.§-3§.§"!J§;
      }
   }
}
