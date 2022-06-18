package §];§
{
   import §!@§.§;"k§;
   import §%#A§.§,#w§;
   import §&"J§.§6$0§;
   import §5"?§.§4"-§;
   import §6V§.§^">§;
   import §<"1§.§@!N§;
   import §[§.§]"w§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   
   public class §&"m§ extends §#!"§
   {
      
      private static const §2#C§:String = "LevelButtonBG";
      
      private static const §-#W§:String = "background";
      
      private static const §'"'§:String = "LEVEL_BUTTON_";
       
      
      private var §+J§:int;
      
      private var §2"8§:String;
      
      private var §71§:§4"-§;
      
      private var § #o§:Boolean;
      
      private var §`!d§:Boolean;
      
      public function §&"m§(param1:int, param2:Object, param3:§]"w§, param4:§,#w§, param5:§-!t§, param6:§;"k§, param7:§6$0§, param8:§4"-§)
      {
         super(param3,param4,param5,param6,param7);
         this.§+J§ = param1;
         §3$#§ = param2;
         this.§71§ = param8;
         param4.setVisibility(true);
         this.§`!d§ = this.§9#m§;
         activate(this.§0g§);
      }
      
      public function get §0g§() : String
      {
         return §3$#§.levelId;
      }
      
      override public function update() : void
      {
         super.update();
         if(!this.§`!d§ && this.§9#m§)
         {
            this.§`!d§ = this.§9#m§;
            this.setLocked(!§ $+§);
         }
      }
      
      public function §[#j§(param1:String) : void
      {
         this.§2"8§ = param1;
         if(§ $+§)
         {
            this.§-U§();
         }
      }
      
      private function §-U§() : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         var _loc1_:MovieClip = §^# §.mClip[§2#C§];
         if(_loc1_)
         {
            _loc2_ = §+$#§.§["`§(§'"'§ + this.§2"8§,false);
            if(_loc2_)
            {
               _loc1_.removeChildren();
               §^# §.mClip[§-#W§].visible = false;
               _loc3_ = new _loc2_();
               _loc1_.addChild(_loc3_);
            }
         }
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^$6§();
         }
         else
         {
            this.§<w§();
         }
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§ #o§ = param1;
         if(!§ $+§)
         {
            this.§^$6§();
         }
      }
      
      private function get §9#m§() : Boolean
      {
         return this.§+J§ == 1 || §,#[§.isLevelOpen(§,#[§.levelIDs[this.§+J§ - 2]);
      }
      
      private function §<w§() : void
      {
         §^# §.mClip.gotoAndStop("Open");
         §^# §.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §^# §.mClip.background.visible = true;
         §^# §.mClip.unlockCost.visible = false;
         var _loc1_:int = this.§71§.§]$"§(this.§0g§);
         if(_loc1_ && _loc1_ <= 3)
         {
            §^# §.mClip.LevelSelection_Crown.gotoAndStop(_loc1_);
         }
         else
         {
            §^# §.mClip.LevelSelection_Crown.gotoAndStop(4);
         }
         var _loc2_:int = this.§71§.§ =§(this.§0g§);
         §^# §.mClip.Textfield_LevelScore.text.text = §^">§.§?"Y§(_loc2_);
         var _loc3_:Number = this.§71§.getStarsForLevel(this.§0g§,_loc2_);
         §^# §.mClip.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
         if(_loc2_ == 0)
         {
            §^# §.mClip.MovieClip_Stars.visible = false;
            §^# §.mClip.Textfield_LevelScore.visible = false;
            §^# §.mClip.GiftboxMovieclip.visible = true;
         }
         else
         {
            §^# §.mClip.MovieClip_Stars.visible = true;
            §^# §.mClip.Textfield_LevelScore.visible = true;
            §^# §.mClip.GiftboxMovieclip.visible = false;
         }
         if(this.§2"8§)
         {
            this.§-U§();
         }
      }
      
      private function §^$6§() : void
      {
         §^# §.mClip.gotoAndStop("Closed");
         if(this.§ #o§ && this.§`!d§)
         {
            §^# §.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §^# §.mClip.unlockCost.visible = §^# §.mClip.background.visible = true;
         }
         else
         {
            §^# §.setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
            §^# §.mClip.unlockCost.visible = §^# §.mClip.background.visible = false;
         }
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         §^# §.mClip.Textfield_LockTime.text.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         §^# §.mClip.unlockCost.text.text = param1.toString();
      }
      
      override protected function get buttonName() : String
      {
         return "UnlockNextLevel";
      }
      
      override protected function get sourceForTracking() : String
      {
         return "level_end";
      }
   }
}
