package §?z§
{
   import §"n§.§`!u§;
   import §,L§.§6!W§;
   import §7!§.§2W§;
   import §;0§.§ !s§;
   import §;0§.§6h§;
   import §>1§.§"!w§;
   import §>1§.§2B§;
   import §>1§.§7a§;
   import §>1§.§;=§;
   import each.§!!'§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §4!C§ implements § !s§
   {
      
      public static const §-D§:int = 60;
      
      public static const §9!T§:String = "dummyState";
      
      public static const §%"'§:int = 0;
      
      public static const §-!H§:int = 1;
      
      public static const §=R§:int = 2;
      
      public static const §8s§:int = 3;
      
      public static var §#Z§:Object = null;
       
      
      private var §+!V§:Boolean = false;
      
      private var §2t§:Boolean = false;
      
      public var mName:String;
      
      public var §4!R§:Boolean = false;
      
      protected var §]P§:String = "none";
      
      protected var §8!!§:§2B§;
      
      protected var §#1§:§;=§;
      
      protected var §3!w§:String;
      
      protected var §,^§:Boolean = false;
      
      protected var §%!v§:Boolean = true;
      
      protected var §7%§:String = "best";
      
      public var §>!j§:Boolean = false;
      
      public var §!X§:Boolean = true;
      
      private var §9!"§:Vector.<String>;
      
      protected var §'b§:Vector.<String>;
      
      public var §4S§:Boolean = false;
      
      public var §?P§:§2W§;
      
      public var §!!b§:Array;
      
      private var §5!4§:String = "";
      
      private var §7C§:String = "";
      
      public var §#e§:Sprite = null;
      
      public var §=z§:§;B§ = null;
      
      protected var §-!]§:§6h§;
      
      public function §4!C§(param1:Boolean, param2:String, param3:§6h§)
      {
         super();
         this.mName = param2;
         this.§!!b§ = new Array();
         this.§#e§ = new Sprite();
         this.§-!]§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §7X§(param1:String) : String
      {
         if(§#Z§)
         {
            return §#Z§[param1];
         }
         return null;
      }
      
      public function get §@!W§() : String
      {
         return this.§7C§;
      }
      
      public function get nextState() : String
      {
         return this.§5!4§;
      }
      
      public function get §;R§() : Boolean
      {
         return this.§+!V§;
      }
      
      public function get §4!E§() : Boolean
      {
         return this.§2t§;
      }
      
      private function initialize() : void
      {
         this.§9!"§ = new Vector.<String>();
         this.§'b§ = new Vector.<String>();
         this.§#!U§();
         this.init();
         this.§7A§();
         this.§5!K§();
         this.§+!V§ = true;
      }
      
      protected function §#!U§() : void
      {
         this.§9!"§.push(§7a§.§0-§());
         this.§9!"§.push(§7a§.§;!W§());
         this.§9!"§.push(§7a§.§!7§());
         this.§9!"§.push(§7a§.§%!H§());
         this.§9!"§.push(§7a§.§9h§());
         this.§9!"§.push(§7a§.§5z§);
         this.§9!"§.push(§7a§.§=A§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §5!K§() : void
      {
      }
      
      private function §7A§() : void
      {
         if(this.§?P§ == null || this.§?P§.container == null || this.§?P§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§?P§.container.mClip;
         var _loc2_:Vector.<String> = this.§9!"§.concat(this.§'b§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §`!u§.§>V§(_loc1_,_loc2_,_loc3_,§`!u§.§>!b§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§#1§ = new §"!w§(param1,this.§#e§.stage);
      }
      
      private function §=T§(param1:MouseEvent) : void
      {
         this.§%5§(false);
         if(this.§]P§ == §2B§.§-!S§)
         {
            this.§>!j§ = true;
         }
         this.§#1§.stop(false);
      }
      
      private function §%5§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#e§.addEventListener(MouseEvent.CLICK,this.§=T§);
         }
         else
         {
            this.§#e§.removeEventListener(MouseEvent.CLICK,this.§=T§);
         }
         this.§#e§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§2W§ = null;
         this.§7C§ = param1;
         if(!this.§+!V§)
         {
            this.initialize();
         }
         if(this.§?P§)
         {
            this.§#e§.addChild(this.§?P§);
            this.§?P§.§+!+§();
         }
         for each(_loc2_ in this.§!!b§)
         {
            this.§#e§.addChild(_loc2_);
            _loc2_.§8"-§();
         }
         this.§5!4§ = "";
         this.§2t§ = true;
      }
      
      public function § !#§(param1:Boolean) : void
      {
         var _loc2_:§2B§ = null;
         if(this.§,^§ && !param1)
         {
            _loc2_ = new §2B§();
            _loc2_.§'!J§ = §7a§.§=A§;
            _loc2_.§1!p§ = §7a§.§5z§;
            _loc2_.startLabel = §7a§.§%!H§(this.§7C§);
            _loc2_.type = §2B§.§"<§;
            _loc2_.stageQuality = this.§7%§;
            this.§[!y§(_loc2_);
         }
         else
         {
            this.§00§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§2W§ = null;
         this.§6!8§();
         if(this.§?P§)
         {
            this.§?P§.§8"-§();
            this.§#e§.removeChild(this.§?P§);
         }
         for each(_loc1_ in this.§!!b§)
         {
            _loc1_.§8"-§();
            this.§#e§.removeChild(_loc1_);
         }
         if(!this.§2t§)
         {
            if(this.§4S§)
            {
               this.cleanup();
            }
            return;
         }
         this.§2t§ = false;
         if(this.§4S§)
         {
            this.cleanup();
         }
      }
      
      private function §[!y§(param1:§2B§) : void
      {
         this.§6!8§();
         if(this.§#1§ && param1.type != §2B§.§0!&§)
         {
            this.§]P§ = param1.type;
            this.§;+§(param1);
            this.§#1§.addEventListener(Event.COMPLETE,this.§2!9§);
            this.§#1§.start(param1);
            if(this.§]P§ == §2B§.§"<§ || this.§]P§ == §2B§.§-!S§)
            {
               if(this.§!X§)
               {
                  this.§%5§(true);
               }
            }
            this.onTransitionStart(this.§]P§);
         }
      }
      
      protected function §;+§(param1:§2B§) : void
      {
      }
      
      private function §6!8§() : void
      {
         if(this.§#1§)
         {
            this.§#1§.removeEventListener(Event.COMPLETE,this.§2!9§);
            this.§#1§.stop();
         }
         this.§]P§ = §2B§.§0!&§;
         this.§%5§(false);
      }
      
      private function §2!9§(param1:Event) : void
      {
         switch(this.§]P§)
         {
            case §2B§.§+!_§:
               this.§0!t§();
               break;
            case §2B§.§"<§:
               this.§00§();
               break;
            case §2B§.§-!S§:
               this.§<3§();
         }
      }
      
      private function §0!t§() : void
      {
         this.onTransitionComplete(this.§]P§);
         if(this.§8!!§)
         {
            this.§[!y§(this.§8!!§);
            this.§8!!§ = null;
         }
      }
      
      private function §<3§() : void
      {
         this.onTransitionComplete(this.§]P§);
         this.§6!8§();
         this.§5!4§ = this.§3!w§;
         this.§3!w§ = "";
      }
      
      private function §00§() : void
      {
         this.onTransitionComplete(this.§]P§);
         this.§6!8§();
         this.§[!y§(this.§1!%§());
      }
      
      protected function §1!%§() : §2B§
      {
         return new §2B§(§7a§.§0-§(),§7a§.§=A§,§7a§.§5z§,§2B§.§+!_§,this.§%!v§,this.§7%§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function § !m§(param1:§2B§, param2:Boolean = false) : void
      {
         if(!this.§#1§.§`!m§)
         {
            this.§[!y§(param1);
            return;
         }
         this.§8!!§ = param1;
         this.§#1§.stop(param2);
      }
      
      protected function §<f§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§2B§ = null;
         if(param2)
         {
            (_loc4_ = new §2B§()).startLabel = §7a§.§9h§(param1);
            _loc4_.§'!J§ = §7a§.§=A§;
            _loc4_.§1!p§ = §7a§.§5z§;
            _loc4_.type = §2B§.§-!S§;
            _loc4_.stageQuality = this.§7%§;
            this.§ !m§(_loc4_,param3);
            this.§3!w§ = param1;
         }
         else
         {
            this.§6!8§();
            this.§3!w§ = "";
            this.§5!4§ = param1;
         }
      }
      
      public function §^?§(param1:Boolean) : void
      {
         this.§4S§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§+!V§)
         {
            return;
         }
         if(this.§?P§)
         {
            this.§?P§.clear();
            this.§?P§ = null;
         }
         while(this.§!!b§.length > 0)
         {
            (this.§!!b§.pop() as §2W§).clear();
         }
         if(this.§2t§)
         {
            this.deActivate();
         }
         this.§+!V§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§+!V§)
         {
            §!!'§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §%"'§;
         }
         if(!this.§2t§)
         {
            §!!'§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §-!H§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§5!4§ != "")
         {
            return §8s§;
         }
         return §=R§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§#1§ && this.§]P§ != §2B§.§0!&§)
         {
            this.§#1§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§4!R§;
      }
      
      public final function §,n§(param1:int, param2:String, param3:§6!W§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§#1§ && this.§#1§.§`!m§ && (this.§]P§ == §2B§.§"<§ || this.§]P§ == §2B§.§-!S§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
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
      
      public function §;!Y§(param1:§2W§) : void
      {
         this.§!!b§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§#e§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§#e§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§#e§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§=z§)
         {
            return this.§=z§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§=z§)
         {
            return this.§=z§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§?P§)
         {
            this.§?P§.viewWidth = param1;
            this.§?P§.viewHeight = param2;
         }
      }
      
      public function §<!%§() : int
      {
         return §-D§;
      }
      
      public function updateLocalization() : void
      {
      }
      
      public function updateMuteButtonState() : void
      {
      }
   }
}
