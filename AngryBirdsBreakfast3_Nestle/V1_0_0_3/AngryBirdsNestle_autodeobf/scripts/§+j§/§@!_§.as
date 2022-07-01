package §+j§
{
   import §!",§.§,!4§;
   import §!",§.§,i§;
   import §!",§.§47§;
   import §!",§.§7!+§;
   import §-!F§.§^!t§;
   import §=!7§.§1!7§;
   import §@f§.§&!"§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import §]!d§.§8!,§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §@!_§ implements §8!,§
   {
      
      public static const §+!'§:int = 60;
      
      public static const §-q§:String = "dummyState";
      
      public static const §%!2§:int = 0;
      
      public static const §?x§:int = 1;
      
      public static const §9G§:int = 2;
      
      public static const §4"%§:int = 3;
      
      public static var §2!;§:Object = null;
       
      
      private var §4m§:Boolean = false;
      
      private var §&h§:Boolean = false;
      
      public var mName:String;
      
      public var §!!w§:Boolean = false;
      
      protected var §+C§:String = "none";
      
      protected var §,!w§:§7!+§;
      
      protected var §8"§:§,i§;
      
      protected var §%"+§:String;
      
      protected var §<]§:Boolean = false;
      
      protected var §8z§:Boolean = true;
      
      protected var §^G§:String = "best";
      
      public var §9j§:Boolean = false;
      
      public var §5"-§:Boolean = true;
      
      private var §6!!§:Vector.<String>;
      
      protected var §-!1§:Vector.<String>;
      
      public var §7T§:Boolean = false;
      
      public var §!^§:§1"1§;
      
      public var §>J§:Array;
      
      private var §@!!§:String = "";
      
      private var §+"3§:String = "";
      
      public var §<q§:Sprite = null;
      
      public var §6U§:§0C§ = null;
      
      protected var §@d§:§-!<§;
      
      public function §@!_§(param1:Boolean, param2:String, param3:§-!<§)
      {
         super();
         this.mName = param2;
         this.§>J§ = new Array();
         this.§<q§ = new Sprite();
         this.§@d§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §!!P§(param1:String) : String
      {
         if(§2!;§)
         {
            return §2!;§[param1];
         }
         return null;
      }
      
      public function get §-!Q§() : String
      {
         return this.§+"3§;
      }
      
      public function get nextState() : String
      {
         return this.§@!!§;
      }
      
      public function get §,!D§() : Boolean
      {
         return this.§4m§;
      }
      
      public function get §@J§() : Boolean
      {
         return this.§&h§;
      }
      
      private function initialize() : void
      {
         this.§6!!§ = new Vector.<String>();
         this.§-!1§ = new Vector.<String>();
         this.§,B§();
         this.init();
         this.§7R§();
         this.§0b§();
         this.§4m§ = true;
      }
      
      protected function §,B§() : void
      {
         this.§6!!§.push(§47§.§;]§());
         this.§6!!§.push(§47§.§"!3§());
         this.§6!!§.push(§47§.§`H§());
         this.§6!!§.push(§47§.§]!5§());
         this.§6!!§.push(§47§.§+>§());
         this.§6!!§.push(§47§.§5"$§);
         this.§6!!§.push(§47§.§>i§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §0b§() : void
      {
      }
      
      private function §7R§() : void
      {
         if(this.§!^§ == null || this.§!^§.container == null || this.§!^§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§!^§.container.mClip;
         var _loc2_:Vector.<String> = this.§6!!§.concat(this.§-!1§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §^!t§.§2!5§(_loc1_,_loc2_,_loc3_,§^!t§.§ d§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§8"§ = new §,!4§(param1,this.§<q§.stage);
      }
      
      private function §!!i§(param1:MouseEvent) : void
      {
         this.§05§(false);
         if(this.§+C§ == §7!+§.§1"-§)
         {
            this.§9j§ = true;
         }
         this.§8"§.stop(false);
      }
      
      private function §05§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<q§.addEventListener(MouseEvent.CLICK,this.§!!i§);
         }
         else
         {
            this.§<q§.removeEventListener(MouseEvent.CLICK,this.§!!i§);
         }
         this.§<q§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§1"1§ = null;
         this.§+"3§ = param1;
         if(!this.§4m§)
         {
            this.initialize();
         }
         if(this.§!^§)
         {
            this.§<q§.addChild(this.§!^§);
            this.§!^§.§?!G§();
         }
         for each(_loc2_ in this.§>J§)
         {
            this.§<q§.addChild(_loc2_);
            _loc2_.§true §();
         }
         this.§@!!§ = "";
         this.§&h§ = true;
      }
      
      public function §,!_§(param1:Boolean) : void
      {
         var _loc2_:§7!+§ = null;
         if(this.§<]§ && !param1)
         {
            _loc2_ = new §7!+§();
            _loc2_.§=>§ = §47§.§>i§;
            _loc2_.§#5§ = §47§.§5"$§;
            _loc2_.startLabel = §47§.§]!5§(this.§+"3§);
            _loc2_.type = §7!+§.§+R§;
            _loc2_.stageQuality = this.§^G§;
            this.§?X§(_loc2_);
         }
         else
         {
            this.§?!M§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§1"1§ = null;
         this.§2C§();
         if(this.§!^§)
         {
            this.§!^§.§true §();
            this.§<q§.removeChild(this.§!^§);
         }
         for each(_loc1_ in this.§>J§)
         {
            _loc1_.§true §();
            this.§<q§.removeChild(_loc1_);
         }
         if(!this.§&h§)
         {
            if(this.§7T§)
            {
               this.cleanup();
            }
            return;
         }
         this.§&h§ = false;
         if(this.§7T§)
         {
            this.cleanup();
         }
      }
      
      private function §?X§(param1:§7!+§) : void
      {
         this.§2C§();
         if(this.§8"§ && param1.type != §7!+§.§4"&§)
         {
            this.§+C§ = param1.type;
            this.§4g§(param1);
            this.§8"§.addEventListener(Event.COMPLETE,this.§"?§);
            this.§8"§.start(param1);
            if(this.§+C§ == §7!+§.§+R§ || this.§+C§ == §7!+§.§1"-§)
            {
               if(this.§5"-§)
               {
                  this.§05§(true);
               }
            }
            this.onTransitionStart(this.§+C§);
         }
      }
      
      protected function §4g§(param1:§7!+§) : void
      {
      }
      
      private function §2C§() : void
      {
         if(this.§8"§)
         {
            this.§8"§.removeEventListener(Event.COMPLETE,this.§"?§);
            this.§8"§.stop();
         }
         this.§+C§ = §7!+§.§4"&§;
         this.§05§(false);
      }
      
      private function §"?§(param1:Event) : void
      {
         switch(this.§+C§)
         {
            case §7!+§.§%"5§:
               this.§`!k§();
               break;
            case §7!+§.§+R§:
               this.§?!M§();
               break;
            case §7!+§.§1"-§:
               this.§4I§();
         }
      }
      
      private function §`!k§() : void
      {
         this.onTransitionComplete(this.§+C§);
         if(this.§,!w§)
         {
            this.§?X§(this.§,!w§);
            this.§,!w§ = null;
         }
      }
      
      private function §4I§() : void
      {
         this.onTransitionComplete(this.§+C§);
         this.§2C§();
         this.§@!!§ = this.§%"+§;
         this.§%"+§ = "";
      }
      
      private function §?!M§() : void
      {
         this.onTransitionComplete(this.§+C§);
         this.§2C§();
         this.§?X§(this.§,!p§());
      }
      
      protected function §,!p§() : §7!+§
      {
         return new §7!+§(§47§.§;]§(),§47§.§>i§,§47§.§5"$§,§7!+§.§%"5§,this.§8z§,this.§^G§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §[!S§(param1:§7!+§, param2:Boolean = false) : void
      {
         if(!this.§8"§.§@"0§)
         {
            this.§?X§(param1);
            return;
         }
         this.§,!w§ = param1;
         this.§8"§.stop(param2);
      }
      
      protected final function §8=§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§7!+§ = null;
         if(param2)
         {
            (_loc4_ = new §7!+§()).startLabel = §47§.§+>§(param1);
            _loc4_.§=>§ = §47§.§>i§;
            _loc4_.§#5§ = §47§.§5"$§;
            _loc4_.type = §7!+§.§1"-§;
            _loc4_.stageQuality = this.§^G§;
            this.§[!S§(_loc4_,param3);
            this.§%"+§ = param1;
         }
         else
         {
            this.§2C§();
            this.§%"+§ = "";
            this.§@!!§ = param1;
         }
      }
      
      public function §%a§(param1:Boolean) : void
      {
         this.§7T§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§4m§)
         {
            return;
         }
         if(this.§!^§)
         {
            this.§!^§.clear();
            this.§!^§ = null;
         }
         while(this.§>J§.length > 0)
         {
            (this.§>J§.pop() as §1"1§).clear();
         }
         if(this.§&h§)
         {
            this.deActivate();
         }
         this.§4m§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§4m§)
         {
            §1!7§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §%!2§;
         }
         if(!this.§&h§)
         {
            §1!7§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §?x§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§@!!§ != "")
         {
            return §4"%§;
         }
         return §9G§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§8"§ && this.§+C§ != §7!+§.§4"&§)
         {
            this.§8"§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§!!w§;
      }
      
      public final function §>5§(param1:int, param2:String, param3:§&!"§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§8"§ && this.§8"§.§@"0§ && (this.§+C§ == §7!+§.§+R§ || this.§+C§ == §7!+§.§1"-§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
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
      
      public function §`U§(param1:§1"1§) : void
      {
         this.§>J§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§<q§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§<q§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§<q§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§6U§)
         {
            return this.§6U§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§6U§)
         {
            return this.§6U§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§!^§)
         {
            this.§!^§.viewWidth = param1;
            this.§!^§.viewHeight = param2;
         }
      }
      
      public function §>D§() : int
      {
         return §+!'§;
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
