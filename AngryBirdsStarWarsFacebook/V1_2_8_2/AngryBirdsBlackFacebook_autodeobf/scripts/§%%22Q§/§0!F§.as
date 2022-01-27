package §%"Q§
{
   import §"§.§0F§;
   import §"§.§<U§;
   import §&!j§.§5#+§;
   import §+"Y§.§4#%§;
   import §8!h§.§-V§;
   import §9"U§.§[!b§;
   import §9"a§.§!j§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import §null §.§5#§;
   
   public class §0!F§ extends §7!>§
   {
      
      protected static const §7!E§:int = 40;
      
      protected static const §##&§:int = 20;
      
      protected static const §2!z§:int = 95;
       
      
      protected var §@"A§:Boolean;
      
      protected var §?"Q§:§4#%§;
      
      protected var §^#+§:§!j§;
      
      protected var §5#$§:§@!8§;
      
      protected var §>"C§:§;g§;
      
      public function §0!F§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§?"Q§ = §4#%§(§4"#§.singleton.popupManager);
         this.§5#$§ = §@!8§(§^!b§.getItemByName("Container_Buttons"));
         §<!k§.mClip.unlockTimer.visible = false;
         §<!k§.mClip.unlockTimer.mouseChildren = false;
         §<!k§.mClip.unlockTimer.mouseEnabled = false;
         this.§>"C§ = §;g§(§<!k§.getItemByName("Button_NextLevelLocked"));
         this.§>"C§.setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@"A§ = false;
         this.§^#+§ = new §!j§(§@!8§(§^!b§.getItemByName("Container_ExtraBird")));
         this.§^#+§.addEventListener(§!j§.§!!r§,this.§5"e§);
         var _loc2_:MovieClip = §^!b§.getItemByName("Button_ExtraBird").mClip.extraBird;
         var _loc3_:String = §<U§(§<!J§.§=!%§.slingshot).§0!"§.levelItem.itemName.split("_")[0];
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.currentLabels.length)
         {
            if(_loc2_.currentLabels[_loc4_] == _loc3_)
            {
               _loc2_.gotoAndStop(_loc3_);
               break;
            }
            _loc4_++;
         }
         this.setButtonAlignment();
      }
      
      override public function deActivate() : void
      {
         this.§^#+§.removeEventListener(§!j§.§!!r§,this.§5"e§);
         this.§^#+§.dispose();
         this.§^#+§ = null;
         this.§?"Q§.§8!v§();
         super.deActivate();
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = §0F§(§<!J§.§=!%§).§"Y§(§[!b§.§]!F§);
         var _loc2_:int = §2!z§ * 2;
         _loc2_ += !!_loc1_ ? 0 : §##&§ + §2!z§;
         _loc2_ += !!this.§7"0§() ? §##&§ + §2!z§ : 0;
         var _loc3_:int = -_loc2_ / 2 + §7!E§;
         §%N§.x = _loc3_;
         _loc3_ += §##&§ + §2!z§;
         §!'§.x = _loc3_;
         _loc3_ += §##&§ + §2!z§;
         if(_loc1_)
         {
            this.§^#+§.view.visible = false;
         }
         else
         {
            this.§^#+§.view.visible = true;
            this.§^#+§.view.x = _loc3_;
            _loc3_ += §##&§ + §2!z§;
         }
         §<!k§.x = _loc3_;
      }
      
      protected function §7"0§() : Boolean
      {
         return §<!k§.visible;
      }
      
      override protected function update(param1:Number) : void
      {
         §<!N§();
         if(nextState.length > 0 && !this.§@"A§)
         {
            §<!J§.§=!%§.clearLevel();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§-!U§;
      }
      
      protected function §5"e§(param1:Event) : void
      {
         this.§@"A§ = true;
         §-"B§.§^"8§ = true;
         this.§?"Q§.§8!v§();
         §`0§(this.getPlayState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               §`"y§();
               §`0§(getCutSceneState());
               break;
            case "REPLAY":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               §`0§(getLevelLoadState());
               break;
            case "MENU":
               §=Q§.§`!A§("misc_menubuttonback_1");
               §`0§(getLevelSelectionState());
         }
      }
   }
}
