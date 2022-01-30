package §^C§
{
   import §"!G§.§'"!§;
   import §"!G§.§3!f§;
   import §#A§.§!!'§;
   import §#A§.§&%§;
   import §#A§.§,!;§;
   import §#A§.§,!>§;
   import §%f§.§2h§;
   import §5<§.§58§;
   import §;4§.§]!%§;
   import §>P§.§,3§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §5!L§ implements §'"!§
   {
      
      public static const §`;§:int = 60;
      
      public static const §&v§:String = "dummyState";
      
      public static const §0f§:int = 0;
      
      public static const §`!D§:int = 1;
      
      public static const § !1§:int = 2;
      
      public static const §>3§:int = 3;
      
      public static var §;w§:Object = null;
       
      
      private var §'H§:Boolean = false;
      
      private var §[!D§:Boolean = false;
      
      public var mName:String;
      
      public var §,!I§:Boolean = false;
      
      protected var §switch§:String = "none";
      
      protected var §>!F§:§,!;§;
      
      protected var §2`§:§&%§;
      
      protected var §@!+§:String;
      
      protected var §[N§:Boolean = false;
      
      protected var §>"3§:Boolean = true;
      
      protected var §-!K§:String = "best";
      
      public var §?p§:Boolean = false;
      
      public var §"!M§:Boolean = true;
      
      private var §9B§:Vector.<String>;
      
      protected var §"!b§:Vector.<String>;
      
      public var § !N§:Boolean = false;
      
      public var §^!6§:§58§;
      
      public var §8#§:Array;
      
      private var §=!v§:String = "";
      
      private var §]!t§:String = "";
      
      public var §[<§:Sprite = null;
      
      public var §11§:§""1§ = null;
      
      protected var §>!L§:§3!f§;
      
      public function §5!L§(param1:Boolean, param2:String, param3:§3!f§)
      {
         super();
         this.mName = param2;
         this.§8#§ = new Array();
         this.§[<§ = new Sprite();
         this.§>!L§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §`y§(param1:String) : String
      {
         if(§;w§)
         {
            return §;w§[param1];
         }
         return null;
      }
      
      public function get §6!o§() : String
      {
         return this.§]!t§;
      }
      
      public function get nextState() : String
      {
         return this.§=!v§;
      }
      
      public function get §,!o§() : Boolean
      {
         return this.§'H§;
      }
      
      public function get §44§() : Boolean
      {
         return this.§[!D§;
      }
      
      private function initialize() : void
      {
         this.§9B§ = new Vector.<String>();
         this.§"!b§ = new Vector.<String>();
         this.§;+§();
         this.init();
         this.§^<§();
         this.§2!+§();
         this.§'H§ = true;
      }
      
      protected function §;+§() : void
      {
         this.§9B§.push(§!!'§.§4"$§());
         this.§9B§.push(§!!'§.§5?§());
         this.§9B§.push(§!!'§.§7V§());
         this.§9B§.push(§!!'§.§5w§());
         this.§9B§.push(§!!'§.§2!^§());
         this.§9B§.push(§!!'§.§"!0§);
         this.§9B§.push(§!!'§.§<j§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §2!+§() : void
      {
      }
      
      private function §^<§() : void
      {
         if(this.§^!6§ == null || this.§^!6§.container == null || this.§^!6§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§^!6§.container.mClip;
         var _loc2_:Vector.<String> = this.§9B§.concat(this.§"!b§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §2h§.§4!#§(_loc1_,_loc2_,_loc3_,§2h§.§=!"§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§2`§ = new §,!>§(param1,this.§[<§.stage);
      }
      
      private function §+!q§(param1:MouseEvent) : void
      {
         this.§`",§(false);
         if(this.§switch§ == §,!;§.§?!q§)
         {
            this.§?p§ = true;
         }
         this.§2`§.stop(false);
      }
      
      private function §`",§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[<§.addEventListener(MouseEvent.CLICK,this.§+!q§);
         }
         else
         {
            this.§[<§.removeEventListener(MouseEvent.CLICK,this.§+!q§);
         }
         this.§[<§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§58§ = null;
         this.§]!t§ = param1;
         if(!this.§'H§)
         {
            this.initialize();
         }
         if(this.§^!6§)
         {
            this.§[<§.addChild(this.§^!6§);
            this.§^!6§.§12§();
         }
         for each(_loc2_ in this.§8#§)
         {
            this.§[<§.addChild(_loc2_);
            _loc2_.§[!C§();
         }
         this.§=!v§ = "";
         this.§[!D§ = true;
      }
      
      public function §#!+§(param1:Boolean) : void
      {
         var _loc2_:§,!;§ = null;
         if(this.§[N§ && !param1)
         {
            _loc2_ = new §,!;§();
            _loc2_.§#!c§ = §!!'§.§<j§;
            _loc2_.§3!;§ = §!!'§.§"!0§;
            _loc2_.startLabel = §!!'§.§5w§(this.§]!t§);
            _loc2_.type = §,!;§.§-"1§;
            _loc2_.stageQuality = this.§-!K§;
            this.§!Q§(_loc2_);
         }
         else
         {
            this.§!O§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§58§ = null;
         this.§finally§();
         if(this.§^!6§)
         {
            this.§^!6§.§[!C§();
            this.§[<§.removeChild(this.§^!6§);
         }
         for each(_loc1_ in this.§8#§)
         {
            _loc1_.§[!C§();
            this.§[<§.removeChild(_loc1_);
         }
         if(!this.§[!D§)
         {
            if(this.§ !N§)
            {
               this.cleanup();
            }
            return;
         }
         this.§[!D§ = false;
         if(this.§ !N§)
         {
            this.cleanup();
         }
      }
      
      private function §!Q§(param1:§,!;§) : void
      {
         this.§finally§();
         if(this.§2`§ && param1.type != §,!;§.§!!"§)
         {
            this.§switch§ = param1.type;
            this.§<!b§(param1);
            this.§2`§.addEventListener(Event.COMPLETE,this.§9!O§);
            this.§2`§.start(param1);
            if(this.§switch§ == §,!;§.§-"1§ || this.§switch§ == §,!;§.§?!q§)
            {
               if(this.§"!M§)
               {
                  this.§`",§(true);
               }
            }
            this.onTransitionStart(this.§switch§);
         }
      }
      
      protected function §<!b§(param1:§,!;§) : void
      {
      }
      
      private function §finally§() : void
      {
         if(this.§2`§)
         {
            this.§2`§.removeEventListener(Event.COMPLETE,this.§9!O§);
            this.§2`§.stop();
         }
         this.§switch§ = §,!;§.§!!"§;
         this.§`",§(false);
      }
      
      private function §9!O§(param1:Event) : void
      {
         switch(this.§switch§)
         {
            case §,!;§.§>6§:
               this.§,a§();
               break;
            case §,!;§.§-"1§:
               this.§!O§();
               break;
            case §,!;§.§?!q§:
               this.§0!u§();
         }
      }
      
      private function §,a§() : void
      {
         this.onTransitionComplete(this.§switch§);
         if(this.§>!F§)
         {
            this.§!Q§(this.§>!F§);
            this.§>!F§ = null;
         }
      }
      
      private function §0!u§() : void
      {
         this.onTransitionComplete(this.§switch§);
         this.§finally§();
         this.§=!v§ = this.§@!+§;
         this.§@!+§ = "";
      }
      
      private function §!O§() : void
      {
         this.onTransitionComplete(this.§switch§);
         this.§finally§();
         this.§!Q§(this.§0!w§());
      }
      
      protected function §0!w§() : §,!;§
      {
         return new §,!;§(§!!'§.§4"$§(),§!!'§.§<j§,§!!'§.§"!0§,§,!;§.§>6§,this.§>"3§,this.§-!K§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §@!A§(param1:§,!;§, param2:Boolean = false) : void
      {
         if(!this.§2`§.§;!t§)
         {
            this.§!Q§(param1);
            return;
         }
         this.§>!F§ = param1;
         this.§2`§.stop(param2);
      }
      
      protected function §'"6§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§,!;§ = null;
         if(param2)
         {
            (_loc4_ = new §,!;§()).startLabel = §!!'§.§2!^§(param1);
            _loc4_.§#!c§ = §!!'§.§<j§;
            _loc4_.§3!;§ = §!!'§.§"!0§;
            _loc4_.type = §,!;§.§?!q§;
            _loc4_.stageQuality = this.§-!K§;
            this.§@!A§(_loc4_,param3);
            this.§@!+§ = param1;
         }
         else
         {
            this.§finally§();
            this.§@!+§ = "";
            this.§=!v§ = param1;
         }
      }
      
      public function §-"#§(param1:Boolean) : void
      {
         this.§ !N§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§'H§)
         {
            return;
         }
         if(this.§^!6§)
         {
            this.§^!6§.clear();
            this.§^!6§ = null;
         }
         while(this.§8#§.length > 0)
         {
            (this.§8#§.pop() as §58§).clear();
         }
         if(this.§[!D§)
         {
            this.deActivate();
         }
         this.§'H§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§'H§)
         {
            §]!%§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §0f§;
         }
         if(!this.§[!D§)
         {
            §]!%§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §`!D§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§=!v§ != "")
         {
            return §>3§;
         }
         return § !1§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§2`§ && this.§switch§ != §,!;§.§!!"§)
         {
            this.§2`§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§,!I§;
      }
      
      public final function §`t§(param1:int, param2:String, param3:§,3§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§2`§ && this.§2`§.§;!t§ && (this.§switch§ == §,!;§.§-"1§ || this.§switch§ == §,!;§.§?!q§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
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
      
      public function §^!>§(param1:§58§) : void
      {
         this.§8#§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§[<§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§[<§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§[<§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§11§)
         {
            return this.§11§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§11§)
         {
            return this.§11§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^!6§)
         {
            this.§^!6§.viewWidth = param1;
            this.§^!6§.viewHeight = param2;
         }
      }
      
      public function §`!G§() : int
      {
         return §`;§;
      }
      
      public function updateLocalization() : void
      {
      }
      
      public function §7!j§() : void
      {
      }
   }
}
