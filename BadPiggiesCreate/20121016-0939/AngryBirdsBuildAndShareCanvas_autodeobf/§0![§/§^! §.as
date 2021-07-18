package §0![§
{
   import § "@§.§%!3§;
   import § "@§.StateLevelEditor;
   import § "@§.StateLevelPreview;
   import §"v§.§]!B§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'p§.§%+§;
   import §'p§.§`!T§;
   import §,B§.StateMap;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §6" §.§<8§;
   import §8" §.§,!q§;
   import §8" §.Quest;
   import §=!M§.§9!P§;
   import §="6§.§^"8§;
   import §@"5§.§1k§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §^! § extends §5y§
   {
      
      public static const §'=§:String = "InitState";
      
      public static var §2=§:§^! §;
      
      private static var §@4§:Boolean = false;
       
      
      private var §%>§:Boolean = false;
      
      private var §++§:Boolean = true;
      
      private var §6#§:Timer;
      
      public function §^! §(param1:Boolean = false, param2:String = "InitState")
      {
         super(param1,param2);
         §2=§ = this;
         §4m§.registerMethod("loadLevel",this.onLoadLevelRequest);
         §4m§.registerMethod("suspend",this.suspend);
         this.§6#§ = new Timer(4000);
         this.§6#§.addEventListener(TimerEvent.TIMER,this.§`"0§);
      }
      
      public static function get §#3§() : Boolean
      {
         return §@4§;
      }
      
      public static function set §#3§(param1:Boolean) : void
      {
         §@4§ = param1;
      }
      
      protected function §`"0§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_Initialize[0]);
         this.§6#§.start();
         ((§?E§.getItemByName("Container_Initialize") as §`!T§).getItemByName("MovieClip_Pig") as §%+§).goToFrame(1,true);
         §<8§.init();
         §,!q§.§2=§.addEventListener(§1k§.§]!]§,this.suspend);
         §,!q§.§2=§.addEventListener(§1k§.§=!P§,this.§^!>§);
      }
      
      private function suspend(param1:Event = null) : void
      {
         if(!§?C§)
         {
            §>"§.§%d§.§&[§().mNextState = §'=§;
            §5!U§.§9&§();
            §=!X§.pause();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§++§)
         {
            §4m§.doJsCall("onFlashInitialize");
            this.§++§ = false;
            §,!q§.§2=§.fetchQuests();
            §,!q§.§2=§.addEventListener(§1k§.§"!'§,this.onQuestsFetched);
         }
      }
      
      private function onQuestsFetched(param1:§1k§) : void
      {
         §>"§.§%d§.§&[§().mNextState = StateMap.§'=§;
         §,!q§.§2=§.removeEventListener(§1k§.§"!'§,this.onQuestsFetched);
      }
      
      private function §^!>§(param1:§1k§) : void
      {
         var _loc3_:§]!B§ = null;
         var _loc2_:§,!q§ = param1.target as §,!q§;
         if(_loc2_.questData && _loc2_.questData != "")
         {
            if(_loc2_.§;!6§ && _loc2_.§;!6§ != "")
            {
               _loc3_ = §]!B§.§+0§(_loc2_.§;!6§);
               Quest.§@>§ = true;
            }
            §%!3§.§-E§(_loc3_,_loc2_.questData);
         }
         else
         {
            §^"8§.§@!k§ = null;
            §%!3§.loadLevel(§]!B§.§!p§(),StateLevelEditor.§'=§);
         }
         §>"§.§%d§.§&[§().mNextState = §%!3§.§'=§;
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         §9!P§.log("onLoadLevelRequest");
         if(param1 == null || param1.length == 0 || param2 == "edit")
         {
            if(!§,!q§.§2=§.hasEventListener(§1k§.§"!'§))
            {
               mNextState = StateMap.§'=§;
            }
         }
         else
         {
            _loc3_ = {
               "edit":StateLevelEditor.§'=§,
               "play":StatePlayBS.§'=§,
               "preview":StateLevelPreview.§'=§
            };
            §%!3§.loadLevel(§]!B§.§+0§(param1),_loc3_[param2]);
            §>"§.§%d§.§&[§().mNextState = §%!3§.§'=§;
            §9!P§.log("Start loading level");
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
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
