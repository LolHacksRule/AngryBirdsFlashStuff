package §"o§
{
   import §%"%§.§2Z§;
   import §%"%§.§@3§;
   import §,!M§.§ !;§;
   import §4u§.§='§;
   import §7!6§.§@Y§;
   import §^S§.§,W§;
   import §^S§.§2" §;
   import §^S§.§6u§;
   import §^S§.§;j§;
   import §`!w§.§^!$§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §>!!§ implements §@3§
   {
      
      public static const §!+§:int = 60;
      
      public static const §8!l§:String = "dummyState";
      
      public static const §>@§:int = 0;
      
      public static const §6q§:int = 1;
      
      public static const §'!s§:int = 2;
      
      public static const §,!w§:int = 3;
      
      public static var § !n§:Object = null;
       
      
      private var §;""§:Boolean = false;
      
      private var §;G§:Boolean = false;
      
      public var mName:String;
      
      public var §-"?§:Boolean = false;
      
      protected var §3!D§:String = "none";
      
      protected var §!!s§:§6u§;
      
      protected var §]! §:§,W§;
      
      protected var §;i§:String;
      
      protected var §"!i§:Boolean = false;
      
      protected var §@!d§:Boolean = true;
      
      protected var §5v§:String = "best";
      
      public var §&"!§:Boolean = false;
      
      public var §7!y§:Boolean = true;
      
      private var §-!J§:Vector.<String>;
      
      protected var §,!x§:Vector.<String>;
      
      public var §@8§:Boolean = false;
      
      public var §%!A§:§ !;§;
      
      public var §@!G§:Array;
      
      private var § !_§:String = "";
      
      private var §["#§:String = "";
      
      public var §5"'§:Sprite = null;
      
      public var §0s§:§6!u§ = null;
      
      protected var § "@§:§2Z§;
      
      public function §>!!§(param1:Boolean, param2:String, param3:§2Z§)
      {
         super();
         this.mName = param2;
         this.§@!G§ = new Array();
         this.§5"'§ = new Sprite();
         this.§ "@§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §&4§(param1:String) : String
      {
         if(§ !n§)
         {
            return § !n§[param1];
         }
         return null;
      }
      
      public function get §2"3§() : String
      {
         return this.§["#§;
      }
      
      public function get nextState() : String
      {
         return this.§ !_§;
      }
      
      public function get §;!!§() : Boolean
      {
         return this.§;""§;
      }
      
      public function get §^">§() : Boolean
      {
         return this.§;G§;
      }
      
      private function initialize() : void
      {
         this.§-!J§ = new Vector.<String>();
         this.§,!x§ = new Vector.<String>();
         this.§%!M§();
         this.init();
         this.§"§();
         this.§+m§();
         this.§;""§ = true;
      }
      
      protected function §%!M§() : void
      {
         this.§-!J§.push(§2" §.§[!-§());
         this.§-!J§.push(§2" §.§2!I§());
         this.§-!J§.push(§2" §.§"u§());
         this.§-!J§.push(§2" §.§+!b§());
         this.§-!J§.push(§2" §.§,!5§());
         this.§-!J§.push(§2" §.§<Z§);
         this.§-!J§.push(§2" §.§ Q§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §+m§() : void
      {
      }
      
      private function §"§() : void
      {
         if(this.§%!A§ == null || this.§%!A§.container == null || this.§%!A§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§%!A§.container.mClip;
         var _loc2_:Vector.<String> = this.§-!J§.concat(this.§,!x§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §='§.§9a§(_loc1_,_loc2_,_loc3_,§='§.§,"B§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§]! § = new §;j§(param1,this.§5"'§.stage);
      }
      
      private function §1!P§(param1:MouseEvent) : void
      {
         this.§&!E§(false);
         if(this.§3!D§ == §6u§.§2!!§)
         {
            this.§&"!§ = true;
         }
         this.§]! §.stop(false);
      }
      
      private function §&!E§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5"'§.addEventListener(MouseEvent.CLICK,this.§1!P§);
         }
         else
         {
            this.§5"'§.removeEventListener(MouseEvent.CLICK,this.§1!P§);
         }
         this.§5"'§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§ !;§ = null;
         this.§["#§ = param1;
         if(!this.§;""§)
         {
            this.initialize();
         }
         if(this.§%!A§)
         {
            this.§5"'§.addChild(this.§%!A§);
            this.§%!A§.§<0§();
         }
         for each(_loc2_ in this.§@!G§)
         {
            this.§5"'§.addChild(_loc2_);
            _loc2_.§<!D§();
         }
         this.§ !_§ = "";
         this.§;G§ = true;
      }
      
      public function §%"H§(param1:Boolean) : void
      {
         var _loc2_:§6u§ = null;
         if(this.§"!i§ && !param1)
         {
            _loc2_ = new §6u§();
            _loc2_.§@%§ = §2" §.§ Q§;
            _loc2_.§?s§ = §2" §.§<Z§;
            _loc2_.startLabel = §2" §.§+!b§(this.§["#§);
            _loc2_.type = §6u§.§5!-§;
            _loc2_.stageQuality = this.§5v§;
            this.§+=§(_loc2_);
         }
         else
         {
            this.§2!T§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§ !;§ = null;
         this.§!!q§();
         if(this.§%!A§)
         {
            this.§%!A§.§<!D§();
            this.§5"'§.removeChild(this.§%!A§);
         }
         for each(_loc1_ in this.§@!G§)
         {
            _loc1_.§<!D§();
            this.§5"'§.removeChild(_loc1_);
         }
         if(!this.§;G§)
         {
            if(this.§@8§)
            {
               this.cleanup();
            }
            return;
         }
         this.§;G§ = false;
         if(this.§@8§)
         {
            this.cleanup();
         }
      }
      
      private function §+=§(param1:§6u§) : void
      {
         this.§!!q§();
         if(this.§]! § && param1.type != §6u§.§-r§)
         {
            this.§3!D§ = param1.type;
            this.§]! §.addEventListener(Event.COMPLETE,this.§[!P§);
            this.§]! §.start(param1);
            if(this.§3!D§ == §6u§.§5!-§ || this.§3!D§ == §6u§.§2!!§)
            {
               if(this.§7!y§)
               {
                  this.§&!E§(true);
               }
            }
            this.onTransitionStart(this.§3!D§);
         }
      }
      
      private function §!!q§() : void
      {
         if(this.§]! §)
         {
            this.§]! §.removeEventListener(Event.COMPLETE,this.§[!P§);
            this.§]! §.stop();
         }
         this.§3!D§ = §6u§.§-r§;
         this.§&!E§(false);
      }
      
      private function §[!P§(param1:Event) : void
      {
         switch(this.§3!D§)
         {
            case §6u§.§9!w§:
               this.§@!5§();
               break;
            case §6u§.§5!-§:
               this.§2!T§();
               break;
            case §6u§.§2!!§:
               this.§=!f§();
         }
      }
      
      private function §@!5§() : void
      {
         this.onTransitionComplete(this.§3!D§);
         if(this.§!!s§)
         {
            this.§+=§(this.§!!s§);
            this.§!!s§ = null;
         }
      }
      
      private function §=!f§() : void
      {
         this.onTransitionComplete(this.§3!D§);
         this.§!!q§();
         this.§ !_§ = this.§;i§;
         this.§;i§ = "";
      }
      
      private function §2!T§() : void
      {
         this.onTransitionComplete(this.§3!D§);
         this.§!!q§();
         var _loc1_:§6u§ = new §6u§(§2" §.§[!-§(),§2" §.§ Q§,§2" §.§<Z§,§6u§.§9!w§,this.§@!d§,this.§5v§);
         this.§+=§(_loc1_);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §5!@§(param1:§6u§, param2:Boolean = false) : void
      {
         if(!this.§]! §.§4!,§)
         {
            this.§+=§(param1);
            return;
         }
         this.§!!s§ = param1;
         this.§]! §.stop(param2);
      }
      
      protected final function § !I§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§6u§ = null;
         if(param2)
         {
            (_loc4_ = new §6u§()).startLabel = §2" §.§,!5§(param1);
            _loc4_.§@%§ = §2" §.§ Q§;
            _loc4_.§?s§ = §2" §.§<Z§;
            _loc4_.type = §6u§.§2!!§;
            _loc4_.stageQuality = this.§5v§;
            this.§5!@§(_loc4_,param3);
            this.§;i§ = param1;
         }
         else
         {
            this.§!!q§();
            this.§;i§ = "";
            this.§ !_§ = param1;
         }
      }
      
      public function §8b§(param1:Boolean) : void
      {
         this.§@8§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§;""§)
         {
            return;
         }
         if(this.§%!A§)
         {
            this.§%!A§.clear();
            this.§%!A§ = null;
         }
         while(this.§@!G§.length > 0)
         {
            (this.§@!G§.pop() as § !;§).clear();
         }
         if(this.§;G§)
         {
            this.deActivate();
         }
         this.§;""§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§;""§)
         {
            §^!$§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §>@§;
         }
         if(!this.§;G§)
         {
            §^!$§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §6q§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§ !_§ != "")
         {
            return §,!w§;
         }
         return §'!s§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§]! § && this.§3!D§ != §6u§.§-r§)
         {
            this.§]! §.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§-"?§;
      }
      
      public final function §;!A§(param1:int, param2:String, param3:§@Y§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§]! § && this.§]! §.§4!,§ && (this.§3!D§ == §6u§.§5!-§ || this.§3!D§ == §6u§.§2!!§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
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
      
      public function §1"+§(param1:§ !;§) : void
      {
         this.§@!G§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§5"'§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§5"'§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§5"'§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§0s§)
         {
            return this.§0s§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§0s§)
         {
            return this.§0s§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§%!A§)
         {
            this.§%!A§.viewWidth = param1;
            this.§%!A§.viewHeight = param2;
         }
      }
      
      public function §6[§() : int
      {
         return §!+§;
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
