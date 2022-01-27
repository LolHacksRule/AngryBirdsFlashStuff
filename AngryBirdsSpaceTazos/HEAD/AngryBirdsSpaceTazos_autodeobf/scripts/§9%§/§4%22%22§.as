package §9%§
{
   import § "A§.§,";§;
   import § "A§.§7!4§;
   import §#!O§.§if§;
   import §%"%§.§2Z§;
   import §&!o§.§2"E§;
   import §&!o§.§="E§;
   import §&f§.§1!J§;
   import §&f§.§<!0§;
   import §'!B§.§8T§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1!k§.§2!^§;
   import §1!k§.ColorFadeLayerEvent;
   import §1z§.§^!@§;
   import §1z§.§^"6§;
   import §3!S§.§<5§;
   import §3"#§.§ !G§;
   import §3"#§.§`"8§;
   import §3>§.§?_§;
   import §3>§.§[8§;
   import §4u§.§!H§;
   import §4u§.§1y§;
   import §4u§.§]b§;
   import §5"@§.§&a§;
   import §5"@§.§1!N§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §8Y§.PopupClosedEvent;
   import §="<§.§87§;
   import §>!x§.HighscoreSidebar;
   import §>"2§.§8k§;
   import §[z§.§-!o§;
   import §[z§.§;§;
   import §]!x§.§#!x§;
   import §]!x§.§&!"§;
   import §]!x§.§1!p§;
   import §]!x§.§6+§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §4""§ extends §6"G§
   {
      
      private static const §4!=§:Number = 50;
      
      private static const §%!H§:Number = 0.05;
      
      private static const §;!"§:int = 99;
      
      public static const STATE_NAME:String = "StatePlay";
      
      private static const §>u§:Number = -10 * 1000;
      
      private static const §"C§:Number = 15 * 1000;
       
      
      private var §-!>§:Boolean = false;
      
      private var §3"8§:Number = -10000.0;
      
      private var §?9§:int = 0;
      
      private var §;N§:Number = 0;
      
      private var §`!g§:Number = 0;
      
      private var §!R§:§&a§;
      
      private var §;"D§:Boolean = false;
      
      private var §7P§:§&!"§;
      
      private var §!d§:§?_§;
      
      protected var §[H§:§2!^§ = null;
      
      private var §#!p§:Boolean;
      
      private var §?4§:§6+§;
      
      private var §`E§:Boolean;
      
      private var §[!w§:Boolean;
      
      public function §4""§(param1:§^!@§, param2:§2Z§, param3:Boolean, param4:§[8§, param5:String = "StatePlay")
      {
         super(param1,param2,param3,param5);
         this.§!d§ = param4 as §?_§;
      }
      
      override protected function init() : void
      {
         this.§[H§ = new §2!^§(0,0,0,1);
         §%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_LevelPlay[0]);
         §%!A§.container.mClip.addChild(this.§[H§);
         this.§!R§ = new §&a§(this);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         this.§#!p§ = false;
         this.§?<§();
         §1y§.§<>§(§]b§.§9"A§,§#"=§.currentLevel);
         (§2&§.§6o§ as §@T§).§<-§.§<>§(§-!o§.§,!'§);
         this.§]!+§();
         this.§`E§ = true;
      }
      
      private function §]!+§() : void
      {
         §%!A§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(false);
         §%!A§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(false);
         §%!A§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(false);
         switch(§#"=§.currentLevel)
         {
            case "1-1":
            case "2-1":
            case "3-1":
               §%!A§.getItemByName("MovieClip_WaterMarkSonrics").setVisibility(true);
               break;
            case "1-2":
            case "2-2":
            case "3-2":
               §%!A§.getItemByName("MovieClip_WaterMarkSabritas").setVisibility(true);
               break;
            case "1-3":
            case "2-3":
            case "3-3":
               §%!A§.getItemByName("MovieClip_WaterMarkGamesa").setVisibility(true);
         }
      }
      
      protected function §?<§() : void
      {
         if(this.§[H§ && !this.§#!p§)
         {
            this.§[H§.mouseEnabled = true;
            this.§#!p§ = true;
            this.§[H§.§6f§(1);
            this.§[H§.§[!1§(0,0.25);
            this.§[H§.addEventListener(ColorFadeLayerEvent.§4,§,this.onFadeComplete);
         }
      }
      
      private function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§[H§.mouseEnabled = false;
         this.§[H§.removeEventListener(ColorFadeLayerEvent.§4,§,this.onFadeComplete);
         §%!A§.container.mClip.removeChild(this.§[H§);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §%!A§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§4!F§();
         §!H§.§3R§.updateTextFields(§%!A§.container,"StatePlay");
         this.§&!t§();
         this.§!!w§(true);
         (§2&§.§6o§ as §@T§).§56§.§&"C§(true);
         (§2&§.§6o§ as §@T§).§56§.§!!5§(false);
         (§2&§.§6o§ as §@T§).§56§.§-_§(false);
         §2"E§.§3R§.addEventListener(§="E§.§3B§,this.§3f§);
         §2"E§.§3R§.addEventListener(§="E§.§29§,this.§ 0§);
         §2"E§.§3R§.§-l§();
         this.§#!>§();
         this.§^2§();
         this.§[!w§ = false;
      }
      
      protected function §^2§() : void
      {
         var _loc1_:§,";§ = §2&§.§6o§.§<!?§;
         var _loc2_:Vector.<String> = _loc1_.§[!g§.getTutorialNamesForMapping(§7!4§.§<#§);
         _loc1_.§8j§(_loc2_,true,true,true,false,null,true,false);
      }
      
      override public function deActivate() : void
      {
         §%!A§.container.mClip.addChild(this.§[H§);
         super.deActivate();
         §2"E§.§3R§.removeEventListener(§="E§.§3B§,this.§3f§);
         §2"E§.§3R§.removeEventListener(§="E§.§29§,this.§ 0§);
         this.§!R§.§^"B§();
         this.§[!w§ = false;
         if(this.§7P§ && this.§7P§.hasEventListener(§;§.§&!C§))
         {
            this.§7P§.removeEventListener(§;§.§&!C§,this.§"!h§);
         }
         this.§["2§();
         this.§4!F§();
         (§2&§.§6o§ as §@T§).§<-§.§1"2§();
      }
      
      private function §["2§() : void
      {
         var _loc1_:int = 0;
         if(!this.§-!>§)
         {
            if(this.§3"8§ > §"C§)
            {
               this.§-!>§ = true;
               _loc1_ = Math.round(1000 / this.§3"8§ * this.§?9§);
               if(§8T§.§`!q§)
               {
                  §1y§.§<>§(§]b§.ACTION_CPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
               else
               {
                  §1y§.§<>§(§]b§.ACTION_GPU_FPS_REPORT,_loc1_.toString(),_loc1_);
               }
            }
         }
      }
      
      private function §3f§(param1:Event) : void
      {
         var _loc2_:int = §2"E§.§3R§.§'y§();
         var _loc3_:String = _loc2_ <= §;!"§ ? _loc2_.toString() : §;!"§ + "+";
         §%!A§.setText(_loc3_,"TextField_PowerupCounter");
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         super.onUIInteraction(param1,param2,param3);
         if(param1 == 1)
         {
            if(§8k§.§;!]§.slingshot.mDragging)
            {
               §8k§.§;!]§.slingshot.shoot();
               §2`§.changeGameState(§<!0§.§?"!§);
               return;
            }
            §8k§.§;!]§.camera.stopDragging();
         }
         switch(param2)
         {
            case "PAUSE":
               _loc4_ = (§2&§.§6o§ as §@T§).§56§.§`a§.§2T§(§#"=§.currentLevelNumericName);
               §2&§.§6o§.§^7§.openPopup(new §1!p§(_loc4_));
               break;
            case "RESTART_LEVEL":
               this.§ F§();
               break;
            case "POWERUP_USE":
               if((_loc5_ = §2"E§.§3R§.§'y§()) > 0 || this.§;"D§)
               {
                  this.§[!w§ = true;
                  this.§`!t§();
               }
               else
               {
                  if(this.§7P§ && this.§7P§.hasEventListener(§;§.§&!C§))
                  {
                     this.§7P§.removeEventListener(§;§.§&!C§,this.§"!h§);
                  }
                  this.§7P§ = new §&!"§();
                  (§2&§.§6o§ as §@T§).§^7§.openPopup(this.§7P§);
                  this.§7P§.addEventListener(§;§.§&!C§,this.§"!h§);
               }
               break;
            case "ZOOM_IN":
               this.§;N§ = §%!H§;
               this.§`!g§ = §4!=§;
               break;
            case "ZOOM_OUT":
               this.§;N§ = -§%!H§;
               this.§`!g§ = §4!=§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§;N§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§;N§ = 0;
         }
      }
      
      private function § F§() : void
      {
         this.§[!w§ = false;
         §^! §.§15§();
         § !I§(§^! §.STATE_NAME);
         this.§!R§.§;d§();
      }
      
      private function §"!h§(param1:Event) : void
      {
         this.§7P§.close();
         this.§?4§ = new §6+§();
         (§2&§.§6o§ as §@T§).§^7§.openPopup(this.§?4§,false,false,true,true);
         this.§?4§.addEventListener(PopupClosedEvent.§6!F§,this.§6"9§);
      }
      
      private function §`!t§() : void
      {
         §2"E§.§3R§.addEventListener(§="E§.§;0§,this.§@"@§);
         §2"E§.§3R§.addEventListener(§="E§.§=Y§,this.§[!D§);
         §2"E§.§3R§.§4!6§();
         this.§!!w§(false);
      }
      
      private function §4!6§() : void
      {
         if(this.§[!w§)
         {
            (§8k§.§;!]§.slingshot as § !G§).§<8§();
            this.§^2§();
         }
         this.§[!w§ = false;
      }
      
      private function §6"9§(param1:Event) : void
      {
         this.§[!w§ = true;
         this.§`!t§();
         this.§?4§.removeEventListener(PopupClosedEvent.§6!F§,this.§6"9§);
      }
      
      protected function §#!>§() : void
      {
         var _loc1_:HighscoreSidebar = (§2&§.§6o§ as §@T§).§56§.§`a§;
         _loc1_.§+!K§ = §#"=§.currentLevel;
         _loc1_.changeState(HighscoreSidebar.§!b§);
      }
      
      override protected function levelCompleted() : void
      {
         (§2&§.§6o§ as §@T§).§^7§.openPopup(new §#!x§());
         this.§!R§.levelCompleted(this.§,D§());
         §1y§.§<>§(§]b§.§#N§,§#"=§.currentLevel,this.§""A§.getScore(10));
      }
      
      override protected function getGameLogicController(param1:§`"8§) : §<!0§
      {
         return new §1!J§(param1,§#"=§);
      }
      
      private function §,D§() : int
      {
         var _loc4_:§^"6§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:int = 0;
         var _loc2_:int = §1!N§.§[!h§(this.§,"=§.currentLevel).score;
         var _loc3_:int = this.§""A§.getScore(10);
         if(_loc3_ > _loc2_)
         {
            _loc5_ = (_loc4_ = this.§,"=§.getEpisode(this.§,"=§.currentEpisode)).§<d§(this.§,"=§.currentLevel).scoreGold;
            _loc6_ = _loc4_.§<d§(this.§,"=§.currentLevel).scoreSilver;
            if(_loc2_ == 0 && _loc3_ > 0)
            {
               _loc1_++;
            }
            if((_loc2_ < _loc6_ || _loc2_ == 0 && _loc6_ == 0) && _loc3_ >= _loc6_)
            {
               _loc1_++;
            }
            if((_loc2_ < _loc5_ || _loc2_ == 0 && _loc5_ == 0) && _loc3_ >= _loc5_)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      private function §!!w§(param1:Boolean = true) : void
      {
         var _loc2_:§87§ = §%!A§.getItemByName("Button_PowerUp") as §87§;
         if(param1)
         {
            _loc2_.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc2_.setComponentState(§^l§.COMPONENT_STATE_DISABLED);
         }
      }
      
      private function §6"2§(param1:Number) : void
      {
         this.§3"8§ += param1;
         if(this.§3"8§ > 0)
         {
            ++this.§?9§;
         }
      }
      
      private function §4!F§() : void
      {
         this.§3"8§ = §>u§;
         this.§?9§ = 0;
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§`E§ && !§8k§.isPaused)
         {
            this.§`E§ = false;
            §<5§.§>!R§();
            this.§!d§.soundManager.playSound("level_start_military");
            §8k§.§;!]§.background.playAmbientSound();
         }
         this.§6"2§(param1);
         if(!§8k§.isPaused)
         {
            §if§.§3R§.update(param1);
         }
         this.§&!t§();
         this.§1x§(param1);
         if(!§8k§.§;!]§.objects.isPigsAlive())
         {
            this.§!!w§(false);
         }
         if(nextState.length > 0 && this.§"]§())
         {
            this.§!R§.§;d§();
         }
         else if(nextState == § !u§.STATE_NAME)
         {
            this.§!R§.§;d§();
         }
      }
      
      private function §&!t§() : void
      {
         var _loc1_:int = §2`§.getScore(10);
         §%!A§.setText(_loc1_.toString(),"TextField_CurrentScore");
         var _loc2_:int = (§2&§.§6o§ as §@T§).§'"5§.getScoreForLevel(§#"=§.currentLevel);
         §%!A§.setText((_loc1_ > _loc2_ ? _loc1_ : _loc2_) + "","TextField_HiScore");
      }
      
      override protected function isAllowedToChangeVictoryState() : Boolean
      {
         return this.§"]§();
      }
      
      protected function §"]§() : Boolean
      {
         return this.§!R§.§2d§;
      }
      
      override public function getVictoryStateName() : String
      {
         return §2!z§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §5"!§.STATE_NAME;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §!H§.§3R§.updateTextFields(§%!A§.container,"StatePlay");
      }
      
      private function §1x§(param1:Number) : void
      {
         if(this.§;N§)
         {
            this.§`!g§ += param1;
            if(this.§`!g§ > §4!=§)
            {
               §2`§.doUserZoom(this.§;N§ > 0);
               this.§`!g§ = 0;
            }
         }
      }
      
      public function get §,"=§() : §^!@§
      {
         return §#"=§;
      }
      
      public function get §""A§() : §<!0§
      {
         return §2`§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§@T§.§2§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§2&§.§6o§.§^7§.§"r§())
                  {
                     §8k§.§;!]§.§^u§();
                  }
                  break;
               case Keyboard.P:
                  if(!§2&§.§6o§.§^7§.§"r§())
                  {
                     this.§;"D§ = true;
                     break;
                  }
            }
         }
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§2&§.§6o§.§^7§.§"r§())
               {
                  this.§ F§();
                  break;
               }
         }
         §8k§.§0!Q§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §8k§.§0!Q§.keyUp(param1);
      }
      
      private function §@"@§(param1:Event) : void
      {
         this.§4!6§();
         §2"E§.§3R§.removeEventListener(§="E§.§;0§,this.§@"@§);
         §2"E§.§3R§.removeEventListener(§="E§.§=Y§,this.§[!D§);
         (§2&§.§6o§ as §@T§).§56§.§&"C§(true);
         (§2&§.§6o§ as §@T§).§56§.§!!5§(false);
      }
      
      private function §[!D§(param1:Event) : void
      {
         §2"E§.§3R§.removeEventListener(§="E§.§;0§,this.§@"@§);
         §2"E§.§3R§.removeEventListener(§="E§.§=Y§,this.§[!D§);
         (§2&§.§6o§ as §@T§).§56§.§&"C§(true);
         (§2&§.§6o§ as §@T§).§56§.§!!5§(false);
      }
      
      private function § 0§(param1:Event) : void
      {
      }
   }
}
