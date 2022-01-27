package §4"k§
{
   import §!b§.§]!s§;
   import §!r§.§&$§;
   import §!r§.§+"X§;
   import §"§.§%§;
   import §"§.§0F§;
   import §"§.§<U§;
   import §%"Q§.§-"B§;
   import §&!c§.§1§;
   import §&!c§.§5!m§;
   import §&!c§.§=!Q§;
   import §&!j§.§5#+§;
   import §+"Y§.SyncPopup;
   import §+"Y§.§^!S§;
   import §+"x§.§&!Y§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+d§.§0#&§;
   import §0"k§.§1>§;
   import §18§.§-!>§;
   import §1v§.§!!b§;
   import §3§.§7"?§;
   import §3L§.§+!W§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9"U§.§'!;§;
   import §9"U§.§7"1§;
   import §9"U§.§[!b§;
   import §9"`§.§]s§;
   import §=!4§.§8"U§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §?!2§.§+!F§;
   import §?"6§.§`!^§;
   import §`"1§.§=Q§;
   import §`"]§.§>"U§;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import §null §.§5#§;
   
   public class §+"W§ extends §!!b§
   {
      
      public static const §1%§:int = 125;
      
      public static const §^!5§:int = 50;
      
      public static const §&Z§:Number = 0.03;
      
      public static const §@"!§:int = 6000;
      
      public static const §6!z§:int = §@"!§ * 0.75;
      
      public static var §3"g§:Boolean;
       
      
      protected var §3!d§:§`!^§;
      
      protected var §!"Q§:Boolean;
      
      protected var §3B§:Boolean;
      
      protected var §^#%§:Boolean;
      
      protected var §6M§:Number;
      
      protected var §5##§:Boolean;
      
      protected var § for§:Boolean;
      
      protected var §,!-§:Boolean;
      
      protected var §]!"§:§0#&§;
      
      protected var §;"`§:Number = 0.0;
      
      protected var §1&§:§;g§;
      
      protected var §1!9§:§1#5§;
      
      protected var §?!§:§@!8§;
      
      protected var §&"&§:§5!=§;
      
      protected var §9!T§:Boolean;
      
      protected var §2!-§:§?"B§;
      
      protected var §,<§:§1V§;
      
      protected var §="F§:§<N§;
      
      protected var §3"5§:§2"i§;
      
      protected var §,#,§:§5!m§;
      
      protected var § !H§:§7"?§;
      
      protected var §7^§:§>"U§;
      
      private var §<"b§:§@!8§;
      
      private var §^#&§:§;g§;
      
      private var §9"?§:Boolean;
      
      public function §+"W§(param1:§@!8§, param2:§5#§, param3:§`!^§, param4:§'!;§, param5:§5#+§)
      {
         this.§]!"§ = new §0#&§();
         this.§3!d§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         §3!m§.setVisibility(false);
         this.§1&§ = §;g§(§3!m§.getItemByName("Button_Pause"));
         this.§1!9§ = new §1#5§(§;g§(§3!m§.getItemByName("Button_OpenPowerupMenu")));
         this.§ !H§ = new §7"?§(§9!c§(§3!m§.getItemByName("MovieClip_IntroClips")));
         this.§?!§ = §@!8§(§3!m§.getItemByName("Container_PowerUpButtons"));
         this.§,#,§ = new §5!m§(this.§?!§,this.§1!9§,§7"1§(§?!$§),this.§ !H§);
         this.§2!-§ = new §?"B§(§@!8§(§3!m§.getItemByName("Container_MightyEagle")),this.§,#,§);
         this.§2!-§.enabled = true;
         this.§,<§ = new §1V§(§@!8§(§3!m§.getItemByName("Container_ExtraBird")),this.§,#,§);
         this.§="F§ = new §<N§(§@!8§(§3!m§.getItemByName("Container_ZoomButtons")));
         this.§&"&§ = new §5!=§(§@!8§(§3!m§.getItemByName("Container_ExtraBirdTimer")),this.§,#,§);
         this.§7^§ = new §>"U§(§3!m§,§'""§,this.§3!d§);
         this.§7^§.levelStarted(§1>§(§7"1§(§4"#§.singleton.dataModel).§;a§.§3+§(§'""§.getEpisodeForLevel(§'""§.currentLevel).name,§'""§.currentLevel,false)),§'""§.currentLevel);
         this.§3"5§ = new §2"i§(§@!8§(§3!m§.getItemByName("Container_MightyFalconScore")));
         this.§3"5§.§1"w§(§7"1§(§4"#§.singleton.dataModel).userProgress.getEagleScoreForLevel(§'""§.currentLevel));
         this.§<"b§ = §@!8§(§3!m§.getItemByName("Container_RightBottomCorner"));
         this.§^#&§ = §;g§(§3!m§.getItemByName("Button_Next_Level"));
         this.§#"o§(false);
         §3"g§ = false;
         §3!m§.getItemByName("CrystalBreakAnimation").mClip.stop();
         §5!m§.§8-§ = true;
         §5!m§.§1U§ = false;
         this.§!"Q§ = §-"B§.§^"8§;
         if(§-"B§.§^"8§)
         {
            §-"B§.§^"8§ = false;
            this.§,<§.§-u§ = true;
            §0F§(§<!J§.§=!%§).§9N§.addEventListener(§+!W§.§]!f§,this.§&!5§);
            this.§3!d§.§^D§(§`!^§.§7#+§,true);
            _loc1_ = this.§,#,§.§ #,§(§[!b§.§]!F§);
         }
         this.§6M§ = §@"!§;
         this.§5##§ = false;
         this.§^#%§ = false;
         this.§3B§ = false;
         this.§9!T§ = false;
         this.§5##§ = false;
         this.§]!"§.§-[§(0);
         this.§;"`§ = 0;
         this.§#e§(0);
      }
      
      override public function dispose() : void
      {
         this.disable(false);
         this.§2!-§.enabled = false;
         this.§2!-§.dispose();
         this.§,<§.removeEventListener(§1V§.§!!r§,this.§5"e§);
         this.§,<§.dispose();
         this.§,<§ = null;
         this.§="F§.dispose();
         this.§="F§ = null;
         this.§1!9§.dispose();
         this.§1!9§ = null;
         this.§&"&§.dispose();
         this.§&"&§ = null;
         this.§,#,§.dispose();
         this.§,#,§ = null;
         this.§ !H§.dispose();
         this.§ !H§ = null;
         this.§7^§.dispose();
         this.§7^§ = null;
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§,U§,this.§#`§);
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§]!f§,this.§&!5§);
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§]!f§,this.§"#4§);
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§^!_§,this.§3j§);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §3!m§.setVisibility(true);
         §3!m§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§,<§.addEventListener(§1V§.§!!r§,this.§5"e§);
         this.§2!-§.addEventListener(§?"B§.§+"t§,this.§7!F§);
         §0F§(§<!J§.§=!%§).§9N§.addEventListener(§+!W§.§,U§,this.§#`§);
         this.§,!-§ = false;
         this.§="F§.§!"%§ = this.§3!d§;
         this.§7^§.activate(this.§3!d§);
         this.§,#,§.§^"E§ = §'""§;
         this.§,#,§.enable();
         this.§,#,§.§"i§ = false;
         if(§5!m§.§8-§ && !§5!m§.§1U§)
         {
            this.§,#,§.§@!Q§();
         }
         var _loc2_:§0F§ = §0F§(§<!J§.§=!%§);
         _loc2_.slingshot.addEventListener(§%#7§.§@"8§,this.§<"F§);
         this.§`#'§();
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:§0F§ = §0F§(§<!J§.§=!%§);
         _loc2_.slingshot.removeEventListener(§%#7§.§@"8§,this.§<"F§);
         §3!m§.setVisibility(false);
         §3!m§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§1&§.setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§]!f§,this.§&!5§);
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§]!f§,this.§"#4§);
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§^!_§,this.§3j§);
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§,U§,this.§#`§);
         this.§,<§.removeEventListener(§1V§.§!!r§,this.§2!n§);
         this.§,<§.removeEventListener(§1V§.§!!r§,this.§5"e§);
         this.§&"&§.§[A§.removeEventListener(§1V§.§!!r§,this.§2!n§);
         this.§2!-§.removeEventListener(§?"B§.§+"t§,this.§7!F§);
         this.§,#,§.disable();
         this.§7^§.deActivate();
         super.disable(param1);
      }
      
      private function §#!;§() : void
      {
         if(this.§9!T§)
         {
            this.§&"&§.show();
            this.§,<§.hide();
            this.§&"&§.§[A§.removeEventListener(§1V§.§!!r§,this.§2!n§);
            this.§&"&§.§[A§.addEventListener(§1V§.§!!r§,this.§2!n§);
         }
         else
         {
            this.§,<§.§5N§(§6!z§ / 1000);
            this.§,<§.removeEventListener(§1V§.§!!r§,this.§2!n§);
            this.§,<§.addEventListener(§1V§.§!!r§,this.§2!n§);
         }
         §0F§(§<!J§.§=!%§).§9N§.addEventListener(§+!W§.§]!f§,this.§"#4§);
         this.§#"o§(false);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         this.§#e§(param1);
         this.§7^§.run(param1);
         this.§="F§.update(param1);
         this.§,#,§.update(param1);
         this.§ !H§.update(param1);
         var _loc2_:§0F§ = §0F§(§<!J§.§=!%§);
         if(!this.§5##§ && !this.§!"Q§ && _loc2_.§]"§)
         {
            this.§5##§ = true;
            this.§;!^§();
            if(!this.§,<§.§-u§)
            {
               if(_loc2_.§7P§ == §`!^§.§+"j§)
               {
                  this.§#!;§();
               }
               else
               {
                  this.§,<§.§#"8§();
               }
            }
         }
         if(_loc2_.§]"§)
         {
            if(this.§9!T§)
            {
               if(!§<!J§.isPaused)
               {
                  this.§&"&§.update(param1);
               }
            }
            else if(!§<!J§.isPaused && this.§6M§ >= 0)
            {
               if(!this.§,<§.§1p§())
               {
                  this.§,<§.§%"!§();
               }
               this.§6M§ -= param1;
            }
            else if(this.§,<§.§1p§())
            {
               this.§,<§.§'"5§();
            }
         }
         if(!this.§7^§.§5!p§ && this.isEagleUsed())
         {
            this.§`#'§();
         }
         if(this.§ for§ && !this.§,!-§)
         {
            _loc4_ = §+!F§(this.§3!d§).§,i§;
            if(§<!J§.§=!%§.slingshot.mSlingShotState == §%#7§.§]!r§ && !_loc4_)
            {
               this.§1`§();
            }
         }
         var _loc3_:§<U§ = §<!J§.§=!%§.slingshot as §<U§;
         if(!this.§9"?§ && (!§<!J§.§=!%§.objects.isPigsAlive() || §<!J§.§=!%§.slingshot.getBirdCount() <= 0) && (_loc3_ && !_loc3_.§8c§))
         {
            this.§#"o§(true);
         }
      }
      
      public function §<"F§(param1:Event) : void
      {
         this.§,!-§ = false;
         if(§0F§(§<!J§.§=!%§).slingshot.getBirdCount() <= 0)
         {
            this.§1`§();
         }
         else if(!this.§ for§)
         {
            this.§1`§();
         }
      }
      
      protected function §`#'§() : void
      {
         this.§7^§.§2"$§ = this.isEagleUsed();
         this.§3"5§.visible = this.isEagleUsed();
      }
      
      public function §7"3§(param1:String) : void
      {
         this.§&"&§.§[A§.§0k§(param1);
         this.§,<§.§0k§(param1);
      }
      
      protected function §<"v§() : void
      {
         this.§2!-§.enabled = false;
         this.§2!-§.hide(true);
         this.§,<§.enabled = false;
         this.§,<§.hide(true);
         this.§;"^§();
      }
      
      protected function §1`§() : void
      {
         var _loc2_:Boolean = false;
         this.§ for§ = false;
         if(§0F§(§<!J§.§=!%§).slingshot.getBirdCount() >= 1)
         {
            _loc2_ = §<U§(§<!J§.§=!%§.slingshot).§'"%§;
            if(§<!J§.§=!%§.slingshot.getCurrentBirdType() == §&$§.§5!L§)
            {
               this.§<"v§();
               return;
            }
            if(_loc2_)
            {
               this.§2!-§.enabled = true;
               this.§2!-§.show(true);
            }
            else
            {
               this.§2!-§.visible = true;
               this.§2!-§.§#"8§();
            }
            this.§,#,§.§#!@§();
         }
         else
         {
            this.§2!-§.hide(true);
            this.§,#,§.§2##§();
         }
         var _loc1_:Boolean = §0F§(§<!J§.§=!%§).§"Y§(§[!b§.§]!F§);
         if(!_loc1_)
         {
            this.§,<§.enabled = true;
            this.§,<§.show();
         }
         else
         {
            this.§,<§.visible = true;
            this.§,<§.§#"8§();
            §3"g§ = false;
         }
      }
      
      protected function §;!^§() : void
      {
         this.§2!-§.enabled = false;
         this.§2!-§.hide(true);
         this.§;"^§();
      }
      
      protected function §;"^§(param1:Event = null) : void
      {
         this.§,#,§.§2##§();
      }
      
      public function §#"o§(param1:Boolean) : void
      {
         if(param1 && §3"g§)
         {
            return;
         }
         this.§9"?§ = param1;
         this.§<"b§.setVisibility(param1);
         this.§^#&§.setVisibility(param1);
         if(param1)
         {
            this.§^#&§.setComponentVisualState(§%"z§.§7!?§);
            §3"g§ = true;
         }
      }
      
      protected function §#e§(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:int = this.§3!d§.getScore(10);
         var _loc3_:int = this.§]!"§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§]!"§.getValue() + param1 * §^!5§);
            this.§]!"§.§-[§(_loc3_);
         }
         this.§7^§.§#e§(_loc3_);
         if(this.isEagleUsed())
         {
            _loc4_ = this.§3!d§.getEagleScore();
            if(this.§;"`§ < _loc4_)
            {
               this.§;"`§ = Math.min(_loc4_,this.§;"`§ + param1 * §&Z§);
               this.§3"5§.updateScore(this.§;"`§);
            }
         }
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§2!-§.isEagleUsed();
      }
      
      override public function isAllowedToChangeStateRegardingPowerUpsRunning() : Boolean
      {
         var _loc1_:§=!Q§ = §0F§(§<!J§.§=!%§).§9N§;
         return !_loc1_.§]!§();
      }
      
      override public function isAllowedToChangeStateRegardingPowerUpsSyncing() : Boolean
      {
         var _loc4_:§3!§ = null;
         var _loc1_:§=!Q§ = §0F§(§<!J§.§=!%§).§9N§;
         var _loc2_:§&!Y§ = §4"#§.singleton.popupManager;
         if(_loc1_.isLoading && !_loc2_.isPopupOpenById(SyncPopup.§-"§))
         {
            _loc4_ = new SyncPopup(§^!S§.ERROR,§2!s§.DEFAULT);
            §4"#§.singleton.popupManager.openPopup(_loc4_);
            _loc1_.addEventListener(§+!W§.§^!_§,this.§3j§);
         }
         return !_loc1_.isLoading;
      }
      
      protected function §#"e§() : Boolean
      {
         if(this.§3B§)
         {
            return this.§^#%§;
         }
         if(this.§,<§.§-u§)
         {
            return true;
         }
         if(this.§9!T§)
         {
            if(this.§&"&§.§0!O§ < 0)
            {
               if(this.§&"&§.isEnabled)
               {
                  this.§&"&§.isEnabled = false;
               }
               return true;
            }
         }
         else if(this.§6M§ <= 0)
         {
            if(this.§,<§.enabled)
            {
               this.§,<§.enabled = false;
            }
            return true;
         }
         return false;
      }
      
      protected function §`!u§() : Boolean
      {
         return this.§7^§.§4!7§;
      }
      
      private function §^y§() : Boolean
      {
         return §+"X§(§<!J§.§=!%§.levelObjects).§^y§();
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         if(this.§!"Q§)
         {
            return false;
         }
         return Boolean(this.isAllowedToChangeStateRegardingPowerUpsSyncing() && this.§`!u§() && this.isAllowedToChangeStateRegardingPowerUpsRunning() && !this.§^y§());
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if(this.§!"Q§)
         {
            return false;
         }
         return Boolean(this.§#"e§() && this.isAllowedToChangeStateRegardingPowerUpsSyncing() && this.§`!u§() && this.isAllowedToChangeStateRegardingPowerUpsRunning() && !this.§^y§());
      }
      
      protected function §5"e§(param1:Event) : void
      {
         var _loc2_:§<U§ = §<!J§.§=!%§.slingshot as §<U§;
         if(_loc2_)
         {
            _loc2_.§,"b§();
         }
         §3"g§ = false;
         this.§#"o§(false);
      }
      
      private function §#`§(param1:§+!W§) : void
      {
         if(param1.allowNextPowerUp)
         {
            if(!this.§ for§ && !this.§,!-§)
            {
               this.§1`§();
            }
         }
         else
         {
            this.§1!9§.§4!o§(0);
            this.§,#,§.§+Z§();
            this.§2!-§.visible = true;
            this.§2!-§.§#"8§();
            this.§,<§.§#"8§();
         }
      }
      
      protected function §7!F§(param1:Event) : void
      {
         this.§ for§ = true;
         this.§,!-§ = true;
         this.§<"v§();
      }
      
      protected function §&!5§(param1:§+!W§) : void
      {
         if(param1.§8!#§ == §[!b§.§]!F§)
         {
            §0F§(§<!J§.§=!%§).§`!k§();
            §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§]!f§,this.§&!5§);
            this.§!"Q§ = false;
         }
      }
      
      protected function §2!n§(param1:Event) : void
      {
         this.§&"&§.§[A§.removeEventListener(§1V§.§!!r§,this.§2!n§);
         this.§,<§.removeEventListener(§1V§.§!!r§,this.§2!n§);
         this.§3B§ = true;
         if(this.§9!T§)
         {
            this.§&"&§.hide();
         }
      }
      
      protected function §"#4§(param1:§+!W§) : void
      {
         if(param1.§8!#§ == §[!b§.§]!F§)
         {
            §0F§(§<!J§.§=!%§).§`!k§();
            §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§]!f§,this.§"#4§);
            this.§^#%§ = true;
         }
      }
      
      private function §3j§(param1:Event) : void
      {
         §0F§(§<!J§.§=!%§).§9N§.removeEventListener(§+!W§.§^!_§,this.§3j§);
         §4"#§.singleton.popupManager.§6!u§(SyncPopup.§-"§);
      }
      
      protected function onUIInteraction(param1:§8"U§) : void
      {
         if(§2@§)
         {
            return;
         }
         if(param1.§7!k§ is §;g§)
         {
            if(param1.§;#6§ == §-V§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §]s§.§9!j§();
            }
            else if(param1.§;#6§ == §-V§.LISTENER_EVENT_MOUSE_UP)
            {
               §]s§.§ ! §();
            }
         }
         switch(param1.§5!u§)
         {
            case "SKIP_EXTRA_BIRD":
               this.§&"&§.§0!O§ = -1;
               this.§3!d§.§4>§();
               §3"g§ = false;
               §]!s§.§[!S§(§]!s§.SKIP_EXTRA_BIRD);
               break;
            case "NEXT_LEVEL":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               if(!§<!J§.§=!%§.objects.isPigsAlive())
               {
                  this.§3!d§.§#!h§();
                  §]!s§.§[!S§(§]!s§.§-"O§);
               }
               else if(§<!J§.§=!%§.slingshot.getBirdCount() <= 0)
               {
                  if(this.§9!T§ && !this.§,<§.§-u§ && !this.§!"Q§ && !this.§3B§)
                  {
                     this.§#!;§();
                     §0F§(§<!J§.§=!%§).§]"§ = true;
                     §]!s§.§[!S§(§]!s§.§[r§);
                  }
                  else
                  {
                     this.§6M§ = -1;
                     this.§3!d§.§4>§();
                     §]!s§.§[!S§(§]!s§.§4"c§);
                  }
               }
               this.§#"o§(false);
               break;
            case "PAUSE":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               dispatchEvent(new §-!>§(§-!>§.§@! §));
               break;
            case "FULLSCREEN_BUTTON":
               §4"#§.singleton.§^L§();
         }
      }
   }
}
