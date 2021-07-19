package §9"#§
{
   import §!x§.§4"d§;
   import §'!U§.§0!?§;
   import §'U§.§6!B§;
   import §'U§.§]#[§;
   import §1#T§.§ #<§;
   import §1#T§.§ #@§;
   import §1#T§.§+L§;
   import §1#T§.§3"+§;
   import §<!O§.§'k§;
   import §>!#§.§?#I§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §4$5§ implements §6!B§
   {
      
      public static const §;$$§:int = 60;
      
      public static const §9!w§:String = "dummyState";
      
      public static const §="z§:int = 0;
      
      public static const §>#z§:int = 1;
      
      public static const §%!@§:int = 2;
      
      public static const §'!]§:int = 3;
      
      public static var § !8§:Object = null;
       
      
      private var §2"r§:Boolean = false;
      
      private var §5!U§:Boolean = false;
      
      public var §2!4§:String;
      
      public var §<!M§:Boolean = false;
      
      protected var §,#^§:String = "none";
      
      protected var §8R§:§ #<§;
      
      protected var §]!g§:§ #@§;
      
      protected var §0"w§:String;
      
      protected var §##p§:Boolean = false;
      
      protected var §9D§:Boolean = true;
      
      protected var §7!X§:String = "best";
      
      public var §=z§:Boolean = false;
      
      public var §0"_§:Boolean = true;
      
      private var §]"&§:Vector.<String>;
      
      protected var §`!>§:Vector.<String>;
      
      public var §>#F§:Boolean = false;
      
      public var §!$§:§'k§;
      
      public var §9"8§:Array;
      
      private var §="U§:String = "";
      
      private var §0#@§:String = "";
      
      public var §]Y§:Sprite = null;
      
      public var §2!g§:§4w§ = null;
      
      protected var §'#w§:§]#[§;
      
      public function §4$5§(param1:Boolean, param2:String, param3:§]#[§)
      {
         super();
         this.§2!4§ = param2;
         this.§9"8§ = new Array();
         this.§]Y§ = new Sprite();
         this.§'#w§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §3!§(param1:String) : String
      {
         if(§ !8§)
         {
            return § !8§[param1];
         }
         return null;
      }
      
      public function get previousState() : String
      {
         return this.§0#@§;
      }
      
      public function get nextState() : String
      {
         return this.§="U§;
      }
      
      public function get isReady() : Boolean
      {
         return this.§2"r§;
      }
      
      public function get §#B§() : Boolean
      {
         return this.§5!U§;
      }
      
      private function initialize() : void
      {
         this.§]"&§ = new Vector.<String>();
         this.§`!>§ = new Vector.<String>();
         this.§9#'§();
         this.init();
         this.§ F§();
         this.§&$ §();
         this.§2"r§ = true;
      }
      
      protected function §9#'§() : void
      {
         this.§]"&§.push(§+L§.§&!2§());
         this.§]"&§.push(§+L§.§'F§());
         this.§]"&§.push(§+L§.§"$,§());
         this.§]"&§.push(§+L§.§0I§());
         this.§]"&§.push(§+L§.§7"1§());
         this.§]"&§.push(§+L§.§&W§);
         this.§]"&§.push(§+L§.§-z§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §&$ §() : void
      {
      }
      
      private function § F§() : void
      {
         if(this.§!$§ == null || this.§!$§.container == null || this.§!$§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§!$§.container.mClip;
         var _loc2_:Vector.<String> = this.§]"&§.concat(this.§`!>§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §?#I§.§0^§(_loc1_,_loc2_,_loc3_,§?#I§.§+#%§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§]!g§ = new §3"+§(param1,this.§]Y§.stage);
      }
      
      private function §"u§(param1:MouseEvent) : void
      {
         this.§^#"§(false);
         if(this.§,#^§ == § #<§.§ #§)
         {
            this.§=z§ = true;
         }
         this.§]!g§.stop(false);
      }
      
      private function §^#"§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]Y§.addEventListener(MouseEvent.CLICK,this.§"u§);
         }
         else
         {
            this.§]Y§.removeEventListener(MouseEvent.CLICK,this.§"u§);
         }
         this.§]Y§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§'k§ = null;
         this.§0#@§ = param1;
         if(!this.§2"r§)
         {
            this.initialize();
         }
         if(this.§!$§)
         {
            this.§]Y§.addChild(this.§!$§);
            this.§!$§.activateView();
         }
         for each(_loc2_ in this.§9"8§)
         {
            this.§]Y§.addChild(_loc2_);
            _loc2_.deactivateView();
         }
         this.§="U§ = "";
         this.§5!U§ = true;
      }
      
      public function §^#C§(param1:Boolean) : void
      {
         var _loc2_:§ #<§ = null;
         if(this.§##p§ && !param1)
         {
            _loc2_ = new § #<§();
            _loc2_.§!#F§ = §+L§.§-z§;
            _loc2_.§]!y§ = §+L§.§&W§;
            _loc2_.startLabel = §+L§.§0I§(this.§0#@§);
            _loc2_.type = § #<§.§+"r§;
            _loc2_.stageQuality = this.§7!X§;
            this.§^!'§(_loc2_);
         }
         else
         {
            this.§#!>§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§'k§ = null;
         this.§@!<§();
         if(this.§!$§)
         {
            this.§!$§.deactivateView();
            this.§]Y§.removeChild(this.§!$§);
         }
         for each(_loc1_ in this.§9"8§)
         {
            _loc1_.deactivateView();
            this.§]Y§.removeChild(_loc1_);
         }
         if(!this.§5!U§)
         {
            if(this.§>#F§)
            {
               this.cleanup();
            }
            return;
         }
         this.§5!U§ = false;
         if(this.§>#F§)
         {
            this.cleanup();
         }
      }
      
      private function §^!'§(param1:§ #<§) : void
      {
         this.§@!<§();
         if(this.§]!g§ && param1.type != § #<§.§?`§)
         {
            this.§,#^§ = param1.type;
            this.§&i§(param1);
            this.§]!g§.addEventListener(Event.COMPLETE,this.§&$;§);
            this.§]!g§.start(param1);
            if(this.§,#^§ == § #<§.§+"r§ || this.§,#^§ == § #<§.§ #§)
            {
               if(this.§0"_§)
               {
                  this.§^#"§(true);
               }
            }
            this.onTransitionStart(this.§,#^§);
         }
      }
      
      protected function §&i§(param1:§ #<§) : void
      {
      }
      
      private function §@!<§() : void
      {
         if(this.§]!g§)
         {
            this.§]!g§.removeEventListener(Event.COMPLETE,this.§&$;§);
            this.§]!g§.stop();
         }
         this.§,#^§ = § #<§.§?`§;
         this.§^#"§(false);
      }
      
      private function §&$;§(param1:Event) : void
      {
         switch(this.§,#^§)
         {
            case § #<§.§8#9§:
               this.§?!!§();
               break;
            case § #<§.§+"r§:
               this.§#!>§();
               break;
            case § #<§.§ #§:
               this.§2D§();
         }
      }
      
      private function §?!!§() : void
      {
         this.§2l§(this.§,#^§);
         if(this.§8R§)
         {
            this.§^!'§(this.§8R§);
            this.§8R§ = null;
         }
      }
      
      private function §2D§() : void
      {
         this.§2l§(this.§,#^§);
         this.§@!<§();
         this.§="U§ = this.§0"w§;
         this.§0"w§ = "";
      }
      
      private function §#!>§() : void
      {
         this.§2l§(this.§,#^§);
         this.§@!<§();
         this.§^!'§(this.§["Y§());
      }
      
      protected function §["Y§() : § #<§
      {
         return new § #<§(§+L§.§&!2§(),§+L§.§-z§,§+L§.§&W§,§ #<§.§8#9§,this.§9D§,this.§7!X§);
      }
      
      protected function §2l§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §,G§(param1:§ #<§, param2:Boolean = false) : void
      {
         if(!this.§]!g§.§!f§)
         {
            this.§^!'§(param1);
            return;
         }
         this.§8R§ = param1;
         this.§]!g§.stop(param2);
      }
      
      protected function §7P§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§ #<§ = null;
         if(param2)
         {
            (_loc4_ = new § #<§()).startLabel = §+L§.§7"1§(param1);
            _loc4_.§!#F§ = §+L§.§-z§;
            _loc4_.§]!y§ = §+L§.§&W§;
            _loc4_.type = § #<§.§ #§;
            _loc4_.stageQuality = this.§7!X§;
            this.§,G§(_loc4_,param3);
            this.§0"w§ = param1;
         }
         else
         {
            this.§@!<§();
            this.§0"w§ = "";
            this.§="U§ = param1;
         }
      }
      
      public function §4g§(param1:Boolean) : void
      {
         this.§>#F§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§2"r§)
         {
            return;
         }
         if(this.§!$§)
         {
            this.§!$§.clear();
            this.§!$§ = null;
         }
         while(this.§9"8§.length > 0)
         {
            (this.§9"8§.pop() as §'k§).clear();
         }
         if(this.§5!U§)
         {
            this.deActivate();
         }
         this.§2"r§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§2"r§)
         {
            §4"d§.log("WARNING: State -> run() method is called when state is not ready: " + this.§2!4§);
            return §="z§;
         }
         if(!this.§5!U§)
         {
            §4"d§.log("WARNING: State -> run() method is called when state is not active: " + this.§2!4§);
            return §>#z§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§="U§ != "")
         {
            return §'!]§;
         }
         return §%!@§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§]!g§ && this.§,#^§ != § #<§.§?`§)
         {
            this.§]!g§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§<!M§;
      }
      
      public final function uiInteractionHandler(param1:int, param2:String, param3:§0!?§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§]!g§ && this.§]!g§.§!f§ && (this.§,#^§ == § #<§.§+"r§ || this.§,#^§ == § #<§.§ #§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
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
      
      public function §'!k§(param1:§'k§) : void
      {
         this.§9"8§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§]Y§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§]Y§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§]Y§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§2!g§)
         {
            return this.§2!g§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§2!g§)
         {
            return this.§2!g§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§!$§)
         {
            this.§!$§.viewWidth = param1;
            this.§!$§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §;$$§;
      }
      
      public function §3F§() : void
      {
      }
   }
}
