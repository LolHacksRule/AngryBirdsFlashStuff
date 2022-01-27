package §7!B§
{
   import §!?§.§'k§;
   import §'4§.§!!t§;
   import §,"&§.§9q§;
   import §3D§.HighscoreSidebar;
   import §6"4§.§&a§;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §8!_§.§ ! §;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §;!E§ implements §-!^§
   {
       
      
      private var §1!k§:§'k§ = null;
      
      private var §+!r§:Boolean = false;
      
      private var §^4§:§ ! §;
      
      public function §;!E§(param1:§ ! §)
      {
         super();
         this.§^4§ = param1;
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
         if(§@!^§.§5u§(this.§^4§.§=!+§.currentLevel))
         {
            this.§+!r§ = true;
         }
         else if(!this.§1!k§)
         {
            this.§+!r§ = false;
            _loc2_ = "updateLevelProfile";
            _loc3_ = this.§^4§.§=!+§.currentLevelNumericName;
            _loc4_ = §@!^§.§<k§(this.§^4§.§=!+§.currentLevel);
            _loc5_ = this.§^4§.§@%§.getScore(10);
            _loc6_ = false;
            _loc4_.score = _loc5_;
            _loc4_.levelId = _loc3_;
            _loc4_.blocks = §!!t§.§4!o§();
            _loc4_.gamePlay = §9q§.§>!L§.§!!k§().toString();
            _loc4_.userId = §@!^§.§[!Q§.id;
            _loc4_.security = §'k§.§!!2§(_loc4_);
            (_loc7_ = new Object()).id = §@!^§.§[!Q§.id;
            _loc7_.security = §@!^§.§[!Q§.security;
            if(param1 > 0)
            {
               _loc7_.stars = param1;
            }
            _loc7_.tazosSecurity = §'k§.§&f§(_loc7_.id,_loc4_.score,param1,_loc3_);
            _loc8_ = {
               "player":_loc7_,
               "levelProfile":_loc4_
            };
            this.§1!k§ = new §'k§(_loc8_,§`Y§.§6T§ + _loc2_,this,§'k§.§;!^§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§+!r§ = true;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §'k§.§6d§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §&a§.§"!c§ = true;
            (§ !g§.§;!'§ as §`Y§).§]]§ = new §@!w§("",this.§^4§.§=!+§);
            §@!^§.§2j§ = new §?A§();
            §@!^§.levelProfile = [];
            (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.reset();
            return;
         }
         §@!^§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §@!^§.levelProfile = _loc2_.levelProfile;
            §@!^§.§;!Y§();
         }
         if(_loc2_.st1 != undefined)
         {
            §@!^§.§2j§.episodeStars1 = _loc2_.st1;
         }
         if(_loc2_.st2 != undefined)
         {
            §@!^§.§2j§.episodeStars2 = _loc2_.st2;
         }
         if(_loc2_.st3 != undefined)
         {
            §@!^§.§2j§.episodeStars3 = _loc2_.st3;
         }
         §@!^§.§2j§.stars = §@!^§.§2j§.episodeStars1 + §@!^§.§2j§.episodeStars2 + §@!^§.§2j§.episodeStars3;
         if(_loc2_.sc1 != undefined)
         {
            §@!^§.§2j§.episodeScore1 = _loc2_.sc1;
         }
         if(_loc2_.sc2 != undefined)
         {
            §@!^§.§2j§.episodeScore2 = _loc2_.sc2;
         }
         if(_loc2_.sc3 != undefined)
         {
            §@!^§.§2j§.episodeScore3 = _loc2_.sc3;
         }
         this.§2"-§(_loc2_);
      }
      
      private function §2"-§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§;
         if(_loc2_.§?b§(this.§^4§.§=!+§.currentLevel))
         {
            if(param1.isHighScore)
            {
               _loc2_.§?b§(this.§^4§.§=!+§.currentLevel).§;B§();
               (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§39§();
            }
         }
         if(param1.isEpisodeScore)
         {
            if(this.§^4§.§=!+§.currentEpisode == 0 && _loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1))
            {
               _loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1).§;B§();
               (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§39§();
            }
            else if(this.§^4§.§=!+§.currentEpisode == 1 && _loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2))
            {
               _loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2).§;B§();
               (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§39§();
            }
            else if(this.§^4§.§=!+§.currentEpisode == 2 && _loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3))
            {
               _loc2_.§?b§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3).§;B§();
               (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§39§();
            }
         }
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
      
      public function §1!N§() : void
      {
         if(this.§1!k§)
         {
            this.§1!k§.dispose();
         }
         this.§+!r§ = true;
      }
      
      public function §6[§() : void
      {
         if(this.§1!k§)
         {
            this.§1!k§.dispose();
            this.§1!k§ = null;
         }
         this.§+!r§ = false;
      }
      
      public function get §!">§() : §'k§
      {
         return this.§1!k§;
      }
      
      public function get §0"#§() : Boolean
      {
         return this.§+!r§;
      }
   }
}
