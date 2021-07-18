package §5"$§
{
   import §%$!§.§=]§;
   import §'!U§.§4P§;
   import §1!@§.§-#O§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §6"r§.§=O§;
   import §;!H§.§8#_§;
   import §>!#§.§9#a§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   
   public class § !>§ extends § #p§
   {
      
      private static const §[f§:String = "brandedBG";
      
      private static const §package§:String = "LEVEL_BUTTON_";
       
      
      private var §8M§:int;
      
      private var §7"'§:String;
      
      private var §,"S§:§!#Q§;
      
      private var §?k§:Boolean;
      
      private var §'§:Boolean;
      
      public function § !>§(param1:int, param2:Object, param3:§@#@§, param4:§=O§, param5:§]!m§, param6:§8#_§, param7:§=]§, param8:§!#Q§)
      {
         super(param3,param4,param5,param6,param7);
         this.§8M§ = param1;
         §#i§ = param2;
         this.§,"S§ = param8;
         param4.setVisibility(true);
         this.§'§ = this.§]#j§;
         activate(this.§8l§);
      }
      
      public function get §8l§() : String
      {
         return §#i§.levelId;
      }
      
      override public function update() : void
      {
         super.update();
         if(!this.§'§ && this.§]#j§)
         {
            this.§'§ = this.§]#j§;
            this.setLocked(!§]"t§);
         }
      }
      
      public function §'!W§(param1:String) : void
      {
         this.§7"'§ = param1;
         if(§]"t§)
         {
            this.§@!v§();
         }
      }
      
      private function §@!v§() : void
      {
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         var _loc1_:MovieClip = §@<§.mClip.ButtonBranded;
         if(_loc1_)
         {
            §-#O§.each(_loc1_,"DEFAULT");
            _loc2_ = §@`§.§4!i§(§package§ + this.§7"'§,false);
            if(_loc2_)
            {
               _loc1_.removeChild(_loc1_.getChildByName(§[f§));
               _loc3_ = new _loc2_();
               _loc3_.name = §[f§;
               _loc1_.addChild(_loc3_);
            }
         }
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         if(param1)
         {
            this.§""3§();
         }
         else
         {
            this.§8"4§();
         }
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§?k§ = param1;
         if(!§]"t§)
         {
            this.§""3§();
         }
      }
      
      private function get §]#j§() : Boolean
      {
         return this.§8M§ == 1 || §3"g§.isLevelOpen(§3"g§.levelIDs[this.§8M§ - 2]);
      }
      
      private function §8"4§() : void
      {
         §@<§.mClip.gotoAndStop("Open");
         §@<§.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §@<§.mClip.background.visible = true;
         §@<§.mClip.unlockCost.visible = false;
         §@<§.mClip.TextField_LevelNum.text.text = this.§8M§.toString();
         var _loc1_:int = this.§,"S§.§#k§(this.§8l§);
         if(_loc1_ && _loc1_ <= 3)
         {
            §@<§.mClip.LevelSelection_Crown.gotoAndStop(_loc1_);
         }
         else
         {
            §@<§.mClip.LevelSelection_Crown.gotoAndStop(4);
         }
         var _loc2_:int = this.§,"S§.§3!5§(this.§8l§);
         §@<§.mClip.Textfield_LevelScore.text.text = §9#a§.§^#&§(_loc2_);
         var _loc3_:Number = this.§,"S§.getStarsForLevel(this.§8l§,_loc2_);
         §@<§.mClip.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
         if(_loc2_ == 0)
         {
            §@<§.mClip.MovieClip_Stars.visible = false;
            §@<§.mClip.Textfield_LevelScore.visible = false;
            §@<§.mClip.GiftboxMovieclip.visible = true;
         }
         else
         {
            §@<§.mClip.MovieClip_Stars.visible = true;
            §@<§.mClip.Textfield_LevelScore.visible = true;
            §@<§.mClip.GiftboxMovieclip.visible = false;
         }
         if(this.§7"'§)
         {
            this.§@!v§();
         }
      }
      
      private function §""3§() : void
      {
         §@<§.mClip.gotoAndStop("Closed");
         if(this.§?k§ && this.§'§)
         {
            §@<§.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            §@<§.mClip.unlockCost.visible = §@<§.mClip.background.visible = true;
         }
         else
         {
            §@<§.setComponentState(§4P§.COMPONENT_STATE_DISABLED);
            §@<§.mClip.unlockCost.visible = §@<§.mClip.background.visible = false;
         }
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         §@<§.mClip.Textfield_LockTime.text.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         §@<§.mClip.unlockCost.text.text = param1.toString();
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
