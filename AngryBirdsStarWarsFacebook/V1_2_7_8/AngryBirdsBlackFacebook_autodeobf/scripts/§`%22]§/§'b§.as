package §`"]§
{
   import §!X§.§2!C§;
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §#!k§.§4!4§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §,o§.§0#"§;
   import §-4§.§4!C§;
   import §0"I§.§0"b§;
   import §0R§.§0!8§;
   import §1!X§.§!"#§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §4m§.§&N§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §5!q§.§&§;
   import §5!q§.§-R§;
   import §5!q§.§6"@§;
   import §6"R§.§ !M§;
   import §6"R§.§7#"§;
   import §7""§.§&!F§;
   import §7A§.§<1§;
   import §<"s§.§0u§;
   import §<"s§.SyncPopup;
   import §<I§.§'#!§;
   import §="8§.§'!U§;
   import §="8§.§,#!§;
   import §="8§.§1§;
   import §]!=§.§;"I§;
   import §]"o§.§8!l§;
   import §`!b§.§1X§;
   import §`"8§.§#f§;
   import §`"8§.§-!w§;
   import §`"8§.§4"K§;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   
   public class §'b§ extends §!"#§
   {
      
      public static const §0!>§:int = 125;
      
      public static const §9t§:int = 50;
      
      public static const §24§:Number = 0.03;
      
      public static const §!"3§:int = 6000;
      
      public static const §+!P§:int = §!"3§ * 0.75;
      
      public static var §<!A§:Boolean;
       
      
      protected var §^!!§:§;"I§;
      
      protected var §3"p§:Boolean;
      
      protected var §['§:Boolean;
      
      protected var §6Y§:Boolean;
      
      protected var §+`§:Number;
      
      protected var §6!U§:Boolean;
      
      protected var §&g§:Boolean;
      
      protected var §?!a§:Boolean;
      
      protected var §4&§:§<1§;
      
      protected var §#!Z§:Number = 0.0;
      
      protected var §>"4§:§2"8§;
      
      protected var §6m§:§1#3§;
      
      protected var §<;§:§,m§;
      
      protected var §["x§:§'!q§;
      
      protected var §`"D§:Boolean;
      
      protected var §7##§:§&<§;
      
      protected var §9!n§:§"!'§;
      
      protected var §^!K§:§]5§;
      
      protected var §9a§:§9=§;
      
      protected var §?r§:§,#!§;
      
      protected var §]!T§:§4!C§;
      
      protected var §""<§:§&!F§;
      
      private var §;!t§:§,m§;
      
      private var §2!S§:§2"8§;
      
      private var §<N§:Boolean;
      
      public function §'b§(param1:§,m§, param2:§7!m§, param3:§;"I§, param4:§4"K§, param5:§="B§)
      {
         this.§4&§ = new §<1§();
         this.§^!!§ = param3;
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         §=5§.setVisibility(false);
         this.§>"4§ = §2"8§(§=5§.getItemByName("Button_Pause"));
         this.§6m§ = new §1#3§(§2"8§(§=5§.getItemByName("Button_OpenPowerupMenu")));
         this.§]!T§ = new §4!C§(§<`§(§=5§.getItemByName("MovieClip_IntroClips")));
         this.§<;§ = §,m§(§=5§.getItemByName("Container_PowerUpButtons"));
         this.§?r§ = new §,#!§(this.§<;§,this.§6m§,§-!w§(§]S§),this.§]!T§);
         this.§7##§ = new §&<§(§,m§(§=5§.getItemByName("Container_MightyEagle")),this.§?r§);
         this.§7##§.enabled = true;
         this.§9!n§ = new §"!'§(§,m§(§=5§.getItemByName("Container_ExtraBird")),this.§?r§);
         this.§^!K§ = new §]5§(§,m§(§=5§.getItemByName("Container_ZoomButtons")));
         this.§["x§ = new §'!q§(§,m§(§=5§.getItemByName("Container_ExtraBirdTimer")),this.§?r§);
         this.§""<§ = new §&!F§(§=5§,§ !p§,this.§^!!§);
         this.§""<§.levelStarted(§1X§(§-!w§(§;"@§.singleton.dataModel).§2-§.§&"L§(§ !p§.getEpisodeForLevel(§ !p§.currentLevel).name,§ !p§.currentLevel,false)),§ !p§.currentLevel);
         this.§9a§ = new §9=§(§,m§(§=5§.getItemByName("Container_MightyFalconScore")));
         this.§9a§.§4`§(§-!w§(§;"@§.singleton.dataModel).userProgress.getEagleScoreForLevel(§ !p§.currentLevel));
         this.§;!t§ = §,m§(§=5§.getItemByName("Container_RightBottomCorner"));
         this.§2!S§ = §2"8§(§=5§.getItemByName("Button_Next_Level"));
         this.§"!%§(false);
         §<!A§ = false;
         §=5§.getItemByName("CrystalBreakAnimation").mClip.stop();
         §,#!§.§?#6§ = true;
         §,#!§.§^I§ = false;
         this.§3"p§ = §2!C§.§'"i§;
         if(§2!C§.§'"i§)
         {
            §2!C§.§'"i§ = false;
            this.§9!n§.§@"-§ = true;
            §6"@§(§;!e§.§<x§).§2#7§.addEventListener(§8!l§.§7"[§,this.§@"]§);
            this.§^!!§.§@f§(§;"I§.§8!h§,true);
            _loc1_ = this.§?r§.§8"E§(§#f§.§]"i§);
         }
         this.§+`§ = §!"3§;
         this.§6!U§ = false;
         this.§6Y§ = false;
         this.§['§ = false;
         this.§`"D§ = false;
         this.§6!U§ = false;
         this.§4&§.§6!b§(0);
         this.§#!Z§ = 0;
         this.§7"'§(0);
      }
      
      override public function dispose() : void
      {
         this.disable(false);
         this.§7##§.enabled = false;
         this.§7##§.dispose();
         this.§9!n§.removeEventListener(§"!'§.§8#5§,this.§&"d§);
         this.§9!n§.dispose();
         this.§9!n§ = null;
         this.§^!K§.dispose();
         this.§^!K§ = null;
         this.§6m§.dispose();
         this.§6m§ = null;
         this.§["x§.dispose();
         this.§["x§ = null;
         this.§?r§.dispose();
         this.§?r§ = null;
         this.§]!T§.dispose();
         this.§]!T§ = null;
         this.§""<§.dispose();
         this.§""<§ = null;
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§3#4§,this.§3"6§);
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§7"[§,this.§@"]§);
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§7"[§,this.§&!B§);
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§?"<§,this.§!!z§);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §=5§.setVisibility(true);
         §=5§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§9!n§.addEventListener(§"!'§.§8#5§,this.§&"d§);
         this.§7##§.addEventListener(§&<§.§-f§,this.§>j§);
         §6"@§(§;!e§.§<x§).§2#7§.addEventListener(§8!l§.§3#4§,this.§3"6§);
         this.§?!a§ = false;
         this.§^!K§.§=!c§ = this.§^!!§;
         this.§""<§.activate(this.§^!!§);
         this.§?r§.§#!J§ = § !p§;
         this.§?r§.enable();
         this.§?r§.§3!n§ = false;
         if(§,#!§.§?#6§ && !§,#!§.§^I§)
         {
            this.§?r§.§"![§();
         }
         var _loc2_:§6"@§ = §6"@§(§;!e§.§<x§);
         _loc2_.slingshot.addEventListener(§-R§.§?!`§,this.§0!y§);
         this.§9!%§();
      }
      
      override public function disable(param1:Boolean) : void
      {
         var _loc2_:§6"@§ = §6"@§(§;!e§.§<x§);
         _loc2_.slingshot.removeEventListener(§-R§.§?!`§,this.§0!y§);
         §=5§.setVisibility(false);
         §=5§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§>"4§.setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§7"[§,this.§@"]§);
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§7"[§,this.§&!B§);
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§?"<§,this.§!!z§);
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§3#4§,this.§3"6§);
         this.§9!n§.removeEventListener(§"!'§.§8#5§,this.§%!f§);
         this.§9!n§.removeEventListener(§"!'§.§8#5§,this.§&"d§);
         this.§["x§.§?!j§.removeEventListener(§"!'§.§8#5§,this.§%!f§);
         this.§7##§.removeEventListener(§&<§.§-f§,this.§>j§);
         this.§?r§.disable();
         this.§""<§.deActivate();
         super.disable(param1);
      }
      
      private function §`!W§() : void
      {
         if(this.§`"D§)
         {
            this.§["x§.show();
            this.§9!n§.hide();
            this.§["x§.§?!j§.removeEventListener(§"!'§.§8#5§,this.§%!f§);
            this.§["x§.§?!j§.addEventListener(§"!'§.§8#5§,this.§%!f§);
         }
         else
         {
            this.§9!n§.§<!!§(§+!P§ / 1000);
            this.§9!n§.removeEventListener(§"!'§.§8#5§,this.§%!f§);
            this.§9!n§.addEventListener(§"!'§.§8#5§,this.§%!f§);
         }
         §6"@§(§;!e§.§<x§).§2#7§.addEventListener(§8!l§.§7"[§,this.§&!B§);
         this.§"!%§(false);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         this.§7"'§(param1);
         this.§""<§.run(param1);
         this.§^!K§.update(param1);
         this.§?r§.update(param1);
         this.§]!T§.update(param1);
         var _loc2_:§6"@§ = §6"@§(§;!e§.§<x§);
         if(!this.§6!U§ && !this.§3"p§ && _loc2_.§?"v§)
         {
            this.§6!U§ = true;
            this.§null §();
            if(!this.§9!n§.§@"-§)
            {
               if(_loc2_.§"!5§ == §;"I§.§ #§)
               {
                  this.§`!W§();
               }
               else
               {
                  this.§9!n§.§44§();
               }
            }
         }
         if(_loc2_.§?"v§)
         {
            if(this.§`"D§)
            {
               if(!§;!e§.isPaused)
               {
                  this.§["x§.update(param1);
               }
            }
            else if(!§;!e§.isPaused && this.§+`§ >= 0)
            {
               if(!this.§9!n§.§""q§())
               {
                  this.§9!n§.§^#2§();
               }
               this.§+`§ -= param1;
            }
            else if(this.§9!n§.§""q§())
            {
               this.§9!n§.§["S§();
            }
         }
         if(!this.§""<§.§6;§ && this.isEagleUsed())
         {
            this.§9!%§();
         }
         if(this.§&g§ && !this.§?!a§)
         {
            _loc4_ = §0#"§(this.§^!!§).§>#$§;
            if(§;!e§.§<x§.slingshot.mSlingShotState == §-R§.§`9§ && !_loc4_)
            {
               this.§'#7§();
            }
         }
         var _loc3_:§&#3§ = §;!e§.§<x§.slingshot as §&#3§;
         if(!this.§<N§ && (!§;!e§.§<x§.objects.isPigsAlive() || §;!e§.§<x§.slingshot.getBirdCount() <= 0) && (_loc3_ && !_loc3_.§=!N§))
         {
            this.§"!%§(true);
         }
      }
      
      public function §0!y§(param1:Event) : void
      {
         this.§?!a§ = false;
         if(§6"@§(§;!e§.§<x§).slingshot.getBirdCount() <= 0)
         {
            this.§'#7§();
         }
         else if(!this.§&g§)
         {
            this.§'#7§();
         }
      }
      
      protected function §9!%§() : void
      {
         this.§""<§.§ Z§ = this.isEagleUsed();
         this.§9a§.visible = this.isEagleUsed();
      }
      
      public function §[y§(param1:String) : void
      {
         this.§["x§.§?!j§.§=!$§(param1);
         this.§9!n§.§=!$§(param1);
      }
      
      protected function §[3§() : void
      {
         this.§7##§.enabled = false;
         this.§7##§.hide(true);
         this.§9!n§.enabled = false;
         this.§9!n§.hide(true);
         this.§7d§();
      }
      
      protected function §'#7§() : void
      {
         var _loc2_:Boolean = false;
         this.§&g§ = false;
         if(§6"@§(§;!e§.§<x§).slingshot.getBirdCount() >= 1)
         {
            _loc2_ = §&#3§(§;!e§.§<x§.slingshot).§8"N§;
            if(§;!e§.§<x§.slingshot.getCurrentBirdType() == §7#"§.§^!3§)
            {
               this.§[3§();
               return;
            }
            if(_loc2_)
            {
               this.§7##§.enabled = true;
               this.§7##§.show(true);
            }
            else
            {
               this.§7##§.visible = true;
               this.§7##§.§44§();
            }
            this.§?r§.§+6§();
         }
         else
         {
            this.§7##§.hide(true);
            this.§?r§.§+F§();
         }
         var _loc1_:Boolean = §6"@§(§;!e§.§<x§).§`#§(§#f§.§]"i§);
         if(!_loc1_)
         {
            this.§9!n§.enabled = true;
            this.§9!n§.show();
         }
         else
         {
            this.§9!n§.visible = true;
            this.§9!n§.§44§();
            §<!A§ = false;
         }
      }
      
      protected function §null §() : void
      {
         this.§7##§.enabled = false;
         this.§7##§.hide(true);
         this.§7d§();
      }
      
      protected function §7d§(param1:Event = null) : void
      {
         this.§?r§.§+F§();
      }
      
      public function §"!%§(param1:Boolean) : void
      {
         if(param1 && §<!A§)
         {
            return;
         }
         this.§<N§ = param1;
         this.§;!t§.setVisibility(param1);
         this.§2!S§.setVisibility(param1);
         if(param1)
         {
            this.§2!S§.setComponentVisualState(§7!Y§.§7!e§);
            §<!A§ = true;
         }
      }
      
      protected function §7"'§(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:int = this.§^!!§.getScore(10);
         var _loc3_:int = this.§4&§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§4&§.getValue() + param1 * §9t§);
            this.§4&§.§6!b§(_loc3_);
         }
         this.§""<§.§7"'§(_loc3_);
         if(this.isEagleUsed())
         {
            _loc4_ = this.§^!!§.getEagleScore();
            if(this.§#!Z§ < _loc4_)
            {
               this.§#!Z§ = Math.min(_loc4_,this.§#!Z§ + param1 * §24§);
               this.§9a§.updateScore(this.§#!Z§);
            }
         }
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§7##§.isEagleUsed();
      }
      
      override public function isAllowedToChangeStateRegardingPowerUpsRunning() : Boolean
      {
         var _loc1_:§'!U§ = §6"@§(§;!e§.§<x§).§2#7§;
         return !_loc1_.§4"9§();
      }
      
      override public function isAllowedToChangeStateRegardingPowerUpsSyncing() : Boolean
      {
         var _loc4_:§5!R§ = null;
         var _loc1_:§'!U§ = §6"@§(§;!e§.§<x§).§2#7§;
         var _loc2_:§&N§ = §;"@§.singleton.popupManager;
         if(_loc1_.isLoading && !_loc2_.isPopupOpenById(SyncPopup.§^"3§))
         {
            _loc4_ = new SyncPopup(§0u§.ERROR,§^T§.DEFAULT);
            §;"@§.singleton.popupManager.openPopup(_loc4_);
            _loc1_.addEventListener(§8!l§.§?"<§,this.§!!z§);
         }
         return !_loc1_.isLoading;
      }
      
      protected function §?!z§() : Boolean
      {
         if(this.§['§)
         {
            return this.§6Y§;
         }
         if(this.§9!n§.§@"-§)
         {
            return true;
         }
         if(this.§`"D§)
         {
            if(this.§["x§.§7"x§ < 0)
            {
               if(this.§["x§.isEnabled)
               {
                  this.§["x§.isEnabled = false;
               }
               return true;
            }
         }
         else if(this.§+`§ <= 0)
         {
            if(this.§9!n§.enabled)
            {
               this.§9!n§.enabled = false;
            }
            return true;
         }
         return false;
      }
      
      protected function §?!E§() : Boolean
      {
         return this.§""<§.§[!2§;
      }
      
      private function §6>§() : Boolean
      {
         return § !M§(§;!e§.§<x§.levelObjects).§6>§();
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         if(this.§3"p§)
         {
            return false;
         }
         return Boolean(this.isAllowedToChangeStateRegardingPowerUpsSyncing() && this.§?!E§() && this.isAllowedToChangeStateRegardingPowerUpsRunning() && !this.§6>§());
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if(this.§3"p§)
         {
            return false;
         }
         return Boolean(this.§?!z§() && this.isAllowedToChangeStateRegardingPowerUpsSyncing() && this.§?!E§() && this.isAllowedToChangeStateRegardingPowerUpsRunning() && !this.§6>§());
      }
      
      protected function §&"d§(param1:Event) : void
      {
         var _loc2_:§&#3§ = §;!e§.§<x§.slingshot as §&#3§;
         if(_loc2_)
         {
            _loc2_.§1#%§();
         }
         §<!A§ = false;
         this.§"!%§(false);
      }
      
      private function §3"6§(param1:§8!l§) : void
      {
         if(param1.allowNextPowerUp)
         {
            if(!this.§&g§ && !this.§?!a§)
            {
               this.§'#7§();
            }
         }
         else
         {
            this.§6m§.§`@§(0);
            this.§?r§.§1o§();
            this.§7##§.visible = true;
            this.§7##§.§44§();
            this.§9!n§.§44§();
         }
      }
      
      protected function §>j§(param1:Event) : void
      {
         this.§&g§ = true;
         this.§?!a§ = true;
         this.§[3§();
      }
      
      protected function §@"]§(param1:§8!l§) : void
      {
         if(param1.§9u§ == §#f§.§]"i§)
         {
            §6"@§(§;!e§.§<x§).§^n§();
            §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§7"[§,this.§@"]§);
            this.§3"p§ = false;
         }
      }
      
      protected function §%!f§(param1:Event) : void
      {
         this.§["x§.§?!j§.removeEventListener(§"!'§.§8#5§,this.§%!f§);
         this.§9!n§.removeEventListener(§"!'§.§8#5§,this.§%!f§);
         this.§['§ = true;
         if(this.§`"D§)
         {
            this.§["x§.hide();
         }
      }
      
      protected function §&!B§(param1:§8!l§) : void
      {
         if(param1.§9u§ == §#f§.§]"i§)
         {
            §6"@§(§;!e§.§<x§).§^n§();
            §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§7"[§,this.§&!B§);
            this.§6Y§ = true;
         }
      }
      
      private function §!!z§(param1:Event) : void
      {
         §6"@§(§;!e§.§<x§).§2#7§.removeEventListener(§8!l§.§?"<§,this.§!!z§);
         §;"@§.singleton.popupManager.§7M§(SyncPopup.§^"3§);
      }
      
      protected function onUIInteraction(param1:§4!4§) : void
      {
         if(§1!?§)
         {
            return;
         }
         if(param1.§-w§ is §2"8§)
         {
            if(param1.§6$§ == §7!B§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §0"b§.§0#,§();
            }
            else if(param1.§6$§ == §7!B§.LISTENER_EVENT_MOUSE_UP)
            {
               §0"b§.§;!p§();
            }
         }
         switch(param1.§84§)
         {
            case "SKIP_EXTRA_BIRD":
               this.§["x§.§7"x§ = -1;
               this.§^!!§.§1"l§();
               §<!A§ = false;
               §0!8§.§[#,§(§0!8§.SKIP_EXTRA_BIRD);
               break;
            case "NEXT_LEVEL":
               §@§.§=Y§("misc_menubuttonproceed_1");
               if(!§;!e§.§<x§.objects.isPigsAlive())
               {
                  this.§^!!§.§%Z§();
                  §0!8§.§[#,§(§0!8§.§#"Y§);
               }
               else if(§;!e§.§<x§.slingshot.getBirdCount() <= 0)
               {
                  if(this.§`"D§ && !this.§9!n§.§@"-§ && !this.§3"p§ && !this.§['§)
                  {
                     this.§`!W§();
                     §6"@§(§;!e§.§<x§).§?"v§ = true;
                     §0!8§.§[#,§(§0!8§.§+"N§);
                  }
                  else
                  {
                     this.§+`§ = -1;
                     this.§^!!§.§1"l§();
                     §0!8§.§[#,§(§0!8§.§!!C§);
                  }
               }
               this.§"!%§(false);
               break;
            case "PAUSE":
               §@§.§=Y§("misc_menubuttonproceed_1");
               dispatchEvent(new §'#!§(§'#!§.§]"U§));
               break;
            case "FULLSCREEN_BUTTON":
               §;"@§.singleton.§35§();
         }
      }
   }
}
