package §]x§
{
   import §!!t§.§'8§;
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §+"u§.§""=§;
   import §+"u§.§^"C§;
   import §3"G§.§16§;
   import §5!$§.§"S§;
   import §8"b§.§1!9§;
   import com.rovio.assets.§2"O§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public class § $>§ extends §'8§
   {
      
      private static const §!?§:String = "CombinedBackground";
      
      private static const §^!f§:String = "CampaignButton";
      
      private static const §=#b§:String = "MovieClip_TitleSignContainer";
      
      private static const §6!r§:String = "banner";
      
      private static const §2"M§:String = "LEVEL_SELECTION_BG_";
      
      private static const §,"G§:String = "TITLE_SIGN_";
      
      private static const §0"m§:String = "TITLE_TEXT_";
      
      private static const §!!$§:String = "BANNER_";
      
      public static const STATE_NAME:String = "TournamentState";
       
      
      public function § $>§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "TournamentState")
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
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_Tournament[0]);
         var _loc1_:String = §^"C§.§?q§.tournamentRules.§9d§;
         §1!9§.§`!c§(§<"`§.getItemByName("CombinedBackground").mClip,"DEFAULT");
         §1!9§.§`!c§(§<"`§.getItemByName("TitleSignContainer").mClip,"DEFAULT");
         §1!9§.§`!c§(§<"`§.getItemByName("TextContainer").mClip,"DEFAULT");
         var _loc2_:String = §2"M§ + _loc1_;
         var _loc3_:Class = §2"O§.§`>§(_loc2_,false);
         if(_loc3_)
         {
            _loc8_ = §<"`§.getItemByName("CombinedBackground").mClip;
            _loc8_.removeChild(_loc8_.getChildByName(§!?§));
            (_loc9_ = new _loc3_()).name = §!?§;
            _loc8_.addChild(_loc9_);
         }
         var _loc4_:String = §,"G§ + _loc1_;
         var _loc5_:Class;
         if(_loc5_ = §2"O§.§`>§(_loc4_,false))
         {
            _loc10_ = §<"`§.getItemByName("TitleSignContainer").mClip;
            _loc10_.removeChild(_loc10_.getChildByName(§=#b§));
            (_loc11_ = new _loc5_()).name = §=#b§;
            _loc10_.addChild(_loc11_);
         }
         var _loc6_:String = §0"m§ + _loc1_;
         var _loc7_:Class;
         if(_loc7_ = §2"O§.§`>§(_loc6_,false))
         {
            _loc12_ = §<"`§.getItemByName("TextContainer").mClip;
            _loc12_.removeChild(_loc12_.getChildByName(§[6§));
            (_loc13_ = new _loc7_()).name = §[6§;
            _loc12_.addChild(_loc13_);
         }
      }
      
      override protected function makeLevelButton(param1:int, param2:Object, param3:§"S§) : §""=§
      {
         var _loc4_:§""=§;
         (_loc4_ = super.makeLevelButton(param1,param2,param3)).§4!f§(§^"C§.§?q§.tournamentRules.§9d§);
         return _loc4_;
      }
      
      override protected function getCampaignButtonFromBG() : SimpleButton
      {
         var _loc1_:MovieClip = §<"`§.getItemByName("CombinedBackground").mClip;
         return SimpleButton((_loc1_.getChildByName(§!?§) as DisplayObjectContainer).getChildByName(§^!f§));
      }
   }
}
