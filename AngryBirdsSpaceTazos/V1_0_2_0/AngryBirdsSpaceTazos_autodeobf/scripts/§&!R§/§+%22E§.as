package §&!R§
{
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §"!>§.§<!o§;
   import §""%§.§extends§;
   import §""<§.§9!p§;
   import §'#§.§4!!§;
   import §+!9§.§;0§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §;!0§.;
   import §<!#§.§""§;
   import §<!d§.§-"-§;
   import §<"9§.§9!_§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §>"0§.§7"$§;
   import §?!<§.§&V§;
   import flash.display.MovieClip;
   
   public class §+"E§ extends §-"-§
   {
      
      public static const §7!x§:int = 50;
      
      protected static const §&-§:String = "MightyEagleButtonVisible";
      
      protected static const §6!x§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §`!T§:String = "MightyEagleButtonHide";
       
      
      protected var §`S§:§9!_§;
      
      protected var §while§:§4!!§;
      
      protected var §69§:§8"+§;
      
      protected var §#!g§:String;
      
      protected var §%!$§:§3!A§;
      
      protected var §;!L§:§3!A§;
      
      protected var §@n§:§3!A§;
      
      protected var §4!Z§:§3!A§;
      
      protected var §1!k§:MovieClip;
      
      protected var §=!_§:Boolean = false;
      
      public function §+"E§(param1:§1s§, param2:§#2§, param3:§9!_§, param4:§extends§, param5:§<!o§)
      {
         this.§while§ = new §4!!§();
         super(param1,param2,param4,param5);
         this.§`S§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§=!_§;
      }
      
      override protected function init() : void
      {
         §3!C§.setVisibility(false);
         this.§%!$§ = §3!A§(§3!C§.getItemByName("Button_MightyEagle"));
         this.§;!L§ = §3!A§(§3!C§.getItemByName("Button_Pause"));
         this.§@n§ = §3!A§(§3!C§.getItemByName("Button_Restart"));
         this.§4!Z§ = §3!A§(§3!C§.getItemByName("Button_FullScreen"));
         this.§1!k§ = §3!C§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §3!C§.setVisibility(true);
         §3!C§.addEventListener(§""§.§#!J§,this.onUIInteraction);
         this.§while§.§[!s§(0);
         this.§?"§(0);
         this.§]"9§();
         this.§#!g§ = §&-§;
         this.§69§ = null;
         this.§=!_§ = false;
         if(this.§%!$§)
         {
            this.§%!$§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §3!C§.setVisibility(false);
         §3!C§.removeEventListener(§""§.§#!J§,this.onUIInteraction);
         this.§;!L§.setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§@n§.setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§5!r§();
         if(this.§69§ != null)
         {
            this.§69§.stop();
            this.§69§ = null;
         }
      }
      
      protected function §8Q§() : void
      {
         if(§&!h§.§ u§.§-!V§.userProgress.§0!6§ && §&!h§.§ u§.§-!V§.userProgress.§&"'§(§,W§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§?"§(param1);
         if(this.§#!g§ == §&-§ && !§;0§.§@!^§.objects.isPigsAlive())
         {
            this.§ F§();
         }
         if((this.§#!g§ == §&-§ || this.§#!g§ == §6!x§) && §;0§.§@!^§.slingshot.mSlingShotState == §&V§.§+!7§)
         {
            this.§0M§();
         }
      }
      
      protected function §]"9§() : void
      {
         this.§1!k§.scaleY = 1;
         this.§1!k§.scaleX = 1;
      }
      
      public function §5!r§() : void
      {
         this.§%!$§.setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%!$§.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function § F§() : void
      {
         this.§#!g§ = §6!x§;
      }
      
      protected function §0M§() : void
      {
         this.§%!$§.setComponentState(§>r§.COMPONENT_STATE_DISABLED);
         this.§%!$§.setComponentVisualState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§69§ == null)
         {
            this.§69§ = §<K§.§<"B§.§`!c§(this.§1!k§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§#!g§ = §`!T§;
         this.§69§.onComplete = this.§4";§;
         this.§69§.play();
      }
      
      protected function §4";§() : void
      {
         this.§69§ = §<K§.§<"B§.§`!c§(this.§1!k§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§69§.play();
         this.§#!g§ = §`!T§;
      }
      
      protected function §?"§(param1:Number) : void
      {
         var _loc2_:int = this.§`S§.getScore(10);
         var _loc3_:int = § #§.userProgress.getScoreForLevel(§,W§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§while§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§while§.getValue() + param1 * §7!x§);
            this.§while§.§[!s§(_loc4_);
         }
      }
      
      protected function §<! §() : void
      {
         var _loc1_:int = §&!h§.§ u§.§-!V§.userProgress.§-A§(§,W§.currentLevel);
      }
      
      protected function §[E§() : void
      {
         §;0§.§@!^§.§[E§();
         this.§<! §();
         this.§=!_§ = true;
      }
      
      protected function onUIInteraction(param1:§""§) : void
      {
         if(§'!e§)
         {
            return;
         }
         if(param1.§9!y§ is §3!A§)
         {
            if(param1.§5!"§ == §95§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §9!p§.§5!y§();
            }
            else if(param1.§5!"§ == §95§.LISTENER_EVENT_MOUSE_UP)
            {
               §9!p§.§&1§();
            }
         }
         switch(param1.§-!<§)
         {
            case "PAUSE":
               dispatchEvent(new §7"$§(§7"$§.§0!a§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §7"$§(§7"$§.§>m§,§'F§()));
               break;
            case "MIGHTY_EAGLE":
               if(§&!h§.§ u§.§-!V§.userProgress.§&"'§(§,W§.currentLevel))
               {
                  if(§&!h§.§ u§.§-!V§.userProgress.§0!6§)
                  {
                     this.§[E§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §&!h§.§ u§.§+"4§();
         }
      }
   }
}
