package §;H§
{
   import §!!K§.§else§;
   import §+0§.§,!E§;
   import §3!G§.LevelManager;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §@!L§.§#L§;
   import §@!L§.§-`§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §^!Y§.§'R§;
   import §^!Y§.§]e§;
   import flash.events.Event;
   
   public class StateCutScene extends §,!E§
   {
      
      public static const §"!s§:String = "StateCutScene";
      
      private static const §4!R§:Number = 500;
       
      
      private var §]!o§:§#L§;
      
      private var §&!;§:Boolean;
      
      private var §5z§:Number = 0;
      
      private var §2!_§:Number = 0;
      
      private var §&!M§:§]e§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_CutScene[0]);
      }
      
      protected function §8!M§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§&!M§)
            {
               §&!m§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§&!M§.removeEventListener(Event.COMPLETE,this.§8V§);
               this.§&!M§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§&!M§.addEventListener(Event.COMPLETE,this.§8V§);
               this.§&!M§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§&!M§.§]6§("cutscene_" + param1);
            }
            else
            {
               this.§7!f§();
            }
            return true;
         }
         return false;
      }
      
      private function §8V§(param1:Event) : void
      {
         if(this.§&!M§)
         {
            this.§&!M§.removeEventListener(Event.COMPLETE,this.§8V§);
            this.§&!M§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§7!f§();
         }
      }
      
      private function §7!f§() : void
      {
         §&!m§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§@!P§();
         var _loc2_:§'R§ = §'R§.§7!j§;
         if(this.§&!M§)
         {
            _loc2_ = this.§&!M§.textureManager;
         }
         this.§]!o§ = §-`§.§[!,§(_loc1_,_loc2_);
         if(this.§]!o§)
         {
            AngryBirdsFP11.sUserProgress.§6!E§(_loc1_);
            §^!c§.§5!Y§.§@!v§(true);
            §^!c§.§5!Y§.§"!B§(false);
            this.§]!o§.update(0);
            §^!c§.§5!Y§.§#!C§.addChild(this.§]!o§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§&!M§)
         {
            this.§&!M§.removeEventListener(Event.COMPLETE,this.§8V§);
            this.§&!M§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§&!M§)
         {
            this.§&!M§ = §^!c§.§5!Y§.§&c§;
         }
         if(§else§.§^!A§)
         {
            §else§.§^!A§.color = 0;
         }
         this.§5z§ = 0;
         this.§2!_§ = 0;
         §&!m§.getItemByName("Button_Skip").setVisibility(false);
         §&!m§.getItemByName("Button_Skip").mClip.alpha = this.§5z§;
         AngryBirdsFP11.§8#§();
         this.§&!;§ = false;
         §&!m§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§@!P§();
         if(!this.§8!M§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §@!P§() : String
      {
         var _loc1_:String = LevelManager.§"!N§;
         var _loc2_:String = LevelManager.§];§().§`!q§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = LevelManager.§%n§;
            _loc2_ = LevelManager.§];§().§`!q§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§]!o§)
         {
            §^!c§.§5!Y§.§#!C§.removeChild(this.§]!o§.sprite);
            this.§]!o§.dispose();
            this.§]!o§ = null;
         }
         if(this.§&!M§)
         {
            this.§&!M§.removeEventListener(Event.COMPLETE,this.§8V§);
            this.§&!M§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §^!c§.§5!Y§.§"!B§(true);
         LevelManager.§"!N§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§&!;§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3l§.§1T§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§2!_§ > §4!R§)
         {
            §&!m§.getItemByName("Button_Skip").setVisibility(true);
            this.§5z§ += param1 / 1000;
            §&!m§.getItemByName("Button_Skip").mClip.alpha = this.§5z§;
            if(this.§5z§ > 1)
            {
               this.§5z§ = 1;
            }
         }
         else
         {
            this.§2!_§ += param1;
         }
         if(this.§&!;§)
         {
            this.end();
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         if(this.§]!o§ && !this.§]!o§.update(param1))
         {
            this.end();
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§]!o§ && this.§]!o§.§,X§ == §#L§.§<!n§)
         {
            §!y§.§9!c§ = StateCutScene.§"!s§;
            mNextState = §!y§.§"!s§;
         }
         else if(this.§]!o§ && this.§]!o§.§,X§ == §#L§.§!!J§)
         {
            mNextState = §9!3§.§"!s§;
         }
         else
         {
            _loc1_ = LevelManager.§%n§;
            if(_loc1_)
            {
               mNextState = this.§`[§();
            }
            else
            {
               mNextState = §!y§.§"!s§;
            }
         }
      }
      
      protected function §`[§() : String
      {
         return §;W§.§"!s§;
      }
   }
}
