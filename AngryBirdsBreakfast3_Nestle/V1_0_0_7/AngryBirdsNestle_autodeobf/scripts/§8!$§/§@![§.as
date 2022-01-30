package §8!$§
{
   import § !Q§.§"D§;
   import §!!&§.§&"&§;
   import §'!u§.§&S§;
   import §'!u§.§catch§;
   import §,a§.§!^§;
   import §,a§.§3!8§;
   import §,a§.§[!d§;
   import §,a§.§`!P§;
   import §<!0§.§'!%§;
   import §^6§.§;!j§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §@![§ implements §catch§
   {
      
      public static const §6x§:int = 60;
      
      public static const § !_§:String = "dummyState";
      
      public static const §0!^§:int = 0;
      
      public static const §2-§:int = 1;
      
      public static const §@u§:int = 2;
      
      public static const §1!?§:int = 3;
      
      public static var §90§:Object = null;
       
      
      private var §4!=§:Boolean = false;
      
      private var §"!h§:Boolean = false;
      
      public var mName:String;
      
      public var §2! §:Boolean = false;
      
      protected var §]s§:String = "none";
      
      protected var §,!h§:§[!d§;
      
      protected var §]z§:§!^§;
      
      protected var §%z§:String;
      
      protected var §<!C§:Boolean = false;
      
      protected var § y§:Boolean = true;
      
      protected var §!K§:String = "best";
      
      public var §;!h§:Boolean = false;
      
      public var §[Z§:Boolean = true;
      
      private var §[!l§:Vector.<String>;
      
      protected var §#M§:Vector.<String>;
      
      public var §["0§:Boolean = false;
      
      public var §5+§:§;!j§;
      
      public var §,!o§:Array;
      
      private var §]!f§:String = "";
      
      private var §<"1§:String = "";
      
      public var §%!D§:Sprite = null;
      
      public var §=" §:§]M§ = null;
      
      protected var §-F§:§&S§;
      
      public function §@![§(param1:Boolean, param2:String, param3:§&S§)
      {
         super();
         this.mName = param2;
         this.§,!o§ = new Array();
         this.§%!D§ = new Sprite();
         this.§-F§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §+!Y§(param1:String) : String
      {
         if(§90§)
         {
            return §90§[param1];
         }
         return null;
      }
      
      public function get §3u§() : String
      {
         return this.§<"1§;
      }
      
      public function get nextState() : String
      {
         return this.§]!f§;
      }
      
      public function get §"!o§() : Boolean
      {
         return this.§4!=§;
      }
      
      public function get §6!G§() : Boolean
      {
         return this.§"!h§;
      }
      
      private function initialize() : void
      {
         this.§[!l§ = new Vector.<String>();
         this.§#M§ = new Vector.<String>();
         this.§!!4§();
         this.init();
         this.§%n§();
         this.§2"2§();
         this.§4!=§ = true;
      }
      
      protected function §!!4§() : void
      {
         this.§[!l§.push(§3!8§.§`!x§());
         this.§[!l§.push(§3!8§.§-r§());
         this.§[!l§.push(§3!8§.§<!§());
         this.§[!l§.push(§3!8§.§^§());
         this.§[!l§.push(§3!8§.§++§());
         this.§[!l§.push(§3!8§.§2"!§);
         this.§[!l§.push(§3!8§.§6;§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §2"2§() : void
      {
      }
      
      private function §%n§() : void
      {
         if(this.§5+§ == null || this.§5+§.container == null || this.§5+§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§5+§.container.mClip;
         var _loc2_:Vector.<String> = this.§[!l§.concat(this.§#M§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §&"&§.§<",§(_loc1_,_loc2_,_loc3_,§&"&§.§6"§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§]z§ = new §`!P§(param1,this.§%!D§.stage);
      }
      
      private function §5"§(param1:MouseEvent) : void
      {
         this.§-"3§(false);
         if(this.§]s§ == §[!d§.§&b§)
         {
            this.§;!h§ = true;
         }
         this.§]z§.stop(false);
      }
      
      private function §-"3§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%!D§.addEventListener(MouseEvent.CLICK,this.§5"§);
         }
         else
         {
            this.§%!D§.removeEventListener(MouseEvent.CLICK,this.§5"§);
         }
         this.§%!D§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§;!j§ = null;
         this.§<"1§ = param1;
         if(!this.§4!=§)
         {
            this.initialize();
         }
         if(this.§5+§)
         {
            this.§%!D§.addChild(this.§5+§);
            this.§5+§.§`J§();
         }
         for each(_loc2_ in this.§,!o§)
         {
            this.§%!D§.addChild(_loc2_);
            _loc2_.§7!L§();
         }
         this.§]!f§ = "";
         this.§"!h§ = true;
      }
      
      public function §=!>§(param1:Boolean) : void
      {
         var _loc2_:§[!d§ = null;
         if(this.§<!C§ && !param1)
         {
            _loc2_ = new §[!d§();
            _loc2_.§1q§ = §3!8§.§6;§;
            _loc2_.§?3§ = §3!8§.§2"!§;
            _loc2_.startLabel = §3!8§.§^§(this.§<"1§);
            _loc2_.type = §[!d§.§-!g§;
            _loc2_.stageQuality = this.§!K§;
            this.§=!2§(_loc2_);
         }
         else
         {
            this.§8y§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§;!j§ = null;
         this.§1_§();
         if(this.§5+§)
         {
            this.§5+§.§7!L§();
            this.§%!D§.removeChild(this.§5+§);
         }
         for each(_loc1_ in this.§,!o§)
         {
            _loc1_.§7!L§();
            this.§%!D§.removeChild(_loc1_);
         }
         if(!this.§"!h§)
         {
            if(this.§["0§)
            {
               this.cleanup();
            }
            return;
         }
         this.§"!h§ = false;
         if(this.§["0§)
         {
            this.cleanup();
         }
      }
      
      private function §=!2§(param1:§[!d§) : void
      {
         this.§1_§();
         if(this.§]z§ && param1.type != §[!d§.§#^§)
         {
            this.§]s§ = param1.type;
            this.§1J§(param1);
            this.§]z§.addEventListener(Event.COMPLETE,this.§?t§);
            this.§]z§.start(param1);
            if(this.§]s§ == §[!d§.§-!g§ || this.§]s§ == §[!d§.§&b§)
            {
               if(this.§[Z§)
               {
                  this.§-"3§(true);
               }
            }
            this.onTransitionStart(this.§]s§);
         }
      }
      
      protected function §1J§(param1:§[!d§) : void
      {
      }
      
      private function §1_§() : void
      {
         if(this.§]z§)
         {
            this.§]z§.removeEventListener(Event.COMPLETE,this.§?t§);
            this.§]z§.stop();
         }
         this.§]s§ = §[!d§.§#^§;
         this.§-"3§(false);
      }
      
      private function §?t§(param1:Event) : void
      {
         switch(this.§]s§)
         {
            case §[!d§.§5M§:
               this.§8-§();
               break;
            case §[!d§.§-!g§:
               this.§8y§();
               break;
            case §[!d§.§&b§:
               this.§ N§();
         }
      }
      
      private function §8-§() : void
      {
         this.onTransitionComplete(this.§]s§);
         if(this.§,!h§)
         {
            this.§=!2§(this.§,!h§);
            this.§,!h§ = null;
         }
      }
      
      private function § N§() : void
      {
         this.onTransitionComplete(this.§]s§);
         this.§1_§();
         this.§]!f§ = this.§%z§;
         this.§%z§ = "";
      }
      
      private function §8y§() : void
      {
         this.onTransitionComplete(this.§]s§);
         this.§1_§();
         this.§=!2§(this.§#z§());
      }
      
      protected function §#z§() : §[!d§
      {
         return new §[!d§(§3!8§.§`!x§(),§3!8§.§6;§,§3!8§.§2"!§,§[!d§.§5M§,this.§ y§,this.§!K§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §1"3§(param1:§[!d§, param2:Boolean = false) : void
      {
         if(!this.§]z§.§51§)
         {
            this.§=!2§(param1);
            return;
         }
         this.§,!h§ = param1;
         this.§]z§.stop(param2);
      }
      
      protected final function §8!`§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§[!d§ = null;
         if(param2)
         {
            (_loc4_ = new §[!d§()).startLabel = §3!8§.§++§(param1);
            _loc4_.§1q§ = §3!8§.§6;§;
            _loc4_.§?3§ = §3!8§.§2"!§;
            _loc4_.type = §[!d§.§&b§;
            _loc4_.stageQuality = this.§!K§;
            this.§1"3§(_loc4_,param3);
            this.§%z§ = param1;
         }
         else
         {
            this.§1_§();
            this.§%z§ = "";
            this.§]!f§ = param1;
         }
      }
      
      public function §`q§(param1:Boolean) : void
      {
         this.§["0§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§4!=§)
         {
            return;
         }
         if(this.§5+§)
         {
            this.§5+§.clear();
            this.§5+§ = null;
         }
         while(this.§,!o§.length > 0)
         {
            (this.§,!o§.pop() as §;!j§).clear();
         }
         if(this.§"!h§)
         {
            this.deActivate();
         }
         this.§4!=§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§4!=§)
         {
            §"D§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §0!^§;
         }
         if(!this.§"!h§)
         {
            §"D§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §2-§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§]!f§ != "")
         {
            return §1!?§;
         }
         return §@u§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§]z§ && this.§]s§ != §[!d§.§#^§)
         {
            this.§]z§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2! §;
      }
      
      public final function §-!a§(param1:int, param2:String, param3:§'!%§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§]z§ && this.§]z§.§51§ && (this.§]s§ == §[!d§.§-!g§ || this.§]s§ == §[!d§.§&b§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
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
      
      public function §6!H§(param1:§;!j§) : void
      {
         this.§,!o§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§%!D§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§%!D§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§%!D§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§=" §)
         {
            return this.§=" §.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§=" §)
         {
            return this.§=" §.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§5+§)
         {
            this.§5+§.viewWidth = param1;
            this.§5+§.viewHeight = param2;
         }
      }
      
      public function §,e§() : int
      {
         return §6x§;
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
