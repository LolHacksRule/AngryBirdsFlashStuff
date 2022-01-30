package §,r§
{
   import §"p§.§@8§;
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §0"7§.§ !2§;
   import §0E§.§@R§;
   import §1!"§.§[f§;
   import §2!w§.Quest;
   import §2!w§.§[D§;
   import §2L§.StateMap;
   import §5!8§.§+!?§;
   import §5!8§.§;!P§;
   import §7"1§.§%W§;
   import §7N§.§@!x§;
   import §7N§.StateLevelEditor;
   import §7N§.StateLevelPreview;
   import §=e§.§1!@§;
   import §>!#§.§-""§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §5!L§ extends §,v§
   {
      
      public static const §8n§:String = "InitState";
      
      public static var § "!§:§5!L§;
      
      private static var §7!R§:Boolean = false;
       
      
      private var §6A§:Boolean = false;
      
      private var §>"2§:Boolean = true;
      
      private var §%Y§:Timer;
      
      public function §5!L§(param1:Boolean = false, param2:String = "InitState")
      {
         super(param1,param2);
         § "!§ = this;
         §1!@§.registerMethod("loadLevel",this.onLoadLevelRequest);
         §1!@§.registerMethod("suspend",this.suspend);
         this.§%Y§ = new Timer(4000);
         this.§%Y§.addEventListener(TimerEvent.TIMER,this.§`"1§);
      }
      
      public static function get §&!y§() : Boolean
      {
         return §7!R§;
      }
      
      public static function set §&!y§(param1:Boolean) : void
      {
         §7!R§ = param1;
      }
      
      protected function §`"1§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_Initialize[0]);
         this.§%Y§.start();
         ((§?F§.getItemByName("Container_Initialize") as §+!?§).getItemByName("MovieClip_Pig") as §;!P§).goToFrame(1,true);
         §[f§.init();
         §[D§.§ "!§.addEventListener(§ !2§.§%";§,this.suspend);
         §[D§.§ "!§.addEventListener(§ !2§.§#"0§,this.§9"§);
      }
      
      private function suspend(param1:Event = null) : void
      {
         if(!§0"&§)
         {
            §%"$§.§"!V§.§%"0§().mNextState = §8n§;
            §^k§.§3,§();
            §%W§.pause();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§>"2§)
         {
            §1!@§.doJsCall("onFlashInitialize");
            this.§>"2§ = false;
            §[D§.§ "!§.fetchQuests();
            §[D§.§ "!§.addEventListener(§ !2§.§4]§,this.onQuestsFetched);
         }
      }
      
      private function onQuestsFetched(param1:§ !2§) : void
      {
         §%"$§.§"!V§.§%"0§().mNextState = StateMap.§8n§;
         §[D§.§ "!§.removeEventListener(§ !2§.§4]§,this.onQuestsFetched);
      }
      
      private function §9"§(param1:§ !2§) : void
      {
         var _loc3_:§@R§ = null;
         var _loc2_:§[D§ = param1.target as §[D§;
         if(_loc2_.questData && _loc2_.questData != "")
         {
            if(_loc2_.§!§ && _loc2_.§!§ != "")
            {
               _loc3_ = §@R§.§;"7§(_loc2_.§!§);
               Quest.§4!8§ = true;
            }
            §@!x§.§>"9§(_loc3_,_loc2_.questData);
         }
         else
         {
            §-""§.§+!_§ = null;
            §@!x§.loadLevel(§@R§.§'!p§(),StateLevelEditor.§8n§);
         }
         §%"$§.§"!V§.§%"0§().mNextState = §@!x§.§8n§;
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         §@8§.log("onLoadLevelRequest");
         if(param1 == null || param1.length == 0 || param2 == "edit")
         {
            if(!§[D§.§ "!§.hasEventListener(§ !2§.§4]§))
            {
               mNextState = StateMap.§8n§;
            }
         }
         else
         {
            _loc3_ = {
               "edit":StateLevelEditor.§8n§,
               "play":StatePlayBS.§8n§,
               "preview":StateLevelPreview.§8n§
            };
            §@!x§.loadLevel(§@R§.§;"7§(param1),_loc3_[param2]);
            §%"$§.§"!V§.§%"0§().mNextState = §@!x§.§8n§;
            §@8§.log("Start loading level");
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
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
