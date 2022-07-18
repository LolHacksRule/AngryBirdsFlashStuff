package §<"c§
{
   import §!"e§.§9#B§;
   import §'!n§.§[#§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^#>§.§8"f§;
   import §^#>§.§>f§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §'!'§ extends §7"i§
   {
      
      protected static const §<!K§:int = 40;
      
      protected static const §5"n§:int = 20;
      
      protected static const §,#9§:int = 95;
       
      
      protected var §"!h§:Boolean;
      
      protected var §5M§:§9#B§;
      
      protected var §8!X§:§[#§;
      
      protected var §^!Y§:§ #^§;
      
      protected var §]"b§:§^"m§;
      
      public function §'!'§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§5M§ = §9#B§(§4#;§.singleton.popupManager);
         this.§^!Y§ = § #^§(§@;§.getItemByName("Container_Buttons"));
         §9!#§.mClip.unlockTimer.visible = false;
         §9!#§.mClip.unlockTimer.mouseChildren = false;
         §9!#§.mClip.unlockTimer.mouseEnabled = false;
         this.§]"b§ = §^"m§(§9!#§.getItemByName("Button_NextLevelLocked"));
         this.§]"b§.setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§"!h§ = false;
         this.§8!X§ = new §[#§(§ #^§(§@;§.getItemByName("Container_ExtraBird")));
         this.§8!X§.addEventListener(§[#§.§9!4§,this.§"#A§);
         var _loc2_:MovieClip = §@;§.getItemByName("Button_ExtraBird").mClip.extraBird;
         var _loc3_:String = §>f§(§,!q§.§9!,§.slingshot).§0"%§.levelItem.itemName.split("_")[0];
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
         this.§8!X§.removeEventListener(§[#§.§9!4§,this.§"#A§);
         this.§8!X§.dispose();
         this.§8!X§ = null;
         this.§5M§.§="M§();
         super.deActivate();
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = §8"f§(§,!q§.§9!,§).§8%§(§6"w§.§1!m§);
         var _loc2_:int = §,#9§ * 2;
         _loc2_ += !!_loc1_ ? 0 : §5"n§ + §,#9§;
         _loc2_ += !!this.§%!s§() ? §5"n§ + §,#9§ : 0;
         var _loc3_:int = -_loc2_ / 2 + §<!K§;
         §^W§.x = _loc3_;
         _loc3_ += §5"n§ + §,#9§;
         §5"t§.x = _loc3_;
         _loc3_ += §5"n§ + §,#9§;
         if(_loc1_)
         {
            this.§8!X§.view.visible = false;
         }
         else
         {
            this.§8!X§.view.visible = true;
            this.§8!X§.view.x = _loc3_;
            _loc3_ += §5"n§ + §,#9§;
         }
         §9!#§.x = _loc3_;
      }
      
      protected function §%!s§() : Boolean
      {
         return §9!#§.visible;
      }
      
      override protected function update(param1:Number) : void
      {
         §""=§();
         if(nextState.length > 0 && !this.§"!h§)
         {
            §,!q§.§9!,§.clearLevel();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§^!7§;
      }
      
      protected function §"#A§(param1:Event) : void
      {
         this.§"!h§ = true;
         §?#N§.§"3§ = true;
         this.§5M§.§="M§();
         § g§(this.getPlayState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               §'$§();
               § g§(getCutSceneState());
               break;
            case "REPLAY":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               § g§(getLevelLoadState());
               break;
            case "MENU":
               §?!r§.§"#_§("misc_menubuttonback_1");
               § g§(getLevelSelectionState());
         }
      }
   }
}
