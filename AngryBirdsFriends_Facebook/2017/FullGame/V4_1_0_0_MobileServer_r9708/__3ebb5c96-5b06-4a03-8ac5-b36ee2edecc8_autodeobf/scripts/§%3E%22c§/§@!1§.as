package §>"c§
{
   import §%#A§.§,#w§;
   import §&$!§.§+#!§;
   import §8"X§.§^!E§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §@#§.§^#Q§;
   import §];§.§&"m§;
   import §];§.§-!t§;
   import §^#]§.§4H§;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public class §@!1§ extends §^!E§
   {
      
      private static const §!"`§:String = "CombinedBackground";
      
      private static const §2-§:String = "CampaignButton";
      
      private static const §"$3§:String = "MovieClip_TitleSignContainer";
      
      private static const §3[§:String = "banner";
      
      private static const §-"Z§:String = "LEVEL_SELECTION_BG_";
      
      private static const §##u§:String = "TITLE_SIGN_";
      
      private static const §%!H§:String = "TITLE_TEXT_";
      
      private static const §,# §:String = "BANNER_";
      
      public static const STATE_NAME:String = "TournamentState";
       
      
      public function §@!1§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "TournamentState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         var _loc15_:MovieClip = null;
         var _loc16_:MovieClip = null;
         var _loc17_:MovieClip = null;
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_BrandedTournament[0]);
         var _loc1_:String = §-!t§.§ "D§.tournamentRules.§@!l§;
         §4H§.§#!k§(§?Q§.getItemByName("CombinedBackground").mClip,"DEFAULT");
         §4H§.§#!k§(§?Q§.getItemByName("TitleSignContainer").mClip,"DEFAULT");
         §4H§.§#!k§(§?Q§.getItemByName("TextContainer").mClip,"DEFAULT");
         §4H§.§#!k§(§?Q§.getItemByName("Banner_Info").mClip,"DEFAULT");
         var _loc2_:String = §-"Z§ + _loc1_;
         var _loc3_:Class = §+$#§.§["`§(_loc2_,false);
         if(_loc3_)
         {
            _loc10_ = §?Q§.getItemByName("CombinedBackground").mClip;
            _loc10_.removeChild(_loc10_.getChildByName(§!"`§));
            (_loc11_ = new _loc3_()).name = §!"`§;
            _loc10_.addChild(_loc11_);
         }
         var _loc4_:String = §##u§ + _loc1_;
         var _loc5_:Class;
         if(_loc5_ = §+$#§.§["`§(_loc4_,false))
         {
            _loc12_ = §?Q§.getItemByName("TitleSignContainer").mClip;
            _loc12_.removeChild(_loc12_.getChildByName(§"$3§));
            (_loc13_ = new _loc5_()).name = §"$3§;
            _loc12_.addChild(_loc13_);
         }
         var _loc6_:String = §%!H§ + _loc1_;
         var _loc7_:Class;
         if(_loc7_ = §+$#§.§["`§(_loc6_,false))
         {
            _loc14_ = §?Q§.getItemByName("TextContainer").mClip;
            _loc14_.removeChild(_loc14_.getChildByName(§<" §));
            (_loc15_ = new _loc7_()).name = §<" §;
            _loc14_.addChild(_loc15_);
         }
         var _loc8_:String = §,# § + _loc1_;
         var _loc9_:Class;
         if(_loc9_ = §+$#§.§["`§(_loc8_,false))
         {
            _loc16_ = §?Q§.getItemByName("Banner_Info").mClip;
            _loc16_.removeChild(_loc16_.getChildByName(§3[§));
            (_loc17_ = new _loc9_()).name = §3[§;
            _loc16_.addChild(_loc17_);
         }
      }
      
      override protected function makeLevelButton(param1:int, param2:Object, param3:§,#w§) : §&"m§
      {
         var _loc4_:§&"m§;
         (_loc4_ = super.makeLevelButton(param1,param2,param3)).§[#j§(§-!t§.§ "D§.tournamentRules.§@!l§);
         return _loc4_;
      }
      
      override protected function getCampaignButtonFromBG() : SimpleButton
      {
         var _loc1_:MovieClip = §?Q§.getItemByName("CombinedBackground").mClip;
         return SimpleButton((_loc1_.getChildByName(§!"`§) as DisplayObjectContainer).getChildByName(§2-§));
      }
   }
}
