package §9!#§
{
   import §"h§.§<"+§;
   import §&"&§.§8!"§;
   import §&"8§.Quest;
   import §&"8§.§[`§;
   import §3!S§.§%s§;
   import §6!&§.§",§;
   import §6p§.§'!B§;
   import §;!A§.§9!U§;
   import §<!I§.§&5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §=;§.§=!"§;
   import §=;§.StateLevelEditor;
   import §=;§.StateLevelPreview;
   import §?""§.§&z§;
   import §@!;§.§&F§;
   import §]'§.§0r§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §?w§ extends §<"+§
   {
      
      public static const §8G§:String = "InitState";
      
      public static var §'!o§:§?w§;
      
      private static var §7!S§:Boolean = false;
       
      
      private var §"V§:Boolean = false;
      
      private var §%!N§:Boolean = true;
      
      private var §<"#§:Timer;
      
      public function §?w§(param1:Boolean = false, param2:String = "InitState")
      {
         super(param1,param2);
         §'!o§ = this;
         §8!"§.registerMethod("loadLevel",this.onLoadLevelRequest);
         §8!"§.registerMethod("suspend",this.suspend);
         this.§<"#§ = new Timer(4000);
         this.§<"#§.addEventListener(TimerEvent.TIMER,this.§5;§);
      }
      
      public static function get §8!j§() : Boolean
      {
         return §7!S§;
      }
      
      public static function set §8!j§(param1:Boolean) : void
      {
         §7!S§ = param1;
      }
      
      protected function §5;§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_Initialize[0]);
         this.§<"#§.start();
         ((§;i§.getItemByName("Container_Initialize") as §>"-§).getItemByName("MovieClip_Pig") as §&5§).goToFrame(1,true);
         §&z§.init();
         §[`§.§'!o§.addEventListener(§9!U§.§>!7§,this.suspend);
         §[`§.§'!o§.addEventListener(§9!U§.§%G§,this.§4!t§);
      }
      
      private function suspend(param1:Event = null) : void
      {
         if(!§]!L§)
         {
            §1+§.§?!-§.§+!C§().mNextState = §8G§;
            §'!B§.§>T§();
            §%s§.pause();
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this.§%!N§)
         {
            §8!"§.doJsCall("onFlashInitialize");
            this.§%!N§ = false;
         }
         if(§7!S§)
         {
            §[`§.§'!o§.§#!v§(§[`§.§'!o§.§ !>§());
            §7!S§ = false;
         }
      }
      
      private function §4!t§(param1:§9!U§) : void
      {
         var _loc3_:§",§ = null;
         var _loc2_:§[`§ = param1.target as §[`§;
         if(_loc2_.questData && _loc2_.questData != "")
         {
            if(_loc2_.§@O§)
            {
               _loc3_ = §",§.§4!S§(_loc2_.§@O§);
               Quest.§3x§ = true;
            }
            §=!"§.§#!v§(_loc3_,_loc2_.questData);
         }
         else
         {
            §0r§.§1n§ = null;
            §=!"§.loadLevel(§",§.§&Q§(),StateLevelEditor.§8G§);
         }
         §1+§.§?!-§.§+!C§().mNextState = §=!"§.§8G§;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function §8!j§() : void
      {
      }
      
      public function §#!v§() : void
      {
         this.suspend();
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         §&F§.log("onLoadLevelRequest");
         if(param1 == null || param1.length == 0 || param2 == "edit")
         {
            §[`§.§'!o§.§#!v§(§[`§.§'!o§.§ !>§());
         }
         else
         {
            _loc3_ = {
               "edit":StateLevelEditor.§8G§,
               "play":StatePlayBS.§8G§,
               "preview":StateLevelPreview.§8G§
            };
            §=!"§.loadLevel(§",§.§4!S§(param1),_loc3_[param2]);
            §1+§.§?!-§.§+!C§().mNextState = §=!"§.§8G§;
            §&F§.log("Start loading level");
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(mNextState.length > 0)
         {
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
   }
}
