package §6"6§
{
   import §""%§.§#`§;
   import §+!9§.§;0§;
   import §4!x§.§`[§;
   import §4!x§.§`q§;
   import §7!c§.static;
   import §7!s§.HighscoreSidebar;
   import §;+§.§3!n§;
   import §?!<§.§8R§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §;A§ implements §`[§
   {
       
      
      private var §""9§:§#`§ = null;
      
      private var §8t§:Boolean = false;
      
      private var §7d§:static;
      
      public function §;A§(param1:static)
      {
         super();
         this.§7d§ = param1;
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
         if(§40§.§2`§(this.§7d§.§>F§.currentLevel))
         {
            this.§8t§ = true;
         }
         else if(!this.§""9§)
         {
            this.§8t§ = false;
            _loc2_ = "updateLevelProfile";
            _loc3_ = this.§7d§.§>F§.currentLevelNumericName;
            _loc4_ = §40§.§6o§(this.§7d§.§>F§.currentLevel);
            _loc5_ = this.§7d§.§=1§.getScore(10);
            _loc6_ = false;
            _loc4_.score = _loc5_;
            _loc4_.levelId = _loc3_;
            _loc4_.blocks = §8R§.§[!;§();
            _loc4_.gamePlay = §;0§.§@!^§.§2l§().toString();
            _loc4_.userId = §40§.§9!7§.id;
            _loc4_.security = §#`§.§5%§(_loc4_);
            (_loc7_ = new Object()).id = §40§.§9!7§.id;
            _loc7_.security = §40§.§9!7§.security;
            if(param1 > 0)
            {
               _loc7_.stars = param1;
            }
            _loc7_.tazosSecurity = §#`§.§5!`§(_loc7_.id,_loc4_.score,param1,_loc3_);
            _loc8_ = {
               "player":_loc7_,
               "levelProfile":_loc4_
            };
            this.§""9§ = new §#`§(_loc8_,§^"=§.§^"3§ + _loc2_,this,§#`§.§-n§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         this.§8t§ = true;
         var _loc2_:Object = §`q§.§<f§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = §#`§.§>!g§(_loc2_.levelProfile);
         if(_loc3_ != _loc2_.levelProfileSecurity)
         {
            §3!n§.§=c§ = true;
            (§&!h§.§ u§ as §^"=§).§^!7§ = new §^!E§("",this.§7d§.§>F§);
            §40§.§1"$§ = new §1";§();
            §40§.levelProfile = [];
            (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.reset();
            return;
         }
         §40§.levelProfileSecurity = _loc2_.levelProfileSecurity;
         if(_loc2_.levelProfile != undefined)
         {
            §40§.levelProfile = _loc2_.levelProfile;
            §40§.§3!f§();
         }
         if(_loc2_.st1 != undefined)
         {
            §40§.§1"$§.episodeStars1 = _loc2_.st1;
         }
         if(_loc2_.st2 != undefined)
         {
            §40§.§1"$§.episodeStars2 = _loc2_.st2;
         }
         if(_loc2_.st3 != undefined)
         {
            §40§.§1"$§.episodeStars3 = _loc2_.st3;
         }
         §40§.§1"$§.stars = §40§.§1"$§.episodeStars1 + §40§.§1"$§.episodeStars2 + §40§.§1"$§.episodeStars3;
         if(_loc2_.sc1 != undefined)
         {
            §40§.§1"$§.episodeScore1 = _loc2_.sc1;
         }
         if(_loc2_.sc2 != undefined)
         {
            §40§.§1"$§.episodeScore2 = _loc2_.sc2;
         }
         if(_loc2_.sc3 != undefined)
         {
            §40§.§1"$§.episodeScore3 = _loc2_.sc3;
         }
         this.§`v§(_loc2_);
      }
      
      private function §`v§(param1:Object) : void
      {
         var _loc2_:HighscoreSidebar = (§&!h§.§ u§ as §^"=§).§?P§.§?!,§;
         if(_loc2_.§!!>§(this.§7d§.§>F§.currentLevel))
         {
            if(param1.isHighScore)
            {
               _loc2_.§!!>§(this.§7d§.§>F§.currentLevel).§5"1§();
               (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§7K§();
            }
         }
         if(param1.isEpisodeScore)
         {
            if(this.§7d§.§>F§.currentEpisode == 0 && _loc2_.§!!>§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1))
            {
               _loc2_.§!!>§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1).§5"1§();
               (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§7K§();
            }
            else if(this.§7d§.§>F§.currentEpisode == 1 && _loc2_.§!!>§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2))
            {
               _loc2_.§!!>§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2).§5"1§();
               (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§7K§();
            }
            else if(this.§7d§.§>F§.currentEpisode == 2 && _loc2_.§!!>§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3))
            {
               _loc2_.§!!>§(HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3).§5"1§();
               (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§7K§();
            }
         }
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
      }
      
      public function §!V§() : void
      {
         if(this.§""9§)
         {
            this.§""9§.dispose();
         }
         this.§8t§ = true;
      }
      
      public function §]z§() : void
      {
         if(this.§""9§)
         {
            this.§""9§.dispose();
            this.§""9§ = null;
         }
         this.§8t§ = false;
      }
      
      public function get §]!h§() : §#`§
      {
         return this.§""9§;
      }
      
      public function get §9!V§() : Boolean
      {
         return this.§8t§;
      }
   }
}
