package §>"W§
{
   import § !j§.§1"_§;
   import § !j§.§4#c§;
   import §%!-§.§5!z§;
   import §&!_§.§'"G§;
   import §,!Q§.§6"n§;
   import §1#v§.§;!Y§;
   import §?"Q§.§+"Q§;
   import §?"Q§.§2!Z§;
   import §?"Q§.§5"@§;
   import §?"Q§.§;$=§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §7Y§ implements §1"_§
   {
      
      public static const §["F§:int = 60;
      
      public static const §8!u§:String = "dummyState";
      
      public static const §@#a§:int = 0;
      
      public static const §2!g§:int = 1;
      
      public static const §?!f§:int = 2;
      
      public static const § try§:int = 3;
      
      public static var § "U§:Object = null;
       
      
      protected var §+"N§:Boolean = false;
      
      private var §;o§:Boolean = false;
      
      public var §!I§:String;
      
      public var §9!1§:Boolean = false;
      
      protected var §"#f§:String = "none";
      
      protected var §&4§:§2!Z§;
      
      protected var §5!?§:§5"@§;
      
      protected var §`!^§:String;
      
      protected var §3"=§:Boolean = false;
      
      protected var §6!^§:Boolean = true;
      
      protected var §^!,§:String = "best";
      
      public var §-#>§:Boolean = false;
      
      public var §7"w§:Boolean = true;
      
      private var §"!!§:Vector.<String>;
      
      protected var §"t§:Vector.<String>;
      
      public var §3!K§:Boolean = false;
      
      public var §[$5§:§5!z§;
      
      public var §9"B§:Array;
      
      private var §`#g§:String = "";
      
      private var §9""§:String = "";
      
      public var §'#f§:Sprite = null;
      
      public var §@#$§:§=$8§ = null;
      
      protected var §+" §:§4#c§;
      
      public function §7Y§(param1:Boolean, param2:String, param3:§4#c§)
      {
         super();
         this.§!I§ = param2;
         this.§9"B§ = new Array();
         this.§'#f§ = new Sprite();
         this.§+" § = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §;"-§(param1:String) : String
      {
         if(§ "U§)
         {
            return § "U§[param1];
         }
         return null;
      }
      
      public function get previousState() : String
      {
         return this.§9""§;
      }
      
      public function get nextState() : String
      {
         return this.§`#g§;
      }
      
      public function get isReady() : Boolean
      {
         return this.§+"N§;
      }
      
      public function get §?$D§() : Boolean
      {
         return this.§;o§;
      }
      
      private function initialize() : void
      {
         this.§"!!§ = new Vector.<String>();
         this.§"t§ = new Vector.<String>();
         this.§66§();
         this.init();
         this.§2$>§();
         this.§7#i§();
         this.§+"N§ = true;
      }
      
      protected function §66§() : void
      {
         this.§"!!§.push(§+"Q§.§+#[§());
         this.§"!!§.push(§+"Q§.§+!h§());
         this.§"!!§.push(§+"Q§.§,"z§());
         this.§"!!§.push(§+"Q§.§,H§());
         this.§"!!§.push(§+"Q§.§8>§());
         this.§"!!§.push(§+"Q§.§5i§);
         this.§"!!§.push(§+"Q§.§!!9§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §7#i§() : void
      {
      }
      
      private function §2$>§() : void
      {
         if(this.§[$5§ == null || this.§[$5§.container == null || this.§[$5§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§[$5§.container.mClip;
         var _loc2_:Vector.<String> = this.§"!!§.concat(this.§"t§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §'"G§.§]"A§(_loc1_,_loc2_,_loc3_,§'"G§.§&!!§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§5!?§ = new §;$=§(param1,this.§'#f§.stage);
      }
      
      private function §=!O§(param1:MouseEvent) : void
      {
         this.§!,§(false);
         if(this.§"#f§ == §2!Z§.§@K§)
         {
            this.§-#>§ = true;
         }
         this.§5!?§.stop(false);
      }
      
      private function §!,§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'#f§.addEventListener(MouseEvent.CLICK,this.§=!O§);
         }
         else
         {
            this.§'#f§.removeEventListener(MouseEvent.CLICK,this.§=!O§);
         }
         this.§'#f§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§5!z§ = null;
         this.§9""§ = param1;
         if(!this.§+"N§)
         {
            this.initialize();
         }
         if(this.§[$5§)
         {
            this.§'#f§.addChild(this.§[$5§);
            this.§[$5§.activateView();
         }
         for each(_loc2_ in this.§9"B§)
         {
            this.§'#f§.addChild(_loc2_);
            _loc2_.deactivateView();
         }
         this.§`#g§ = "";
         this.§;o§ = true;
      }
      
      public function §!!y§(param1:Boolean) : void
      {
         var _loc2_:§2!Z§ = null;
         if(this.§3"=§ && !param1)
         {
            _loc2_ = new §2!Z§();
            _loc2_.§5";§ = §+"Q§.§!!9§;
            _loc2_.§1$"§ = §+"Q§.§5i§;
            _loc2_.startLabel = §+"Q§.§,H§(this.§9""§);
            _loc2_.type = §2!Z§.§%$§;
            _loc2_.stageQuality = this.§^!,§;
            this.§4"b§(_loc2_);
         }
         else
         {
            this.§3!Z§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§5!z§ = null;
         this.§6'§();
         if(this.§[$5§)
         {
            this.§[$5§.deactivateView();
            this.§'#f§.removeChild(this.§[$5§);
         }
         for each(_loc1_ in this.§9"B§)
         {
            _loc1_.deactivateView();
            this.§'#f§.removeChild(_loc1_);
         }
         if(!this.§;o§)
         {
            if(this.§3!K§)
            {
               this.cleanup();
            }
            return;
         }
         this.§;o§ = false;
         if(this.§3!K§)
         {
            this.cleanup();
         }
      }
      
      private function §4"b§(param1:§2!Z§) : void
      {
         this.§6'§();
         if(this.§5!?§ && param1.type != §2!Z§.§7"4§)
         {
            this.§"#f§ = param1.type;
            this.§#"0§(param1);
            this.§5!?§.addEventListener(Event.COMPLETE,this.§"!t§);
            this.§5!?§.start(param1);
            if(this.§"#f§ == §2!Z§.§%$§ || this.§"#f§ == §2!Z§.§@K§)
            {
               if(this.§7"w§)
               {
                  this.§!,§(true);
               }
            }
            this.onTransitionStart(this.§"#f§);
         }
      }
      
      protected function §#"0§(param1:§2!Z§) : void
      {
      }
      
      private function §6'§() : void
      {
         if(this.§5!?§)
         {
            this.§5!?§.removeEventListener(Event.COMPLETE,this.§"!t§);
            this.§5!?§.stop();
         }
         this.§"#f§ = §2!Z§.§7"4§;
         this.§!,§(false);
      }
      
      private function §"!t§(param1:Event) : void
      {
         switch(this.§"#f§)
         {
            case §2!Z§.§1M§:
               this.§5!c§();
               break;
            case §2!Z§.§%$§:
               this.§3!Z§();
               break;
            case §2!Z§.§@K§:
               this.§`!2§();
         }
      }
      
      private function §5!c§() : void
      {
         this.§=#B§(this.§"#f§);
         if(this.§&4§)
         {
            this.§4"b§(this.§&4§);
            this.§&4§ = null;
         }
      }
      
      private function §`!2§() : void
      {
         this.§=#B§(this.§"#f§);
         this.§6'§();
         this.§`#g§ = this.§`!^§;
         this.§`!^§ = "";
      }
      
      private function §3!Z§() : void
      {
         this.§=#B§(this.§"#f§);
         this.§6'§();
         this.§4"b§(this.§"#s§());
      }
      
      protected function §"#s§() : §2!Z§
      {
         return new §2!Z§(§+"Q§.§+#[§(),§+"Q§.§!!9§,§+"Q§.§5i§,§2!Z§.§1M§,this.§6!^§,this.§^!,§);
      }
      
      protected function §=#B§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §]x§(param1:§2!Z§, param2:Boolean = false) : void
      {
         if(!this.§5!?§.§!!A§)
         {
            this.§4"b§(param1);
            return;
         }
         this.§&4§ = param1;
         this.§5!?§.stop(param2);
      }
      
      protected function §1!L§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§2!Z§ = null;
         if(param2)
         {
            (_loc4_ = new §2!Z§()).startLabel = §+"Q§.§8>§(param1);
            _loc4_.§5";§ = §+"Q§.§!!9§;
            _loc4_.§1$"§ = §+"Q§.§5i§;
            _loc4_.type = §2!Z§.§@K§;
            _loc4_.stageQuality = this.§^!,§;
            this.§]x§(_loc4_,param3);
            this.§`!^§ = param1;
         }
         else
         {
            this.§6'§();
            this.§`!^§ = "";
            this.§`#g§ = param1;
         }
      }
      
      public function §3!L§(param1:Boolean) : void
      {
         this.§3!K§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§+"N§)
         {
            return;
         }
         if(this.§[$5§)
         {
            this.§[$5§.clear();
            this.§[$5§ = null;
         }
         while(this.§9"B§.length > 0)
         {
            (this.§9"B§.pop() as §5!z§).clear();
         }
         if(this.§;o§)
         {
            this.deActivate();
         }
         this.§+"N§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§+"N§)
         {
            §;!Y§.log("WARNING: State -> run() method is called when state is not ready: " + this.§!I§);
            return §@#a§;
         }
         if(!this.§;o§)
         {
            §;!Y§.log("WARNING: State -> run() method is called when state is not active: " + this.§!I§);
            return §2!g§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§`#g§ != "")
         {
            return § try§;
         }
         return §?!f§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§5!?§ && this.§"#f§ != §2!Z§.§7"4§)
         {
            this.§5!?§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§9!1§;
      }
      
      public final function uiInteractionHandler(param1:int, param2:String, param3:§6"n§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§5!?§ && this.§5!?§.§!!A§ && (this.§"#f§ == §2!Z§.§%$§ || this.§"#f§ == §2!Z§.§@K§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
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
      
      public function §4$&§(param1:§5!z§) : void
      {
         this.§9"B§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§'#f§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§'#f§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§'#f§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§@#$§)
         {
            return this.§@#$§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§@#$§)
         {
            return this.§@#$§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§[$5§)
         {
            this.§[$5§.viewWidth = param1;
            this.§[$5§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §["F§;
      }
      
      public function §1!S§() : void
      {
      }
   }
}
