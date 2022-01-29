package §0"A§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §5P§.§""C§;
   import §8#!§.§1$$§;
   import §8#!§.§5`§;
   import §9#B§.§=!L§;
   import §;$3§.§8=§;
   import §<h§.§>"0§;
   import §[#[§.§'!-§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public class §2"w§ extends §=!L§
   {
      
      private static const §2"#§:String = "CombinedBackground";
      
      private static const §1L§:String = "CampaignButton";
      
      private static const §["w§:String = "MovieClip_TitleSignContainer";
      
      private static const §!$#§:String = "banner";
      
      private static const §46§:String = "LEVEL_SELECTION_BG_";
      
      private static const §'#5§:String = "TITLE_SIGN_";
      
      private static const §6"A§:String = "TITLE_TEXT_";
      
      private static const §&"-§:String = "BANNER_";
      
      public static const STATE_NAME:String = "TournamentState";
       
      
      public function §2"w§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "TournamentState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_Tournament[0]);
         var _loc1_:String = §5`§.§6!§.tournamentRules.§7"4§;
         §'!-§.§>"A§(§`!H§.getItemByName("CombinedBackground").mClip,"DEFAULT");
         §'!-§.§>"A§(§`!H§.getItemByName("TitleSignContainer").mClip,"DEFAULT");
         §'!-§.§>"A§(§`!H§.getItemByName("TextContainer").mClip,"DEFAULT");
         var _loc2_:String = §46§ + _loc1_;
         var _loc3_:Class = §!"f§.§##?§(_loc2_,false);
         if(_loc3_)
         {
            _loc8_ = §`!H§.getItemByName("CombinedBackground").mClip;
            _loc8_.removeChild(_loc8_.getChildByName(§2"#§));
            (_loc9_ = new _loc3_()).name = §2"#§;
            _loc8_.addChild(_loc9_);
         }
         var _loc4_:String = §'#5§ + _loc1_;
         var _loc5_:Class;
         if(_loc5_ = §!"f§.§##?§(_loc4_,false))
         {
            _loc10_ = §`!H§.getItemByName("TitleSignContainer").mClip;
            _loc10_.removeChild(_loc10_.getChildByName(§["w§));
            (_loc11_ = new _loc5_()).name = §["w§;
            _loc10_.addChild(_loc11_);
         }
         var _loc6_:String = §6"A§ + _loc1_;
         var _loc7_:Class;
         if(_loc7_ = §!"f§.§##?§(_loc6_,false))
         {
            _loc12_ = §`!H§.getItemByName("TextContainer").mClip;
            _loc12_.removeChild(_loc12_.getChildByName(§4!g§));
            (_loc13_ = new _loc7_()).name = §4!g§;
            _loc12_.addChild(_loc13_);
         }
      }
      
      override protected function makeLevelButton(param1:int, param2:Object, param3:§>"0§) : §1$$§
      {
         var _loc4_:§1$$§;
         (_loc4_ = super.makeLevelButton(param1,param2,param3)).§&$2§(§5`§.§6!§.tournamentRules.§7"4§);
         return _loc4_;
      }
      
      override protected function getCampaignButtonFromBG() : SimpleButton
      {
         var _loc1_:MovieClip = §`!H§.getItemByName("CombinedBackground").mClip;
         return SimpleButton((_loc1_.getChildByName(§2"#§) as DisplayObjectContainer).getChildByName(§1L§));
      }
   }
}
