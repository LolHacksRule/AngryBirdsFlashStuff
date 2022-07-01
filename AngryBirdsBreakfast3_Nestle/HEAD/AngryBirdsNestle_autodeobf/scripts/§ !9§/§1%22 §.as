package § !9§
{
   import §!""§.§]H§;
   import §#!`§.§3!o§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §0!q§.§;!-§;
   import §1![§.§`w§;
   import §24§.§=!L§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §4!i§.§@t§;
   import §9!p§.§4!9§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §@V§.§0"§;
   import flash.display.MovieClip;
   
   public class §1" § extends §4!9§
   {
      
      public static const § !g§:int = 50;
      
      protected static const §!!r§:String = "MightyEagleButtonVisible";
      
      protected static const §[Z§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §=!7§:String = "MightyEagleButtonHide";
       
      
      protected var §4!"§:§3!o§;
      
      protected var §-!c§:§@t§;
      
      protected var §1!x§:§]W§;
      
      protected var §2$§:String;
      
      protected var §&!?§:§]"%§;
      
      protected var §?!4§:§]"%§;
      
      protected var §6C§:§]"%§;
      
      protected var §&R§:§]"%§;
      
      protected var § $§:MovieClip;
      
      protected var §5x§:Boolean = false;
      
      public function §1" §(param1:§,6§, param2:§0![§, param3:§3!o§, param4:§`w§, param5:§+f§)
      {
         this.§-!c§ = new §@t§();
         super(param1,param2,param4,param5);
         this.§4!"§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§5x§;
      }
      
      override protected function init() : void
      {
         §!o§.setVisibility(false);
         this.§&!?§ = §]"%§(§!o§.getItemByName("Button_MightyEagle"));
         this.§?!4§ = §]"%§(§!o§.getItemByName("Button_Pause"));
         this.§6C§ = §]"%§(§!o§.getItemByName("Button_Restart"));
         this.§&R§ = §]"%§(§!o§.getItemByName("Button_FullScreen"));
         this.§ $§ = §!o§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §!o§.setVisibility(true);
         §!o§.addEventListener(§]H§.§59§,this.onUIInteraction);
         this.§-!c§.§!8§(0);
         this.§8k§(0);
         this.§-u§();
         this.§2$§ = §!!r§;
         this.§1!x§ = null;
         this.§5x§ = false;
         if(this.§&!?§)
         {
            this.§&!?§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §!o§.setVisibility(false);
         §!o§.removeEventListener(§]H§.§59§,this.onUIInteraction);
         this.§?!4§.setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§6C§.setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%v§();
         if(this.§1!x§ != null)
         {
            this.§1!x§.stop();
            this.§1!x§ = null;
         }
      }
      
      protected function §;L§() : void
      {
         if(§ !4§.§%"7§.§@D§.userProgress.§"W§ && § !4§.§%"7§.§@D§.userProgress.§@"3§(§4a§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§8k§(param1);
         if(this.§2$§ == §!!r§ && !§@!S§.§2A§.objects.isPigsAlive())
         {
            this.§7"§();
         }
         if((this.§2$§ == §!!r§ || this.§2$§ == §[Z§) && §@!S§.§2A§.slingshot.mSlingShotState == §0"§.§1_§)
         {
            this.§7!+§();
         }
      }
      
      protected function §-u§() : void
      {
         this.§ $§.scaleY = 1;
         this.§ $§.scaleX = 1;
      }
      
      public function §%v§() : void
      {
         this.§&!?§.setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&!?§.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §7"§() : void
      {
         this.§2$§ = §[Z§;
      }
      
      protected function §7!+§() : void
      {
         this.§&!?§.setComponentState(§-!g§.COMPONENT_STATE_DISABLED);
         this.§&!?§.setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§1!x§ == null)
         {
            this.§1!x§ = §0!o§.§,2§.§4!t§(this.§ $§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§2$§ = §=!7§;
         this.§1!x§.onComplete = this.§ !G§;
         this.§1!x§.play();
      }
      
      protected function § !G§() : void
      {
         this.§1!x§ = §0!o§.§,2§.§4!t§(this.§ $§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§1!x§.play();
         this.§2$§ = §=!7§;
      }
      
      protected function §8k§(param1:Number) : void
      {
         var _loc2_:int = this.§4!"§.getScore(10);
         var _loc3_:int = §6!4§.userProgress.getScoreForLevel(§4a§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§-!c§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§-!c§.getValue() + param1 * § !g§);
            this.§-!c§.§!8§(_loc4_);
         }
      }
      
      protected function §1!I§() : void
      {
         var _loc1_:int = § !4§.§%"7§.§@D§.userProgress.§+!]§(§4a§.currentLevel);
      }
      
      protected function §!j§() : void
      {
         §@!S§.§2A§.§!j§();
         this.§1!I§();
         this.§5x§ = true;
      }
      
      protected function onUIInteraction(param1:§]H§) : void
      {
         if(§4R§)
         {
            return;
         }
         if(param1.§&!m§ is §]"%§)
         {
            if(param1.§66§ == §+§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §=!L§.mouseDown();
            }
            else if(param1.§66§ == §+§.LISTENER_EVENT_MOUSE_UP)
            {
               §=!L§.mouseUp();
            }
         }
         switch(param1.§4o§)
         {
            case "PAUSE":
               dispatchEvent(new §;!-§(§;!-§.§5"+§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §;!-§(§;!-§.§,d§,§5!B§()));
               break;
            case "MIGHTY_EAGLE":
               if(§ !4§.§%"7§.§@D§.userProgress.§@"3§(§4a§.currentLevel))
               {
                  if(§ !4§.§%"7§.§@D§.userProgress.§"W§)
                  {
                     this.§!j§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               § !4§.§%"7§.§]!;§();
         }
      }
   }
}
