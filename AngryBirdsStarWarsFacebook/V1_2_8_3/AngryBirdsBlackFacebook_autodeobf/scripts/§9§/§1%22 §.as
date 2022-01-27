package §9§#1
{
   import §&!j§.§5#+§;
   import §&!j§.§6"v§;
   import §'"I§.§1-§;
   import §'"I§.§5"0§;
   import §'"I§.§9"t§;
   import §'"I§.§>!t§;
   import §+d§.§"![§;
   import §8!h§.§-V§;
   import §9"`§.§-"H§;
   import §[!H§.§4Z§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §1" § implements §6"v§
   {
      
      public static const § 9§:int = 60;
      
      public static const §;"U§:String = "dummyState";
      
      public static const §7#§:int = 0;
      
      public static const §>"&§:int = 1;
      
      public static const §0!T§:int = 2;
      
      public static const §,!R§:int = 3;
      
      public static var §[-§:Object = null;
       
      
      private var §&x§:Boolean = false;
      
      private var §["1§:Boolean = false;
      
      public var mName:String;
      
      public var §"!?§:Boolean = false;
      
      protected var §,"-§:String = "none";
      
      protected var §;!]§:§1-§;
      
      protected var §[#§:§9"t§;
      
      protected var §""S§:String;
      
      protected var §`l§:Boolean = false;
      
      protected var §9"o§:Boolean = true;
      
      protected var §^"Z§:String = "best";
      
      public var skipTransition:Boolean = false;
      
      public var §'!C§:Boolean = true;
      
      private var §%#,§:Vector.<String>;
      
      protected var §!!h§:Vector.<String>;
      
      public var § "Y§:Boolean = false;
      
      public var §^!b§:§4Z§;
      
      public var §!!?§:Array;
      
      private var §+!v§:String = "";
      
      private var §5!-§:String = "";
      
      public var §0v§:Sprite = null;
      
      public var §6!!§:§`w§ = null;
      
      protected var §-1§:§5#+§;
      
      public function §1" §(param1:Boolean, param2:String, param3:§5#+§)
      {
         super();
         this.mName = param2;
         this.§!!?§ = new Array();
         this.§0v§ = new Sprite();
         this.§-1§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §3<§(param1:String) : String
      {
         if(§[-§)
         {
            return §[-§[param1];
         }
         return null;
      }
      
      public function get §&!1§() : String
      {
         return this.§5!-§;
      }
      
      public function get nextState() : String
      {
         return this.§+!v§;
      }
      
      public function get §#"r§() : Boolean
      {
         return this.§&x§;
      }
      
      public function get §'#&§() : Boolean
      {
         return this.§["1§;
      }
      
      private function initialize() : void
      {
         this.§%#,§ = new Vector.<String>();
         this.§!!h§ = new Vector.<String>();
         this.§!z§();
         this.init();
         this.§+#"§();
         this.§`!+§();
         this.§&x§ = true;
      }
      
      protected function §!z§() : void
      {
         this.§%#,§.push(§>!t§.§,"x§());
         this.§%#,§.push(§>!t§.§3O§());
         this.§%#,§.push(§>!t§.§-!,§());
         this.§%#,§.push(§>!t§.§4#&§());
         this.§%#,§.push(§>!t§.§#!e§());
         this.§%#,§.push(§>!t§.§%M§);
         this.§%#,§.push(§>!t§.§?>§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §`!+§() : void
      {
      }
      
      private function §+#"§() : void
      {
         if(this.§^!b§ == null || this.§^!b§.container == null || this.§^!b§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§^!b§.container.mClip;
         var _loc2_:Vector.<String> = this.§%#,§.concat(this.§!!h§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §"![§.§#-§(_loc1_,_loc2_,_loc3_,§"![§.§]w§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§[#§ = new §5"0§(param1,this.§0v§.stage);
      }
      
      private function §>!4§(param1:MouseEvent) : void
      {
         this.§,#7§(false);
         if(this.§,"-§ == §1-§.§<§)
         {
            this.skipTransition = true;
         }
         this.§[#§.stop(false);
      }
      
      private function §,#7§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0v§.addEventListener(MouseEvent.CLICK,this.§>!4§);
         }
         else
         {
            this.§0v§.removeEventListener(MouseEvent.CLICK,this.§>!4§);
         }
         this.§0v§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§4Z§ = null;
         this.§5!-§ = param1;
         if(!this.§&x§)
         {
            this.initialize();
         }
         if(this.§^!b§)
         {
            this.§0v§.addChild(this.§^!b§);
            this.§^!b§.§0"r§();
         }
         for each(_loc2_ in this.§!!?§)
         {
            this.§0v§.addChild(_loc2_);
            _loc2_.§<"I§();
         }
         this.§+!v§ = "";
         this.§["1§ = true;
      }
      
      public function activateComplete(param1:Boolean) : void
      {
         var _loc2_:§1-§ = null;
         if(this.§`l§ && !param1)
         {
            _loc2_ = new §1-§();
            _loc2_.§ try§ = §>!t§.§?>§;
            _loc2_.§@"D§ = §>!t§.§%M§;
            _loc2_.startLabel = §>!t§.§4#&§(this.§5!-§);
            _loc2_.type = §1-§.§?j§;
            _loc2_.stageQuality = this.§^"Z§;
            this.§'U§(_loc2_);
         }
         else
         {
            this.onTransitionInComplete();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§4Z§ = null;
         this.§^!A§();
         if(this.§^!b§)
         {
            this.§^!b§.§<"I§();
            this.§0v§.removeChild(this.§^!b§);
         }
         for each(_loc1_ in this.§!!?§)
         {
            _loc1_.§<"I§();
            this.§0v§.removeChild(_loc1_);
         }
         if(!this.§["1§)
         {
            if(this.§ "Y§)
            {
               this.cleanup();
            }
            return;
         }
         this.§["1§ = false;
         if(this.§ "Y§)
         {
            this.cleanup();
         }
      }
      
      private function §'U§(param1:§1-§) : void
      {
         this.§^!A§();
         if(this.§[#§ && param1.type != §1-§.§@B§)
         {
            this.§,"-§ = param1.type;
            this.beforeTransitionStart(param1);
            this.§[#§.addEventListener(Event.COMPLETE,this.§""s§);
            this.§[#§.start(param1);
            if(this.§,"-§ == §1-§.§?j§ || this.§,"-§ == §1-§.§<§)
            {
               if(this.§'!C§)
               {
                  this.§,#7§(true);
               }
            }
            this.onTransitionStart(this.§,"-§);
         }
      }
      
      protected function beforeTransitionStart(param1:§1-§) : void
      {
      }
      
      private function §^!A§() : void
      {
         if(this.§[#§)
         {
            this.§[#§.removeEventListener(Event.COMPLETE,this.§""s§);
            this.§[#§.stop();
         }
         this.§,"-§ = §1-§.§@B§;
         this.§,#7§(false);
      }
      
      private function §""s§(param1:Event) : void
      {
         switch(this.§,"-§)
         {
            case §1-§.§!o§:
               this.§["T§();
               break;
            case §1-§.§?j§:
               this.onTransitionInComplete();
               break;
            case §1-§.§<§:
               this.onTransitionOutComplete();
         }
      }
      
      private function §["T§() : void
      {
         this.onTransitionComplete(this.§,"-§);
         if(this.§;!]§)
         {
            this.§'U§(this.§;!]§);
            this.§;!]§ = null;
         }
      }
      
      private function onTransitionOutComplete() : void
      {
         this.onTransitionComplete(this.§,"-§);
         this.§^!A§();
         this.§+!v§ = this.§""S§;
         this.§""S§ = "";
      }
      
      private function onTransitionInComplete() : void
      {
         this.onTransitionComplete(this.§,"-§);
         this.§^!A§();
         this.§'U§(this.getRunTransitionData());
      }
      
      protected function getRunTransitionData() : §1-§
      {
         return new §1-§(§>!t§.§,"x§(),§>!t§.§?>§,§>!t§.§%M§,§1-§.§!o§,this.§9"o§,this.§^"Z§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §"R§(param1:§1-§, param2:Boolean = false) : void
      {
         if(!this.§[#§.isRunning)
         {
            this.§'U§(param1);
            return;
         }
         this.§;!]§ = param1;
         this.§[#§.stop(param2);
      }
      
      protected function §`0§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§1-§ = null;
         if(param2)
         {
            (_loc4_ = new §1-§()).startLabel = §>!t§.§#!e§(param1);
            _loc4_.§ try§ = §>!t§.§?>§;
            _loc4_.§@"D§ = §>!t§.§%M§;
            _loc4_.type = §1-§.§<§;
            _loc4_.stageQuality = this.§^"Z§;
            this.§"R§(_loc4_,param3);
            this.§""S§ = param1;
         }
         else
         {
            this.§^!A§();
            this.§""S§ = "";
            this.§+!v§ = param1;
         }
      }
      
      public function §&!?§(param1:Boolean) : void
      {
         this.§ "Y§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§&x§)
         {
            return;
         }
         if(this.§^!b§)
         {
            this.§^!b§.clear();
            this.§^!b§ = null;
         }
         while(this.§!!?§.length > 0)
         {
            (this.§!!?§.pop() as §4Z§).clear();
         }
         if(this.§["1§)
         {
            this.deActivate();
         }
         this.§&x§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§&x§)
         {
            §-"H§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §7#§;
         }
         if(!this.§["1§)
         {
            §-"H§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §>"&§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§+!v§ != "")
         {
            return §,!R§;
         }
         return §0!T§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§[#§ && this.§,"-§ != §1-§.§@B§)
         {
            this.§[#§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§"!?§;
      }
      
      public final function §+##§(param1:int, param2:String, param3:§-V§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§[#§ && this.§[#§.isRunning && (this.§,"-§ == §1-§.§?j§ || this.§,"-§ == §1-§.§<§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
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
      
      public function §+]§(param1:§4Z§) : void
      {
         this.§!!?§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§0v§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§0v§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§0v§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§6!!§)
         {
            return this.§6!!§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§6!!§)
         {
            return this.§6!!§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^!b§)
         {
            this.§^!b§.viewWidth = param1;
            this.§^!b§.viewHeight = param2;
         }
      }
      
      public function §=!n§() : int
      {
         return § 9§;
      }
      
      public function §^"u§() : void
      {
      }
   }
}
