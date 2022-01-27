package §]n§
{
   import §"!>§.§,"§;
   import §"!>§.§<!o§;
   import §""<§.§#N§;
   import §'#§.§;!!§;
   import §+w§.§,!@§;
   import §4!t§.§95§;
   import §@"D§.§#d§;
   import §@"D§.§,!l§;
   import §@"D§.§5"E§;
   import §@"D§.§]"8§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §0!g§ implements §,"§
   {
      
      public static const §&J§:int = 60;
      
      public static const §5"#§:String = "dummyState";
      
      public static const §>!,§:int = 0;
      
      public static const §?!o§:int = 1;
      
      public static const §-"+§:int = 2;
      
      public static const §'7§:int = 3;
      
      public static var §+!t§:Object = null;
       
      
      private var §9F§:Boolean = false;
      
      private var §6!g§:Boolean = false;
      
      public var mName:String;
      
      public var §3!v§:Boolean = false;
      
      protected var §0"D§:String = "none";
      
      protected var §@e§:§#d§;
      
      protected var §,"4§:§]"8§;
      
      protected var §'Z§:String;
      
      protected var §%Z§:Boolean = false;
      
      protected var §@"1§:Boolean = true;
      
      protected var §'!E§:String = "best";
      
      public var §!"<§:Boolean = false;
      
      public var §6!O§:Boolean = true;
      
      private var §7"7§:Vector.<String>;
      
      protected var §""B§:Vector.<String>;
      
      public var §4x§:Boolean = false;
      
      public var §4§:§,!@§;
      
      public var §2!n§:Array;
      
      private var §>?§:String = "";
      
      private var §^!2§:String = "";
      
      public var §>#§:Sprite = null;
      
      public var §%!@§:§5!N§ = null;
      
      protected var §4!T§:§<!o§;
      
      public function §0!g§(param1:Boolean, param2:String, param3:§<!o§)
      {
         super();
         this.mName = param2;
         this.§2!n§ = new Array();
         this.§>#§ = new Sprite();
         this.§4!T§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §6!9§(param1:String) : String
      {
         if(§+!t§)
         {
            return §+!t§[param1];
         }
         return null;
      }
      
      public function get §;!9§() : String
      {
         return this.§^!2§;
      }
      
      public function get nextState() : String
      {
         return this.§>?§;
      }
      
      public function get include() : Boolean
      {
         return this.§9F§;
      }
      
      public function get §18§() : Boolean
      {
         return this.§6!g§;
      }
      
      private function initialize() : void
      {
         this.§7"7§ = new Vector.<String>();
         this.§""B§ = new Vector.<String>();
         this.§"!O§();
         this.init();
         this.§>!Y§();
         this.§>!p§();
         this.§9F§ = true;
      }
      
      protected function §"!O§() : void
      {
         this.§7"7§.push(§5"E§.§8k§());
         this.§7"7§.push(§5"E§.§4c§());
         this.§7"7§.push(§5"E§.§6"8§());
         this.§7"7§.push(§5"E§.§0p§());
         this.§7"7§.push(§5"E§.§4H§());
         this.§7"7§.push(§5"E§.§+!v§);
         this.§7"7§.push(§5"E§.§ L§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §>!p§() : void
      {
      }
      
      private function §>!Y§() : void
      {
         if(this.§4§ == null || this.§4§.container == null || this.§4§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§4§.container.mClip;
         var _loc2_:Vector.<String> = this.§7"7§.concat(this.§""B§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §;!!§.§<"§(_loc1_,_loc2_,_loc3_,§;!!§.§^!a§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§,"4§ = new §,!l§(param1,this.§>#§.stage);
      }
      
      private function §9!'§(param1:MouseEvent) : void
      {
         this.§2X§(false);
         if(this.§0"D§ == §#d§.§5"D§)
         {
            this.§!"<§ = true;
         }
         this.§,"4§.stop(false);
      }
      
      private function §2X§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§>#§.addEventListener(MouseEvent.CLICK,this.§9!'§);
         }
         else
         {
            this.§>#§.removeEventListener(MouseEvent.CLICK,this.§9!'§);
         }
         this.§>#§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§,!@§ = null;
         this.§^!2§ = param1;
         if(!this.§9F§)
         {
            this.initialize();
         }
         if(this.§4§)
         {
            this.§>#§.addChild(this.§4§);
            this.§4§.§<!N§();
         }
         for each(_loc2_ in this.§2!n§)
         {
            this.§>#§.addChild(_loc2_);
            _loc2_.§!"-§();
         }
         this.§>?§ = "";
         this.§6!g§ = true;
      }
      
      public function §]0§(param1:Boolean) : void
      {
         var _loc2_:§#d§ = null;
         if(this.§%Z§ && !param1)
         {
            _loc2_ = new §#d§();
            _loc2_.§@">§ = §5"E§.§ L§;
            _loc2_.§7!f§ = §5"E§.§+!v§;
            _loc2_.startLabel = §5"E§.§0p§(this.§^!2§);
            _loc2_.type = §#d§.§>@§;
            _loc2_.stageQuality = this.§'!E§;
            this.§2!§(_loc2_);
         }
         else
         {
            this.§%[§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§,!@§ = null;
         this.§5!^§();
         if(this.§4§)
         {
            this.§4§.§!"-§();
            this.§>#§.removeChild(this.§4§);
         }
         for each(_loc1_ in this.§2!n§)
         {
            _loc1_.§!"-§();
            this.§>#§.removeChild(_loc1_);
         }
         if(!this.§6!g§)
         {
            if(this.§4x§)
            {
               this.cleanup();
            }
            return;
         }
         this.§6!g§ = false;
         if(this.§4x§)
         {
            this.cleanup();
         }
      }
      
      private function §2!§(param1:§#d§) : void
      {
         this.§5!^§();
         if(this.§,"4§ && param1.type != §#d§.§'C§)
         {
            this.§0"D§ = param1.type;
            this.§,"4§.addEventListener(Event.COMPLETE,this.§`!"§);
            this.§,"4§.start(param1,true);
            if(this.§0"D§ == §#d§.§>@§ || this.§0"D§ == §#d§.§5"D§)
            {
               if(this.§6!O§)
               {
                  this.§2X§(true);
               }
            }
            this.onTransitionStart(this.§0"D§);
         }
      }
      
      private function §5!^§() : void
      {
         if(this.§,"4§)
         {
            this.§,"4§.removeEventListener(Event.COMPLETE,this.§`!"§);
            this.§,"4§.stop();
         }
         this.§0"D§ = §#d§.§'C§;
         this.§2X§(false);
      }
      
      private function §`!"§(param1:Event) : void
      {
         switch(this.§0"D§)
         {
            case §#d§.§#!y§:
               this.§6!D§();
               break;
            case §#d§.§>@§:
               this.§%[§();
               break;
            case §#d§.§5"D§:
               this.§7! §();
         }
      }
      
      private function §6!D§() : void
      {
         this.onTransitionComplete(this.§0"D§);
         if(this.§@e§)
         {
            this.§2!§(this.§@e§);
            this.§@e§ = null;
         }
      }
      
      private function §7! §() : void
      {
         this.onTransitionComplete(this.§0"D§);
         this.§5!^§();
         this.§>?§ = this.§'Z§;
         this.§'Z§ = "";
      }
      
      private function §%[§() : void
      {
         this.onTransitionComplete(this.§0"D§);
         this.§5!^§();
         var _loc1_:§#d§ = new §#d§(§5"E§.§8k§(),§5"E§.§ L§,§5"E§.§+!v§,§#d§.§#!y§,this.§@"1§,this.§'!E§);
         this.§2!§(_loc1_);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §%m§(param1:§#d§, param2:Boolean = false) : void
      {
         if(!this.§,"4§.§?"E§)
         {
            this.§2!§(param1);
            return;
         }
         this.§@e§ = param1;
         this.§,"4§.stop(param2);
      }
      
      protected final function §2g§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§#d§ = null;
         if(param2)
         {
            (_loc4_ = new §#d§()).startLabel = §5"E§.§4H§(param1);
            _loc4_.§@">§ = §5"E§.§ L§;
            _loc4_.§7!f§ = §5"E§.§+!v§;
            _loc4_.type = §#d§.§5"D§;
            _loc4_.stageQuality = this.§'!E§;
            this.§%m§(_loc4_,param3);
            this.§'Z§ = param1;
         }
         else
         {
            this.§5!^§();
            this.§'Z§ = "";
            this.§>?§ = param1;
         }
      }
      
      public function §'4§(param1:Boolean) : void
      {
         this.§4x§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§9F§)
         {
            return;
         }
         if(this.§4§)
         {
            this.§4§.clear();
            this.§4§ = null;
         }
         while(this.§2!n§.length > 0)
         {
            (this.§2!n§.pop() as §,!@§).clear();
         }
         if(this.§6!g§)
         {
            this.deActivate();
         }
         this.§9F§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§9F§)
         {
            §#N§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §>!,§;
         }
         if(!this.§6!g§)
         {
            §#N§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §?!o§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§>?§ != "")
         {
            return §'7§;
         }
         return §-"+§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§,"4§ && this.§0"D§ != §#d§.§'C§)
         {
            this.§,"4§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§3!v§;
      }
      
      public final function §6!G§(param1:int, param2:String, param3:§95§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§,"4§ && this.§,"4§.§?"E§ && (this.§0"D§ == §#d§.§>@§ || this.§0"D§ == §#d§.§5"D§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
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
      
      public function §[!z§(param1:§,!@§) : void
      {
         this.§2!n§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§>#§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§>#§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§>#§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§%!@§)
         {
            return this.§%!@§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§%!@§)
         {
            return this.§%!@§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§4§)
         {
            this.§4§.viewWidth = param1;
            this.§4§.viewHeight = param2;
         }
      }
      
      public function §5!p§() : int
      {
         return §&J§;
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
