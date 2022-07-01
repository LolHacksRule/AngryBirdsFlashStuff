package §37§
{
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §,M§.§0V§;
   import §1`§.§9%§;
   import §24§.;
   import §4!i§.§+![§;
   import §@3§.§0!'§;
   import §@3§.§7g§;
   import §@3§.§9L§;
   import §@3§.§]K§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §9!c§ implements §0V§
   {
      
      public static const §]$§:int = 60;
      
      public static const §8!w§:String = "dummyState";
      
      public static const §4!z§:int = 0;
      
      public static const §%!j§:int = 1;
      
      public static const §8!&§:int = 2;
      
      public static const §6+§:int = 3;
      
      public static var §^!y§:Object = null;
       
      
      private var §3<§:Boolean = false;
      
      private var §8t§:Boolean = false;
      
      public var mName:String;
      
      public var §8!$§:Boolean = false;
      
      protected var §,!f§:String = "none";
      
      protected var §2K§:§]K§;
      
      protected var §@"+§:§7g§;
      
      protected var §5'§:String;
      
      protected var §+W§:Boolean = false;
      
      protected var §@^§:Boolean = true;
      
      protected var §]!`§:String = "best";
      
      public var §7;§:Boolean = false;
      
      public var §0T§:Boolean = true;
      
      private var §8!-§:Vector.<String>;
      
      protected var §3!#§:Vector.<String>;
      
      public var §&!_§:Boolean = false;
      
      public var §^!T§:§9%§;
      
      public var §15§:Array;
      
      private var §=! §:String = "";
      
      private var §8!!§:String = "";
      
      public var §&%§:Sprite = null;
      
      public var §3"7§:§>n§ = null;
      
      protected var §8&§:§+f§;
      
      public function §9!c§(param1:Boolean, param2:String, param3:§+f§)
      {
         super();
         this.mName = param2;
         this.§15§ = new Array();
         this.§&%§ = new Sprite();
         this.§8&§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §!6§(param1:String) : String
      {
         if(§^!y§)
         {
            return §^!y§[param1];
         }
         return null;
      }
      
      public function get §[!8§() : String
      {
         return this.§8!!§;
      }
      
      public function get nextState() : String
      {
         return this.§=! §;
      }
      
      public function get §#J§() : Boolean
      {
         return this.§3<§;
      }
      
      public function get §5"5§() : Boolean
      {
         return this.§8t§;
      }
      
      private function initialize() : void
      {
         this.§8!-§ = new Vector.<String>();
         this.§3!#§ = new Vector.<String>();
         this.§^!r§();
         this.init();
         this.§?!0§();
         this.§@>§();
         this.§3<§ = true;
      }
      
      protected function §^!r§() : void
      {
         this.§8!-§.push(§0!'§.§=N§());
         this.§8!-§.push(§0!'§.§^I§());
         this.§8!-§.push(§0!'§.§7!n§());
         this.§8!-§.push(§0!'§.§-!h§());
         this.§8!-§.push(§0!'§.§4!>§());
         this.§8!-§.push(§0!'§.§1"0§);
         this.§8!-§.push(§0!'§.§8J§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §@>§() : void
      {
      }
      
      private function §?!0§() : void
      {
         if(this.§^!T§ == null || this.§^!T§.container == null || this.§^!T§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§^!T§.container.mClip;
         var _loc2_:Vector.<String> = this.§8!-§.concat(this.§3!#§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §+![§.§ !N§(_loc1_,_loc2_,_loc3_,§+![§.§,"4§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§@"+§ = new §9L§(param1,this.§&%§.stage);
      }
      
      private function §,!?§(param1:MouseEvent) : void
      {
         this.§07§(false);
         if(this.§,!f§ == §]K§.§1o§)
         {
            this.§7;§ = true;
         }
         this.§@"+§.stop(false);
      }
      
      private function §07§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&%§.addEventListener(MouseEvent.CLICK,this.§,!?§);
         }
         else
         {
            this.§&%§.removeEventListener(MouseEvent.CLICK,this.§,!?§);
         }
         this.§&%§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§9%§ = null;
         this.§8!!§ = param1;
         if(!this.§3<§)
         {
            this.initialize();
         }
         if(this.§^!T§)
         {
            this.§&%§.addChild(this.§^!T§);
            this.§^!T§.§`!J§();
         }
         for each(_loc2_ in this.§15§)
         {
            this.§&%§.addChild(_loc2_);
            _loc2_.§ !o§();
         }
         this.§=! § = "";
         this.§8t§ = true;
      }
      
      public function §,!^§(param1:Boolean) : void
      {
         var _loc2_:§]K§ = null;
         if(this.§+W§ && !param1)
         {
            _loc2_ = new §]K§();
            _loc2_.§7!r§ = §0!'§.§8J§;
            _loc2_.§1Q§ = §0!'§.§1"0§;
            _loc2_.startLabel = §0!'§.§-!h§(this.§8!!§);
            _loc2_.type = §]K§.§%x§;
            _loc2_.stageQuality = this.§]!`§;
            this.§use §(_loc2_);
         }
         else
         {
            this.§2W§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§9%§ = null;
         this.§ !D§();
         if(this.§^!T§)
         {
            this.§^!T§.§ !o§();
            this.§&%§.removeChild(this.§^!T§);
         }
         for each(_loc1_ in this.§15§)
         {
            _loc1_.§ !o§();
            this.§&%§.removeChild(_loc1_);
         }
         if(!this.§8t§)
         {
            if(this.§&!_§)
            {
               this.cleanup();
            }
            return;
         }
         this.§8t§ = false;
         if(this.§&!_§)
         {
            this.cleanup();
         }
      }
      
      private function §use §(param1:§]K§) : void
      {
         this.§ !D§();
         if(this.§@"+§ && param1.type != §]K§.§,"3§)
         {
            this.§,!f§ = param1.type;
            this.§>C§(param1);
            this.§@"+§.addEventListener(Event.COMPLETE,this.§;'§);
            this.§@"+§.start(param1);
            if(this.§,!f§ == §]K§.§%x§ || this.§,!f§ == §]K§.§1o§)
            {
               if(this.§0T§)
               {
                  this.§07§(true);
               }
            }
            this.onTransitionStart(this.§,!f§);
         }
      }
      
      protected function §>C§(param1:§]K§) : void
      {
      }
      
      private function § !D§() : void
      {
         if(this.§@"+§)
         {
            this.§@"+§.removeEventListener(Event.COMPLETE,this.§;'§);
            this.§@"+§.stop();
         }
         this.§,!f§ = §]K§.§,"3§;
         this.§07§(false);
      }
      
      private function §;'§(param1:Event) : void
      {
         switch(this.§,!f§)
         {
            case §]K§.§=@§:
               this.§]!g§();
               break;
            case §]K§.§%x§:
               this.§2W§();
               break;
            case §]K§.§1o§:
               this.§4!p§();
         }
      }
      
      private function §]!g§() : void
      {
         this.onTransitionComplete(this.§,!f§);
         if(this.§2K§)
         {
            this.§use §(this.§2K§);
            this.§2K§ = null;
         }
      }
      
      private function §4!p§() : void
      {
         this.onTransitionComplete(this.§,!f§);
         this.§ !D§();
         this.§=! § = this.§5'§;
         this.§5'§ = "";
      }
      
      private function §2W§() : void
      {
         this.onTransitionComplete(this.§,!f§);
         this.§ !D§();
         this.§use §(this.§+!Z§());
      }
      
      protected function §+!Z§() : §]K§
      {
         return new §]K§(§0!'§.§=N§(),§0!'§.§8J§,§0!'§.§1"0§,§]K§.§=@§,this.§@^§,this.§]!`§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §%!o§(param1:§]K§, param2:Boolean = false) : void
      {
         if(!this.§@"+§.§&J§)
         {
            this.§use §(param1);
            return;
         }
         this.§2K§ = param1;
         this.§@"+§.stop(param2);
      }
      
      protected function §7"6§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§]K§ = null;
         if(param2)
         {
            (_loc4_ = new §]K§()).startLabel = §0!'§.§4!>§(param1);
            _loc4_.§7!r§ = §0!'§.§8J§;
            _loc4_.§1Q§ = §0!'§.§1"0§;
            _loc4_.type = §]K§.§1o§;
            _loc4_.stageQuality = this.§]!`§;
            this.§%!o§(_loc4_,param3);
            this.§5'§ = param1;
         }
         else
         {
            this.§ !D§();
            this.§5'§ = "";
            this.§=! § = param1;
         }
      }
      
      public function §`Y§(param1:Boolean) : void
      {
         this.§&!_§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§3<§)
         {
            return;
         }
         if(this.§^!T§)
         {
            this.§^!T§.clear();
            this.§^!T§ = null;
         }
         while(this.§15§.length > 0)
         {
            (this.§15§.pop() as §9%§).clear();
         }
         if(this.§8t§)
         {
            this.deActivate();
         }
         this.§3<§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§3<§)
         {
            §#7§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §4!z§;
         }
         if(!this.§8t§)
         {
            §#7§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §%!j§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§=! § != "")
         {
            return §6+§;
         }
         return §8!&§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§@"+§ && this.§,!f§ != §]K§.§,"3§)
         {
            this.§@"+§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§8!$§;
      }
      
      public final function §<8§(param1:int, param2:String, param3:§+§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§@"+§ && this.§@"+§.§&J§ && (this.§,!f§ == §]K§.§%x§ || this.§,!f§ == §]K§.§1o§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
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
      
      public function §0!y§(param1:§9%§) : void
      {
         this.§15§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§&%§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§&%§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§&%§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§3"7§)
         {
            return this.§3"7§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§3"7§)
         {
            return this.§3"7§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^!T§)
         {
            this.§^!T§.viewWidth = param1;
            this.§^!T§.viewHeight = param2;
         }
      }
      
      public function §9R§() : int
      {
         return §]$§;
      }
      
      public function updateLocalization() : void
      {
      }
      
      public function §`! §() : void
      {
      }
   }
}
