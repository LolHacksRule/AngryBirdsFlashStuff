package §"3§
{
   import § 2§.§<!F§;
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §&!I§.§9!C§;
   import §-!J§.§-!C§;
   import §-!h§.§1!$§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §7"6§.§^!_§;
   import §8!$§.§ !D§;
   import §>T§.§@!Y§;
   import §?u§.override;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import §`!s§.§9!i§;
   import flash.display.MovieClip;
   
   public class §7!i§ extends §-!C§
   {
      
      public static const § k§:int = 50;
      
      protected static const §+!K§:String = "MightyEagleButtonVisible";
      
      protected static const §3,§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §#!n§:String = "MightyEagleButtonHide";
       
      
      protected var §+"%§:§@!Y§;
      
      protected var §-&§:§9!i§;
      
      protected var §8!1§:§^!T§;
      
      protected var §#!@§:String;
      
      protected var §<!I§:§ `§;
      
      protected var §#h§:§ `§;
      
      protected var §7"0§:§ `§;
      
      protected var §""5§:§ `§;
      
      protected var §8e§:MovieClip;
      
      protected var §!!2§:Boolean = false;
      
      public function §7!i§(param1:§%n§, param2:§-g§, param3:§@!Y§, param4:override, param5:§^!_§)
      {
         this.§-&§ = new §9!i§();
         super(param1,param2,param4,param5);
         this.§+"%§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§!!2§;
      }
      
      override protected function init() : void
      {
         §!!g§.setVisibility(false);
         this.§<!I§ = § `§(§!!g§.getItemByName("Button_MightyEagle"));
         this.§#h§ = § `§(§!!g§.getItemByName("Button_Pause"));
         this.§7"0§ = § `§(§!!g§.getItemByName("Button_Restart"));
         this.§""5§ = § `§(§!!g§.getItemByName("Button_FullScreen"));
         this.§8e§ = §!!g§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §!!g§.setVisibility(true);
         §!!g§.addEventListener(§9!C§.§;!F§,this.onUIInteraction);
         this.§-&§.§7v§(0);
         this.§6>§(0);
         this.§'!&§();
         this.§#!@§ = §+!K§;
         this.§8!1§ = null;
         this.§!!2§ = false;
         if(this.§<!I§)
         {
            this.§<!I§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §!!g§.setVisibility(false);
         §!!g§.removeEventListener(§9!C§.§;!F§,this.onUIInteraction);
         this.§#h§.setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§7"0§.setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§2!'§();
         if(this.§8!1§ != null)
         {
            this.§8!1§.stop();
            this.§8!1§ = null;
         }
      }
      
      protected function §=&§() : void
      {
         if(§-!2§.§7O§.§ !n§.userProgress.§+6§ && §-!2§.§7O§.§ !n§.userProgress.§5!T§(§#n§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§6>§(param1);
         if(this.§#!@§ == §+!K§ && !§`i§.§&!L§.objects.isPigsAlive())
         {
            this.§-!@§();
         }
         if((this.§#!@§ == §+!K§ || this.§#!@§ == §3,§) && §`i§.§&!L§.slingshot.mSlingShotState == §<!F§.§7!K§)
         {
            this.§1!u§();
         }
      }
      
      protected function §'!&§() : void
      {
         this.§8e§.scaleY = 1;
         this.§8e§.scaleX = 1;
      }
      
      public function §2!'§() : void
      {
         this.§<!I§.setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§<!I§.setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §-!@§() : void
      {
         this.§#!@§ = §3,§;
      }
      
      protected function §1!u§() : void
      {
         this.§<!I§.setComponentState(§-!T§.COMPONENT_STATE_DISABLED);
         this.§<!I§.setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§8!1§ == null)
         {
            this.§8!1§ = §%"!§.§&!;§.§"!]§(this.§8e§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§#!@§ = §#!n§;
         this.§8!1§.onComplete = this.§#"'§;
         this.§8!1§.play();
      }
      
      protected function §#"'§() : void
      {
         this.§8!1§ = §%"!§.§&!;§.§"!]§(this.§8e§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§8!1§.play();
         this.§#!@§ = §#!n§;
      }
      
      protected function §6>§(param1:Number) : void
      {
         var _loc2_:int = this.§+"%§.getScore(10);
         var _loc3_:int = §+!L§.userProgress.getScoreForLevel(§#n§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§-&§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§-&§.getValue() + param1 * § k§);
            this.§-&§.§7v§(_loc4_);
         }
      }
      
      protected function §5L§() : void
      {
         var _loc1_:int = §-!2§.§7O§.§ !n§.userProgress.§4F§(§#n§.currentLevel);
      }
      
      protected function §9!3§() : void
      {
         §`i§.§&!L§.§9!3§();
         this.§5L§();
         this.§!!2§ = true;
      }
      
      protected function onUIInteraction(param1:§9!C§) : void
      {
         if(§"h§)
         {
            return;
         }
         if(param1.§>j§ is § `§)
         {
            if(param1.§switch§ == §#!L§.LISTENER_EVENT_MOUSE_DOWN)
            {
               § !D§.mouseDown();
            }
            else if(param1.§switch§ == §#!L§.LISTENER_EVENT_MOUSE_UP)
            {
               § !D§.mouseUp();
            }
         }
         switch(param1.§7W§)
         {
            case "PAUSE":
               dispatchEvent(new §1!$§(§1!$§.§^Y§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §1!$§(§1!$§.§9!>§,§ !K§()));
               break;
            case "MIGHTY_EAGLE":
               if(§-!2§.§7O§.§ !n§.userProgress.§5!T§(§#n§.currentLevel))
               {
                  if(§-!2§.§7O§.§ !n§.userProgress.§+6§)
                  {
                     this.§9!3§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §-!2§.§7O§.§#!p§();
         }
      }
   }
}
