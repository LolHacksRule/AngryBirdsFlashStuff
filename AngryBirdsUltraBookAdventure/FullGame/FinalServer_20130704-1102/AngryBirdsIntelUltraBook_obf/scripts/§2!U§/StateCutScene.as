package §2!U§
{
   import §"!i§.LevelManager;
   import §2m§.§<!?§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §=I§.§6g§;
   import §=I§.§@x§;
   import §=`§.§ !;§;
   import §=`§.§6!I§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import flash.events.Event;
   
   public class StateCutScene extends §9![§
   {
      
      public static const §'!q§:String = "StateCutScene";
      
      private static const §0X§:Number = 500;
      
      protected static var §&!Y§:Boolean;
      
      protected static var §->§:int;
       
      
      protected var §!H§:§@x§;
      
      private var §-!F§:Boolean;
      
      private var §!!l§:Number = 0;
      
      private var §3!4§:Number = 0;
      
      private var §[p§:§ !;§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function §3!a§(param1:Boolean, param2:int = -2147483648) : void
      {
         §&!Y§ = param1;
         §->§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_CutScene[0]);
      }
      
      protected function §@!p§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§[p§)
            {
               §'!Q§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§[p§.removeEventListener(Event.COMPLETE,this.§35§);
               this.§[p§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§[p§.addEventListener(Event.COMPLETE,this.§35§);
               this.§[p§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§[p§.§-!a§("cutscene_" + param1);
            }
            else
            {
               this.§5t§();
            }
            return true;
         }
         return false;
      }
      
      private function §35§(param1:Event) : void
      {
         if(this.§[p§)
         {
            this.§[p§.removeEventListener(Event.COMPLETE,this.§35§);
            this.§[p§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§5t§();
         }
      }
      
      protected function §5t§() : void
      {
         §'!Q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§8!Y§();
         var _loc2_:§6!I§ = §6!I§.§[U§;
         if(this.§[p§)
         {
            _loc2_ = this.§[p§.textureManager;
         }
         this.§!H§ = §6g§.§#!u§(_loc1_,_loc2_);
         if(this.§!H§)
         {
            AngryBirdsFP11.sUserProgress.§8?§(_loc1_);
            §,!s§.§=!I§.§!C§(true);
            §,!s§.§=!I§.§1!9§(false);
            this.§!H§.update(0);
            §,!s§.§=!I§.§]!_§.addChild(this.§!H§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§[p§)
         {
            this.§[p§.removeEventListener(Event.COMPLETE,this.§35§);
            this.§[p§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§[p§)
         {
            this.§[p§ = §,!s§.§=!I§.§!n§;
         }
         if(§<!?§.§,=§)
         {
            §<!?§.§,=§.color = 0;
         }
         this.§!!l§ = 0;
         this.§3!4§ = 0;
         §'!Q§.getItemByName("Button_Skip").setVisibility(false);
         §'!Q§.getItemByName("Button_Skip").mClip.alpha = this.§!!l§;
         AngryBirdsFP11.§?!<§();
         this.§-!F§ = false;
         §'!Q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§8!Y§();
         if(!this.§@!p§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §8!Y§() : String
      {
         var _loc1_:String = LevelManager.§>l§;
         var _loc2_:String = LevelManager.§+!$§().§8!O§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = LevelManager.§"L§;
            _loc2_ = LevelManager.§+!$§().§8!O§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§!H§)
         {
            §,!s§.§=!I§.§]!_§.removeChild(this.§!H§.sprite);
            this.§!H§.dispose();
            this.§!H§ = null;
         }
         if(this.§[p§)
         {
            this.§[p§.removeEventListener(Event.COMPLETE,this.§35§);
            this.§[p§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §,!s§.§=!I§.§1!9§(true);
         LevelManager.§>l§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§-!F§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'!g§.§]8§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§3!4§ > §0X§)
         {
            §'!Q§.getItemByName("Button_Skip").setVisibility(!§&!Y§);
            this.§!!l§ += param1 / 1000;
            §'!Q§.getItemByName("Button_Skip").mClip.alpha = this.§!!l§;
            if(this.§!!l§ > 1)
            {
               this.§!!l§ = 1;
            }
         }
         else
         {
            this.§3!4§ += param1;
         }
         if(this.§-!F§)
         {
            this.end();
            return §9![§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §9![§.STATE_STATUS_COMPLETED;
         }
         if(!§&!Y§)
         {
            if(this.§!H§ && !this.§!H§.update(param1))
            {
               this.end();
            }
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      protected function end() : void
      {
         var _loc1_:String = null;
         if(this.§!H§ && this.§!H§.§+l§ == §@x§.§<""§)
         {
            §2!=§.§%!i§ = StateCutScene.§'!q§;
            mNextState = this.§8!X§();
         }
         else if(this.§!H§ && this.§!H§.§+l§ == §@x§.§4!X§)
         {
            mNextState = §<&§.§'!q§;
         }
         else
         {
            _loc1_ = LevelManager.§"L§;
            if(_loc1_)
            {
               mNextState = this.§[!Q§();
            }
            else
            {
               mNextState = this.§8!X§();
            }
         }
         §3!a§(false);
      }
      
      protected function §8!X§() : String
      {
         return §2!=§.§'!q§;
      }
      
      protected function §[!Q§() : String
      {
         return §3!;§.§'!q§;
      }
   }
}
