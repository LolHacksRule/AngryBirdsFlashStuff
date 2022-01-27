package §!"!§
{
   import §'!n§.§??§;
   import §+=§.§?!Q§;
   import §,!7§.§%!J§;
   import §,!7§.§5!k§;
   import §3R§.§,@§;
   import §4",§.§,!j§;
   import §5R§.§6"7§;
   import §5s§.§"m§;
   import §6!C§.§8!T§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §;"G§.§5"2§;
   import §=!v§.§+!z§;
   import flash.display.MovieClip;
   
   public class §[-§ extends §5"2§
   {
      
      public static const §-2§:int = 50;
      
      protected static const §^!U§:String = "MightyEagleButtonVisible";
      
      protected static const §>A§:String = "MightyEagleButtonPrepareHide";
      
      protected static const § !<§:String = "MightyEagleButtonHide";
       
      
      protected var §%R§:§"m§;
      
      protected var §=!3§:§??§;
      
      protected var §,0§:§15§;
      
      protected var §-!F§:String;
      
      protected var §1"1§:§%!J§;
      
      protected var §>!7§:§%!J§;
      
      protected var §3!S§:§%!J§;
      
      protected var §"j§:§%!J§;
      
      protected var §[%§:MovieClip;
      
      protected var §5x§:Boolean = false;
      
      public function §[-§(param1:§5!k§, param2:§,!j§, param3:§"m§, param4:§6"7§, param5:§;l§)
      {
         this.§=!3§ = new §??§();
         super(param1,param2,param4,param5);
         this.§%R§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§5x§;
      }
      
      override protected function init() : void
      {
         §6!I§.setVisibility(false);
         this.§1"1§ = §%!J§(§6!I§.getItemByName("Button_MightyEagle"));
         this.§>!7§ = §%!J§(§6!I§.getItemByName("Button_Pause"));
         this.§3!S§ = §%!J§(§6!I§.getItemByName("Button_Restart"));
         this.§"j§ = §%!J§(§6!I§.getItemByName("Button_FullScreen"));
         this.§[%§ = §6!I§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §6!I§.setVisibility(true);
         §6!I§.addEventListener(§?!Q§.§ set§,this.onUIInteraction);
         this.§=!3§.§8!K§(0);
         this.§`!6§(0);
         this.§!'§();
         this.§-!F§ = §^!U§;
         this.§,0§ = null;
         this.§5x§ = false;
         if(this.§1"1§)
         {
            this.§1"1§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §6!I§.setVisibility(false);
         §6!I§.removeEventListener(§?!Q§.§ set§,this.onUIInteraction);
         this.§>!7§.setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§3!S§.setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§5"%§();
         if(this.§,0§ != null)
         {
            this.§,0§.stop();
            this.§,0§ = null;
         }
      }
      
      protected function §[!O§() : void
      {
         if(§&"<§.§<!7§.§,!9§.userProgress.§;"!§ && §&"<§.§<!7§.§,!9§.userProgress.§1V§(§]m§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§`!6§(param1);
         if(this.§-!F§ == §^!U§ && !§8!w§.§5!V§.objects.isPigsAlive())
         {
            this.§!s§();
         }
         if((this.§-!F§ == §^!U§ || this.§-!F§ == §>A§) && §8!w§.§5!V§.slingshot.mSlingShotState == §,@§.§!4§)
         {
            this.§0s§();
         }
      }
      
      protected function §!'§() : void
      {
         this.§[%§.scaleY = 1;
         this.§[%§.scaleX = 1;
      }
      
      public function §5"%§() : void
      {
         this.§1"1§.setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§1"1§.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §!s§() : void
      {
         this.§-!F§ = §>A§;
      }
      
      protected function §0s§() : void
      {
         this.§1"1§.setComponentState(§5![§.COMPONENT_STATE_DISABLED);
         this.§1"1§.setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§,0§ == null)
         {
            this.§,0§ = §@F§.§8!J§.§&6§(this.§[%§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§-!F§ = § !<§;
         this.§,0§.onComplete = this.§3D§;
         this.§,0§.play();
      }
      
      protected function §3D§() : void
      {
         this.§,0§ = §@F§.§8!J§.§&6§(this.§[%§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§,0§.play();
         this.§-!F§ = § !<§;
      }
      
      protected function §`!6§(param1:Number) : void
      {
         var _loc2_:int = this.§%R§.getScore(10);
         var _loc3_:int = §,!P§.userProgress.getScoreForLevel(§]m§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§=!3§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§=!3§.getValue() + param1 * §-2§);
            this.§=!3§.§8!K§(_loc4_);
         }
      }
      
      protected function §"^§() : void
      {
         var _loc1_:int = §&"<§.§<!7§.§,!9§.userProgress.§%!O§(§]m§.currentLevel);
      }
      
      protected function §8!+§() : void
      {
         §8!w§.§5!V§.§8!+§();
         this.§"^§();
         this.§5x§ = true;
      }
      
      protected function onUIInteraction(param1:§?!Q§) : void
      {
         if(§<p§)
         {
            return;
         }
         if(param1.§ "7§ is §%!J§)
         {
            if(param1.§6!-§ == §?"2§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §8!T§.§7"B§();
            }
            else if(param1.§6!-§ == §?"2§.LISTENER_EVENT_MOUSE_UP)
            {
               §8!T§.§]z§();
            }
         }
         switch(param1.§&"8§)
         {
            case "PAUSE":
               dispatchEvent(new §+!z§(§+!z§.§^m§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §+!z§(§+!z§.§,"D§,§'!G§()));
               break;
            case "MIGHTY_EAGLE":
               if(§&"<§.§<!7§.§,!9§.userProgress.§1V§(§]m§.currentLevel))
               {
                  if(§&"<§.§<!7§.§,!9§.userProgress.§;"!§)
                  {
                     this.§8!+§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §&"<§.§<!7§.§7!H§();
         }
      }
   }
}
