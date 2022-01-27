package § §#8
{
   import §1!i§.§<"&§;
   import §5t§.Log;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §>@§.§#y§;
   import §>@§.§5"H§;
   import §]!$§.§6y§;
   import §]!$§.§>!!§;
   import §]!$§.§`!]§;
   import §]!$§.§`#?§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §4#`§ implements §#y§
   {
      
      public static const §[#Y§:int = 60;
      
      public static const §"l§:String = "dummyState";
      
      public static const §<!=§:int = 0;
      
      public static const §"#8§:int = 1;
      
      public static const §&p§:int = 2;
      
      public static const §-#_§:int = 3;
      
      public static var §8X§:Object = null;
       
      
      private var §!#!§:Boolean = false;
      
      private var §;"w§:Boolean = false;
      
      public var mName:String;
      
      public var §[L§:Boolean = false;
      
      protected var §`"B§:String = "none";
      
      protected var §?!O§:§6y§;
      
      protected var §7!=§:§>!!§;
      
      protected var §&S§:String;
      
      protected var §7#^§:Boolean = false;
      
      protected var §+#=§:Boolean = true;
      
      protected var §^!`§:String = "best";
      
      public var skipTransition:Boolean = false;
      
      public var §1!I§:Boolean = true;
      
      private var §<!%§:Vector.<String>;
      
      protected var §7!z§:Vector.<String>;
      
      public var §^N§:Boolean = false;
      
      public var §@;§:§]#[§;
      
      public var §-d§:Array;
      
      private var §+0§:String = "";
      
      private var §%#1§:String = "";
      
      public var §%G§:Sprite = null;
      
      public var §!;§:§&7§ = null;
      
      protected var §^"N§:§5"H§;
      
      public function §4#`§(param1:Boolean, param2:String, param3:§5"H§)
      {
         super();
         this.mName = param2;
         this.§-d§ = new Array();
         this.§%G§ = new Sprite();
         this.§^"N§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §?#>§(param1:String) : String
      {
         if(§8X§)
         {
            return §8X§[param1];
         }
         return null;
      }
      
      public function get §3"v§() : String
      {
         return this.§%#1§;
      }
      
      public function get nextState() : String
      {
         return this.§+0§;
      }
      
      public function get §4"8§() : Boolean
      {
         return this.§!#!§;
      }
      
      public function get §6!h§() : Boolean
      {
         return this.§;"w§;
      }
      
      private function initialize() : void
      {
         this.§<!%§ = new Vector.<String>();
         this.§7!z§ = new Vector.<String>();
         this.§^!j§();
         this.init();
         this.§?"-§();
         this.§@"'§();
         this.§!#!§ = true;
      }
      
      protected function §^!j§() : void
      {
         this.§<!%§.push(§`#?§.§[! §());
         this.§<!%§.push(§`#?§.§9!-§());
         this.§<!%§.push(§`#?§.§`J§());
         this.§<!%§.push(§`#?§.§@!!§());
         this.§<!%§.push(§`#?§.§8#@§());
         this.§<!%§.push(§`#?§.§;!&§);
         this.§<!%§.push(§`#?§.§1#$§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §@"'§() : void
      {
      }
      
      private function §?"-§() : void
      {
         if(this.§@;§ == null || this.§@;§.container == null || this.§@;§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§@;§.container.mClip;
         var _loc2_:Vector.<String> = this.§<!%§.concat(this.§7!z§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §<"&§.§6!t§(_loc1_,_loc2_,_loc3_,§<"&§.§?"5§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§7!=§ = new §`!]§(param1,this.§%G§.stage);
      }
      
      private function §2! §(param1:MouseEvent) : void
      {
         this.§&#§(false);
         if(this.§`"B§ == §6y§.§;X§)
         {
            this.skipTransition = true;
         }
         this.§7!=§.stop(false);
      }
      
      private function §&#§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%G§.addEventListener(MouseEvent.CLICK,this.§2! §);
         }
         else
         {
            this.§%G§.removeEventListener(MouseEvent.CLICK,this.§2! §);
         }
         this.§%G§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§]#[§ = null;
         this.§%#1§ = param1;
         if(!this.§!#!§)
         {
            this.initialize();
         }
         if(this.§@;§)
         {
            this.§%G§.addChild(this.§@;§);
            this.§@;§.§52§();
         }
         for each(_loc2_ in this.§-d§)
         {
            this.§%G§.addChild(_loc2_);
            _loc2_.§8,§();
         }
         this.§+0§ = "";
         this.§;"w§ = true;
      }
      
      public function activateComplete(param1:Boolean) : void
      {
         var _loc2_:§6y§ = null;
         if(this.§7#^§ && !param1)
         {
            _loc2_ = new §6y§();
            _loc2_.§%#N§ = §`#?§.§1#$§;
            _loc2_.§`"i§ = §`#?§.§;!&§;
            _loc2_.startLabel = §`#?§.§@!!§(this.§%#1§);
            _loc2_.type = §6y§.§>]§;
            _loc2_.stageQuality = this.§^!`§;
            this.§%!K§(_loc2_);
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§]#[§ = null;
         this.§^!d§();
         if(this.§@;§)
         {
            this.§@;§.§8,§();
            this.§%G§.removeChild(this.§@;§);
         }
         for each(_loc1_ in this.§-d§)
         {
            _loc1_.§8,§();
            this.§%G§.removeChild(_loc1_);
         }
         if(!this.§;"w§)
         {
            if(this.§^N§)
            {
               this.cleanup();
            }
            return;
         }
         this.§;"w§ = false;
         if(this.§^N§)
         {
            this.cleanup();
         }
      }
      
      private function §%!K§(param1:§6y§) : void
      {
         this.§^!d§();
         if(this.§7!=§ && param1.type != §6y§.§8"@§)
         {
            this.§`"B§ = param1.type;
            this.beforeTransitionStart(param1);
            this.§7!=§.addEventListener(Event.COMPLETE,this.§]!p§);
            this.§7!=§.start(param1);
            if(this.§`"B§ == §6y§.§>]§ || this.§`"B§ == §6y§.§;X§)
            {
               if(this.§1!I§)
               {
                  this.§&#§(true);
               }
            }
            this.onTransitionStart(this.§`"B§);
         }
      }
      
      protected function beforeTransitionStart(param1:§6y§) : void
      {
      }
      
      private function §^!d§() : void
      {
         if(this.§7!=§)
         {
            this.§7!=§.removeEventListener(Event.COMPLETE,this.§]!p§);
            this.§7!=§.stop();
         }
         this.§`"B§ = §6y§.§8"@§;
         this.§&#§(false);
      }
      
      private function §]!p§(param1:Event) : void
      {
         switch(this.§`"B§)
         {
            case §6y§.§5z§:
               this.§,!7§();
               break;
            case §6y§.§>]§:
               this.onTransitionInComplete();
               break;
            case §6y§.§;X§:
               this.onTransitionOutComplete();
         }
      }
      
      private function §,!7§() : void
      {
         this.onTransitionComplete(this.§`"B§);
         if(this.§?!O§)
         {
            this.§%!K§(this.§?!O§);
            this.§?!O§ = null;
         }
      }
      
      private function onTransitionOutComplete() : void
      {
         this.onTransitionComplete(this.§`"B§);
         this.§^!d§();
         this.§+0§ = this.§&S§;
         this.§&S§ = "";
      }
      
      private function onTransitionInComplete() : void
      {
         this.onTransitionComplete(this.§`"B§);
         this.§^!d§();
         this.§%!K§(this.getRunTransitionData());
      }
      
      protected function getRunTransitionData() : §6y§
      {
         return new §6y§(§`#?§.§[! §(),§`#?§.§1#$§,§`#?§.§;!&§,§6y§.§5z§,this.§+#=§,this.§^!`§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §2"z§(param1:§6y§, param2:Boolean = false) : void
      {
         if(!this.§7!=§.isRunning)
         {
            this.§%!K§(param1);
            return;
         }
         this.§?!O§ = param1;
         this.§7!=§.stop(param2);
      }
      
      protected function § g§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§6y§ = null;
         if(param2)
         {
            (_loc4_ = new §6y§()).startLabel = §`#?§.§8#@§(param1);
            _loc4_.§%#N§ = §`#?§.§1#$§;
            _loc4_.§`"i§ = §`#?§.§;!&§;
            _loc4_.type = §6y§.§;X§;
            _loc4_.stageQuality = this.§^!`§;
            this.§2"z§(_loc4_,param3);
            this.§&S§ = param1;
         }
         else
         {
            this.§^!d§();
            this.§&S§ = "";
            this.§+0§ = param1;
         }
      }
      
      public function §8"5§(param1:Boolean) : void
      {
         this.§^N§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§!#!§)
         {
            return;
         }
         if(this.§@;§)
         {
            this.§@;§.clear();
            this.§@;§ = null;
         }
         while(this.§-d§.length > 0)
         {
            (this.§-d§.pop() as §]#[§).clear();
         }
         if(this.§;"w§)
         {
            this.deActivate();
         }
         this.§!#!§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§!#!§)
         {
            Log.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §<!=§;
         }
         if(!this.§;"w§)
         {
            Log.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §"#8§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§+0§ != "")
         {
            return §-#_§;
         }
         return §&p§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§7!=§ && this.§`"B§ != §6y§.§8"@§)
         {
            this.§7!=§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§[L§;
      }
      
      public final function §=!q§(param1:int, param2:String, param3:§&#X§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§7!=§ && this.§7!=§.isRunning && (this.§`"B§ == §6y§.§>]§ || this.§`"B§ == §6y§.§;X§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function §&!#§(param1:§]#[§) : void
      {
         this.§-d§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§%G§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§%G§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§%G§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§!;§)
         {
            return this.§!;§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§!;§)
         {
            return this.§!;§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§@;§)
         {
            this.§@;§.viewWidth = param1;
            this.§@;§.viewHeight = param2;
         }
      }
      
      public function §[#^§() : int
      {
         return §[#Y§;
      }
      
      public function §9!J§() : void
      {
      }
   }
}
