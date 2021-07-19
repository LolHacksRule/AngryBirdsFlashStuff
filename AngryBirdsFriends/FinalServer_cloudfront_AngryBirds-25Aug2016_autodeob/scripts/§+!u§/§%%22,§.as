package §+!u§
{
   import §#v§.§#!?§;
   import §'U§.§]#[§;
   import §-"i§.§%!'§;
   import §1!@§.§-#O§;
   import §5"$§.§ !>§;
   import §5"$§.§]!m§;
   import §6"r§.§=O§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import com.rovio.assets.§@`§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public class §%",§ extends §%!'§
   {
      
      private static const §9!l§:String = "CombinedBackground";
      
      private static const §9!p§:String = "CampaignButton";
      
      private static const §7"Q§:String = "MovieClip_TitleSignContainer";
      
      private static const §9!W§:String = "banner";
      
      private static const §@$8§:String = "LEVEL_SELECTION_BG_";
      
      private static const §0#q§:String = "TITLE_SIGN_";
      
      private static const §'"#§:String = "TITLE_TEXT_";
      
      private static const §%"]§:String = "BANNER_";
      
      public static const STATE_NAME:String = "TournamentState";
       
      
      public function §%",§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "TournamentState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:MovieClip = null;
         var _loc16_:MovieClip = null;
         var _loc17_:MovieClip = null;
         var _loc18_:MovieClip = null;
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_BrandedTournament[0]);
         var _loc1_:String = §]!m§.§3!]§.§,"K§.§+G§;
         var _loc2_:String = §]!m§.§3!]§.§?q§;
         if(_loc2_ && _loc2_.indexOf("XMAS_2014") != -1)
         {
            _loc1_ = "XMAS_2014";
         }
         §-#O§.each(§!$§.getItemByName("CombinedBackground").mClip,"DEFAULT");
         §-#O§.each(§!$§.getItemByName("TitleSignContainer").mClip,"DEFAULT");
         §-#O§.each(§!$§.getItemByName("TextContainer").mClip,"DEFAULT");
         §-#O§.each(§!$§.getItemByName("Banner_Info").mClip,"DEFAULT");
         var _loc3_:String = §@$8§ + _loc1_;
         var _loc4_:Class;
         if(_loc4_ = §@`§.§4!i§(_loc3_,false))
         {
            _loc11_ = §!$§.getItemByName("CombinedBackground").mClip;
            _loc11_.removeChild(_loc11_.getChildByName(§9!l§));
            (_loc12_ = new _loc4_()).name = §9!l§;
            _loc11_.addChild(_loc12_);
         }
         var _loc5_:String = §0#q§ + _loc1_;
         var _loc6_:Class;
         if(_loc6_ = §@`§.§4!i§(_loc5_,false))
         {
            _loc13_ = §!$§.getItemByName("TitleSignContainer").mClip;
            _loc13_.removeChild(_loc13_.getChildByName(§7"Q§));
            (_loc14_ = new _loc6_()).name = §7"Q§;
            _loc13_.addChild(_loc14_);
         }
         var _loc7_:String = §'"#§ + _loc1_;
         var _loc8_:Class;
         if(_loc8_ = §@`§.§4!i§(_loc7_,false))
         {
            _loc15_ = §!$§.getItemByName("TextContainer").mClip;
            _loc15_.removeChild(_loc15_.getChildByName(§4§));
            (_loc16_ = new _loc8_()).name = §4§;
            _loc15_.addChild(_loc16_);
         }
         var _loc9_:String = §%"]§ + _loc1_;
         var _loc10_:Class;
         if(_loc10_ = §@`§.§4!i§(_loc9_,false))
         {
            _loc17_ = §!$§.getItemByName("Banner_Info").mClip;
            _loc17_.removeChild(_loc17_.getChildByName(§9!W§));
            (_loc18_ = new _loc10_()).name = §9!W§;
            _loc17_.addChild(_loc18_);
         }
         §`"X§();
      }
      
      override protected function makeLevelButton(param1:int, param2:Object, param3:§=O§) : § !>§
      {
         var _loc4_:§ !>§;
         (_loc4_ = super.makeLevelButton(param1,param2,param3)).§'!W§(§]!m§.§3!]§.§,"K§.§+G§);
         return _loc4_;
      }
      
      override protected function getCampaignButtonFromBG() : SimpleButton
      {
         var _loc1_:MovieClip = §!$§.getItemByName("CombinedBackground").mClip;
         return SimpleButton((_loc1_.getChildByName(§9!l§) as DisplayObjectContainer).getChildByName(§9!p§));
      }
   }
}
