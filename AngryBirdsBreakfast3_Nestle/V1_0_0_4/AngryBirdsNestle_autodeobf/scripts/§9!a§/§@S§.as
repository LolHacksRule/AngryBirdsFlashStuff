package §9!a§
{
   import §"I§.§=!U§;
   import §02§.§`%§;
   import §;!b§.§#!x§;
   import §;!b§.§%>§;
   import §<!9§.§'"$§;
   import §<!9§.§0R§;
   import §<!9§.§@!`§;
   import §<!9§.§^!o§;
   import §[!b§.§'!R§;
   import §`6§.§8!]§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §@S§ implements §#!x§
   {
      
      public static const §&q§:int = 60;
      
      public static const §="$§:String = "dummyState";
      
      public static const §4!I§:int = 0;
      
      public static const §#]§:int = 1;
      
      public static const §,!2§:int = 2;
      
      public static const §-!R§:int = 3;
      
      public static var §4!f§:Object = null;
       
      
      private var §;!§:Boolean = false;
      
      private var §'J§:Boolean = false;
      
      public var mName:String;
      
      public var §2a§:Boolean = false;
      
      protected var §%!0§:String = "none";
      
      protected var §3Z§:§^!o§;
      
      protected var §42§:§0R§;
      
      protected var §+b§:String;
      
      protected var §!!`§:Boolean = false;
      
      protected var §=!O§:Boolean = true;
      
      protected var §<e§:String = "best";
      
      public var §&!l§:Boolean = false;
      
      public var §7!]§:Boolean = true;
      
      private var §2!s§:Vector.<String>;
      
      protected var §]8§:Vector.<String>;
      
      public var §;!`§:Boolean = false;
      
      public var §#2§:§`%§;
      
      public var §?!j§:Array;
      
      private var §;x§:String = "";
      
      private var §,"+§:String = "";
      
      public var §]!c§:Sprite = null;
      
      public var §?!%§:§]D§ = null;
      
      protected var §"q§:§%>§;
      
      public function §@S§(param1:Boolean, param2:String, param3:§%>§)
      {
         super();
         this.mName = param2;
         this.§?!j§ = new Array();
         this.§]!c§ = new Sprite();
         this.§"q§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §`b§(param1:String) : String
      {
         if(§4!f§)
         {
            return §4!f§[param1];
         }
         return null;
      }
      
      public function get §!,§() : String
      {
         return this.§,"+§;
      }
      
      public function get nextState() : String
      {
         return this.§;x§;
      }
      
      public function get §5"1§() : Boolean
      {
         return this.§;!§;
      }
      
      public function get §;!B§() : Boolean
      {
         return this.§'J§;
      }
      
      private function initialize() : void
      {
         this.§2!s§ = new Vector.<String>();
         this.§]8§ = new Vector.<String>();
         this.§4!r§();
         this.init();
         this.§?;§();
         this.§8!s§();
         this.§;!§ = true;
      }
      
      protected function §4!r§() : void
      {
         this.§2!s§.push(§'"$§.§%!C§());
         this.§2!s§.push(§'"$§.§9!y§());
         this.§2!s§.push(§'"$§.§?!i§());
         this.§2!s§.push(§'"$§.§@K§());
         this.§2!s§.push(§'"$§.§@B§());
         this.§2!s§.push(§'"$§.§9E§);
         this.§2!s§.push(§'"$§.§0!F§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §8!s§() : void
      {
      }
      
      private function §?;§() : void
      {
         if(this.§#2§ == null || this.§#2§.container == null || this.§#2§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§#2§.container.mClip;
         var _loc2_:Vector.<String> = this.§2!s§.concat(this.§]8§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §8!]§.§7!2§(_loc1_,_loc2_,_loc3_,§8!]§.§=$§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§42§ = new §@!`§(param1,this.§]!c§.stage);
      }
      
      private function §%!-§(param1:MouseEvent) : void
      {
         this.§6!?§(false);
         if(this.§%!0§ == §^!o§.§"g§)
         {
            this.§&!l§ = true;
         }
         this.§42§.stop(false);
      }
      
      private function §6!?§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!c§.addEventListener(MouseEvent.CLICK,this.§%!-§);
         }
         else
         {
            this.§]!c§.removeEventListener(MouseEvent.CLICK,this.§%!-§);
         }
         this.§]!c§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§`%§ = null;
         this.§,"+§ = param1;
         if(!this.§;!§)
         {
            this.initialize();
         }
         if(this.§#2§)
         {
            this.§]!c§.addChild(this.§#2§);
            this.§#2§.§!V§();
         }
         for each(_loc2_ in this.§?!j§)
         {
            this.§]!c§.addChild(_loc2_);
            _loc2_.§+q§();
         }
         this.§;x§ = "";
         this.§'J§ = true;
      }
      
      public function §`W§(param1:Boolean) : void
      {
         var _loc2_:§^!o§ = null;
         if(this.§!!`§ && !param1)
         {
            _loc2_ = new §^!o§();
            _loc2_.§[;§ = §'"$§.§0!F§;
            _loc2_.§'e§ = §'"$§.§9E§;
            _loc2_.startLabel = §'"$§.§@K§(this.§,"+§);
            _loc2_.type = §^!o§.§+"4§;
            _loc2_.stageQuality = this.§<e§;
            this.§-M§(_loc2_);
         }
         else
         {
            this.§1&§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§`%§ = null;
         this.§^t§();
         if(this.§#2§)
         {
            this.§#2§.§+q§();
            this.§]!c§.removeChild(this.§#2§);
         }
         for each(_loc1_ in this.§?!j§)
         {
            _loc1_.§+q§();
            this.§]!c§.removeChild(_loc1_);
         }
         if(!this.§'J§)
         {
            if(this.§;!`§)
            {
               this.cleanup();
            }
            return;
         }
         this.§'J§ = false;
         if(this.§;!`§)
         {
            this.cleanup();
         }
      }
      
      private function §-M§(param1:§^!o§) : void
      {
         this.§^t§();
         if(this.§42§ && param1.type != §^!o§.§7!W§)
         {
            this.§%!0§ = param1.type;
            this.§%!T§(param1);
            this.§42§.addEventListener(Event.COMPLETE,this.§,"&§);
            this.§42§.start(param1);
            if(this.§%!0§ == §^!o§.§+"4§ || this.§%!0§ == §^!o§.§"g§)
            {
               if(this.§7!]§)
               {
                  this.§6!?§(true);
               }
            }
            this.onTransitionStart(this.§%!0§);
         }
      }
      
      protected function §%!T§(param1:§^!o§) : void
      {
      }
      
      private function §^t§() : void
      {
         if(this.§42§)
         {
            this.§42§.removeEventListener(Event.COMPLETE,this.§,"&§);
            this.§42§.stop();
         }
         this.§%!0§ = §^!o§.§7!W§;
         this.§6!?§(false);
      }
      
      private function §,"&§(param1:Event) : void
      {
         switch(this.§%!0§)
         {
            case §^!o§.§>!u§:
               this.§0[§();
               break;
            case §^!o§.§+"4§:
               this.§1&§();
               break;
            case §^!o§.§"g§:
               this.§,e§();
         }
      }
      
      private function §0[§() : void
      {
         this.onTransitionComplete(this.§%!0§);
         if(this.§3Z§)
         {
            this.§-M§(this.§3Z§);
            this.§3Z§ = null;
         }
      }
      
      private function §,e§() : void
      {
         this.onTransitionComplete(this.§%!0§);
         this.§^t§();
         this.§;x§ = this.§+b§;
         this.§+b§ = "";
      }
      
      private function §1&§() : void
      {
         this.onTransitionComplete(this.§%!0§);
         this.§^t§();
         this.§-M§(this.§%N§());
      }
      
      protected function §%N§() : §^!o§
      {
         return new §^!o§(§'"$§.§%!C§(),§'"$§.§0!F§,§'"$§.§9E§,§^!o§.§>!u§,this.§=!O§,this.§<e§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §="5§(param1:§^!o§, param2:Boolean = false) : void
      {
         if(!this.§42§.§6E§)
         {
            this.§-M§(param1);
            return;
         }
         this.§3Z§ = param1;
         this.§42§.stop(param2);
      }
      
      protected final function §0!w§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§^!o§ = null;
         if(param2)
         {
            (_loc4_ = new §^!o§()).startLabel = §'"$§.§@B§(param1);
            _loc4_.§[;§ = §'"$§.§0!F§;
            _loc4_.§'e§ = §'"$§.§9E§;
            _loc4_.type = §^!o§.§"g§;
            _loc4_.stageQuality = this.§<e§;
            this.§="5§(_loc4_,param3);
            this.§+b§ = param1;
         }
         else
         {
            this.§^t§();
            this.§+b§ = "";
            this.§;x§ = param1;
         }
      }
      
      public function §9o§(param1:Boolean) : void
      {
         this.§;!`§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§;!§)
         {
            return;
         }
         if(this.§#2§)
         {
            this.§#2§.clear();
            this.§#2§ = null;
         }
         while(this.§?!j§.length > 0)
         {
            (this.§?!j§.pop() as §`%§).clear();
         }
         if(this.§'J§)
         {
            this.deActivate();
         }
         this.§;!§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§;!§)
         {
            §=!U§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §4!I§;
         }
         if(!this.§'J§)
         {
            §=!U§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §#]§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§;x§ != "")
         {
            return §-!R§;
         }
         return §,!2§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§42§ && this.§%!0§ != §^!o§.§7!W§)
         {
            this.§42§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2a§;
      }
      
      public final function §&b§(param1:int, param2:String, param3:§'!R§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§42§ && this.§42§.§6E§ && (this.§%!0§ == §^!o§.§+"4§ || this.§%!0§ == §^!o§.§"g§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
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
      
      public function §"!G§(param1:§`%§) : void
      {
         this.§?!j§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§]!c§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§]!c§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§]!c§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§?!%§)
         {
            return this.§?!%§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§?!%§)
         {
            return this.§?!%§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§#2§)
         {
            this.§#2§.viewWidth = param1;
            this.§#2§.viewHeight = param2;
         }
      }
      
      public function §-9§() : int
      {
         return §&q§;
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
