package §2"H§
{
   import § !Y§.§]!,§;
   import § M§.§]o§;
   import §!?§.§=!_§;
   import §%!r§.§3!'§;
   import §'4§.§3!n§;
   import §+u§.§&!o§;
   import §,"&§.§9q§;
   import §0N§.§5!^§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§@_§;
   import §<W§.§]"+§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^8§.§#h§;
   import §`!j§.§9"!§;
   import flash.display.MovieClip;
   
   public class §`N§ extends §&!o§
   {
      
      public static const §+"4§:int = 50;
      
      protected static const §`]§:String = "MightyEagleButtonVisible";
      
      protected static const §9!e§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §7!z§:String = "MightyEagleButtonHide";
       
      
      protected var §!K§:§]o§;
      
      protected var §]s§:§]!,§;
      
      protected var §=G§:§5!9§;
      
      protected var §2o§:String;
      
      protected var §]!!§:§@_§;
      
      protected var §-!7§:§@_§;
      
      protected var §7"!§:§@_§;
      
      protected var §#U§:§@_§;
      
      protected var § !§:MovieClip;
      
      protected var §"!K§:Boolean = false;
      
      public function §`N§(param1:§ ",§, param2:§9"!§, param3:§]o§, param4:§=!_§, param5:§3!'§)
      {
         this.§]s§ = new §]!,§();
         super(param1,param2,param4,param5);
         this.§!K§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§"!K§;
      }
      
      override protected function init() : void
      {
         §,!w§.setVisibility(false);
         this.§]!!§ = §@_§(§,!w§.getItemByName("Button_MightyEagle"));
         this.§-!7§ = §@_§(§,!w§.getItemByName("Button_Pause"));
         this.§7"!§ = §@_§(§,!w§.getItemByName("Button_Restart"));
         this.§#U§ = §@_§(§,!w§.getItemByName("Button_FullScreen"));
         this.§ !§ = §,!w§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §,!w§.setVisibility(true);
         §,!w§.addEventListener(§]"+§.§`!C§,this.onUIInteraction);
         this.§]s§.§-"F§(0);
         this.§=!H§(0);
         this.§!!C§();
         this.§2o§ = §`]§;
         this.§=G§ = null;
         this.§"!K§ = false;
         if(this.§]!!§)
         {
            this.§]!!§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §,!w§.setVisibility(false);
         §,!w§.removeEventListener(§]"+§.§`!C§,this.onUIInteraction);
         this.§-!7§.setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§7"!§.setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§'!e§();
         if(this.§=G§ != null)
         {
            this.§=G§.stop();
            this.§=G§ = null;
         }
      }
      
      protected function §2s§() : void
      {
         if(§ !g§.§;!'§.§&!`§.userProgress.§3s§ && § !g§.§;!'§.§&!`§.userProgress.§[l§(§6u§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§=!H§(param1);
         if(this.§2o§ == §`]§ && !§9q§.§>!L§.objects.isPigsAlive())
         {
            this.§,3§();
         }
         if((this.§2o§ == §`]§ || this.§2o§ == §9!e§) && §9q§.§>!L§.slingshot.mSlingShotState == §3!n§.§7!y§)
         {
            this.§,>§();
         }
      }
      
      protected function §!!C§() : void
      {
         this.§ !§.scaleY = 1;
         this.§ !§.scaleX = 1;
      }
      
      public function §'!e§() : void
      {
         this.§]!!§.setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§]!!§.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §,3§() : void
      {
         this.§2o§ = §9!e§;
      }
      
      protected function §,>§() : void
      {
         this.§]!!§.setComponentState(§@!!§.COMPONENT_STATE_DISABLED);
         this.§]!!§.setComponentVisualState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§=G§ == null)
         {
            this.§=G§ = §!D§.§[!1§.§1"<§(this.§ !§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§2o§ = §7!z§;
         this.§=G§.onComplete = this.§5M§;
         this.§=G§.play();
      }
      
      protected function §5M§() : void
      {
         this.§=G§ = §!D§.§[!1§.§1"<§(this.§ !§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§=G§.play();
         this.§2o§ = §7!z§;
      }
      
      protected function §=!H§(param1:Number) : void
      {
         var _loc2_:int = this.§!K§.getScore(10);
         var _loc3_:int = §3u§.userProgress.getScoreForLevel(§6u§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§]s§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§]s§.getValue() + param1 * §+"4§);
            this.§]s§.§-"F§(_loc4_);
         }
      }
      
      protected function §`""§() : void
      {
         var _loc1_:int = § !g§.§;!'§.§&!`§.userProgress.§#!K§(§6u§.currentLevel);
      }
      
      protected function §'b§() : void
      {
         §9q§.§>!L§.§'b§();
         this.§`""§();
         this.§"!K§ = true;
      }
      
      protected function onUIInteraction(param1:§]"+§) : void
      {
         if(§>!-§)
         {
            return;
         }
         if(param1.§"!X§ is §@_§)
         {
            if(param1.§ !e§ == §+!#§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §5!^§.§-!,§();
            }
            else if(param1.§ !e§ == §+!#§.LISTENER_EVENT_MOUSE_UP)
            {
               §5!^§.§!!x§();
            }
         }
         switch(param1.§9X§)
         {
            case "PAUSE":
               dispatchEvent(new §#h§(§#h§.§0"1§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §#h§(§#h§.§&C§,§`!e§()));
               break;
            case "MIGHTY_EAGLE":
               if(§ !g§.§;!'§.§&!`§.userProgress.§[l§(§6u§.currentLevel))
               {
                  if(§ !g§.§;!'§.§&!`§.userProgress.§3s§)
                  {
                     this.§'b§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               § !g§.§;!'§.§%!N§();
         }
      }
   }
}
