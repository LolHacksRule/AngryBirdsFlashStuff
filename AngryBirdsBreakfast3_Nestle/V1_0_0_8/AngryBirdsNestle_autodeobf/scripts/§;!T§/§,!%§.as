package §;!T§
{
   import §"!G§.§3!f§;
   import §#!n§.§+!o§;
   import §%f§.§[o§;
   import §0W§.§ J§;
   import §1!=§.§#d§;
   import §1Q§.§#o§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §8!e§.§3"&§;
   import §9G§.§9!G§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §;4§.§-!+§;
   import §<" §.§]!g§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import com.angrybirds.§4"6§;
   import flash.display.MovieClip;
   
   public class §,!%§ extends § J§
   {
      
      public static const §&!7§:int = 50;
      
      protected static const §"§:String = "MightyEagleButtonVisible";
      
      protected static const §&H§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §3=§:String = "MightyEagleButtonHide";
       
      
      protected var §6!>§:§#o§;
      
      protected var §1!$§:§[o§;
      
      protected var §7!d§:§["$§;
      
      protected var §8!H§:String;
      
      protected var §&'§:§9!M§;
      
      protected var §"!§:§9!M§;
      
      protected var §9!x§:§9!M§;
      
      protected var §@r§:§9!M§;
      
      protected var §"Y§:MovieClip;
      
      protected var §9""§:Boolean = false;
      
      public function §,!%§(param1:§^!i§, param2:§3"&§, param3:§#o§, param4:§+!o§, param5:§3!f§)
      {
         this.§1!$§ = new §[o§();
         super(param1,param2,param4,param5);
         this.§6!>§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§9""§;
      }
      
      override protected function init() : void
      {
         §[_§.setVisibility(false);
         this.§&'§ = §9!M§(§[_§.getItemByName("Button_MightyEagle"));
         this.§"!§ = §9!M§(§[_§.getItemByName("Button_Pause"));
         this.§9!x§ = §9!M§(§[_§.getItemByName("Button_Restart"));
         this.§@r§ = §9!M§(§[_§.getItemByName("Button_FullScreen"));
         this.§"Y§ = §[_§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §[_§.setVisibility(true);
         §[_§.addEventListener(§]!g§.§&u§,this.onUIInteraction);
         this.§1!$§.§6!a§(0);
         this.§7v§(0);
         this.§3" §();
         this.§8!H§ = §"§;
         this.§7!d§ = null;
         this.§9""§ = false;
         if(this.§&'§)
         {
            this.§&'§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §[_§.setVisibility(false);
         §[_§.removeEventListener(§]!g§.§&u§,this.onUIInteraction);
         this.§"!§.setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§9!x§.setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§-Z§();
         if(this.§7!d§ != null)
         {
            this.§7!d§.stop();
            this.§7!d§ = null;
         }
      }
      
      protected function §@"'§() : void
      {
         if(§-O§.§5!1§.§]u§.userProgress.§>!l§ && §-O§.§5!1§.§]u§.userProgress.§ <§(§!3§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§7v§(param1);
         if(this.§8!H§ == §"§ && !§4"6§.§;!k§.objects.isPigsAlive())
         {
            this.§!!x§();
         }
         if((this.§8!H§ == §"§ || this.§8!H§ == §&H§) && §4"6§.§;!k§.slingshot.mSlingShotState == §9!G§.§^a§)
         {
            this.§-V§();
         }
      }
      
      protected function §3" §() : void
      {
         this.§"Y§.scaleY = 1;
         this.§"Y§.scaleX = 1;
      }
      
      public function §-Z§() : void
      {
         this.§&'§.setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&'§.setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §!!x§() : void
      {
         this.§8!H§ = §&H§;
      }
      
      protected function §-V§() : void
      {
         this.§&'§.setComponentState(§-U§.COMPONENT_STATE_DISABLED);
         this.§&'§.setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§7!d§ == null)
         {
            this.§7!d§ = §6!u§.§"e§.§0!O§(this.§"Y§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§8!H§ = §3=§;
         this.§7!d§.onComplete = this.§8w§;
         this.§7!d§.play();
      }
      
      protected function §8w§() : void
      {
         this.§7!d§ = §6!u§.§"e§.§0!O§(this.§"Y§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§7!d§.play();
         this.§8!H§ = §3=§;
      }
      
      protected function §7v§(param1:Number) : void
      {
         var _loc2_:int = this.§6!>§.getScore(10);
         var _loc3_:int = §%""§.userProgress.getScoreForLevel(§!3§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§1!$§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§1!$§.getValue() + param1 * §&!7§);
            this.§1!$§.§6!a§(_loc4_);
         }
      }
      
      protected function §0!#§() : void
      {
         var _loc1_:int = §-O§.§5!1§.§]u§.userProgress.§8!w§(§!3§.currentLevel);
      }
      
      protected function §6!n§() : void
      {
         §4"6§.§;!k§.§6!n§();
         this.§0!#§();
         this.§9""§ = true;
      }
      
      protected function onUIInteraction(param1:§]!g§) : void
      {
         if(§`^§)
         {
            return;
         }
         if(param1.§;;§ is §9!M§)
         {
            if(param1.§'%§ == §,3§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §-!+§.mouseDown();
            }
            else if(param1.§'%§ == §,3§.LISTENER_EVENT_MOUSE_UP)
            {
               §-!+§.mouseUp();
            }
         }
         switch(param1.§=P§)
         {
            case "PAUSE":
               dispatchEvent(new §#d§(§#d§.§3!I§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §#d§(§#d§.§^!^§,§'m§()));
               break;
            case "MIGHTY_EAGLE":
               if(§-O§.§5!1§.§]u§.userProgress.§ <§(§!3§.currentLevel))
               {
                  if(§-O§.§5!1§.§]u§.userProgress.§>!l§)
                  {
                     this.§6!n§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §-O§.§5!1§.§0`§();
         }
      }
   }
}
