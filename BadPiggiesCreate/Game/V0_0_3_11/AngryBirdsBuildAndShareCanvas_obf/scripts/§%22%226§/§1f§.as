package §""6§
{
   import § !i§.§>!H§;
   import § J§.§6"6§;
   import § J§.StateLevelEditor;
   import § J§.StateLevelPreview;
   import §'x§.§?z§;
   import §+%§.§5!O§;
   import §,Q§.§="2§;
   import §1z§.§2!J§;
   import §1z§.Quest;
   import §2!O§.§,w§;
   import §;!A§.§%!`§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §;X§.§ do§;
   import §<!p§.§]"7§;
   import §?!k§.§0!t§;
   import §]X§.§<!-§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §1f§ extends §,w§
   {
      
      public static const §^z§:String = "InitState";
      
      public static var §if §:§1f§;
      
      private static var §=g§:Boolean = false;
       
      
      private var §]"!§:Boolean = false;
      
      private var §]K§:Boolean = true;
      
      private var §7!v§:Timer;
      
      public function §1f§(param1:Boolean = false, param2:String = "InitState")
      {
         super(param1,param2);
         §if § = this;
         §="2§.registerMethod("loadLevel",this.onLoadLevelRequest);
         §="2§.registerMethod("suspend",this.suspend);
         this.§7!v§ = new Timer(4000);
         this.§7!v§.addEventListener(TimerEvent.TIMER,this.§8R§);
      }
      
      public static function get §;!b§() : Boolean
      {
         return §=g§;
      }
      
      public static function set §;!b§(param1:Boolean) : void
      {
         §=g§ = param1;
      }
      
      protected function §8R§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_Initialize[0]);
         this.§7!v§.start();
         ((§%""§.getItemByName("Container_Initialize") as §;!u§).getItemByName("MovieClip_Pig") as §%!`§).goToFrame(1,true);
         §]"7§.init();
         §2!J§.§if §.addEventListener(§>!H§.§'! §,this.suspend);
         §2!J§.§if §.addEventListener(§>!H§.§7Z§,this.§[!h§);
      }
      
      private function suspend(param1:Event = null) : void
      {
         if(!override)
         {
            §'N§.§@!N§.§1w§().mNextState = §^z§;
            §0!t§.§,!S§();
            §?z§.pause();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§]K§)
         {
            §="2§.doJsCall("onFlashInitialize");
            this.§]K§ = false;
         }
         if(§=g§)
         {
            §2!J§.§if §.§#z§(§2!J§.§if §.§+!?§());
            §=g§ = false;
         }
      }
      
      private function §[!h§(param1:§>!H§) : void
      {
         var _loc3_:§5!O§ = null;
         var _loc2_:§2!J§ = param1.target as §2!J§;
         if(_loc2_.questData && _loc2_.questData != "")
         {
            if(_loc2_.§7!m§ && _loc2_.§7!m§ != "")
            {
               _loc3_ = §5!O§.§+!R§(_loc2_.§7!m§);
               Quest.§-!P§ = true;
            }
            §6"6§.§#z§(_loc3_,_loc2_.questData);
         }
         else
         {
            §<!-§.§@-§ = null;
            §6"6§.loadLevel(§5!O§.§^x§(),StateLevelEditor.§^z§);
         }
         §'N§.§@!N§.§1w§().mNextState = §6"6§.§^z§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function §;!b§() : void
      {
      }
      
      public function §#z§() : void
      {
         this.suspend();
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         § do§.log("onLoadLevelRequest");
         if(param1 == null || param1.length == 0 || param2 == "edit")
         {
            §2!J§.§if §.§#z§(§2!J§.§if §.§+!?§());
         }
         else
         {
            _loc3_ = {
               "edit":StateLevelEditor.§^z§,
               "play":StatePlayBS.§^z§,
               "preview":StateLevelPreview.§^z§
            };
            §6"6§.loadLevel(§5!O§.§+!R§(param1),_loc3_[param2]);
            §'N§.§@!N§.§1w§().mNextState = §6"6§.§^z§;
            § do§.log("Start loading level");
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
   }
}
