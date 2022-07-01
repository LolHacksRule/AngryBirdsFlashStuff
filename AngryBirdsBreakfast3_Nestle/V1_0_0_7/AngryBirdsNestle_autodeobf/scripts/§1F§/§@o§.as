package §1F§
{
   import § !Q§.§9%§;
   import §!!&§.§0!_§;
   import §!P§.§5!1§;
   import §"V§.§]j§;
   import §'!u§.§&S§;
   import §'H§.§[0§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §3@§.§`!h§;
   import §9!Q§.§1§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import §]A§.§]"!§;
   import §^x§.§8v§;
   import com.angrybirds.§#Z§;
   import flash.display.MovieClip;
   
   public class §@o§ extends §1§
   {
      
      public static const §1!F§:int = 50;
      
      protected static const §-?§:String = "MightyEagleButtonVisible";
      
      protected static const §`!i§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §"",§:String = "MightyEagleButtonHide";
       
      
      protected var §=e§:§8v§;
      
      protected var §'!D§:§0!_§;
      
      protected var §1!U§:§4`§;
      
      protected var §'!c§:String;
      
      protected var §!"%§:§73§;
      
      protected var §6!$§:§73§;
      
      protected var §]!]§:§73§;
      
      protected var §4Q§:§73§;
      
      protected var §!N§:MovieClip;
      
      protected var §8]§:Boolean = false;
      
      public function §@o§(param1:§]"4§, param2:§5!1§, param3:§8v§, param4:§`!h§, param5:§&S§)
      {
         this.§'!D§ = new §0!_§();
         super(param1,param2,param4,param5);
         this.§=e§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§8]§;
      }
      
      override protected function init() : void
      {
         §"W§.setVisibility(false);
         this.§!"%§ = §73§(§"W§.getItemByName("Button_MightyEagle"));
         this.§6!$§ = §73§(§"W§.getItemByName("Button_Pause"));
         this.§]!]§ = §73§(§"W§.getItemByName("Button_Restart"));
         this.§4Q§ = §73§(§"W§.getItemByName("Button_FullScreen"));
         this.§!N§ = §"W§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §"W§.setVisibility(true);
         §"W§.addEventListener(§]j§.§+q§,this.onUIInteraction);
         this.§'!D§.§[b§(0);
         this.§9",§(0);
         this.§4!v§();
         this.§'!c§ = §-?§;
         this.§1!U§ = null;
         this.§8]§ = false;
         if(this.§!"%§)
         {
            this.§!"%§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §"W§.setVisibility(false);
         §"W§.removeEventListener(§]j§.§+q§,this.onUIInteraction);
         this.§6!$§.setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§]!]§.setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§1" §();
         if(this.§1!U§ != null)
         {
            this.§1!U§.stop();
            this.§1!U§ = null;
         }
      }
      
      protected function §&!]§() : void
      {
         if(§,!X§.§>!G§.§>!I§.userProgress.§"-§ && §,!X§.§>!G§.§>!I§.userProgress.§2!M§(§97§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§9",§(param1);
         if(this.§'!c§ == §-?§ && !§#Z§.§'0§.objects.isPigsAlive())
         {
            this.§%u§();
         }
         if((this.§'!c§ == §-?§ || this.§'!c§ == §`!i§) && §#Z§.§'0§.slingshot.mSlingShotState == §]"!§.§ r§)
         {
            this.§0=§();
         }
      }
      
      protected function §4!v§() : void
      {
         this.§!N§.scaleY = 1;
         this.§!N§.scaleX = 1;
      }
      
      public function §1" §() : void
      {
         this.§!"%§.setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§!"%§.setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §%u§() : void
      {
         this.§'!c§ = §`!i§;
      }
      
      protected function §0=§() : void
      {
         this.§!"%§.setComponentState(§3!W§.COMPONENT_STATE_DISABLED);
         this.§!"%§.setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§1!U§ == null)
         {
            this.§1!U§ = §"!d§.§>!P§.§7R§(this.§!N§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§'!c§ = §"",§;
         this.§1!U§.onComplete = this.§]!l§;
         this.§1!U§.play();
      }
      
      protected function §]!l§() : void
      {
         this.§1!U§ = §"!d§.§>!P§.§7R§(this.§!N§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§1!U§.play();
         this.§'!c§ = §"",§;
      }
      
      protected function §9",§(param1:Number) : void
      {
         var _loc2_:int = this.§=e§.getScore(10);
         var _loc3_:int = §`p§.userProgress.getScoreForLevel(§97§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§'!D§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§'!D§.getValue() + param1 * §1!F§);
            this.§'!D§.§[b§(_loc4_);
         }
      }
      
      protected function §,I§() : void
      {
         var _loc1_:int = §,!X§.§>!G§.§>!I§.userProgress.§+T§(§97§.currentLevel);
      }
      
      protected function §<!t§() : void
      {
         §#Z§.§'0§.§<!t§();
         this.§,I§();
         this.§8]§ = true;
      }
      
      protected function onUIInteraction(param1:§]j§) : void
      {
         if(§#!J§)
         {
            return;
         }
         if(param1.§;!6§ is §73§)
         {
            if(param1.§&!t§ == §'!%§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §9%§.mouseDown();
            }
            else if(param1.§&!t§ == §'!%§.LISTENER_EVENT_MOUSE_UP)
            {
               §9%§.mouseUp();
            }
         }
         switch(param1.§0]§)
         {
            case "PAUSE":
               dispatchEvent(new §[0§(§[0§.§"!<§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §[0§(§[0§.§+§,§>!O§()));
               break;
            case "MIGHTY_EAGLE":
               if(§,!X§.§>!G§.§>!I§.userProgress.§2!M§(§97§.currentLevel))
               {
                  if(§,!X§.§>!G§.§>!I§.userProgress.§"-§)
                  {
                     this.§<!t§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §,!X§.§>!G§.§4I§();
         }
      }
   }
}
