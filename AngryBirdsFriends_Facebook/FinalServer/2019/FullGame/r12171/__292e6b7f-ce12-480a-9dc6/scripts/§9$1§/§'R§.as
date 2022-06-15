package §9$1§
{
   import § "L§.§1"r§;
   import §!!L§.§ !8§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §+`§.§%"q§;
   import §3"V§.§^!7§;
   import §7#$§.§]#q§;
   import §`"t§.§4$C§;
   import §`,§.§,!?§;
   import §`,§.§7!$§;
   import com.rovio.assets.§[a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public class §'R§ extends § !8§
   {
      
      private static const § !J§:String = "CombinedBackground";
      
      private static const §>B§:String = "CampaignButton";
      
      private static const §1Z§:String = "MovieClip_TitleSignContainer";
      
      private static const §%!q§:String = "banner";
      
      private static const §%!t§:String = "LEVEL_SELECTION_BG_";
      
      private static const §`j§:String = "TITLE_SIGN_";
      
      private static const §-"F§:String = "TITLE_TEXT_";
      
      private static const §2g§:String = "BANNER_";
      
      public static const STATE_NAME:String = "TournamentState";
       
      
      public function §'R§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "TournamentState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:§^!7§ = null;
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_Tournament[0]);
         if(§7!$§.§+!,§.§!$#§())
         {
            _loc1_ = §;n§;
         }
         else
         {
            _loc1_ = §7!$§.§+!,§.tournamentRules.§"">§;
         }
         §4$C§.§=M§(§;!w§.getItemByName("CombinedBackground").mClip,"DEFAULT");
         §4$C§.§=M§(§;!w§.getItemByName("TitleSignContainer").mClip,"DEFAULT");
         §4$C§.§=M§(§;!w§.getItemByName("TextContainer").mClip,"DEFAULT");
         var _loc2_:String = §%!t§ + _loc1_;
         var _loc3_:Class = §[a§.§8#k§(_loc2_,false);
         if(_loc3_)
         {
            _loc9_ = §;!w§.getItemByName("CombinedBackground").mClip;
            _loc9_.removeChild(_loc9_.getChildByName(§ !J§));
            (_loc10_ = new _loc3_()).name = § !J§;
            _loc9_.addChild(_loc10_);
         }
         var _loc4_:String = §`j§ + _loc1_;
         var _loc5_:Class;
         if(_loc5_ = §[a§.§8#k§(_loc4_,false))
         {
            _loc11_ = §;!w§.getItemByName("TitleSignContainer").mClip;
            _loc11_.removeChild(_loc11_.getChildByName(§1Z§));
            (_loc12_ = new _loc5_()).name = §1Z§;
            _loc11_.addChild(_loc12_);
         }
         var _loc6_:String = §-"F§ + _loc1_;
         var _loc7_:Class;
         if(_loc7_ = §[a§.§8#k§(_loc6_,false))
         {
            _loc13_ = §;!w§.getItemByName("TextContainer").mClip;
            _loc13_.removeChild(_loc13_.getChildByName(§8#^§));
            (_loc14_ = new _loc7_()).name = §8#^§;
            _loc13_.addChild(_loc14_);
         }
         var _loc8_:String = "THEME_MUSIC_" + _loc1_;
         if(§[a§.§]$'§(_loc8_))
         {
            (_loc15_ = §@z§.§ !D§.§'e§()).§%Q§(_loc8_);
         }
      }
      
      override protected function makeLevelButton(param1:int, param2:Object, param3:§1"r§) : §,!?§
      {
         var _loc4_:§,!?§;
         (_loc4_ = super.makeLevelButton(param1,param2,param3)).§`"3§(§7!$§.§+!,§.tournamentRules.§"">§);
         return _loc4_;
      }
      
      override protected function getCampaignButtonFromBG() : SimpleButton
      {
         var _loc1_:MovieClip = §;!w§.getItemByName("CombinedBackground").mClip;
         return SimpleButton((_loc1_.getChildByName(§ !J§) as DisplayObjectContainer).getChildByName(§>B§));
      }
      
      override public function activate(param1:String) : void
      {
         if(§7!$§.§+!,§.§!$#§())
         {
            §0!X§ = false;
         }
         super.activate(param1);
      }
   }
}
