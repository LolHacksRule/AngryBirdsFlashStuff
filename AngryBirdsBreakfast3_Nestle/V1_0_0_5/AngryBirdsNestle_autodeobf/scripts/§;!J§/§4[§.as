package §;!J§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §0!$§.§4!Z§;
   import §2!N§.§;P§;
   import §2W§.§2E§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §8,§.§8!h§;
   import §9O§.§4!V§;
   import §?!v§.§&r§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   import §]k§.§>!x§;
   import §`!<§.§'2§;
   import com.angrybirds.§6!E§;
   import flash.display.MovieClip;
   
   public class §4[§ extends §'2§
   {
      
      public static const §`A§:int = 50;
      
      protected static const §5!?§:String = "MightyEagleButtonVisible";
      
      protected static const §"!'§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §9!&§:String = "MightyEagleButtonHide";
       
      
      protected var §6!P§:§;P§;
      
      protected var §"!H§:§2E§;
      
      protected var §`>§:§<!'§;
      
      protected var §?q§:String;
      
      protected var §`q§:§^!g§;
      
      protected var §7;§:§^!g§;
      
      protected var §>",§:§^!g§;
      
      protected var § !O§:§^!g§;
      
      protected var §>!Q§:MovieClip;
      
      protected var §9!C§:Boolean = false;
      
      public function §4[§(param1:§3j§, param2:§ q§, param3:§;P§, param4:§&r§, param5:§>u§)
      {
         this.§"!H§ = new §2E§();
         super(param1,param2,param4,param5);
         this.§6!P§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§9!C§;
      }
      
      override protected function init() : void
      {
         §,8§.setVisibility(false);
         this.§`q§ = §^!g§(§,8§.getItemByName("Button_MightyEagle"));
         this.§7;§ = §^!g§(§,8§.getItemByName("Button_Pause"));
         this.§>",§ = §^!g§(§,8§.getItemByName("Button_Restart"));
         this.§ !O§ = §^!g§(§,8§.getItemByName("Button_FullScreen"));
         this.§>!Q§ = §,8§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §,8§.setVisibility(true);
         §,8§.addEventListener(§8!h§.§>2§,this.onUIInteraction);
         this.§"!H§.§=-§(0);
         this.§8K§(0);
         this.§?T§();
         this.§?q§ = §5!?§;
         this.§`>§ = null;
         this.§9!C§ = false;
         if(this.§`q§)
         {
            this.§`q§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §,8§.setVisibility(false);
         §,8§.removeEventListener(§8!h§.§>2§,this.onUIInteraction);
         this.§7;§.setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§>",§.setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§+%§();
         if(this.§`>§ != null)
         {
            this.§`>§.stop();
            this.§`>§ = null;
         }
      }
      
      protected function §@!O§() : void
      {
         if(§-!I§.§[f§.§?4§.userProgress.§"Y§ && §-!I§.§[f§.§?4§.userProgress.§@E§(§="4§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§8K§(param1);
         if(this.§?q§ == §5!?§ && !§6!E§.§7I§.objects.isPigsAlive())
         {
            this.§3!%§();
         }
         if((this.§?q§ == §5!?§ || this.§?q§ == §"!'§) && §6!E§.§7I§.slingshot.mSlingShotState == §>!x§.§9F§)
         {
            this.§0"0§();
         }
      }
      
      protected function §?T§() : void
      {
         this.§>!Q§.scaleY = 1;
         this.§>!Q§.scaleX = 1;
      }
      
      public function §+%§() : void
      {
         this.§`q§.setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§`q§.setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §3!%§() : void
      {
         this.§?q§ = §"!'§;
      }
      
      protected function §0"0§() : void
      {
         this.§`q§.setComponentState(§@j§.COMPONENT_STATE_DISABLED);
         this.§`q§.setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§`>§ == null)
         {
            this.§`>§ = §3`§.§<"5§.§^g§(this.§>!Q§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§?q§ = §9!&§;
         this.§`>§.onComplete = this.§2K§;
         this.§`>§.play();
      }
      
      protected function §2K§() : void
      {
         this.§`>§ = §3`§.§<"5§.§^g§(this.§>!Q§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§`>§.play();
         this.§?q§ = §9!&§;
      }
      
      protected function §8K§(param1:Number) : void
      {
         var _loc2_:int = this.§6!P§.getScore(10);
         var _loc3_:int = §%0§.userProgress.getScoreForLevel(§="4§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§"!H§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§"!H§.getValue() + param1 * §`A§);
            this.§"!H§.§=-§(_loc4_);
         }
      }
      
      protected function §!!L§() : void
      {
         var _loc1_:int = §-!I§.§[f§.§?4§.userProgress.§^!y§(§="4§.currentLevel);
      }
      
      protected function §4"-§() : void
      {
         §6!E§.§7I§.§4"-§();
         this.§!!L§();
         this.§9!C§ = true;
      }
      
      protected function onUIInteraction(param1:§8!h§) : void
      {
         if(§@<§)
         {
            return;
         }
         if(param1.§ H§ is §^!g§)
         {
            if(param1.§ Y§ == §^!#§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §4!Z§.mouseDown();
            }
            else if(param1.§ Y§ == §^!#§.LISTENER_EVENT_MOUSE_UP)
            {
               §4!Z§.mouseUp();
            }
         }
         switch(param1.§[!X§)
         {
            case "PAUSE":
               dispatchEvent(new §4!V§(§4!V§.§0u§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §4!V§(§4!V§.§'!Z§,§="§()));
               break;
            case "MIGHTY_EAGLE":
               if(§-!I§.§[f§.§?4§.userProgress.§@E§(§="4§.currentLevel))
               {
                  if(§-!I§.§[f§.§?4§.userProgress.§"Y§)
                  {
                     this.§4"-§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §-!I§.§[f§.§?U§();
         }
      }
   }
}
