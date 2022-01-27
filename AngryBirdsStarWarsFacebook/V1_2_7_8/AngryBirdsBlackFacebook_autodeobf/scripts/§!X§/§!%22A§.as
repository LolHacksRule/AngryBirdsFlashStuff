package §!X§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §0a§.§>M§;
   import §4##§.§7!B§;
   import §5!q§.§&§;
   import §5!q§.§6"@§;
   import §<"s§.§@![§;
   import §`"8§.§#f§;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §!"A§ extends §22§
   {
      
      protected static const §["8§:int = 40;
      
      protected static const §!!o§:int = 20;
      
      protected static const §%"X§:int = 95;
       
      
      protected var dynamic:Boolean;
      
      protected var §"q§:§@![§;
      
      protected var § "4§:§>M§;
      
      protected var §;"Q§:§,m§;
      
      protected var §+"g§:§2"8§;
      
      public function §!"A§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§"q§ = §@![§(§;"@§.singleton.popupManager);
         this.§;"Q§ = §,m§(§>I§.getItemByName("Container_Buttons"));
         §#"A§.mClip.unlockTimer.visible = false;
         §#"A§.mClip.unlockTimer.mouseChildren = false;
         §#"A§.mClip.unlockTimer.mouseEnabled = false;
         this.§+"g§ = §2"8§(§#"A§.getItemByName("Button_NextLevelLocked"));
         this.§+"g§.setVisibility(false);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.dynamic = false;
         this.§ "4§ = new §>M§(§,m§(§>I§.getItemByName("Container_ExtraBird")));
         this.§ "4§.addEventListener(§>M§.§8#5§,this.§&"d§);
         var _loc2_:MovieClip = §>I§.getItemByName("Button_ExtraBird").mClip.extraBird;
         var _loc3_:String = §&#3§(§;!e§.§<x§.slingshot).§""H§.levelItem.itemName.split("_")[0];
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
         this.§ "4§.removeEventListener(§>M§.§8#5§,this.§&"d§);
         this.§ "4§.dispose();
         this.§ "4§ = null;
         this.§"q§.§'!8§();
         super.deActivate();
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = §6"@§(§;!e§.§<x§).§`#§(§#f§.§]"i§);
         var _loc2_:int = §%"X§ * 2;
         _loc2_ += !!_loc1_ ? 0 : §!!o§ + §%"X§;
         _loc2_ += !!this.§<"F§() ? §!!o§ + §%"X§ : 0;
         var _loc3_:int = -_loc2_ / 2 + §["8§;
         §"V§.x = _loc3_;
         _loc3_ += §!!o§ + §%"X§;
         §;"i§.x = _loc3_;
         _loc3_ += §!!o§ + §%"X§;
         if(_loc1_)
         {
            this.§ "4§.view.visible = false;
         }
         else
         {
            this.§ "4§.view.visible = true;
            this.§ "4§.view.x = _loc3_;
            _loc3_ += §!!o§ + §%"X§;
         }
         §#"A§.x = _loc3_;
      }
      
      protected function §<"F§() : Boolean
      {
         return §#"A§.visible;
      }
      
      override protected function update(param1:Number) : void
      {
         §<!?§();
         if(nextState.length > 0 && !this.dynamic)
         {
            §;!e§.§<x§.clearLevel();
         }
      }
      
      protected function getPlayState() : String
      {
         return StatePlay.§'#2§;
      }
      
      protected function §&"d§(param1:Event) : void
      {
         this.dynamic = true;
         §2!C§.§'"i§ = true;
         this.§"q§.§'!8§();
         §0"B§(this.getPlayState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §@§.§=Y§("misc_menubuttonproceed_1");
               § !Y§();
               §0"B§(getCutSceneState());
               break;
            case "REPLAY":
               §@§.§=Y§("misc_menubuttonproceed_1");
               §0"B§(getLevelLoadState());
               break;
            case "MENU":
               §@§.§=Y§("misc_menubuttonback_1");
               §0"B§(getLevelSelectionState());
         }
      }
   }
}
