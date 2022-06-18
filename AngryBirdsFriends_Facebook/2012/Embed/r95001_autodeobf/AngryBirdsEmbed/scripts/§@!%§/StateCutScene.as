package §@!%§
{
   import § "§.§8!3§;
   import §0m§.§1!,§;
   import §0u§.§&]§;
   import §10§.§#!4§;
   import §3A§.§%!>§;
   import §3A§.§6L§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §9!2§.§7N§;
   import §[n§.§%@§;
   import §[n§.§?+§;
   import flash.events.Event;
   
   public class StateCutScene extends §1!,§
   {
      
      public static const §5%§:String = "StateCutScene";
      
      private static const §;!7§:Number = 500;
       
      
      private var §2o§:§%!>§;
      
      private var §!I§:Boolean;
      
      private var §'!D§:Number = 0;
      
      private var §5M§:Number = 0;
      
      private var §'&§:§%@§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_CutScene[0]);
      }
      
      protected function §2!%§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§'&§)
            {
               §`k§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§'&§.removeEventListener(Event.COMPLETE,this.§3'§);
               this.§'&§.removeEventListener(Event.CANCEL,this.§-9§);
               this.§'&§.addEventListener(Event.COMPLETE,this.§3'§);
               this.§'&§.addEventListener(Event.CANCEL,this.§-9§);
               this.§'&§.§3_§("cutscene_" + param1);
            }
            else
            {
               this.§'3§();
            }
            return true;
         }
         return false;
      }
      
      private function §3'§(param1:Event) : void
      {
         if(this.§'&§)
         {
            this.§'&§.removeEventListener(Event.COMPLETE,this.§3'§);
            this.§'&§.removeEventListener(Event.CANCEL,this.§-9§);
            this.§'3§();
         }
      }
      
      private function §'3§() : void
      {
         §`k§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§6Q§();
         var _loc2_:§?+§ = §?+§.§+S§;
         if(this.§'&§)
         {
            _loc2_ = this.§'&§.textureManager;
         }
         this.§2o§ = §6L§.§#!F§(_loc1_,_loc2_);
         if(this.§2o§)
         {
            AngryBirdsFP11.sUserProgress.§#w§(_loc1_);
            §#!4§.§^Y§.§<[§(true);
            §#!4§.§^Y§.§ ,§(false);
            this.§2o§.update(0);
            §#!4§.§^Y§.§9!@§.addChild(this.§2o§.sprite);
         }
      }
      
      protected function §-9§(param1:Event) : void
      {
         if(this.§'&§)
         {
            this.§'&§.removeEventListener(Event.COMPLETE,this.§3'§);
            this.§'&§.removeEventListener(Event.CANCEL,this.§-9§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§'&§)
         {
            this.§'&§ = §#!4§.§^Y§.§7'§;
         }
         if(§7N§.§17§)
         {
            §7N§.§17§.color = 0;
         }
         this.§'!D§ = 0;
         this.§5M§ = 0;
         §`k§.getItemByName("Button_Skip").setVisibility(false);
         §`k§.getItemByName("Button_Skip").mClip.alpha = this.§'!D§;
         AngryBirdsFP11.§5!4§();
         this.§!I§ = false;
         §`k§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§6Q§();
         if(!this.§2!%§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §6Q§() : String
      {
         var _loc1_:String = §8!3§.§>!=§;
         var _loc2_:String = §8!3§.§&3§().§`m§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §8!3§.§-[§;
            _loc2_ = §8!3§.§&3§().§`m§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§2o§)
         {
            §#!4§.§^Y§.§9!@§.removeChild(this.§2o§.sprite);
            this.§2o§.dispose();
            this.§2o§ = null;
         }
         if(this.§'&§)
         {
            this.§'&§.removeEventListener(Event.COMPLETE,this.§3'§);
            this.§'&§.removeEventListener(Event.CANCEL,this.§-9§);
         }
         §#!4§.§^Y§.§ ,§(true);
         §8!3§.§>!=§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§!I§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?,§.§do§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§5M§ > §;!7§)
         {
            §`k§.getItemByName("Button_Skip").setVisibility(true);
            this.§'!D§ += param1 / 1000;
            §`k§.getItemByName("Button_Skip").mClip.alpha = this.§'!D§;
            if(this.§'!D§ > 1)
            {
               this.§'!D§ = 1;
            }
         }
         else
         {
            this.§5M§ += param1;
         }
         if(this.§!I§)
         {
            this.end();
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         if(this.§2o§ && !this.§2o§.update(param1))
         {
            this.end();
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§2o§ && this.§2o§.§<!-§ == §%!>§.§=A§)
         {
            §]V§.§9`§ = StateCutScene.§5%§;
            mNextState = §]V§.§5%§;
         }
         else if(this.§2o§ && this.§2o§.§<!-§ == §%!>§.§9!,§)
         {
            mNextState = §6a§.§5%§;
         }
         else
         {
            _loc1_ = §8!3§.§-[§;
            if(_loc1_)
            {
               mNextState = this.§1!#§();
            }
            else
            {
               mNextState = §]V§.§5%§;
            }
         }
      }
      
      protected function §1!#§() : String
      {
         return §2!"§.§5%§;
      }
   }
}
