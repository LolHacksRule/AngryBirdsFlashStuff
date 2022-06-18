package §>@§
{
   import §&$!§.§+#!§;
   import §&$!§.§[r§;
   import §6V§.§?#y§;
   import §8#D§.§#E§;
   import §<"1§.§'"S§;
   import §<"p§.§?!T§;
   import §]@§.§+#Z§;
   import §]@§.§-!l§;
   import §]@§.§6Z§;
   import §]@§.§8"A§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §'!L§ implements §[r§
   {
      
      public static const §=#9§:int = 60;
      
      public static const §[#,§:String = "dummyState";
      
      public static const §0!#§:int = 0;
      
      public static const §"#=§:int = 1;
      
      public static const §^#l§:int = 2;
      
      public static const §`!?§:int = 3;
      
      public static var §`$=§:Object = null;
       
      
      private var §8#R§:Boolean = false;
      
      private var §!!9§:Boolean = false;
      
      public var §;!p§:String;
      
      public var §8"L§:Boolean = false;
      
      protected var §%!b§:String = "none";
      
      protected var §0#w§:§8"A§;
      
      protected var § !t§:§6Z§;
      
      protected var §^"7§:String;
      
      protected var §@!p§:Boolean = false;
      
      protected var §9<§:Boolean = true;
      
      protected var §'"4§:String = "best";
      
      public var §>"#§:Boolean = false;
      
      public var §&"w§:Boolean = true;
      
      private var §9%§:Vector.<String>;
      
      protected var §>"@§:Vector.<String>;
      
      public var §=#^§:Boolean = false;
      
      public var §?Q§:§#E§;
      
      public var §6$2§:Array;
      
      private var § #H§:String = "";
      
      private var §21§:String = "";
      
      public var §'$&§:Sprite = null;
      
      public var §&"C§:§%!4§ = null;
      
      protected var §-"Q§:§+#!§;
      
      public function §'!L§(param1:Boolean, param2:String, param3:§+#!§)
      {
         super();
         this.§;!p§ = param2;
         this.§6$2§ = new Array();
         this.§'$&§ = new Sprite();
         this.§-"Q§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §+"9§(param1:String) : String
      {
         if(§`$=§)
         {
            return §`$=§[param1];
         }
         return null;
      }
      
      public function get previousState() : String
      {
         return this.§21§;
      }
      
      public function get nextState() : String
      {
         return this.§ #H§;
      }
      
      public function get isReady() : Boolean
      {
         return this.§8#R§;
      }
      
      public function get §83§() : Boolean
      {
         return this.§!!9§;
      }
      
      private function initialize() : void
      {
         this.§9%§ = new Vector.<String>();
         this.§>"@§ = new Vector.<String>();
         this.§1!"§();
         this.init();
         this.§#!t§();
         this.§-!s§();
         this.§8#R§ = true;
      }
      
      protected function §1!"§() : void
      {
         this.§9%§.push(§+#Z§.§]#@§());
         this.§9%§.push(§+#Z§.§="-§());
         this.§9%§.push(§+#Z§.§8E§());
         this.§9%§.push(§+#Z§.§0$2§());
         this.§9%§.push(§+#Z§.§3#I§());
         this.§9%§.push(§+#Z§.§>";§);
         this.§9%§.push(§+#Z§.§0#s§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §-!s§() : void
      {
      }
      
      private function §#!t§() : void
      {
         if(this.§?Q§ == null || this.§?Q§.container == null || this.§?Q§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§?Q§.container.mClip;
         var _loc2_:Vector.<String> = this.§9%§.concat(this.§>"@§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §?#y§.§-"s§(_loc1_,_loc2_,_loc3_,§?#y§.§?#F§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§ !t§ = new §-!l§(param1,this.§'$&§.stage);
      }
      
      private function §3$9§(param1:MouseEvent) : void
      {
         this.§9j§(false);
         if(this.§%!b§ == §8"A§.§7?§)
         {
            this.§>"#§ = true;
         }
         this.§ !t§.stop(false);
      }
      
      private function §9j§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'$&§.addEventListener(MouseEvent.CLICK,this.§3$9§);
         }
         else
         {
            this.§'$&§.removeEventListener(MouseEvent.CLICK,this.§3$9§);
         }
         this.§'$&§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§#E§ = null;
         this.§21§ = param1;
         if(!this.§8#R§)
         {
            this.initialize();
         }
         if(this.§?Q§)
         {
            this.§'$&§.addChild(this.§?Q§);
            this.§?Q§.activateView();
         }
         for each(_loc2_ in this.§6$2§)
         {
            this.§'$&§.addChild(_loc2_);
            _loc2_.deactivateView();
         }
         this.§ #H§ = "";
         this.§!!9§ = true;
      }
      
      public function §6"h§(param1:Boolean) : void
      {
         var _loc2_:§8"A§ = null;
         if(this.§@!p§ && !param1)
         {
            _loc2_ = new §8"A§();
            _loc2_.§16§ = §+#Z§.§0#s§;
            _loc2_.§2#s§ = §+#Z§.§>";§;
            _loc2_.startLabel = §+#Z§.§0$2§(this.§21§);
            _loc2_.type = §8"A§.§+"Z§;
            _loc2_.stageQuality = this.§'"4§;
            this.§"!e§(_loc2_);
         }
         else
         {
            this.§^"o§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§#E§ = null;
         this.§@$&§();
         if(this.§?Q§)
         {
            this.§?Q§.deactivateView();
            this.§'$&§.removeChild(this.§?Q§);
         }
         for each(_loc1_ in this.§6$2§)
         {
            _loc1_.deactivateView();
            this.§'$&§.removeChild(_loc1_);
         }
         if(!this.§!!9§)
         {
            if(this.§=#^§)
            {
               this.cleanup();
            }
            return;
         }
         this.§!!9§ = false;
         if(this.§=#^§)
         {
            this.cleanup();
         }
      }
      
      private function §"!e§(param1:§8"A§) : void
      {
         this.§@$&§();
         if(this.§ !t§ && param1.type != §8"A§.§^"'§)
         {
            this.§%!b§ = param1.type;
            this.§6#d§(param1);
            this.§ !t§.addEventListener(Event.COMPLETE,this.§`!i§);
            this.§ !t§.start(param1);
            if(this.§%!b§ == §8"A§.§+"Z§ || this.§%!b§ == §8"A§.§7?§)
            {
               if(this.§&"w§)
               {
                  this.§9j§(true);
               }
            }
            this.onTransitionStart(this.§%!b§);
         }
      }
      
      protected function §6#d§(param1:§8"A§) : void
      {
      }
      
      private function §@$&§() : void
      {
         if(this.§ !t§)
         {
            this.§ !t§.removeEventListener(Event.COMPLETE,this.§`!i§);
            this.§ !t§.stop();
         }
         this.§%!b§ = §8"A§.§^"'§;
         this.§9j§(false);
      }
      
      private function §`!i§(param1:Event) : void
      {
         switch(this.§%!b§)
         {
            case §8"A§.§+!f§:
               this.§!#c§();
               break;
            case §8"A§.§+"Z§:
               this.§^"o§();
               break;
            case §8"A§.§7?§:
               this.§ #O§();
         }
      }
      
      private function §!#c§() : void
      {
         this.§&"r§(this.§%!b§);
         if(this.§0#w§)
         {
            this.§"!e§(this.§0#w§);
            this.§0#w§ = null;
         }
      }
      
      private function § #O§() : void
      {
         this.§&"r§(this.§%!b§);
         this.§@$&§();
         this.§ #H§ = this.§^"7§;
         this.§^"7§ = "";
      }
      
      private function §^"o§() : void
      {
         this.§&"r§(this.§%!b§);
         this.§@$&§();
         this.§"!e§(this.§"!w§());
      }
      
      protected function §"!w§() : §8"A§
      {
         return new §8"A§(§+#Z§.§]#@§(),§+#Z§.§0#s§,§+#Z§.§>";§,§8"A§.§+!f§,this.§9<§,this.§'"4§);
      }
      
      protected function §&"r§(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §?$-§(param1:§8"A§, param2:Boolean = false) : void
      {
         if(!this.§ !t§.§'!D§)
         {
            this.§"!e§(param1);
            return;
         }
         this.§0#w§ = param1;
         this.§ !t§.stop(param2);
      }
      
      protected function §5"p§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§8"A§ = null;
         if(param2)
         {
            (_loc4_ = new §8"A§()).startLabel = §+#Z§.§3#I§(param1);
            _loc4_.§16§ = §+#Z§.§0#s§;
            _loc4_.§2#s§ = §+#Z§.§>";§;
            _loc4_.type = §8"A§.§7?§;
            _loc4_.stageQuality = this.§'"4§;
            this.§?$-§(_loc4_,param3);
            this.§^"7§ = param1;
         }
         else
         {
            this.§@$&§();
            this.§^"7§ = "";
            this.§ #H§ = param1;
         }
      }
      
      public function §;$>§(param1:Boolean) : void
      {
         this.§=#^§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§8#R§)
         {
            return;
         }
         if(this.§?Q§)
         {
            this.§?Q§.clear();
            this.§?Q§ = null;
         }
         while(this.§6$2§.length > 0)
         {
            (this.§6$2§.pop() as §#E§).clear();
         }
         if(this.§!!9§)
         {
            this.deActivate();
         }
         this.§8#R§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§8#R§)
         {
            §?!T§.log("WARNING: State -> run() method is called when state is not ready: " + this.§;!p§);
            return §0!#§;
         }
         if(!this.§!!9§)
         {
            §?!T§.log("WARNING: State -> run() method is called when state is not active: " + this.§;!p§);
            return §"#=§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§ #H§ != "")
         {
            return §`!?§;
         }
         return §^#l§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§ !t§ && this.§%!b§ != §8"A§.§^"'§)
         {
            this.§ !t§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§8"L§;
      }
      
      public final function uiInteractionHandler(param1:int, param2:String, param3:§'"S§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§ !t§ && this.§ !t§.§'!D§ && (this.§%!b§ == §8"A§.§+"Z§ || this.§%!b§ == §8"A§.§7?§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
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
      
      public function §%!@§(param1:§#E§) : void
      {
         this.§6$2§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§'$&§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§'$&§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§'$&§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§&"C§)
         {
            return this.§&"C§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§&"C§)
         {
            return this.§&"C§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§?Q§)
         {
            this.§?Q§.viewWidth = param1;
            this.§?Q§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §=#9§;
      }
      
      public function §>#k§() : void
      {
      }
   }
}
