package §#_§
{
   public class HighScoreListManager
   {
       
      
      protected var §-^§:CachedFacebookFriends;
      
      protected var §#t§:Object;
      
      protected var § l§:String;
      
      protected var §`I§:String;
      
      protected var §3=§:String;
      
      public function HighScoreListManager(serverRoot:String, userId:String, userName:String)
      {
         this.§#t§ = {};
         super();
         this.§3=§ = userName;
         this.§`I§ = userId;
         this.§ l§ = serverRoot;
      }
      
      public function §^!F§() : CachedFacebookFriends
      {
         if(!this.§-^§)
         {
            this.§-^§ = new CachedFacebookFriends(this.§`I§,this.§3=§,this.§ l§ + "/fb/friends",true);
         }
         return this.§-^§;
      }
      
      public function §"!9§(dataObject:Object) : void
      {
         this.§-^§ = new CachedFacebookFriends(this.§`I§,this.§3=§,this.§ l§ + "/fb/friends",true,dataObject);
      }
      
      public function §[4§(episode:String, levelId:String, tournamentScores:Boolean = false) : CachedFacebookFriends
      {
         if(this.§#t§[levelId])
         {
            return this.§#t§[levelId];
         }
         return this.§#t§[levelId] = new CachedFacebookFriends(this.§`I§,this.§3=§,this.§ l§ + "/getlevelscores/" + episode + "/" + levelId + "/" + tournamentScores.toString(),false);
      }
      
      public function §"!?§(levels:Array) : void
      {
         var levelId:String = null;
         for each(levelId in levels)
         {
            if(this.§#t§[levelId])
            {
               this.§#t§[levelId] = null;
            }
         }
      }
      
      public function §'!>§(levelId:String) : CachedFacebookFriends
      {
         return this.§#t§[levelId];
      }
      
      public function get §2!g§() : int
      {
         if(this.§-^§ == null)
         {
            return -1;
         }
         return this.§-^§.§2!g§;
      }
   }
}
