package § !k§
{
   import §!!§.LevelManager;
   import §"!&§.§"R§;
   import §"!&§.§[>§;
   import §,6§.§!o§;
   import §,6§.§]!f§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§7!"§;
   import §@4§.§,!]§;
   import flash.events.Event;
   
   public class StateCutScene extends §+_§
   {
      
      public static const §3F§:String = "StateCutScene";
      
      private static const §9!Z§:Number = 500;
       
      
      private var §@!Q§:§"R§;
      
      private var §'!8§:Boolean;
      
      private var §2!s§:Number = 0;
      
      private var §^!$§:Number = 0;
      
      private var §[T§:§]!f§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_CutScene[0]);
      }
      
      protected function §"!,§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§[T§)
            {
               §`-§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§[T§.removeEventListener(Event.COMPLETE,this.§-!f§);
               this.§[T§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§[T§.addEventListener(Event.COMPLETE,this.§-!f§);
               this.§[T§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§[T§.§1m§("cutscene_" + param1);
            }
            else
            {
               this.§2r§();
            }
            return true;
         }
         return false;
      }
      
      private function §-!f§(param1:Event) : void
      {
         if(this.§[T§)
         {
            this.§[T§.removeEventListener(Event.COMPLETE,this.§-!f§);
            this.§[T§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§2r§();
         }
      }
      
      private function §2r§() : void
      {
         §`-§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§-!-§();
         var _loc2_:§!o§ = §!o§.§^Z§;
         if(this.§[T§)
         {
            _loc2_ = this.§[T§.textureManager;
         }
         this.§@!Q§ = §[>§.§4i§(_loc1_,_loc2_);
         if(this.§@!Q§)
         {
            AngryBirdsFP11.sUserProgress.§6!I§(_loc1_);
            §4!]§.§8C§.§1B§(true);
            §4!]§.§8C§.§+!b§(false);
            this.§@!Q§.update(0);
            §4!]§.§8C§.§]"§.addChild(this.§@!Q§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§[T§)
         {
            this.§[T§.removeEventListener(Event.COMPLETE,this.§-!f§);
            this.§[T§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§[T§)
         {
            this.§[T§ = §4!]§.§8C§.§9<§;
         }
         if(§,!]§.§!9§)
         {
            §,!]§.§!9§.color = 0;
         }
         this.§2!s§ = 0;
         this.§^!$§ = 0;
         §`-§.getItemByName("Button_Skip").setVisibility(false);
         §`-§.getItemByName("Button_Skip").mClip.alpha = this.§2!s§;
         AngryBirdsFP11.§`!P§();
         this.§'!8§ = false;
         §`-§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§-!-§();
         if(!this.§"!,§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §-!-§() : String
      {
         var _loc1_:String = LevelManager.§<5§;
         var _loc2_:String = LevelManager.§5!K§().§4!#§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = LevelManager.§^!F§;
            _loc2_ = LevelManager.§5!K§().§4!#§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§@!Q§)
         {
            §4!]§.§8C§.§]"§.removeChild(this.§@!Q§.sprite);
            this.§@!Q§.dispose();
            this.§@!Q§ = null;
         }
         if(this.§[T§)
         {
            this.§[T§.removeEventListener(Event.COMPLETE,this.§-!f§);
            this.§[T§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §4!]§.§8C§.§+!b§(true);
         LevelManager.§<5§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§'!8§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!c§.§catch§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§^!$§ > §9!Z§)
         {
            §`-§.getItemByName("Button_Skip").setVisibility(true);
            this.§2!s§ += param1 / 1000;
            §`-§.getItemByName("Button_Skip").mClip.alpha = this.§2!s§;
            if(this.§2!s§ > 1)
            {
               this.§2!s§ = 1;
            }
         }
         else
         {
            this.§^!$§ += param1;
         }
         if(this.§'!8§)
         {
            this.end();
            return §+_§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         if(this.§@!Q§ && !this.§@!Q§.update(param1))
         {
            this.end();
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§@!Q§ && this.§@!Q§.§`!`§ == §"R§.§'R§)
         {
            §6!U§.§2s§ = StateCutScene.§3F§;
            mNextState = §6!U§.§3F§;
         }
         else if(this.§@!Q§ && this.§@!Q§.§`!`§ == §"R§.§continue§)
         {
            mNextState = §6!5§.§3F§;
         }
         else
         {
            _loc1_ = LevelManager.§^!F§;
            if(_loc1_)
            {
               mNextState = this.set();
            }
            else
            {
               mNextState = §6!U§.§3F§;
            }
         }
      }
      
      protected function set() : String
      {
         return §%]§.§3F§;
      }
   }
}
