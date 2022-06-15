package §[c§
{
   import §";§.§%"X§;
   import §#"4§.§4%§;
   import §##x§.§"#;§;
   import §##x§.§3#r§;
   import §##x§.§7!W§;
   import §##x§.§7$<§;
   import §+`§.§%"q§;
   import §+`§.§6!%§;
   import §6"p§.§^"t§;
   import §^"3§.§`$4§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class § #a§ implements §6!%§
   {
      
      public static const §]$§:int = 60;
      
      public static const §?!T§:String = "dummyState";
      
      public static const §<"R§:int = 0;
      
      public static const §[$?§:int = 1;
      
      public static const §["s§:int = 2;
      
      public static const §2#1§:int = 3;
      
      public static var §@"G§:Object = null;
       
      
      protected var §0!X§:Boolean = false;
      
      private var §'-§:Boolean = false;
      
      public var §&$"§:String;
      
      public var §[v§:Boolean = false;
      
      protected var §["C§:String = "none";
      
      protected var §4"P§:§7$<§;
      
      protected var §0#l§:§7!W§;
      
      protected var §"$2§:String;
      
      protected var §3#7§:Boolean = false;
      
      protected var §`!d§:Boolean = true;
      
      protected var §3""§:String = "best";
      
      public var § M§:Boolean = false;
      
      public var §&"z§:Boolean = true;
      
      private var §6#G§:Vector.<String>;
      
      protected var §`"o§:Vector.<String>;
      
      public var §<!;§:Boolean = false;
      
      public var §;!w§:§%"X§;
      
      public var §#i§:Array;
      
      private var §+!t§:String = "";
      
      private var § #k§:String = "";
      
      public var §&"h§:Sprite = null;
      
      public var §'#V§:§@!<§ = null;
      
      protected var §#$&§:§%"q§;
      
      public function § #a§(param1:Boolean, param2:String, param3:§%"q§)
      {
         super();
         this.§&$"§ = param2;
         this.§#i§ = new Array();
         this.§&"h§ = new Sprite();
         this.§#$&§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §'"y§(param1:String) : String
      {
         if(§@"G§)
         {
            return §@"G§[param1];
         }
         return null;
      }
      
      public function get previousState() : String
      {
         return this.§ #k§;
      }
      
      public function get nextState() : String
      {
         return this.§+!t§;
      }
      
      public function get isReady() : Boolean
      {
         return this.§0!X§;
      }
      
      public function get §97§() : Boolean
      {
         return this.§'-§;
      }
      
      private function initialize() : void
      {
         this.§6#G§ = new Vector.<String>();
         this.§`"o§ = new Vector.<String>();
         this.§9##§();
         this.init();
         this.§'f§();
         this.§<$2§();
         this.§0!X§ = true;
      }
      
      protected function §9##§() : void
      {
         this.§6#G§.push(§3#r§.§2Z§());
         this.§6#G§.push(§3#r§.§ "G§());
         this.§6#G§.push(§3#r§.§7"q§());
         this.§6#G§.push(§3#r§.§3$!§());
         this.§6#G§.push(§3#r§.§7#%§());
         this.§6#G§.push(§3#r§.§ case§);
         this.§6#G§.push(§3#r§.§5!H§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §<$2§() : void
      {
      }
      
      private function §'f§() : void
      {
         if(this.§;!w§ == null || this.§;!w§.container == null || this.§;!w§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§;!w§.container.mClip;
         var _loc2_:Vector.<String> = this.§6#G§.concat(this.§`"o§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §4%§.§""w§(_loc1_,_loc2_,_loc3_,§4%§.§]"X§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§0#l§ = new §"#;§(param1,this.§&"h§.stage);
      }
      
      private function §-!x§(param1:MouseEvent) : void
      {
         this.§9"u§(false);
         if(this.§["C§ == §7$<§.§=#C§)
         {
            this.§ M§ = true;
         }
         this.§0#l§.stop(false);
      }
      
      private function §9"u§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&"h§.addEventListener(MouseEvent.CLICK,this.§-!x§);
         }
         else
         {
            this.§&"h§.removeEventListener(MouseEvent.CLICK,this.§-!x§);
         }
         this.§&"h§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§%"X§ = null;
         this.§ #k§ = param1;
         if(!this.§0!X§)
         {
            this.initialize();
         }
         if(this.§;!w§)
         {
            this.§&"h§.addChild(this.§;!w§);
            this.§;!w§.activateView();
         }
         for each(_loc2_ in this.§#i§)
         {
            this.§&"h§.addChild(_loc2_);
            _loc2_.deactivateView();
         }
         this.§+!t§ = "";
         this.§'-§ = true;
      }
      
      public function §"]§(param1:Boolean) : void
      {
         var _loc2_:§7$<§ = null;
         if(this.§3#7§ && !param1)
         {
            _loc2_ = new §7$<§();
            _loc2_.§0#-§ = §3#r§.§5!H§;
            _loc2_.§&$D§ = §3#r§.§ case§;
            _loc2_.startLabel = §3#r§.§3$!§(this.§ #k§);
            _loc2_.type = §7$<§.§']§;
            _loc2_.stageQuality = this.§3""§;
            this.§6$5§(_loc2_);
         }
         else
         {
            this.§4"$§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§%"X§ = null;
         this.§"!c§();
         if(this.§;!w§)
         {
            this.§;!w§.deactivateView();
            this.§&"h§.removeChild(this.§;!w§);
         }
         for each(_loc1_ in this.§#i§)
         {
            _loc1_.deactivateView();
            this.§&"h§.removeChild(_loc1_);
         }
         if(!this.§'-§)
         {
            if(this.§<!;§)
            {
               this.cleanup();
            }
            return;
         }
         this.§'-§ = false;
         if(this.§<!;§)
         {
            this.cleanup();
         }
      }
      
      private function §6$5§(param1:§7$<§) : void
      {
         this.§"!c§();
         if(this.§0#l§ && param1.type != §7$<§.§3h§)
         {
            this.§["C§ = param1.type;
            this.§?#C§(param1);
            this.§0#l§.addEventListener(Event.COMPLETE,this.§9"'§);
            this.§0#l§.start(param1);
            if(this.§["C§ == §7$<§.§']§ || this.§["C§ == §7$<§.§=#C§)
            {
               if(this.§&"z§)
               {
                  this.§9"u§(true);
               }
            }
            this.onTransitionStart(this.§["C§);
         }
      }
      
      protected function §?#C§(param1:§7$<§) : void
      {
      }
      
      private function §"!c§() : void
      {
         if(this.§0#l§)
         {
            this.§0#l§.removeEventListener(Event.COMPLETE,this.§9"'§);
            this.§0#l§.stop();
         }
         this.§["C§ = §7$<§.§3h§;
         this.§9"u§(false);
      }
      
      private function §9"'§(param1:Event) : void
      {
         switch(this.§["C§)
         {
            case §7$<§.§3"4§:
               this.§##d§();
               break;
            case §7$<§.§']§:
               this.§4"$§();
               break;
            case §7$<§.§=#C§:
               this.§[o§();
         }
      }
      
      private function §##d§() : void
      {
         this.§-"'§(this.§["C§);
         if(this.§4"P§)
         {
            this.§6$5§(this.§4"P§);
            this.§4"P§ = null;
         }
      }
      
      private function §[o§() : void
      {
         this.§-"'§(this.§["C§);
         this.§"!c§();
         this.§+!t§ = this.§"$2§;
         this.§"$2§ = "";
      }
      
      private function §4"$§() : void
      {
         this.§-"'§(this.§["C§);
         this.§"!c§();
         this.§6$5§(this.§>!"§());
      }
      
      protected function §>!"§() : §7$<§
      {
         return new §7$<§(§3#r§.§2Z§(),§3#r§.§5!H§,§3#r§.§ case§,§7$<§.§3"4§,this.§`!d§,this.§3""§);
      }
      
      protected function §-"'§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §6G§(param1:§7$<§, param2:Boolean = false) : void
      {
         if(!this.§0#l§.§62§)
         {
            this.§6$5§(param1);
            return;
         }
         this.§4"P§ = param1;
         this.§0#l§.stop(param2);
      }
      
      protected function §3#§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§7$<§ = null;
         if(param2)
         {
            (_loc4_ = new §7$<§()).startLabel = §3#r§.§7#%§(param1);
            _loc4_.§0#-§ = §3#r§.§5!H§;
            _loc4_.§&$D§ = §3#r§.§ case§;
            _loc4_.type = §7$<§.§=#C§;
            _loc4_.stageQuality = this.§3""§;
            this.§6G§(_loc4_,param3);
            this.§"$2§ = param1;
         }
         else
         {
            this.§"!c§();
            this.§"$2§ = "";
            this.§+!t§ = param1;
         }
      }
      
      public function §8#o§(param1:Boolean) : void
      {
         this.§<!;§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§0!X§)
         {
            return;
         }
         if(this.§;!w§)
         {
            this.§;!w§.clear();
            this.§;!w§ = null;
         }
         while(this.§#i§.length > 0)
         {
            (this.§#i§.pop() as §%"X§).clear();
         }
         if(this.§'-§)
         {
            this.deActivate();
         }
         this.§0!X§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§0!X§)
         {
            §^"t§.log("WARNING: State -> run() method is called when state is not ready: " + this.§&$"§);
            return §<"R§;
         }
         if(!this.§'-§)
         {
            §^"t§.log("WARNING: State -> run() method is called when state is not active: " + this.§&$"§);
            return §[$?§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§+!t§ != "")
         {
            return §2#1§;
         }
         return §["s§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§0#l§ && this.§["C§ != §7$<§.§3h§)
         {
            this.§0#l§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§[v§;
      }
      
      public final function uiInteractionHandler(param1:int, param2:String, param3:§`$4§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§0#l§ && this.§0#l§.§62§ && (this.§["C§ == §7$<§.§']§ || this.§["C§ == §7$<§.§=#C§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
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
      
      public function §#$5§(param1:§%"X§) : void
      {
         this.§#i§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§&"h§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§&"h§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§&"h§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§'#V§)
         {
            return this.§'#V§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§'#V§)
         {
            return this.§'#V§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§;!w§)
         {
            this.§;!w§.viewWidth = param1;
            this.§;!w§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §]$§;
      }
      
      public function §-u§() : void
      {
      }
   }
}
