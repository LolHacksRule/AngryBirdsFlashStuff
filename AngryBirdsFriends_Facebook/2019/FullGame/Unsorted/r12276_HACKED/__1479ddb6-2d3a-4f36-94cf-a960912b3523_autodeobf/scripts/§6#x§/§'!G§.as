package §6#x§
{
   import § #_§.§'0§;
   import § #_§.§?!>§;
   import §#"3§.§4!h§;
   import §2E§.§'t§;
   import §<8§.§8!g§;
   import §>#s§.§-$$§;
   import §>#s§.§4#s§;
   import §>#s§.§@^§;
   import §>#s§.§^!z§;
   import §[#A§.§+#<§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §'!G§ implements §'0§
   {
      
      public static const §]##§:int = 60;
      
      public static const §<"P§:String = "dummyState";
      
      public static const §-#B§:int = 0;
      
      public static const § $3§:int = 1;
      
      public static const §8"s§:int = 2;
      
      public static const §3!Q§:int = 3;
      
      public static var §9!k§:Object = null;
       
      
      protected var §2u§:Boolean = false;
      
      private var §&f§:Boolean = false;
      
      public var §-#3§:String;
      
      public var §["3§:Boolean = false;
      
      protected var §-#K§:String = "none";
      
      protected var §#""§:§@^§;
      
      protected var §]"I§:§4#s§;
      
      protected var §+]§:String;
      
      protected var §!]§:Boolean = false;
      
      protected var §"$3§:Boolean = true;
      
      protected var §'"3§:String = "best";
      
      public var §=!o§:Boolean = false;
      
      public var §`!F§:Boolean = true;
      
      private var §!"4§:Vector.<String>;
      
      protected var §,#g§:Vector.<String>;
      
      public var §6#D§:Boolean = false;
      
      public var §@!D§:§+#<§;
      
      public var §8!f§:Array;
      
      private var §0u§:String = "";
      
      private var §2#§:String = "";
      
      public var §]#+§:Sprite = null;
      
      public var §!"H§:§&#S§ = null;
      
      protected var §,#a§:§?!>§;
      
      public function §'!G§(param1:Boolean, param2:String, param3:§?!>§)
      {
         super();
         this.§-#3§ = param2;
         this.§8!f§ = new Array();
         this.§]#+§ = new Sprite();
         this.§,#a§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §="p§(param1:String) : String
      {
         if(§9!k§)
         {
            return §9!k§[param1];
         }
         return null;
      }
      
      public function get previousState() : String
      {
         return this.§2#§;
      }
      
      public function get nextState() : String
      {
         return this.§0u§;
      }
      
      public function get isReady() : Boolean
      {
         return this.§2u§;
      }
      
      public function get §6#9§() : Boolean
      {
         return this.§&f§;
      }
      
      private function initialize() : void
      {
         this.§!"4§ = new Vector.<String>();
         this.§,#g§ = new Vector.<String>();
         this.§5!J§();
         this.init();
         this.§-#A§();
         this.§ #%§();
         this.§2u§ = true;
      }
      
      protected function §5!J§() : void
      {
         this.§!"4§.push(§-$$§.§`d§());
         this.§!"4§.push(§-$$§.§"#0§());
         this.§!"4§.push(§-$$§.§%#Z§());
         this.§!"4§.push(§-$$§.§>!'§());
         this.§!"4§.push(§-$$§.§3u§());
         this.§!"4§.push(§-$$§.§0e§);
         this.§!"4§.push(§-$$§.§%#U§);
      }
      
      protected function init() : void
      {
      }
      
      protected function § #%§() : void
      {
      }
      
      private function §-#A§() : void
      {
         if(this.§@!D§ == null || this.§@!D§.container == null || this.§@!D§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§@!D§.container.mClip;
         var _loc2_:Vector.<String> = this.§!"4§.concat(this.§,#g§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §'t§.§&K§(_loc1_,_loc2_,_loc3_,§'t§.§"#[§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§]"I§ = new §^!z§(param1,this.§]#+§.stage);
      }
      
      private function §-"+§(param1:MouseEvent) : void
      {
         this.§ "W§(false);
         if(this.§-#K§ == §@^§.§0K§)
         {
            this.§=!o§ = true;
         }
         this.§]"I§.stop(false);
      }
      
      private function § "W§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]#+§.addEventListener(MouseEvent.CLICK,this.§-"+§);
         }
         else
         {
            this.§]#+§.removeEventListener(MouseEvent.CLICK,this.§-"+§);
         }
         this.§]#+§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§+#<§ = null;
         this.§2#§ = param1;
         if(!this.§2u§)
         {
            this.initialize();
         }
         if(this.§@!D§)
         {
            this.§]#+§.addChild(this.§@!D§);
            this.§@!D§.activateView();
         }
         for each(_loc2_ in this.§8!f§)
         {
            this.§]#+§.addChild(_loc2_);
            _loc2_.deactivateView();
         }
         this.§0u§ = "";
         this.§&f§ = true;
      }
      
      public function §>^§(param1:Boolean) : void
      {
         var _loc2_:§@^§ = null;
         if(this.§!]§ && !param1)
         {
            _loc2_ = new §@^§();
            _loc2_.§'3§ = §-$$§.§%#U§;
            _loc2_.§%#f§ = §-$$§.§0e§;
            _loc2_.startLabel = §-$$§.§>!'§(this.§2#§);
            _loc2_.type = §@^§.§1!A§;
            _loc2_.stageQuality = this.§'"3§;
            this.§-"R§(_loc2_);
         }
         else
         {
            this.§=_§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§+#<§ = null;
         this.§!!B§();
         if(this.§@!D§)
         {
            this.§@!D§.deactivateView();
            this.§]#+§.removeChild(this.§@!D§);
         }
         for each(_loc1_ in this.§8!f§)
         {
            _loc1_.deactivateView();
            this.§]#+§.removeChild(_loc1_);
         }
         if(!this.§&f§)
         {
            if(this.§6#D§)
            {
               this.cleanup();
            }
            return;
         }
         this.§&f§ = false;
         if(this.§6#D§)
         {
            this.cleanup();
         }
      }
      
      private function §-"R§(param1:§@^§) : void
      {
         this.§!!B§();
         if(this.§]"I§ && param1.type != §@^§.§""=§)
         {
            this.§-#K§ = param1.type;
            this.§'$C§(param1);
            this.§]"I§.addEventListener(Event.COMPLETE,this.§1#n§);
            this.§]"I§.start(param1);
            if(this.§-#K§ == §@^§.§1!A§ || this.§-#K§ == §@^§.§0K§)
            {
               if(this.§`!F§)
               {
                  this.§ "W§(true);
               }
            }
            this.onTransitionStart(this.§-#K§);
         }
      }
      
      protected function §'$C§(param1:§@^§) : void
      {
      }
      
      private function §!!B§() : void
      {
         if(this.§]"I§)
         {
            this.§]"I§.removeEventListener(Event.COMPLETE,this.§1#n§);
            this.§]"I§.stop();
         }
         this.§-#K§ = §@^§.§""=§;
         this.§ "W§(false);
      }
      
      private function §1#n§(param1:Event) : void
      {
         switch(this.§-#K§)
         {
            case §@^§.§=z§:
               this.§8$?§();
               break;
            case §@^§.§1!A§:
               this.§=_§();
               break;
            case §@^§.§0K§:
               this.§4N§();
         }
      }
      
      private function §8$?§() : void
      {
         this.§4#4§(this.§-#K§);
         if(this.§#""§)
         {
            this.§-"R§(this.§#""§);
            this.§#""§ = null;
         }
      }
      
      private function §4N§() : void
      {
         this.§4#4§(this.§-#K§);
         this.§!!B§();
         this.§0u§ = this.§+]§;
         this.§+]§ = "";
      }
      
      private function §=_§() : void
      {
         this.§4#4§(this.§-#K§);
         this.§!!B§();
         this.§-"R§(this.§^#7§());
      }
      
      protected function §^#7§() : §@^§
      {
         return new §@^§(§-$$§.§`d§(),§-$$§.§%#U§,§-$$§.§0e§,§@^§.§=z§,this.§"$3§,this.§'"3§);
      }
      
      protected function §4#4§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §>$+§(param1:§@^§, param2:Boolean = false) : void
      {
         if(!this.§]"I§.§'"-§)
         {
            this.§-"R§(param1);
            return;
         }
         this.§#""§ = param1;
         this.§]"I§.stop(param2);
      }
      
      protected function §%!?§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§@^§ = null;
         if(param2)
         {
            (_loc4_ = new §@^§()).startLabel = §-$$§.§3u§(param1);
            _loc4_.§'3§ = §-$$§.§%#U§;
            _loc4_.§%#f§ = §-$$§.§0e§;
            _loc4_.type = §@^§.§0K§;
            _loc4_.stageQuality = this.§'"3§;
            this.§>$+§(_loc4_,param3);
            this.§+]§ = param1;
         }
         else
         {
            this.§!!B§();
            this.§+]§ = "";
            this.§0u§ = param1;
         }
      }
      
      public function §#"p§(param1:Boolean) : void
      {
         this.§6#D§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§2u§)
         {
            return;
         }
         if(this.§@!D§)
         {
            this.§@!D§.clear();
            this.§@!D§ = null;
         }
         while(this.§8!f§.length > 0)
         {
            (this.§8!f§.pop() as §+#<§).clear();
         }
         if(this.§&f§)
         {
            this.deActivate();
         }
         this.§2u§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§2u§)
         {
            §4!h§.log("WARNING: State -> run() method is called when state is not ready: " + this.§-#3§);
            return §-#B§;
         }
         if(!this.§&f§)
         {
            §4!h§.log("WARNING: State -> run() method is called when state is not active: " + this.§-#3§);
            return § $3§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§0u§ != "")
         {
            return §3!Q§;
         }
         return §8"s§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§]"I§ && this.§-#K§ != §@^§.§""=§)
         {
            this.§]"I§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§["3§;
      }
      
      public final function uiInteractionHandler(param1:int, param2:String, param3:§8!g§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§]"I§ && this.§]"I§.§'"-§ && (this.§-#K§ == §@^§.§1!A§ || this.§-#K§ == §@^§.§0K§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
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
      
      public function §`q§(param1:§+#<§) : void
      {
         this.§8!f§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§]#+§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§]#+§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§]#+§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§!"H§)
         {
            return this.§!"H§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§!"H§)
         {
            return this.§!"H§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§@!D§)
         {
            this.§@!D§.viewWidth = param1;
            this.§@!D§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §]##§;
      }
      
      public function §"9§() : void
      {
      }
   }
}
