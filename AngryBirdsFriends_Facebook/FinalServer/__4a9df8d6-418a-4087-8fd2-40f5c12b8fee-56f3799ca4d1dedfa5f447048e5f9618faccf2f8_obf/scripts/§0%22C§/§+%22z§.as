package §0"C§
{
   import § !j§.§4#c§;
   import §"!n§.§^#f§;
   import §#,§.§ !>§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §,"v§.§;"n§;
   import §3+§.§;!H§;
   import §8#K§.§ case§;
   import §<!r§.§'##§;
   import §<!r§.§]!'§;
   import com.rovio.assets.§6$A§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public class §+"z§ extends §;!H§
   {
      
      private static const §'!e§:String = "CombinedBackground";
      
      private static const §#!R§:String = "CampaignButton";
      
      private static const § !H§:String = "MovieClip_TitleSignContainer";
      
      private static const §^#g§:String = "banner";
      
      private static const §+!-§:String = "LEVEL_SELECTION_BG_";
      
      private static const §[#6§:String = "TITLE_SIGN_";
      
      private static const §;!a§:String = "TITLE_TEXT_";
      
      private static const §>"l§:String = "BANNER_";
      
      public static const STATE_NAME:String = "TournamentState";
       
      
      public function §+"z§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "TournamentState")
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
         var _loc15_:§ case§ = null;
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_Tournament[0]);
         if(§'##§.§`"H§.§;!q§())
         {
            _loc1_ = §-#^§;
         }
         else
         {
            _loc1_ = §'##§.§`"H§.tournamentRules.§3V§;
         }
         §^#f§.§##[§(§[$5§.getItemByName("CombinedBackground").mClip,"DEFAULT");
         §^#f§.§##[§(§[$5§.getItemByName("TitleSignContainer").mClip,"DEFAULT");
         §^#f§.§##[§(§[$5§.getItemByName("TextContainer").mClip,"DEFAULT");
         var _loc2_:String = §+!-§ + _loc1_;
         var _loc3_:Class = §6$A§.§1!m§(_loc2_,false);
         if(_loc3_)
         {
            _loc9_ = §[$5§.getItemByName("CombinedBackground").mClip;
            _loc9_.removeChild(_loc9_.getChildByName(§'!e§));
            (_loc10_ = new _loc3_()).name = §'!e§;
            _loc9_.addChild(_loc10_);
         }
         var _loc4_:String = §[#6§ + _loc1_;
         var _loc5_:Class;
         if(_loc5_ = §6$A§.§1!m§(_loc4_,false))
         {
            _loc11_ = §[$5§.getItemByName("TitleSignContainer").mClip;
            _loc11_.removeChild(_loc11_.getChildByName(§ !H§));
            (_loc12_ = new _loc5_()).name = § !H§;
            _loc11_.addChild(_loc12_);
         }
         var _loc6_:String = §;!a§ + _loc1_;
         var _loc7_:Class;
         if(_loc7_ = §6$A§.§1!m§(_loc6_,false))
         {
            _loc13_ = §[$5§.getItemByName("TextContainer").mClip;
            _loc13_.removeChild(_loc13_.getChildByName(§4"d§));
            (_loc14_ = new _loc7_()).name = §4"d§;
            _loc13_.addChild(_loc14_);
         }
         var _loc8_:String = "THEME_MUSIC_" + _loc1_;
         if(§6$A§.§9"w§(_loc8_))
         {
            (_loc15_ = § #v§.§1!!§.§`Z§()).§?s§(_loc8_);
         }
      }
      
      override protected function makeLevelButton(param1:int, param2:Object, param3:§ !>§) : §]!'§
      {
         var _loc4_:§]!'§;
         (_loc4_ = super.makeLevelButton(param1,param2,param3)).§&"N§(§'##§.§`"H§.tournamentRules.§3V§);
         return _loc4_;
      }
      
      override protected function getCampaignButtonFromBG() : SimpleButton
      {
         var _loc1_:MovieClip = §[$5§.getItemByName("CombinedBackground").mClip;
         return SimpleButton((_loc1_.getChildByName(§'!e§) as DisplayObjectContainer).getChildByName(§#!R§));
      }
      
      override public function activate(param1:String) : void
      {
         if(§'##§.§`"H§.§;!q§())
         {
            §+"N§ = false;
         }
         super.activate(param1);
      }
   }
}
