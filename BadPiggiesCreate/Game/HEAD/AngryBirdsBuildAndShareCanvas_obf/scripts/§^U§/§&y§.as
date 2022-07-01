package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §50§.StateMap;
   import §5u§.§-"#§;
   import §6!A§.§4!%§;
   import §6]§.§,"0§;
   import §;" §.§5L§;
   import §;" §.Quest;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §;b§.StateLevelEditor;
   import §;b§.StateLevelPreview;
   import §<i§.§-"?§;
   import §=!7§.§6W§;
   import §=!7§.§@u§;
   import §`!,§.§[!&§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §&y§ extends §'B§
   {
      
      public static const §%!Q§:String = "InitState";
      
      public static var §[E§:§&y§;
      
      private static var §0!]§:Boolean = false;
       
      
      private var §&!;§:Boolean = false;
      
      private var §;!v§:Boolean = true;
      
      private var §3R§:Timer;
      
      public function §&y§(param1:Boolean = false, param2:String = "InitState")
      {
         super(param1,param2);
         §[E§ = this;
         §?s§.registerMethod("loadLevel",this.onLoadLevelRequest);
         §?s§.registerMethod("suspend",this.suspend);
         this.§3R§ = new Timer(4000);
         this.§3R§.addEventListener(TimerEvent.TIMER,this.§5N§);
      }
      
      public static function get §0>§() : Boolean
      {
         return §0!]§;
      }
      
      public static function set §0>§(param1:Boolean) : void
      {
         §0!]§ = param1;
      }
      
      protected function §5N§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_Initialize[0]);
         this.§3R§.start();
         ((§`!v§.getItemByName("Container_Initialize") as §6W§).getItemByName("MovieClip_Pig") as §@u§).goToFrame(1,true);
         §4!%§.init();
         §5L§.§[E§.addEventListener(§[!&§.§>!0§,this.suspend);
         §5L§.§[E§.addEventListener(§[!&§.§in§,this.§'!o§);
      }
      
      private function suspend(param1:Event = null) : void
      {
         if(!§3!+§)
         {
            §[!^§.§@"7§.§<"%§().mNextState = §%!Q§;
            §0"#§.§4"#§();
            §'_§.pause();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§;!v§)
         {
            §?s§.doJsCall("onFlashInitialize");
            this.§;!v§ = false;
            §5L§.§[E§.fetchQuests();
            §5L§.§[E§.addEventListener(§[!&§.§>""§,this.onQuestsFetched);
         }
      }
      
      private function onQuestsFetched(param1:§[!&§) : void
      {
         §[!^§.§@"7§.§<"%§().mNextState = StateMap.§%!Q§;
         §5L§.§[E§.removeEventListener(§[!&§.§>""§,this.onQuestsFetched);
      }
      
      private function §'!o§(param1:§[!&§) : void
      {
         var _loc3_:§-"?§ = null;
         var _loc2_:§5L§ = param1.target as §5L§;
         if(_loc2_.questData && _loc2_.questData != "")
         {
            if(_loc2_.§,?§ && _loc2_.§,?§ != "")
            {
               _loc3_ = §-"?§.§ !N§(_loc2_.§,?§);
               Quest.§[!q§ = true;
            }
            §@"0§.each(_loc3_,_loc2_.questData);
         }
         else
         {
            §-"#§.§0o§ = null;
            §@"0§.loadLevel(§-"?§.§!!B§(),StateLevelEditor.§%!Q§);
         }
         §[!^§.§@"7§.§<"%§().mNextState = §@"0§.§%!Q§;
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         §,"0§.log("onLoadLevelRequest");
         if(param1 == null || param1.length == 0 || param2 == "edit")
         {
            if(!§5L§.§[E§.hasEventListener(§[!&§.§>""§))
            {
               mNextState = StateMap.§%!Q§;
            }
         }
         else
         {
            _loc3_ = {
               "edit":StateLevelEditor.§%!Q§,
               "play":StatePlayBS.§%!Q§,
               "preview":StateLevelPreview.§%!Q§
            };
            §@"0§.loadLevel(§-"?§.§ !N§(param1),_loc3_[param2]);
            §[!^§.§@"7§.§<"%§().mNextState = §@"0§.§%!Q§;
            §,"0§.log("Start loading level");
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
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
