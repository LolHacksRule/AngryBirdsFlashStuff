package §-P§
{
   import §!!T§.§"!S§;
   import §!",§.§"F§;
   import §!",§.StateLevelEditor;
   import §!",§.StateLevelPreview;
   import §!D§.§ use§;
   import §!D§.§<!5§;
   import §'!O§.§5!v§;
   import §,!$§.§`!z§;
   import §4u§.§<!L§;
   import §6`§.§?!7§;
   import §;!+§.§`!#§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §]!l§.§-"&§;
   import §`%§.§8!0§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §var§.§,"1§;
   import §var§.Quest;
   
   public class §1Z§ extends §4E§
   {
      
      public static const §#!w§:String = "InitState";
      
      public static var §9j§:§1Z§;
      
      private static var §#!5§:Boolean = false;
       
      
      private var §]""§:Boolean = false;
      
      private var §5!7§:Boolean = true;
      
      private var §"!G§:Timer;
      
      public function §1Z§(param1:Boolean = false, param2:String = "InitState")
      {
         super(param1,param2);
         §9j§ = this;
         §"!S§.registerMethod("loadLevel",this.onLoadLevelRequest);
         §"!S§.registerMethod("suspend",this.suspend);
         this.§"!G§ = new Timer(4000);
         this.§"!G§.addEventListener(TimerEvent.TIMER,this.§,Y§);
      }
      
      public static function get §&s§() : Boolean
      {
         return §#!5§;
      }
      
      public static function set §&s§(param1:Boolean) : void
      {
         §#!5§ = param1;
      }
      
      protected function §,Y§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_Initialize[0]);
         this.§"!G§.start();
         ((§1!j§.getItemByName("Container_Initialize") as § use§).getItemByName("MovieClip_Pig") as §<!5§).goToFrame(1,true);
         §-"&§.init();
         §,"1§.§9j§.addEventListener(§`!z§.§'<§,this.suspend);
         §,"1§.§9j§.addEventListener(§`!z§.§+!8§,this.§;l§);
      }
      
      private function suspend(param1:Event = null) : void
      {
         if(!§=!T§)
         {
            §3!P§.§"!U§.§ #§().mNextState = §#!w§;
            §?!7§.§@"!§();
            §8!0§.pause();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§5!7§)
         {
            §"!S§.doJsCall("onFlashInitialize");
            this.§5!7§ = false;
         }
         if(§#!5§)
         {
            §,"1§.§9j§.§8S§(§,"1§.§9j§.§^!L§());
            §#!5§ = false;
         }
      }
      
      private function §;l§(param1:§`!z§) : void
      {
         var _loc3_:§5!v§ = null;
         var _loc2_:§,"1§ = param1.target as §,"1§;
         if(_loc2_.questData && _loc2_.questData != "")
         {
            if(_loc2_.§7z§)
            {
               _loc3_ = §5!v§.§?D§(_loc2_.§7z§);
               Quest.§0!;§ = true;
            }
            §"F§.§8S§(_loc3_,_loc2_.questData);
         }
         else
         {
            §`!#§.§@"4§ = null;
            §"F§.loadLevel(§5!v§.§"q§(),StateLevelEditor.§#!w§);
         }
         §3!P§.§"!U§.§ #§().mNextState = §"F§.§#!w§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function §&s§() : void
      {
      }
      
      public function §8S§() : void
      {
         this.suspend();
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         §<!L§.log("onLoadLevelRequest");
         if(param1 == null || param1.length == 0 || param2 == "edit")
         {
            §,"1§.§9j§.§8S§(§,"1§.§9j§.§^!L§());
         }
         else
         {
            _loc3_ = {
               "edit":StateLevelEditor.§#!w§,
               "play":StatePlayBS.§#!w§,
               "preview":StateLevelPreview.§#!w§
            };
            §"F§.loadLevel(§5!v§.§?D§(param1),_loc3_[param2]);
            §3!P§.§"!U§.§ #§().mNextState = §"F§.§#!w§;
            §<!L§.log("Start loading level");
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
   }
}
