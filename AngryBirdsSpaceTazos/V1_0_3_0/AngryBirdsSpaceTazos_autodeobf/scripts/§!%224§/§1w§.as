package §!"4§
{
   import §!!r§.§&!D§;
   import §!!r§.§,!u§;
   import §!"0§.§`"F§;
   import §3R§.§+7§;
   import §5R§.§=F§;
   import §6"A§.HighscoreSidebar;
   import §7!C§.§8!w§;
   import §=" §.§ "G§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §1w§ implements §&!D§
   {
       
      
      private var §&0§:§=F§ = null;
      
      private var §8!W§:Boolean = false;
      
      private var §;x§:§ "G§;
      
      public function §1w§(param1:§ "G§)
      {
         super();
         this.§;x§ = param1;
      }
      
      public function levelCompleted(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         if(§;";§.§@!7§(this.§;x§.§;!u§.currentLevel))
         {
            this.§8!W§ = true;
         }
         else if(!this.§&0§)
         {
            this.§8!W§ = false;
            _loc2_ = "updateLevelProfile";
            _loc3_ = this.§;x§.§;!u§.currentLevelNumericName;
            _loc4_ = §;";§.§5o§(this.§;x§.§;!u§.currentLevel);
            _loc5_ = this.§;x§.§`!k§.getScore(10);
            _loc6_ = false;
            _loc4_.score = _loc5_;
            _loc4_.levelId = _loc3_;
            _loc4_.blocks = §+7§.§,"-§();
            _loc4_.gamePlay = §8!w§.§5!V§.§<!U§().toString();
            _loc4_.userId = §;";§.§5!D§.id;
            _loc4_.security = §=F§.§>D§(_loc4_);
            (_loc7_ = new Object()).id = §;";§.§5!D§.id;
            _loc7_.security = §;";§.§5!D§.security;
            if(param1 > 0)
            {
               _loc7_.stars = param1;
            }
            _loc7_.tazosSecurity = §=F§.§ ![§(_loc7_.id,_loc4_.score,param1,_loc3_);
            _loc8_ = {
               "player":_loc7_,
               "levelProfile":_loc4_
            };
            this.§&0§ = new §=F§(_loc8_,§["!§.§7!h§ + _loc2_,this,§=F§.§8"H§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§8!W§ = true;
         var _loc2_:Object = §,!u§.§4!E§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §=F§.§8"+§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §`"F§.§1"H§ = true;
            (§&"<§.§<!7§ as §["!§).§<!%§ = new §4!k§("",this.§;x§.§;!u§);
            §;";§.§3U§ = new §]a§();
            §;";§.levelProfile = [];
            (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.reset();
            return;
         }
         §;";§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §;";§.levelProfile = _loc2_.levelProfile;
            §;";§.§#l§();
         }
         if(_loc2_.st1 != undefined)
         {
            §;";§.§3U§.episodeStars1 = _loc2_.st1;
         }
         if(_loc2_.st2 != undefined)
         {
            §;";§.§3U§.episodeStars2 = _loc2_.st2;
         }
         if(_loc2_.st3 != undefined)
         {
            §;";§.§3U§.episodeStars3 = _loc2_.st3;
         }
         §;";§.§3U§.stars = §;";§.§3U§.episodeStars1 + §;";§.§3U§.episodeStars2 + §;";§.§3U§.episodeStars3;
         if(_loc2_.sc1 != undefined)
         {
            §;";§.§3U§.episodeScore1 = _loc2_.sc1;
         }
         if(_loc2_.sc2 != undefined)
         {
            §;";§.§3U§.episodeScore2 = _loc2_.sc2;
         }
         if(_loc2_.sc3 != undefined)
         {
            §;";§.§3U§.episodeScore3 = _loc2_.sc3;
         }
         this.§+!N§(_loc2_);
      }
      
      private function §+!N§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§;
         if(_loc2_.§"!b§(this.§;x§.§;!u§.currentLevel))
         {
            if(param1.isHighScore)
            {
               _loc2_.§"!b§(this.§;x§.§;!u§.currentLevel).§,!h§();
               (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§[l§();
            }
         }
         if(param1.isEpisodeScore)
         {
            if(this.§;x§.§;!u§.currentEpisode == 0 && _loc2_.§"!b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1))
            {
               _loc2_.§"!b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1).§,!h§();
               (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§[l§();
            }
            else if(this.§;x§.§;!u§.currentEpisode == 1 && _loc2_.§"!b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2))
            {
               _loc2_.§"!b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2).§,!h§();
               (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§[l§();
            }
            else if(this.§;x§.§;!u§.currentEpisode == 2 && _loc2_.§"!b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3))
            {
               _loc2_.§"!b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3).§,!h§();
               (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§[l§();
            }
         }
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
      }
      
      public function § !`§() : void
      {
         if(this.§&0§)
         {
            this.§&0§.dispose();
         }
         this.§8!W§ = true;
      }
      
      public function §?!4§() : void
      {
         if(this.§&0§)
         {
            this.§&0§.dispose();
            this.§&0§ = null;
         }
         this.§8!W§ = false;
      }
      
      public function get §2"H§() : §=F§
      {
         return this.§&0§;
      }
      
      public function get §=!h§() : Boolean
      {
         return this.§8!W§;
      }
   }
}
