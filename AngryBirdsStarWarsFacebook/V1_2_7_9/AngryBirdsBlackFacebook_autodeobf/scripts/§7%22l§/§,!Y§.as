package §7"l§
{
   import §'+§.§+!9§;
   import §'+§.§="B§;
   import §0"I§.§5!s§;
   import §4##§.§7!B§;
   import §7!@§.§""s§;
   import §7!@§.§,"R§;
   import §7!@§.§6"§;
   import §7!@§.§[`§;
   import §7A§.§""n§;
   import §^!`§.§6"!§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §,!Y§ implements §+!9§
   {
      
      public static const §#!l§:int = 60;
      
      public static const §73§:String = "dummyState";
      
      public static const §[j§:int = 0;
      
      public static const §%#'§:int = 1;
      
      public static const §4"g§:int = 2;
      
      public static const §8"+§:int = 3;
      
      public static var §&!?§:Object = null;
       
      
      private var §1!v§:Boolean = false;
      
      private var §@"r§:Boolean = false;
      
      public var mName:String;
      
      public var §6!t§:Boolean = false;
      
      protected var §#"f§:String = "none";
      
      protected var §<7§:§6"§;
      
      protected var §,_§:§,"R§;
      
      protected var §;"W§:String;
      
      protected var §+!g§:Boolean = false;
      
      protected var §,!7§:Boolean = true;
      
      protected var §?m§:String = "best";
      
      public var skipTransition:Boolean = false;
      
      public var §@#3§:Boolean = true;
      
      private var §3$§:Vector.<String>;
      
      protected var §!V§:Vector.<String>;
      
      public var §"!"§:Boolean = false;
      
      public var §>I§:§6"!§;
      
      public var §-7§:Array;
      
      private var §""2§:String = "";
      
      private var §"^§:String = "";
      
      public var § "6§:Sprite = null;
      
      public var §<!2§:§8";§ = null;
      
      protected var §8-§:§="B§;
      
      public function §,!Y§(param1:Boolean, param2:String, param3:§="B§)
      {
         super();
         this.mName = param2;
         this.§-7§ = new Array();
         this.§ "6§ = new Sprite();
         this.§8-§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §!!c§(param1:String) : String
      {
         if(§&!?§)
         {
            return §&!?§[param1];
         }
         return null;
      }
      
      public function get §^!'§() : String
      {
         return this.§"^§;
      }
      
      public function get nextState() : String
      {
         return this.§""2§;
      }
      
      public function get §5!F§() : Boolean
      {
         return this.§1!v§;
      }
      
      public function get §;!C§() : Boolean
      {
         return this.§@"r§;
      }
      
      private function initialize() : void
      {
         this.§3$§ = new Vector.<String>();
         this.§!V§ = new Vector.<String>();
         this.§5!2§();
         this.init();
         this.§0!1§();
         this.§9L§();
         this.§1!v§ = true;
      }
      
      protected function §5!2§() : void
      {
         this.§3$§.push(§[`§.§]L§());
         this.§3$§.push(§[`§.§1!R§());
         this.§3$§.push(§[`§.§='§());
         this.§3$§.push(§[`§.§%!]§());
         this.§3$§.push(§[`§.§^"f§());
         this.§3$§.push(§[`§.§!Y§);
         this.§3$§.push(§[`§.§-"y§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §9L§() : void
      {
      }
      
      private function §0!1§() : void
      {
         if(this.§>I§ == null || this.§>I§.container == null || this.§>I§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§>I§.container.mClip;
         var _loc2_:Vector.<String> = this.§3$§.concat(this.§!V§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §""n§.§<"h§(_loc1_,_loc2_,_loc3_,§""n§.§`!=§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§,_§ = new §""s§(param1,this.§ "6§.stage);
      }
      
      private function §,!3§(param1:MouseEvent) : void
      {
         this.§4"7§(false);
         if(this.§#"f§ == §6"§.§9!j§)
         {
            this.skipTransition = true;
         }
         this.§,_§.stop(false);
      }
      
      private function §4"7§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ "6§.addEventListener(MouseEvent.CLICK,this.§,!3§);
         }
         else
         {
            this.§ "6§.removeEventListener(MouseEvent.CLICK,this.§,!3§);
         }
         this.§ "6§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§6"!§ = null;
         this.§"^§ = param1;
         if(!this.§1!v§)
         {
            this.initialize();
         }
         if(this.§>I§)
         {
            this.§ "6§.addChild(this.§>I§);
            this.§>I§.§4C§();
         }
         for each(_loc2_ in this.§-7§)
         {
            this.§ "6§.addChild(_loc2_);
            _loc2_.§7J§();
         }
         this.§""2§ = "";
         this.§@"r§ = true;
      }
      
      public function activateComplete(param1:Boolean) : void
      {
         var _loc2_:§6"§ = null;
         if(this.§+!g§ && !param1)
         {
            _loc2_ = new §6"§();
            _loc2_.§>"$§ = §[`§.§-"y§;
            _loc2_.§!"X§ = §[`§.§!Y§;
            _loc2_.startLabel = §[`§.§%!]§(this.§"^§);
            _loc2_.type = §6"§.§,#2§;
            _loc2_.stageQuality = this.§?m§;
            this.§?<§(_loc2_);
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§6"!§ = null;
         this.§=!7§();
         if(this.§>I§)
         {
            this.§>I§.§7J§();
            this.§ "6§.removeChild(this.§>I§);
         }
         for each(_loc1_ in this.§-7§)
         {
            _loc1_.§7J§();
            this.§ "6§.removeChild(_loc1_);
         }
         if(!this.§@"r§)
         {
            if(this.§"!"§)
            {
               this.cleanup();
            }
            return;
         }
         this.§@"r§ = false;
         if(this.§"!"§)
         {
            this.cleanup();
         }
      }
      
      private function §?<§(param1:§6"§) : void
      {
         this.§=!7§();
         if(this.§,_§ && param1.type != §6"§.§5![§)
         {
            this.§#"f§ = param1.type;
            this.beforeTransitionStart(param1);
            this.§,_§.addEventListener(Event.COMPLETE,this.§3!w§);
            this.§,_§.start(param1);
            if(this.§#"f§ == §6"§.§,#2§ || this.§#"f§ == §6"§.§9!j§)
            {
               if(this.§@#3§)
               {
                  this.§4"7§(true);
               }
            }
            this.onTransitionStart(this.§#"f§);
         }
      }
      
      protected function beforeTransitionStart(param1:§6"§) : void
      {
      }
      
      private function §=!7§() : void
      {
         if(this.§,_§)
         {
            this.§,_§.removeEventListener(Event.COMPLETE,this.§3!w§);
            this.§,_§.stop();
         }
         this.§#"f§ = §6"§.§5![§;
         this.§4"7§(false);
      }
      
      private function §3!w§(param1:Event) : void
      {
         switch(this.§#"f§)
         {
            case §6"§.§+"n§:
               this.§]a§();
               break;
            case §6"§.§,#2§:
               this.onTransitionInComplete();
               break;
            case §6"§.§9!j§:
               this.onTransitionOutComplete();
         }
      }
      
      private function §]a§() : void
      {
         this.onTransitionComplete(this.§#"f§);
         if(this.§<7§)
         {
            this.§?<§(this.§<7§);
            this.§<7§ = null;
         }
      }
      
      private function onTransitionOutComplete() : void
      {
         this.onTransitionComplete(this.§#"f§);
         this.§=!7§();
         this.§""2§ = this.§;"W§;
         this.§;"W§ = "";
      }
      
      private function onTransitionInComplete() : void
      {
         this.onTransitionComplete(this.§#"f§);
         this.§=!7§();
         this.§?<§(this.getRunTransitionData());
      }
      
      protected function getRunTransitionData() : §6"§
      {
         return new §6"§(§[`§.§]L§(),§[`§.§-"y§,§[`§.§!Y§,§6"§.§+"n§,this.§,!7§,this.§?m§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §@d§(param1:§6"§, param2:Boolean = false) : void
      {
         if(!this.§,_§.isRunning)
         {
            this.§?<§(param1);
            return;
         }
         this.§<7§ = param1;
         this.§,_§.stop(param2);
      }
      
      protected function §0"B§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§6"§ = null;
         if(param2)
         {
            (_loc4_ = new §6"§()).startLabel = §[`§.§^"f§(param1);
            _loc4_.§>"$§ = §[`§.§-"y§;
            _loc4_.§!"X§ = §[`§.§!Y§;
            _loc4_.type = §6"§.§9!j§;
            _loc4_.stageQuality = this.§?m§;
            this.§@d§(_loc4_,param3);
            this.§;"W§ = param1;
         }
         else
         {
            this.§=!7§();
            this.§;"W§ = "";
            this.§""2§ = param1;
         }
      }
      
      public function §?"w§(param1:Boolean) : void
      {
         this.§"!"§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§1!v§)
         {
            return;
         }
         if(this.§>I§)
         {
            this.§>I§.clear();
            this.§>I§ = null;
         }
         while(this.§-7§.length > 0)
         {
            (this.§-7§.pop() as §6"!§).clear();
         }
         if(this.§@"r§)
         {
            this.deActivate();
         }
         this.§1!v§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§1!v§)
         {
            §5!s§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §[j§;
         }
         if(!this.§@"r§)
         {
            §5!s§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §%#'§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§""2§ != "")
         {
            return §8"+§;
         }
         return §4"g§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§,_§ && this.§#"f§ != §6"§.§5![§)
         {
            this.§,_§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§6!t§;
      }
      
      public final function §6t§(param1:int, param2:String, param3:§7!B§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§,_§ && this.§,_§.isRunning && (this.§#"f§ == §6"§.§,#2§ || this.§#"f§ == §6"§.§9!j§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
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
      
      public function § !L§(param1:§6"!§) : void
      {
         this.§-7§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§ "6§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§ "6§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§ "6§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§<!2§)
         {
            return this.§<!2§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§<!2§)
         {
            return this.§<!2§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§>I§)
         {
            this.§>I§.viewWidth = param1;
            this.§>I§.viewHeight = param2;
         }
      }
      
      public function §@z§() : int
      {
         return §#!l§;
      }
      
      public function §7!R§() : void
      {
      }
   }
}
