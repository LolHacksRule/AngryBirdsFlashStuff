package §8!E§
{
   import §!"e§.SyncPopup;
   import §!"e§.§`"W§;
   import §"O§.§"K§;
   import §"O§.§5#F§;
   import §"O§.§^#]§;
   import §"a§.§6#!§;
   import §"k§.§!!J§;
   import §#!'§.§6"]§;
   import §%#W§.§["m§;
   import §+!c§.§]"d§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §,"N§.§6"w§;
   import §,"N§.§@#B§;
   import §,"N§.§@>§;
   import §1!i§.§;7§;
   import §5t§.§`"+§;
   import §7P§.§7"s§;
   import §7P§.§=1§;
   import §;!W§.§7"]§;
   import §;"3§.§+H§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §<"c§.§?#N§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§;a§;
   import §[!m§.§[!j§;
   import §^#>§.§8"f§;
   import §^#>§.§;x§;
   import §^#>§.§>f§;
   import §^z§.§5S§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class §^![§ extends §7"]§
   {
      
      public static const §#"$§:int = 125;
      
      public static const §#!X§:int = 50;
      
      public static const §36§:Number = 0.03;
      
      public static const §]!<§:int = 6000;
      
      public static const §`!§:int = §]!<§ * 0.75;
      
      public static var §2#6§:Boolean;
       
      
      protected var § F§:§6#!§;
      
      protected var §]!§:Boolean;
      
      protected var §9"O§:Boolean;
      
      protected var §3"#§:Boolean;
      
      protected var §8#_§:Number;
      
      protected var §!"r§:Boolean;
      
      protected var §#"S§:Boolean;
      
      protected var §<!B§:Boolean;
      
      protected var §0"-§:§;7§;
      
      protected var §;,§:Number = 0.0;
      
      protected var §9"n§:§^"m§;
      
      protected var §0!`§:§5#F§;
      
      protected var §4"v§:§ #^§;
      
      protected var §-#-§:§'!U§;
      
      protected var §>M§:Boolean;
      
      protected var §0#,§:§"!#§;
      
      protected var §[!Q§:§"#X§;
      
      protected var §+#P§:§@!A§;
      
      protected var §?"]§:§#k§;
      
      protected var §try§:§^#]§;
      
      protected var §0I§:§["m§;
      
      protected var §-#4§:§]"d§;
      
      private var §&"v§:§ #^§;
      
      private var §@!h§:§^"m§;
      
      private var §7!o§:Boolean;
      
      public function §^![§(param1:§ #^§, param2:§+"2§, param3:§6#!§, param4:§@>§, param5:§5"H§)
      {
         this.§0"-§ = new §;7§();
         this.§ F§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         §=#=§.setVisibility(false);
         this.§9"n§ = §^"m§(§=#=§.getItemByName("Button_Pause"));
         this.§0!`§ = new §5#F§(§^"m§(§=#=§.getItemByName("Button_OpenPowerupMenu")));
         this.§0I§ = new §["m§(§0"$§(§=#=§.getItemByName("MovieClip_IntroClips")));
         this.§4"v§ = § #^§(§=#=§.getItemByName("Container_PowerUpButtons"));
         this.§try§ = new §^#]§(this.§4"v§,this.§0!`§,§@#B§(§4#J§),this.§0I§);
         this.§0#,§ = new §"!#§(§ #^§(§=#=§.getItemByName("Container_MightyEagle")),this.§try§);
         this.§0#,§.enabled = true;
         this.§[!Q§ = new §"#X§(§ #^§(§=#=§.getItemByName("Container_ExtraBird")),this.§try§);
         this.§+#P§ = new §@!A§(§ #^§(§=#=§.getItemByName("Container_ZoomButtons")));
         this.§-#-§ = new §'!U§(§ #^§(§=#=§.getItemByName("Container_ExtraBirdTimer")),this.§try§);
         this.§-#4§ = new §]"d§(§=#=§,§+!b§,this.§ F§);
         this.§-#4§.levelStarted(§!!J§(§@#B§(§4#;§.singleton.dataModel).§0s§.§[n§(§+!b§.getEpisodeForLevel(§+!b§.currentLevel).name,§+!b§.currentLevel,false)),§+!b§.currentLevel);
         this.§?"]§ = new §#k§(§ #^§(§=#=§.getItemByName("Container_MightyFalconScore")));
         this.§?"]§.§="r§(§@#B§(§4#;§.singleton.dataModel).userProgress.getEagleScoreForLevel(§+!b§.currentLevel));
         this.§&"v§ = § #^§(§=#=§.getItemByName("Container_RightBottomCorner"));
         this.§@!h§ = §^"m§(§=#=§.getItemByName("Button_Next_Level"));
         this.§4"h§(false);
         §2#6§ = false;
         §=#=§.getItemByName("CrystalBreakAnimation").mClip.stop();
         §^#]§.§>"V§ = true;
         §^#]§.§>!e§ = false;
         this.§]!§ = §?#N§.§"3§;
         if(§?#N§.§"3§)
         {
            §?#N§.§"3§ = false;
            this.§[!Q§.§3#X§ = true;
            §8"f§(§,!q§.§9!,§).§=j§.addEventListener(§+H§.§["_§,this.§`%§);
            this.§ F§.§,#A§(§6#!§.§8#1§,true);
            _loc1_ = this.§try§.§0"[§(§6"w§.§1!m§);
         }
         this.§8#_§ = §]!<§;
         this.§!"r§ = false;
         this.§3"#§ = false;
         this.§9"O§ = false;
         this.§>M§ = false;
         this.§!"r§ = false;
         this.§0"-§.§3"Q§(0);
         this.§;,§ = 0;
         this.§0r§(0);
      }
      
      override public function dispose() : void
      {
         this.disable(false);
         this.§0#,§.enabled = false;
         this.§0#,§.dispose();
         this.§[!Q§.removeEventListener(§"#X§.§9!4§,this.§"#A§);
         this.§[!Q§.dispose();
         this.§[!Q§ = null;
         this.§+#P§.dispose();
         this.§+#P§ = null;
         this.§0!`§.dispose();
         this.§0!`§ = null;
         this.§-#-§.dispose();
         this.§-#-§ = null;
         this.§try§.dispose();
         this.§try§ = null;
         this.§0I§.dispose();
         this.§0I§ = null;
         this.§-#4§.dispose();
         this.§-#4§ = null;
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§=Z§,this.§`>§);
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§["_§,this.§`%§);
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§["_§,this.§[D§);
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§6p§,this.§!"b§);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §=#=§.setVisibility(true);
         §=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§[!Q§.addEventListener(§"#X§.§9!4§,this.§"#A§);
         this.§0#,§.addEventListener(§"!#§.§9"9§,this.§>B§);
         §8"f§(§,!q§.§9!,§).§=j§.addEventListener(§+H§.§=Z§,this.§`>§);
         this.§<!B§ = false;
         this.§+#P§.§'!X§ = this.§ F§;
         this.§-#4§.activate(this.§ F§);
         this.§try§.§3-§ = §+!b§;
         this.§try§.enable();
         this.§try§.§0";§ = false;
         if(§^#]§.§>"V§ && !§^#]§.§>!e§)
         {
            this.§try§.§8!p§();
         }
         var _loc2_:§8"f§ = §8"f§(§,!q§.§9!,§);
         _loc2_.slingshot.addEventListener(§;x§.§?!i§,this.§5!v§);
         this.§1!D§();
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:§8"f§ = §8"f§(§,!q§.§9!,§);
         _loc2_.slingshot.removeEventListener(§;x§.§?!i§,this.§5!v§);
         §=#=§.setVisibility(false);
         §=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§9"n§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§["_§,this.§`%§);
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§["_§,this.§[D§);
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§6p§,this.§!"b§);
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§=Z§,this.§`>§);
         this.§[!Q§.removeEventListener(§"#X§.§9!4§,this.§ in§);
         this.§[!Q§.removeEventListener(§"#X§.§9!4§,this.§"#A§);
         this.§-#-§.§@"N§.removeEventListener(§"#X§.§9!4§,this.§ in§);
         this.§0#,§.removeEventListener(§"!#§.§9"9§,this.§>B§);
         this.§try§.disable();
         this.§-#4§.deActivate();
         super.disable(param1);
      }
      
      private function §+"q§() : void
      {
         if(this.§>M§)
         {
            this.§-#-§.show();
            this.§[!Q§.hide();
            this.§-#-§.§@"N§.removeEventListener(§"#X§.§9!4§,this.§ in§);
            this.§-#-§.§@"N§.addEventListener(§"#X§.§9!4§,this.§ in§);
         }
         else
         {
            this.§[!Q§.§##3§(§`!§ / 1000);
            this.§[!Q§.removeEventListener(§"#X§.§9!4§,this.§ in§);
            this.§[!Q§.addEventListener(§"#X§.§9!4§,this.§ in§);
         }
         §8"f§(§,!q§.§9!,§).§=j§.addEventListener(§+H§.§["_§,this.§[D§);
         this.§4"h§(false);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         this.§0r§(param1);
         this.§-#4§.run(param1);
         this.§+#P§.update(param1);
         this.§try§.update(param1);
         this.§0I§.update(param1);
         var _loc2_:§8"f§ = §8"f§(§,!q§.§9!,§);
         if(!this.§!"r§ && !this.§]!§ && _loc2_.§-#I§)
         {
            this.§!"r§ = true;
            this.§="e§();
            if(!this.§[!Q§.§3#X§)
            {
               if(_loc2_.§>O§ == §6#!§.§7!T§)
               {
                  this.§+"q§();
               }
               else
               {
                  this.§[!Q§.§1e§();
               }
            }
         }
         if(_loc2_.§-#I§)
         {
            if(this.§>M§)
            {
               if(!§,!q§.isPaused)
               {
                  this.§-#-§.update(param1);
               }
            }
            else if(!§,!q§.isPaused && this.§8#_§ >= 0)
            {
               if(!this.§[!Q§.§@!=§())
               {
                  this.§[!Q§.§-!X§();
               }
               this.§8#_§ -= param1;
            }
            else if(this.§[!Q§.§@!=§())
            {
               this.§[!Q§.§0S§();
            }
         }
         if(!this.§-#4§.§9#F§ && this.isEagleUsed())
         {
            this.§1!D§();
         }
         if(this.§#"S§ && !this.§<!B§)
         {
            _loc4_ = §5S§(this.§ F§).§`"o§;
            if(§,!q§.§9!,§.slingshot.mSlingShotState == §;x§.§,"K§ && !_loc4_)
            {
               this.§9"&§();
            }
         }
         var _loc3_:§>f§ = §,!q§.§9!,§.slingshot as §>f§;
         if(!this.§7!o§ && (!§,!q§.§9!,§.objects.isPigsAlive() || §,!q§.§9!,§.slingshot.getBirdCount() <= 0) && (_loc3_ && !_loc3_.§=#`§))
         {
            this.§4"h§(true);
         }
      }
      
      public function §5!v§(param1:Event) : void
      {
         this.§<!B§ = false;
         if(§8"f§(§,!q§.§9!,§).slingshot.getBirdCount() <= 0)
         {
            this.§9"&§();
         }
         else if(!this.§#"S§)
         {
            this.§9"&§();
         }
      }
      
      protected function §1!D§() : void
      {
         this.§-#4§.§#"a§ = this.isEagleUsed();
         this.§?"]§.visible = this.isEagleUsed();
      }
      
      public function §-u§(param1:String) : void
      {
         this.§-#-§.§@"N§.§4,§(param1);
         this.§[!Q§.§4,§(param1);
      }
      
      protected function §,h§() : void
      {
         this.§0#,§.enabled = false;
         this.§0#,§.hide(true);
         this.§[!Q§.enabled = false;
         this.§[!Q§.hide(true);
         this.§=e§();
      }
      
      protected function §9"&§() : void
      {
         var _loc2_:Boolean = false;
         this.§#"S§ = false;
         if(§8"f§(§,!q§.§9!,§).slingshot.getBirdCount() >= 1)
         {
            _loc2_ = §>f§(§,!q§.§9!,§.slingshot).§2!z§;
            if(§,!q§.§9!,§.slingshot.getCurrentBirdType() == §=1§.§+"§)
            {
               this.§,h§();
               return;
            }
            if(_loc2_)
            {
               this.§0#,§.enabled = true;
               this.§0#,§.show(true);
            }
            else
            {
               this.§0#,§.visible = true;
               this.§0#,§.§1e§();
            }
            this.§try§.§&!O§();
         }
         else
         {
            this.§0#,§.hide(true);
            this.§try§.§##A§();
         }
         var _loc1_:Boolean = §8"f§(§,!q§.§9!,§).§8%§(§6"w§.§1!m§);
         if(!_loc1_)
         {
            this.§[!Q§.enabled = true;
            this.§[!Q§.show();
         }
         else
         {
            this.§[!Q§.visible = true;
            this.§[!Q§.§1e§();
            §2#6§ = false;
         }
      }
      
      protected function §="e§() : void
      {
         this.§0#,§.enabled = false;
         this.§0#,§.hide(true);
         this.§=e§();
      }
      
      protected function §=e§(param1:Event = null) : void
      {
         this.§try§.§##A§();
      }
      
      public function §4"h§(param1:Boolean) : void
      {
         if(param1 && §2#6§)
         {
            return;
         }
         this.§7!o§ = param1;
         this.§&"v§.setVisibility(param1);
         this.§@!h§.setVisibility(param1);
         if(param1)
         {
            this.§@!h§.setComponentVisualState(§1"z§.§##;§);
            §2#6§ = true;
         }
      }
      
      protected function §0r§(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:int = this.§ F§.getScore(10);
         var _loc3_:int = this.§0"-§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§0"-§.getValue() + param1 * §#!X§);
            this.§0"-§.§3"Q§(_loc3_);
         }
         this.§-#4§.§0r§(_loc3_);
         if(this.isEagleUsed())
         {
            _loc4_ = this.§ F§.getEagleScore();
            if(this.§;,§ < _loc4_)
            {
               this.§;,§ = Math.min(_loc4_,this.§;,§ + param1 * §36§);
               this.§?"]§.updateScore(this.§;,§);
            }
         }
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§0#,§.isEagleUsed();
      }
      
      override public function isAllowedToChangeStateRegardingPowerUpsRunning() : Boolean
      {
         var _loc1_:§"K§ = §8"f§(§,!q§.§9!,§).§=j§;
         return !_loc1_.§6!4§();
      }
      
      override public function isAllowedToChangeStateRegardingPowerUpsSyncing() : Boolean
      {
         var _loc4_:§[!j§ = null;
         var _loc1_:§"K§ = §8"f§(§,!q§.§9!,§).§=j§;
         var _loc2_:§;a§ = §4#;§.singleton.popupManager;
         if(_loc1_.isLoading && !_loc2_.isPopupOpenById(SyncPopup.§%!h§))
         {
            _loc4_ = new SyncPopup(§`"W§.ERROR,§+5§.DEFAULT);
            §4#;§.singleton.popupManager.openPopup(_loc4_);
            _loc1_.addEventListener(§+H§.§6p§,this.§!"b§);
         }
         return !_loc1_.isLoading;
      }
      
      protected function §]"2§() : Boolean
      {
         if(this.§9"O§)
         {
            return this.§3"#§;
         }
         if(this.§[!Q§.§3#X§)
         {
            return true;
         }
         if(this.§>M§)
         {
            if(this.§-#-§.§6"J§ < 0)
            {
               if(this.§-#-§.isEnabled)
               {
                  this.§-#-§.isEnabled = false;
               }
               return true;
            }
         }
         else if(this.§8#_§ <= 0)
         {
            if(this.§[!Q§.enabled)
            {
               this.§[!Q§.enabled = false;
            }
            return true;
         }
         return false;
      }
      
      protected function §5#S§() : Boolean
      {
         return this.§-#4§.§3#2§;
      }
      
      private function §##8§() : Boolean
      {
         return §7"s§(§,!q§.§9!,§.levelObjects).§##8§();
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         if(this.§]!§)
         {
            return false;
         }
         return Boolean(this.isAllowedToChangeStateRegardingPowerUpsSyncing() && this.§5#S§() && this.isAllowedToChangeStateRegardingPowerUpsRunning() && !this.§##8§());
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if(this.§]!§)
         {
            return false;
         }
         return Boolean(this.§]"2§() && this.isAllowedToChangeStateRegardingPowerUpsSyncing() && this.§5#S§() && this.isAllowedToChangeStateRegardingPowerUpsRunning() && !this.§##8§());
      }
      
      protected function §"#A§(param1:Event) : void
      {
         var _loc2_:§>f§ = §,!q§.§9!,§.slingshot as §>f§;
         if(_loc2_)
         {
            _loc2_.§;"O§();
         }
         §2#6§ = false;
         this.§4"h§(false);
      }
      
      private function §`>§(param1:§+H§) : void
      {
         if(param1.allowNextPowerUp)
         {
            if(!this.§#"S§ && !this.§<!B§)
            {
               this.§9"&§();
            }
         }
         else
         {
            this.§0!`§.§@#D§(0);
            this.§try§.§>"W§();
            this.§0#,§.visible = true;
            this.§0#,§.§1e§();
            this.§[!Q§.§1e§();
         }
      }
      
      protected function §>B§(param1:Event) : void
      {
         this.§#"S§ = true;
         this.§<!B§ = true;
         this.§,h§();
      }
      
      protected function §`%§(param1:§+H§) : void
      {
         if(param1.§6#R§ == §6"w§.§1!m§)
         {
            §8"f§(§,!q§.§9!,§).§7#K§();
            §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§["_§,this.§`%§);
            this.§]!§ = false;
         }
      }
      
      protected function § in§(param1:Event) : void
      {
         this.§-#-§.§@"N§.removeEventListener(§"#X§.§9!4§,this.§ in§);
         this.§[!Q§.removeEventListener(§"#X§.§9!4§,this.§ in§);
         this.§9"O§ = true;
         if(this.§>M§)
         {
            this.§-#-§.hide();
         }
      }
      
      protected function §[D§(param1:§+H§) : void
      {
         if(param1.§6#R§ == §6"w§.§1!m§)
         {
            §8"f§(§,!q§.§9!,§).§7#K§();
            §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§["_§,this.§[D§);
            this.§3"#§ = true;
         }
      }
      
      private function §!"b§(param1:Event) : void
      {
         §8"f§(§,!q§.§9!,§).§=j§.removeEventListener(§+H§.§6p§,this.§!"b§);
         §4#;§.singleton.popupManager.§,"o§(SyncPopup.§%!h§);
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         if(§]"u§)
         {
            return;
         }
         if(param1.§^"r§ is §^"m§)
         {
            if(param1.§@#8§ == §&#X§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §`"+§.§^U§();
            }
            else if(param1.§@#8§ == §&#X§.LISTENER_EVENT_MOUSE_UP)
            {
               §`"+§.§<"o§();
            }
         }
         switch(param1.§=!k§)
         {
            case "SKIP_EXTRA_BIRD":
               this.§-#-§.§6"J§ = -1;
               this.§ F§.§9#^§();
               §2#6§ = false;
               §6"]§.§]C§(§6"]§.SKIP_EXTRA_BIRD);
               break;
            case "NEXT_LEVEL":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               if(!§,!q§.§9!,§.objects.isPigsAlive())
               {
                  this.§ F§.§`#$§();
                  §6"]§.§]C§(§6"]§.§'v§);
               }
               else if(§,!q§.§9!,§.slingshot.getBirdCount() <= 0)
               {
                  if(this.§>M§ && !this.§[!Q§.§3#X§ && !this.§]!§ && !this.§9"O§)
                  {
                     this.§+"q§();
                     §8"f§(§,!q§.§9!,§).§-#I§ = true;
                     §6"]§.§]C§(§6"]§.§<8§);
                  }
                  else
                  {
                     this.§8#_§ = -1;
                     this.§ F§.§9#^§();
                     §6"]§.§]C§(§6"]§.§ "i§);
                  }
               }
               this.§4"h§(false);
               break;
            case "PAUSE":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               dispatchEvent(new §"!4§(§"!4§.§!#B§));
               break;
            case "FULLSCREEN_BUTTON":
               §4#;§.singleton.§5"q§();
         }
      }
   }
}
