package §"r§
{
   import § ,§.§ !F§;
   import § ,§.§>u§;
   import §&<§.§^!#§;
   import §0!$§.§#!-§;
   import §0K§.§#-§;
   import §0K§.§&"§;
   import §0K§.§3w§;
   import §0K§.§7!J§;
   import §2W§.§1!6§;
   import §^!`§.§-"5§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class §"j§ implements § !F§
   {
      
      public static const §?!f§:int = 60;
      
      public static const §7!'§:String = "dummyState";
      
      public static const §[;§:int = 0;
      
      public static const §?x§:int = 1;
      
      public static const §^?§:int = 2;
      
      public static const §-!2§:int = 3;
      
      public static var §5!+§:Object = null;
       
      
      private var §?[§:Boolean = false;
      
      private var § !3§:Boolean = false;
      
      public var mName:String;
      
      public var §^!%§:Boolean = false;
      
      protected var §2!Z§:String = "none";
      
      protected var §5F§:§&"§;
      
      protected var §`!?§:§7!J§;
      
      protected var §+_§:String;
      
      protected var §1r§:Boolean = false;
      
      protected var §8!0§:Boolean = true;
      
      protected var §+",§:String = "best";
      
      public var §6! §:Boolean = false;
      
      public var §'U§:Boolean = true;
      
      private var §0!F§:Vector.<String>;
      
      protected var §]!B§:Vector.<String>;
      
      public var §2!h§:Boolean = false;
      
      public var § !z§:§-"5§;
      
      public var §2"#§:Array;
      
      private var §=j§:String = "";
      
      private var §5!E§:String = "";
      
      public var §2!&§:Sprite = null;
      
      public var §>v§:§48§ = null;
      
      protected var §2e§:§>u§;
      
      public function §"j§(param1:Boolean, param2:String, param3:§>u§)
      {
         super();
         this.mName = param2;
         this.§2"#§ = new Array();
         this.§2!&§ = new Sprite();
         this.§2e§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §-""§(param1:String) : String
      {
         if(§5!+§)
         {
            return §5!+§[param1];
         }
         return null;
      }
      
      public function get §2!p§() : String
      {
         return this.§5!E§;
      }
      
      public function get nextState() : String
      {
         return this.§=j§;
      }
      
      public function get §!$§() : Boolean
      {
         return this.§?[§;
      }
      
      public function get §%x§() : Boolean
      {
         return this.§ !3§;
      }
      
      private function initialize() : void
      {
         this.§0!F§ = new Vector.<String>();
         this.§]!B§ = new Vector.<String>();
         this.§+"#§();
         this.init();
         this.§#" §();
         this.§-o§();
         this.§?[§ = true;
      }
      
      protected function §+"#§() : void
      {
         this.§0!F§.push(§3w§.§ if§());
         this.§0!F§.push(§3w§.§!1§());
         this.§0!F§.push(§3w§.§@!n§());
         this.§0!F§.push(§3w§.§&!`§());
         this.§0!F§.push(§3w§.§2r§());
         this.§0!F§.push(§3w§.§]L§);
         this.§0!F§.push(§3w§.§;"0§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §-o§() : void
      {
      }
      
      private function §#" §() : void
      {
         if(this.§ !z§ == null || this.§ !z§.container == null || this.§ !z§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§ !z§.container.mClip;
         var _loc2_:Vector.<String> = this.§0!F§.concat(this.§]!B§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §1!6§.§?7§(_loc1_,_loc2_,_loc3_,§1!6§.§"1§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§`!?§ = new §#-§(param1,this.§2!&§.stage);
      }
      
      private function § !?§(param1:MouseEvent) : void
      {
         this.§4A§(false);
         if(this.§2!Z§ == §&"§.§<_§)
         {
            this.§6! § = true;
         }
         this.§`!?§.stop(false);
      }
      
      private function §4A§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2!&§.addEventListener(MouseEvent.CLICK,this.§ !?§);
         }
         else
         {
            this.§2!&§.removeEventListener(MouseEvent.CLICK,this.§ !?§);
         }
         this.§2!&§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§-"5§ = null;
         this.§5!E§ = param1;
         if(!this.§?[§)
         {
            this.initialize();
         }
         if(this.§ !z§)
         {
            this.§2!&§.addChild(this.§ !z§);
            this.§ !z§.§1!3§();
         }
         for each(_loc2_ in this.§2"#§)
         {
            this.§2!&§.addChild(_loc2_);
            _loc2_.§2!f§();
         }
         this.§=j§ = "";
         this.§ !3§ = true;
      }
      
      public function §3"0§(param1:Boolean) : void
      {
         var _loc2_:§&"§ = null;
         if(this.§1r§ && !param1)
         {
            _loc2_ = new §&"§();
            _loc2_.§,!%§ = §3w§.§;"0§;
            _loc2_.§<b§ = §3w§.§]L§;
            _loc2_.startLabel = §3w§.§&!`§(this.§5!E§);
            _loc2_.type = §&"§.§0!S§;
            _loc2_.stageQuality = this.§+",§;
            this.§%§(_loc2_);
         }
         else
         {
            this.§-!m§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§-"5§ = null;
         this.§;Q§();
         if(this.§ !z§)
         {
            this.§ !z§.§2!f§();
            this.§2!&§.removeChild(this.§ !z§);
         }
         for each(_loc1_ in this.§2"#§)
         {
            _loc1_.§2!f§();
            this.§2!&§.removeChild(_loc1_);
         }
         if(!this.§ !3§)
         {
            if(this.§2!h§)
            {
               this.cleanup();
            }
            return;
         }
         this.§ !3§ = false;
         if(this.§2!h§)
         {
            this.cleanup();
         }
      }
      
      private function §%§(param1:§&"§) : void
      {
         this.§;Q§();
         if(this.§`!?§ && param1.type != §&"§.§-!j§)
         {
            this.§2!Z§ = param1.type;
            this.§>h§(param1);
            this.§`!?§.addEventListener(Event.COMPLETE,this.§%-§);
            this.§`!?§.start(param1);
            if(this.§2!Z§ == §&"§.§0!S§ || this.§2!Z§ == §&"§.§<_§)
            {
               if(this.§'U§)
               {
                  this.§4A§(true);
               }
            }
            this.onTransitionStart(this.§2!Z§);
         }
      }
      
      protected function §>h§(param1:§&"§) : void
      {
      }
      
      private function §;Q§() : void
      {
         if(this.§`!?§)
         {
            this.§`!?§.removeEventListener(Event.COMPLETE,this.§%-§);
            this.§`!?§.stop();
         }
         this.§2!Z§ = §&"§.§-!j§;
         this.§4A§(false);
      }
      
      private function §%-§(param1:Event) : void
      {
         switch(this.§2!Z§)
         {
            case §&"§.§-"$§:
               this.§1a§();
               break;
            case §&"§.§0!S§:
               this.§-!m§();
               break;
            case §&"§.§<_§:
               this.§3!Q§();
         }
      }
      
      private function §1a§() : void
      {
         this.onTransitionComplete(this.§2!Z§);
         if(this.§5F§)
         {
            this.§%§(this.§5F§);
            this.§5F§ = null;
         }
      }
      
      private function §3!Q§() : void
      {
         this.onTransitionComplete(this.§2!Z§);
         this.§;Q§();
         this.§=j§ = this.§+_§;
         this.§+_§ = "";
      }
      
      private function §-!m§() : void
      {
         this.onTransitionComplete(this.§2!Z§);
         this.§;Q§();
         this.§%§(this.§?§());
      }
      
      protected function §?§() : §&"§
      {
         return new §&"§(§3w§.§ if§(),§3w§.§;"0§,§3w§.§]L§,§&"§.§-"$§,this.§8!0§,this.§+",§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §with§(param1:§&"§, param2:Boolean = false) : void
      {
         if(!this.§`!?§.§"Z§)
         {
            this.§%§(param1);
            return;
         }
         this.§5F§ = param1;
         this.§`!?§.stop(param2);
      }
      
      protected final function §?n§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§&"§ = null;
         if(param2)
         {
            (_loc4_ = new §&"§()).startLabel = §3w§.§2r§(param1);
            _loc4_.§,!%§ = §3w§.§;"0§;
            _loc4_.§<b§ = §3w§.§]L§;
            _loc4_.type = §&"§.§<_§;
            _loc4_.stageQuality = this.§+",§;
            this.§with§(_loc4_,param3);
            this.§+_§ = param1;
         }
         else
         {
            this.§;Q§();
            this.§+_§ = "";
            this.§=j§ = param1;
         }
      }
      
      public function §!S§(param1:Boolean) : void
      {
         this.§2!h§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§?[§)
         {
            return;
         }
         if(this.§ !z§)
         {
            this.§ !z§.clear();
            this.§ !z§ = null;
         }
         while(this.§2"#§.length > 0)
         {
            (this.§2"#§.pop() as §-"5§).clear();
         }
         if(this.§ !3§)
         {
            this.deActivate();
         }
         this.§?[§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§?[§)
         {
            §#!-§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §[;§;
         }
         if(!this.§ !3§)
         {
            §#!-§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §?x§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§=j§ != "")
         {
            return §-!2§;
         }
         return §^?§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§`!?§ && this.§2!Z§ != §&"§.§-!j§)
         {
            this.§`!?§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§^!%§;
      }
      
      public final function §""-§(param1:int, param2:String, param3:§^!#§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§`!?§ && this.§`!?§.§"Z§ && (this.§2!Z§ == §&"§.§0!S§ || this.§2!Z§ == §&"§.§<_§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
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
      
      public function §>=§(param1:§-"5§) : void
      {
         this.§2"#§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§2!&§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§2!&§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§2!&§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§>v§)
         {
            return this.§>v§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§>v§)
         {
            return this.§>v§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§ !z§)
         {
            this.§ !z§.viewWidth = param1;
            this.§ !z§.viewHeight = param2;
         }
      }
      
      public function §8!L§() : int
      {
         return §?!f§;
      }
      
      public function updateLocalization() : void
      {
      }
   }
}
