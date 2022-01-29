package §7"§
{
   import § %§.§0"8§;
   import §3#T§.§'§;
   import §5P§.§""C§;
   import §5P§.§6#j§;
   import §?"f§.§!Y§;
   import §?"f§.§0!+§;
   import §?"f§.§2x§;
   import §?"f§.§7"3§;
   import §]!6§.§6Y§;
   import §`7§.§+#b§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §`#@§ implements §6#j§
   {
      
      public static const §;!'§:int = 60;
      
      public static const §&f§:String = "dummyState";
      
      public static const §0N§:int = 0;
      
      public static const §5a§:int = 1;
      
      public static const §8$6§:int = 2;
      
      public static const §]"H§:int = 3;
      
      public static var §0#k§:Object = null;
       
      
      private var § O§:Boolean = false;
      
      private var §=!1§:Boolean = false;
      
      public var §=q§:String;
      
      public var §1!7§:Boolean = false;
      
      protected var §7"q§:String = "none";
      
      protected var §?"c§:§!Y§;
      
      protected var §2#R§:§0!+§;
      
      protected var §1#]§:String;
      
      protected var §3!O§:Boolean = false;
      
      protected var §?#5§:Boolean = true;
      
      protected var §&r§:String = "best";
      
      public var §16§:Boolean = false;
      
      public var §6" §:Boolean = true;
      
      private var §8$-§:Vector.<String>;
      
      protected var §5#V§:Vector.<String>;
      
      public var § "G§:Boolean = false;
      
      public var §`!H§:§0"8§;
      
      public var §[#,§:Array;
      
      private var §=#k§:String = "";
      
      private var §@u§:String = "";
      
      public var §4"D§:Sprite = null;
      
      public var §5#_§:§<! § = null;
      
      protected var §1a§:§""C§;
      
      public function §`#@§(param1:Boolean, param2:String, param3:§""C§)
      {
         super();
         this.§=q§ = param2;
         this.§[#,§ = new Array();
         this.§4"D§ = new Sprite();
         this.§1a§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §3"q§(param1:String) : String
      {
         if(§0#k§)
         {
            return §0#k§[param1];
         }
         return null;
      }
      
      public function get previousState() : String
      {
         return this.§@u§;
      }
      
      public function get nextState() : String
      {
         return this.§=#k§;
      }
      
      public function get isReady() : Boolean
      {
         return this.§ O§;
      }
      
      public function get §,d§() : Boolean
      {
         return this.§=!1§;
      }
      
      private function initialize() : void
      {
         this.§8$-§ = new Vector.<String>();
         this.§5#V§ = new Vector.<String>();
         this.§6§();
         this.init();
         this.§"!R§();
         this.§`"2§();
         this.§ O§ = true;
      }
      
      protected function §6§() : void
      {
         this.§8$-§.push(§7"3§.§7>§());
         this.§8$-§.push(§7"3§.§3#%§());
         this.§8$-§.push(§7"3§.§ !%§());
         this.§8$-§.push(§7"3§.§[+§());
         this.§8$-§.push(§7"3§.§66§());
         this.§8$-§.push(§7"3§.§`"§);
         this.§8$-§.push(§7"3§.§]0§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §`"2§() : void
      {
      }
      
      private function §"!R§() : void
      {
         if(this.§`!H§ == null || this.§`!H§.container == null || this.§`!H§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§`!H§.container.mClip;
         var _loc2_:Vector.<String> = this.§8$-§.concat(this.§5#V§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §+#b§.§+"v§(_loc1_,_loc2_,_loc3_,§+#b§.§1!3§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§2#R§ = new §2x§(param1,this.§4"D§.stage);
      }
      
      private function §&#L§(param1:MouseEvent) : void
      {
         this.§9<§(false);
         if(this.§7"q§ == §!Y§.§>$?§)
         {
            this.§16§ = true;
         }
         this.§2#R§.stop(false);
      }
      
      private function §9<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4"D§.addEventListener(MouseEvent.CLICK,this.§&#L§);
         }
         else
         {
            this.§4"D§.removeEventListener(MouseEvent.CLICK,this.§&#L§);
         }
         this.§4"D§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§0"8§ = null;
         this.§@u§ = param1;
         if(!this.§ O§)
         {
            this.initialize();
         }
         if(this.§`!H§)
         {
            this.§4"D§.addChild(this.§`!H§);
            this.§`!H§.activateView();
         }
         for each(_loc2_ in this.§[#,§)
         {
            this.§4"D§.addChild(_loc2_);
            _loc2_.deactivateView();
         }
         this.§=#k§ = "";
         this.§=!1§ = true;
      }
      
      public function §#$1§(param1:Boolean) : void
      {
         var _loc2_:§!Y§ = null;
         if(this.§3!O§ && !param1)
         {
            _loc2_ = new §!Y§();
            _loc2_.§9_§ = §7"3§.§]0§;
            _loc2_.§8v§ = §7"3§.§`"§;
            _loc2_.startLabel = §7"3§.§[+§(this.§@u§);
            _loc2_.type = §!Y§.§6[§;
            _loc2_.stageQuality = this.§&r§;
            this.§?"F§(_loc2_);
         }
         else
         {
            this.§@o§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§0"8§ = null;
         this.§0$@§();
         if(this.§`!H§)
         {
            this.§`!H§.deactivateView();
            this.§4"D§.removeChild(this.§`!H§);
         }
         for each(_loc1_ in this.§[#,§)
         {
            _loc1_.deactivateView();
            this.§4"D§.removeChild(_loc1_);
         }
         if(!this.§=!1§)
         {
            if(this.§ "G§)
            {
               this.cleanup();
            }
            return;
         }
         this.§=!1§ = false;
         if(this.§ "G§)
         {
            this.cleanup();
         }
      }
      
      private function §?"F§(param1:§!Y§) : void
      {
         this.§0$@§();
         if(this.§2#R§ && param1.type != §!Y§.§9?§)
         {
            this.§7"q§ = param1.type;
            this.§8"%§(param1);
            this.§2#R§.addEventListener(Event.COMPLETE,this.§@"x§);
            this.§2#R§.start(param1);
            if(this.§7"q§ == §!Y§.§6[§ || this.§7"q§ == §!Y§.§>$?§)
            {
               if(this.§6" §)
               {
                  this.§9<§(true);
               }
            }
            this.onTransitionStart(this.§7"q§);
         }
      }
      
      protected function §8"%§(param1:§!Y§) : void
      {
      }
      
      private function §0$@§() : void
      {
         if(this.§2#R§)
         {
            this.§2#R§.removeEventListener(Event.COMPLETE,this.§@"x§);
            this.§2#R§.stop();
         }
         this.§7"q§ = §!Y§.§9?§;
         this.§9<§(false);
      }
      
      private function §@"x§(param1:Event) : void
      {
         switch(this.§7"q§)
         {
            case §!Y§.§[,§:
               this.§9^§();
               break;
            case §!Y§.§6[§:
               this.§@o§();
               break;
            case §!Y§.§>$?§:
               this.§3f§();
         }
      }
      
      private function §9^§() : void
      {
         this.§%X§(this.§7"q§);
         if(this.§?"c§)
         {
            this.§?"F§(this.§?"c§);
            this.§?"c§ = null;
         }
      }
      
      private function §3f§() : void
      {
         this.§%X§(this.§7"q§);
         this.§0$@§();
         this.§=#k§ = this.§1#]§;
         this.§1#]§ = "";
      }
      
      private function §@o§() : void
      {
         this.§%X§(this.§7"q§);
         this.§0$@§();
         this.§?"F§(this.§?"4§());
      }
      
      protected function §?"4§() : §!Y§
      {
         return new §!Y§(§7"3§.§7>§(),§7"3§.§]0§,§7"3§.§`"§,§!Y§.§[,§,this.§?#5§,this.§&r§);
      }
      
      protected function §%X§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §5!7§(param1:§!Y§, param2:Boolean = false) : void
      {
         if(!this.§2#R§.§=#0§)
         {
            this.§?"F§(param1);
            return;
         }
         this.§?"c§ = param1;
         this.§2#R§.stop(param2);
      }
      
      protected function §1"h§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§!Y§ = null;
         if(param2)
         {
            (_loc4_ = new §!Y§()).startLabel = §7"3§.§66§(param1);
            _loc4_.§9_§ = §7"3§.§]0§;
            _loc4_.§8v§ = §7"3§.§`"§;
            _loc4_.type = §!Y§.§>$?§;
            _loc4_.stageQuality = this.§&r§;
            this.§5!7§(_loc4_,param3);
            this.§1#]§ = param1;
         }
         else
         {
            this.§0$@§();
            this.§1#]§ = "";
            this.§=#k§ = param1;
         }
      }
      
      public function §"z§(param1:Boolean) : void
      {
         this.§ "G§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§ O§)
         {
            return;
         }
         if(this.§`!H§)
         {
            this.§`!H§.clear();
            this.§`!H§ = null;
         }
         while(this.§[#,§.length > 0)
         {
            (this.§[#,§.pop() as §0"8§).clear();
         }
         if(this.§=!1§)
         {
            this.deActivate();
         }
         this.§ O§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§ O§)
         {
            §6Y§.log("WARNING: State -> run() method is called when state is not ready: " + this.§=q§);
            return §0N§;
         }
         if(!this.§=!1§)
         {
            §6Y§.log("WARNING: State -> run() method is called when state is not active: " + this.§=q§);
            return §5a§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§=#k§ != "")
         {
            return §]"H§;
         }
         return §8$6§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§2#R§ && this.§7"q§ != §!Y§.§9?§)
         {
            this.§2#R§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§1!7§;
      }
      
      public final function uiInteractionHandler(param1:int, param2:String, param3:§'#0§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§2#R§ && this.§2#R§.§=#0§ && (this.§7"q§ == §!Y§.§6[§ || this.§7"q§ == §!Y§.§>$?§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
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
      
      public function §9d§(param1:§0"8§) : void
      {
         this.§[#,§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§4"D§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§4"D§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§4"D§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§5#_§)
         {
            return this.§5#_§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§5#_§)
         {
            return this.§5#_§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`!H§)
         {
            this.§`!H§.viewWidth = param1;
            this.§`!H§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §;!'§;
      }
      
      public function §3"!§() : void
      {
      }
   }
}
