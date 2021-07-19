package §1%§
{
   import § !Y§.§",§;
   import §%!r§.§1`§;
   import §%!r§.§3!'§;
   import §0N§.§2!@§;
   import §5X§.§+!#§;
   import §<!X§.§09§;
   import §<!X§.§7C§;
   import §<!X§.§;"8§;
   import §<!X§.§]d§;
   import §^=§.§1"F§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §0!3§ implements §1`§
   {
      
      public static const §2!O§:int = 60;
      
      public static const §^![§:String = "dummyState";
      
      public static const §[8§:int = 0;
      
      public static const § !b§:int = 1;
      
      public static const §'!u§:int = 2;
      
      public static const §-c§:int = 3;
      
      public static var §]>§:Object = null;
       
      
      private var §6t§:Boolean = false;
      
      private var §-7§:Boolean = false;
      
      public var mName:String;
      
      public var §=@§:Boolean = false;
      
      protected var §0§:String = "none";
      
      protected var §"f§:§7C§;
      
      protected var §-!w§:§09§;
      
      protected var §?"A§:String;
      
      protected var §>"<§:Boolean = false;
      
      protected var §#!j§:Boolean = true;
      
      protected var §?"G§:String = "best";
      
      public var §;"-§:Boolean = false;
      
      public var §1=§:Boolean = true;
      
      private var §9i§:Vector.<String>;
      
      protected var §"e§:Vector.<String>;
      
      public var §>!D§:Boolean = false;
      
      public var §8!A§:§1"F§;
      
      public var §<!#§:Array;
      
      private var §>"?§:String = "";
      
      private var §]"D§:String = "";
      
      public var §]!$§:Sprite = null;
      
      public var §[M§:§9!s§ = null;
      
      protected var §7Z§:§3!'§;
      
      public function §0!3§(param1:Boolean, param2:String, param3:§3!'§)
      {
         super();
         this.mName = param2;
         this.§<!#§ = new Array();
         this.§]!$§ = new Sprite();
         this.§7Z§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §>"B§(param1:String) : String
      {
         if(§]>§)
         {
            return §]>§[param1];
         }
         return null;
      }
      
      public function get §6!&§() : String
      {
         return this.§]"D§;
      }
      
      public function get nextState() : String
      {
         return this.§>"?§;
      }
      
      public function get §+y§() : Boolean
      {
         return this.§6t§;
      }
      
      public function get §7"B§() : Boolean
      {
         return this.§-7§;
      }
      
      private function initialize() : void
      {
         this.§9i§ = new Vector.<String>();
         this.§"e§ = new Vector.<String>();
         this.§;"1§();
         this.init();
         this.§2f§();
         this.§3!`§();
         this.§6t§ = true;
      }
      
      protected function §;"1§() : void
      {
         this.§9i§.push(§]d§.§>"=§());
         this.§9i§.push(§]d§.§%"<§());
         this.§9i§.push(§]d§.§>!u§());
         this.§9i§.push(§]d§.§7L§());
         this.§9i§.push(§]d§.§ P§());
         this.§9i§.push(§]d§.§"!3§);
         this.§9i§.push(§]d§.§1q§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §3!`§() : void
      {
      }
      
      private function §2f§() : void
      {
         if(this.§8!A§ == null || this.§8!A§.container == null || this.§8!A§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§8!A§.container.mClip;
         var _loc2_:Vector.<String> = this.§9i§.concat(this.§"e§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §",§.§80§(_loc1_,_loc2_,_loc3_,§",§.§0!'§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§-!w§ = new §;"8§(param1,this.§]!$§.stage);
      }
      
      private function §8v§(param1:MouseEvent) : void
      {
         this.§`!6§(false);
         if(this.§0§ == §7C§.§>">§)
         {
            this.§;"-§ = true;
         }
         this.§-!w§.stop(false);
      }
      
      private function §`!6§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!$§.addEventListener(MouseEvent.CLICK,this.§8v§);
         }
         else
         {
            this.§]!$§.removeEventListener(MouseEvent.CLICK,this.§8v§);
         }
         this.§]!$§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§1"F§ = null;
         this.§]"D§ = param1;
         if(!this.§6t§)
         {
            this.initialize();
         }
         if(this.§8!A§)
         {
            this.§]!$§.addChild(this.§8!A§);
            this.§8!A§.§@,§();
         }
         for each(_loc2_ in this.§<!#§)
         {
            this.§]!$§.addChild(_loc2_);
            _loc2_.§7>§();
         }
         this.§>"?§ = "";
         this.§-7§ = true;
      }
      
      public function §==§(param1:Boolean) : void
      {
         var _loc2_:§7C§ = null;
         if(this.§>"<§ && !param1)
         {
            _loc2_ = new §7C§();
            _loc2_.§%!D§ = §]d§.§1q§;
            _loc2_.§>!F§ = §]d§.§"!3§;
            _loc2_.startLabel = §]d§.§7L§(this.§]"D§);
            _loc2_.type = §7C§.§?x§;
            _loc2_.stageQuality = this.§?"G§;
            this.§;!5§(_loc2_);
         }
         else
         {
            this.§3"9§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§1"F§ = null;
         this.§#'§();
         if(this.§8!A§)
         {
            this.§8!A§.§7>§();
            this.§]!$§.removeChild(this.§8!A§);
         }
         for each(_loc1_ in this.§<!#§)
         {
            _loc1_.§7>§();
            this.§]!$§.removeChild(_loc1_);
         }
         if(!this.§-7§)
         {
            if(this.§>!D§)
            {
               this.cleanup();
            }
            return;
         }
         this.§-7§ = false;
         if(this.§>!D§)
         {
            this.cleanup();
         }
      }
      
      private function §;!5§(param1:§7C§) : void
      {
         this.§#'§();
         if(this.§-!w§ && param1.type != §7C§.§-!Z§)
         {
            this.§0§ = param1.type;
            this.§-!w§.addEventListener(Event.COMPLETE,this.§0"2§);
            this.§-!w§.start(param1,true);
            if(this.§0§ == §7C§.§?x§ || this.§0§ == §7C§.§>">§)
            {
               if(this.§1=§)
               {
                  this.§`!6§(true);
               }
            }
            this.onTransitionStart(this.§0§);
         }
      }
      
      private function §#'§() : void
      {
         if(this.§-!w§)
         {
            this.§-!w§.removeEventListener(Event.COMPLETE,this.§0"2§);
            this.§-!w§.stop();
         }
         this.§0§ = §7C§.§-!Z§;
         this.§`!6§(false);
      }
      
      private function §0"2§(param1:Event) : void
      {
         switch(this.§0§)
         {
            case §7C§.§@!=§:
               this.§5w§();
               break;
            case §7C§.§?x§:
               this.§3"9§();
               break;
            case §7C§.§>">§:
               this.§9"B§();
         }
      }
      
      private function §5w§() : void
      {
         this.onTransitionComplete(this.§0§);
         if(this.§"f§)
         {
            this.§;!5§(this.§"f§);
            this.§"f§ = null;
         }
      }
      
      private function §9"B§() : void
      {
         this.onTransitionComplete(this.§0§);
         this.§#'§();
         this.§>"?§ = this.§?"A§;
         this.§?"A§ = "";
      }
      
      private function §3"9§() : void
      {
         this.onTransitionComplete(this.§0§);
         this.§#'§();
         var _loc1_:§7C§ = new §7C§(§]d§.§>"=§(),§]d§.§1q§,§]d§.§"!3§,§7C§.§@!=§,this.§#!j§,this.§?"G§);
         this.§;!5§(_loc1_);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §>S§(param1:§7C§, param2:Boolean = false) : void
      {
         if(!this.§-!w§.§=!"§)
         {
            this.§;!5§(param1);
            return;
         }
         this.§"f§ = param1;
         this.§-!w§.stop(param2);
      }
      
      protected final function §8!^§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§7C§ = null;
         if(param2)
         {
            (_loc4_ = new §7C§()).startLabel = §]d§.§ P§(param1);
            _loc4_.§%!D§ = §]d§.§1q§;
            _loc4_.§>!F§ = §]d§.§"!3§;
            _loc4_.type = §7C§.§>">§;
            _loc4_.stageQuality = this.§?"G§;
            this.§>S§(_loc4_,param3);
            this.§?"A§ = param1;
         }
         else
         {
            this.§#'§();
            this.§?"A§ = "";
            this.§>"?§ = param1;
         }
      }
      
      public function §`j§(param1:Boolean) : void
      {
         this.§>!D§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§6t§)
         {
            return;
         }
         if(this.§8!A§)
         {
            this.§8!A§.clear();
            this.§8!A§ = null;
         }
         while(this.§<!#§.length > 0)
         {
            (this.§<!#§.pop() as §1"F§).clear();
         }
         if(this.§-7§)
         {
            this.deActivate();
         }
         this.§6t§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§6t§)
         {
            §2!@§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §[8§;
         }
         if(!this.§-7§)
         {
            §2!@§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return § !b§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§>"?§ != "")
         {
            return §-c§;
         }
         return §'!u§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§-!w§ && this.§0§ != §7C§.§-!Z§)
         {
            this.§-!w§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§=@§;
      }
      
      public final function §0!H§(param1:int, param2:String, param3:§+!#§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§-!w§ && this.§-!w§.§=!"§ && (this.§0§ == §7C§.§?x§ || this.§0§ == §7C§.§>">§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
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
      
      public function §=!-§(param1:§1"F§) : void
      {
         this.§<!#§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§]!$§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§]!$§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§]!$§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§[M§)
         {
            return this.§[M§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§[M§)
         {
            return this.§[M§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§8!A§)
         {
            this.§8!A§.viewWidth = param1;
            this.§8!A§.viewHeight = param2;
         }
      }
      
      public function §?a§() : int
      {
         return §2!O§;
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
