package §2x§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import §#!8§.§&!'§;
   import §%!W§.§9!K§;
   import §&W§.§7L§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §07§.§^P§;
   import §0s§.§?!?§;
   import §4!S§.§<V§;
   import §4!S§.Quest;
   import §4!y§.StateMap;
   import §=!<§.§5!U§;
   import §=!D§.§<]§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §^^§.§1§;
   import §^^§.StateLevelEditor;
   import §^^§.StateLevelPreview;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §!!6§ extends §>!T§
   {
      
      public static const §>H§:String = "InitState";
      
      public static var §7!?§:§!!6§;
      
      private static var §-!6§:Boolean = false;
       
      
      private var §4l§:Boolean = false;
      
      private var §1"$§:Boolean = true;
      
      private var §`g§:Timer;
      
      public function §!!6§(param1:Boolean = false, param2:String = "InitState")
      {
         super(param1,param2);
         §7!?§ = this;
         §&!'§.registerMethod("loadLevel",this.onLoadLevelRequest);
         §&!'§.registerMethod("suspend",this.suspend);
         this.§`g§ = new Timer(4000);
         this.§`g§.addEventListener(TimerEvent.TIMER,this.§8!%§);
      }
      
      public static function get §7d§() : Boolean
      {
         return §-!6§;
      }
      
      public static function set §7d§(param1:Boolean) : void
      {
         §-!6§ = param1;
      }
      
      protected function §8!%§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_Initialize[0]);
         this.§`g§.start();
         ((§3?§.getItemByName("Container_Initialize") as §1H§).getItemByName("MovieClip_Pig") as §%!7§).goToFrame(1,true);
         §9!K§.init();
         §<V§.§7!?§.addEventListener(§<]§.§+G§,this.suspend);
         §<V§.§7!?§.addEventListener(§<]§.§7!X§,this.§@!V§);
      }
      
      private function suspend(param1:Event = null) : void
      {
         if(!§%w§)
         {
            §@=§.§2p§.§-!q§().mNextState = §>H§;
            §5;§.§8X§();
            §5!U§.pause();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§1"$§)
         {
            §&!'§.doJsCall("onFlashInitialize");
            this.§1"$§ = false;
            §<V§.§7!?§.fetchQuests();
            §<V§.§7!?§.addEventListener(§<]§.§`"0§,this.onQuestsFetched);
         }
      }
      
      private function onQuestsFetched(param1:§<]§) : void
      {
         §@=§.§2p§.§-!q§().mNextState = StateMap.§>H§;
         §<V§.§7!?§.removeEventListener(§<]§.§`"0§,this.onQuestsFetched);
      }
      
      private function §@!V§(param1:§<]§) : void
      {
         var _loc3_:§?!?§ = null;
         var _loc2_:§<V§ = param1.target as §<V§;
         if(_loc2_.questData && _loc2_.questData != "")
         {
            if(_loc2_.§>!r§ && _loc2_.§>!r§ != "")
            {
               _loc3_ = §?!?§.§>I§(_loc2_.§>!r§);
               Quest.§,r§ = true;
            }
            §1§.§0l§(_loc3_,_loc2_.questData);
         }
         else
         {
            §^P§.§6!Y§ = null;
            §1§.loadLevel(§?!?§.§95§(),StateLevelEditor.§>H§);
         }
         §@=§.§2p§.§-!q§().mNextState = §1§.§>H§;
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         §7L§.log("onLoadLevelRequest");
         if(param1 == null || param1.length == 0 || param2 == "edit")
         {
            if(!§<V§.§7!?§.hasEventListener(§<]§.§`"0§))
            {
               mNextState = StateMap.§>H§;
            }
         }
         else
         {
            _loc3_ = {
               "edit":StateLevelEditor.§>H§,
               "play":StatePlayBS.§>H§,
               "preview":StateLevelPreview.§>H§
            };
            §1§.loadLevel(§?!?§.§>I§(param1),_loc3_[param2]);
            §@=§.§2p§.§-!q§().mNextState = §1§.§>H§;
            §7L§.log("Start loading level");
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(param1.keyCode == Keyboard.X && param1.ctrlKey)
         {
            this.onLoadLevelRequest("","edit");
         }
      }
   }
}
