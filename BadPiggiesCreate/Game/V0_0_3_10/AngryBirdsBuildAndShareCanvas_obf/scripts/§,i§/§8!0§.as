package §,i§
{
   import §!!+§.§4!l§;
   import §!!+§.StateLevelEditor;
   import §!!+§.StateLevelPreview;
   import §#L§.§!!Q§;
   import §+!v§.§`!t§;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7!&§.§!!k§;
   import §7M§.§7!#§;
   import §8"'§.§?!`§;
   import §9!G§.§]!e§;
   import §="$§.§?3§;
   import §="$§.Quest;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §8!0§ extends §0!K§
   {
      
      public static const §]"2§:String = "InitState";
      
      public static var §,l§:§8!0§;
      
      private static var §;!`§:Boolean = false;
       
      
      private var §`V§:Boolean = false;
      
      private var §%!2§:Boolean = true;
      
      private var §;>§:Timer;
      
      public function §8!0§(param1:Boolean = false, param2:String = "InitState")
      {
         super(param1,param2);
         §,l§ = this;
         §?!`§.registerMethod("loadLevel",this.onLoadLevelRequest);
         §?!`§.registerMethod("suspend",this.suspend);
         this.§;>§ = new Timer(4000);
         this.§;>§.addEventListener(TimerEvent.TIMER,this.§3r§);
      }
      
      public static function get §9!O§() : Boolean
      {
         return §;!`§;
      }
      
      public static function set §9!O§(param1:Boolean) : void
      {
         §;!`§ = param1;
      }
      
      protected function §3r§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_Initialize[0]);
         this.§;>§.start();
         ((§'K§.getItemByName("Container_Initialize") as §7!a§).getItemByName("MovieClip_Pig") as §%!9§).goToFrame(1,true);
         §!!k§.init();
         §?3§.§,l§.addEventListener(§!!Q§.§7!Y§,this.suspend);
         §?3§.§,l§.addEventListener(§!!Q§.§1I§,this.§=!p§);
      }
      
      private function suspend(param1:Event = null) : void
      {
         if(!§7!§)
         {
            §7"$§.§'"0§.§7F§().mNextState = §]"2§;
            § !x§.§ X§();
            §"!V§.pause();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§%!2§)
         {
            §?!`§.doJsCall("onFlashInitialize");
            this.§%!2§ = false;
         }
         if(§;!`§)
         {
            §?3§.§,l§.§&!I§(§?3§.§,l§.§&!§());
            §;!`§ = false;
         }
      }
      
      private function §=!p§(param1:§!!Q§) : void
      {
         var _loc3_:§7!#§ = null;
         var _loc2_:§?3§ = param1.target as §?3§;
         if(_loc2_.questData && _loc2_.questData != "")
         {
            if(_loc2_.§=!%§ && _loc2_.§=!%§ != "")
            {
               _loc3_ = §7!#§.§>"&§(_loc2_.§=!%§);
               Quest.§[d§ = true;
            }
            §4!l§.§&!I§(_loc3_,_loc2_.questData);
         }
         else
         {
            §`!t§.§6!y§ = null;
            §4!l§.loadLevel(§7!#§.§]!^§(),StateLevelEditor.§]"2§);
         }
         §7"$§.§'"0§.§7F§().mNextState = §4!l§.§]"2§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function §9!O§() : void
      {
      }
      
      public function §&!I§() : void
      {
         this.suspend();
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         §]!e§.log("onLoadLevelRequest");
         if(param1 == null || param1.length == 0 || param2 == "edit")
         {
            §?3§.§,l§.§&!I§(§?3§.§,l§.§&!§());
         }
         else
         {
            _loc3_ = {
               "edit":StateLevelEditor.§]"2§,
               "play":StatePlayBS.§]"2§,
               "preview":StateLevelPreview.§]"2§
            };
            §4!l§.loadLevel(§7!#§.§>"&§(param1),_loc3_[param2]);
            §7"$§.§'"0§.§7F§().mNextState = §4!l§.§]"2§;
            §]!e§.log("Start loading level");
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
   }
}
