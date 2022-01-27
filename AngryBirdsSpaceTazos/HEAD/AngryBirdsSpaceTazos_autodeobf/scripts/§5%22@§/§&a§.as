package §5"@§
{
   import §%!P§.§7""§;
   import §1!K§.§2!h§;
   import §3"#§.§ 7§;
   import §9%§.§4""§;
   import §>!x§.HighscoreSidebar;
   import §>"2§.§8k§;
   import §[z§.§4!L§;
   import §[z§.§[!A§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §&a§ implements §[!A§
   {
       
      
      private var §!!E§:§7""§ = null;
      
      private var §%!>§:Boolean = false;
      
      private var §-p§:§4""§;
      
      public function §&a§(param1:§4""§)
      {
         super();
         this.§-p§ = param1;
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
         if(§1!N§.§'!"§(this.§-p§.§,"=§.currentLevel))
         {
            this.§%!>§ = true;
         }
         else if(!this.§!!E§)
         {
            this.§%!>§ = false;
            _loc2_ = "updateLevelProfile";
            _loc3_ = this.§-p§.§,"=§.currentLevelNumericName;
            _loc4_ = §1!N§.§[!h§(this.§-p§.§,"=§.currentLevel);
            _loc5_ = this.§-p§.§""A§.getScore(10);
            _loc6_ = false;
            _loc4_.score = _loc5_;
            _loc4_.levelId = _loc3_;
            _loc4_.blocks = § 7§.§2K§();
            _loc4_.gamePlay = §8k§.§;!]§.§^!q§().toString();
            _loc4_.userId = §1!N§.§<!u§.id;
            _loc4_.security = §7""§.§;"'§(_loc4_);
            (_loc7_ = new Object()).id = §1!N§.§<!u§.id;
            _loc7_.security = §1!N§.§<!u§.security;
            if(param1 > 0)
            {
               _loc7_.stars = param1;
            }
            _loc7_.tazosSecurity = §7""§.§]"=§(_loc7_.id,_loc4_.score,param1,_loc3_);
            _loc8_ = {
               "player":_loc7_,
               "levelProfile":_loc4_
            };
            this.§!!E§ = new §7""§(_loc8_,§@T§.§&Z§ + _loc2_,this,§7""§.§4!8§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§%!>§ = true;
         var _loc2_:Object = §4!L§.§#";§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §7""§.§^!`§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §2!h§.§?3§ = true;
            (§2&§.§6o§ as §@T§).§'"5§ = new §7!7§("",this.§-p§.§,"=§);
            §1!N§.§,!<§ = new §!"'§();
            §1!N§.levelProfile = [];
            (§2&§.§6o§ as §@T§).§56§.§`a§.reset();
            return;
         }
         §1!N§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §1!N§.levelProfile = _loc2_.levelProfile;
            §1!N§.§]N§();
         }
         if(_loc2_.st1 != undefined)
         {
            §1!N§.§,!<§.episodeStars1 = _loc2_.st1;
         }
         if(_loc2_.st2 != undefined)
         {
            §1!N§.§,!<§.episodeStars2 = _loc2_.st2;
         }
         if(_loc2_.st3 != undefined)
         {
            §1!N§.§,!<§.episodeStars3 = _loc2_.st3;
         }
         §1!N§.§,!<§.stars = §1!N§.§,!<§.episodeStars1 + §1!N§.§,!<§.episodeStars2 + §1!N§.§,!<§.episodeStars3;
         if(_loc2_.sc1 != undefined)
         {
            §1!N§.§,!<§.episodeScore1 = _loc2_.sc1;
         }
         if(_loc2_.sc2 != undefined)
         {
            §1!N§.§,!<§.episodeScore2 = _loc2_.sc2;
         }
         if(_loc2_.sc3 != undefined)
         {
            §1!N§.§,!<§.episodeScore3 = _loc2_.sc3;
         }
         this.§7"-§(_loc2_);
      }
      
      private function §7"-§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§2&§.§6o§ as §@T§).§56§.§`a§;
         if(_loc2_.§=!q§(this.§-p§.§,"=§.currentLevel))
         {
            if(param1.isHighScore)
            {
               _loc2_.§=!q§(this.§-p§.§,"=§.currentLevel).§+?§();
               (§2&§.§6o§ as §@T§).§56§.§`a§.§`"6§();
            }
         }
         if(param1.isEpisodeScore)
         {
            if(this.§-p§.§,"=§.currentEpisode == 0 && _loc2_.§=!q§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1))
            {
               _loc2_.§=!q§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1).§+?§();
               (§2&§.§6o§ as §@T§).§56§.§`a§.§`"6§();
            }
            else if(this.§-p§.§,"=§.currentEpisode == 1 && _loc2_.§=!q§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2))
            {
               _loc2_.§=!q§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2).§+?§();
               (§2&§.§6o§ as §@T§).§56§.§`a§.§`"6§();
            }
            else if(this.§-p§.§,"=§.currentEpisode == 2 && _loc2_.§=!q§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3))
            {
               _loc2_.§=!q§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3).§+?§();
               (§2&§.§6o§ as §@T§).§56§.§`a§.§`"6§();
            }
         }
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
      }
      
      public function §;d§() : void
      {
         if(this.§!!E§)
         {
            this.§!!E§.dispose();
         }
         this.§%!>§ = true;
      }
      
      public function §^"B§() : void
      {
         if(this.§!!E§)
         {
            this.§!!E§.dispose();
            this.§!!E§ = null;
         }
         this.§%!>§ = false;
      }
      
      public function get §@!i§() : §7""§
      {
         return this.§!!E§;
      }
      
      public function get §2d§() : Boolean
      {
         return this.§%!>§;
      }
   }
}
