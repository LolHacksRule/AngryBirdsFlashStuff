package §?9§
{
   import §!R§.§#!L§;
   import §+!2§.§0!%§;
   import §7"6§.§?m§;
   import §7"6§.§^!_§;
   import §8!$§.§?p§;
   import §]'§.§'"+§;
   import §]'§.§5B§;
   import §]'§.§?!?§;
   import §]'§.§]!n§;
   import §`!s§.§3"&§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class § x§ implements §?m§
   {
      
      public static const §?>§:int = 60;
      
      public static const §1!Y§:String = "dummyState";
      
      public static const §8!L§:int = 0;
      
      public static const §;b§:int = 1;
      
      public static const §,!e§:int = 2;
      
      public static const §]F§:int = 3;
      
      public static var §2k§:Object = null;
       
      
      private var §[h§:Boolean = false;
      
      private var §3g§:Boolean = false;
      
      public var mName:String;
      
      public var §7U§:Boolean = false;
      
      protected var §,b§:String = "none";
      
      protected var §=!?§:§'"+§;
      
      protected var §0!Z§:§?!?§;
      
      protected var §,!K§:String;
      
      protected var §'p§:Boolean = false;
      
      protected var §[!?§:Boolean = true;
      
      protected var §4`§:String = "best";
      
      public var §1!R§:Boolean = false;
      
      public var §0!m§:Boolean = true;
      
      private var §^!^§:Vector.<String>;
      
      protected var §8!u§:Vector.<String>;
      
      public var §1_§:Boolean = false;
      
      public var §4!q§:§0!%§;
      
      public var §;v§:Array;
      
      private var §<]§:String = "";
      
      private var §1J§:String = "";
      
      public var § C§:Sprite = null;
      
      public var §?5§:§@!]§ = null;
      
      protected var §%E§:§^!_§;
      
      public function § x§(param1:Boolean, param2:String, param3:§^!_§)
      {
         super();
         this.mName = param2;
         this.§;v§ = new Array();
         this.§ C§ = new Sprite();
         this.§%E§ = param3;
         if(param1)
         {
            this.initialize();
         }
      }
      
      public static function §1!Z§(param1:String) : String
      {
         if(§2k§)
         {
            return §2k§[param1];
         }
         return null;
      }
      
      public function get §+!q§() : String
      {
         return this.§1J§;
      }
      
      public function get nextState() : String
      {
         return this.§<]§;
      }
      
      public function get §<%§() : Boolean
      {
         return this.§[h§;
      }
      
      public function get §<!=§() : Boolean
      {
         return this.§3g§;
      }
      
      private function initialize() : void
      {
         this.§^!^§ = new Vector.<String>();
         this.§8!u§ = new Vector.<String>();
         this.§`C§();
         this.init();
         this.§]",§();
         this.§^!]§();
         this.§[h§ = true;
      }
      
      protected function §`C§() : void
      {
         this.§^!^§.push(§5B§.§3!=§());
         this.§^!^§.push(§5B§.§@!Z§());
         this.§^!^§.push(§5B§.§5!^§());
         this.§^!^§.push(§5B§.§]o§());
         this.§^!^§.push(§5B§.§&!M§());
         this.§^!^§.push(§5B§.§<Z§);
         this.§^!^§.push(§5B§.§#!2§);
      }
      
      protected function init() : void
      {
      }
      
      protected function §^!]§() : void
      {
      }
      
      private function §]",§() : void
      {
         if(this.§4!q§ == null || this.§4!q§.container == null || this.§4!q§.container.mClip == null)
         {
            return;
         }
         var _loc1_:MovieClip = this.§4!q§.container.mClip;
         var _loc2_:Vector.<String> = this.§^!^§.concat(this.§8!u§);
         var _loc3_:Vector.<MovieClip> = new Vector.<MovieClip>();
         §3"&§.§`!i§(_loc1_,_loc2_,_loc3_,§3"&§.§4!_§);
         this.createTransition(_loc3_);
      }
      
      protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         this.§0!Z§ = new §]!n§(param1,this.§ C§.stage);
      }
      
      private function §@!4§(param1:MouseEvent) : void
      {
         this.§^E§(false);
         if(this.§,b§ == §'"+§.§+U§)
         {
            this.§1!R§ = true;
         }
         this.§0!Z§.stop(false);
      }
      
      private function §^E§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ C§.addEventListener(MouseEvent.CLICK,this.§@!4§);
         }
         else
         {
            this.§ C§.removeEventListener(MouseEvent.CLICK,this.§@!4§);
         }
         this.§ C§.buttonMode = param1;
      }
      
      public function activate(param1:String) : void
      {
         var _loc2_:§0!%§ = null;
         this.§1J§ = param1;
         if(!this.§[h§)
         {
            this.initialize();
         }
         if(this.§4!q§)
         {
            this.§ C§.addChild(this.§4!q§);
            this.§4!q§.§<'§();
         }
         for each(_loc2_ in this.§;v§)
         {
            this.§ C§.addChild(_loc2_);
            _loc2_.§%<§();
         }
         this.§<]§ = "";
         this.§3g§ = true;
      }
      
      public function §!T§(param1:Boolean) : void
      {
         var _loc2_:§'"+§ = null;
         if(this.§'p§ && !param1)
         {
            _loc2_ = new §'"+§();
            _loc2_.§%§ = §5B§.§#!2§;
            _loc2_.§9!M§ = §5B§.§<Z§;
            _loc2_.startLabel = §5B§.§]o§(this.§1J§);
            _loc2_.type = §'"+§.§85§;
            _loc2_.stageQuality = this.§4`§;
            this.§[!P§(_loc2_);
         }
         else
         {
            this.§@!M§();
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:§0!%§ = null;
         this.§`!n§();
         if(this.§4!q§)
         {
            this.§4!q§.§%<§();
            this.§ C§.removeChild(this.§4!q§);
         }
         for each(_loc1_ in this.§;v§)
         {
            _loc1_.§%<§();
            this.§ C§.removeChild(_loc1_);
         }
         if(!this.§3g§)
         {
            if(this.§1_§)
            {
               this.cleanup();
            }
            return;
         }
         this.§3g§ = false;
         if(this.§1_§)
         {
            this.cleanup();
         }
      }
      
      private function §[!P§(param1:§'"+§) : void
      {
         this.§`!n§();
         if(this.§0!Z§ && param1.type != §'"+§.§49§)
         {
            this.§,b§ = param1.type;
            this.§-^§(param1);
            this.§0!Z§.addEventListener(Event.COMPLETE,this.§8c§);
            this.§0!Z§.start(param1);
            if(this.§,b§ == §'"+§.§85§ || this.§,b§ == §'"+§.§+U§)
            {
               if(this.§0!m§)
               {
                  this.§^E§(true);
               }
            }
            this.onTransitionStart(this.§,b§);
         }
      }
      
      protected function §-^§(param1:§'"+§) : void
      {
      }
      
      private function §`!n§() : void
      {
         if(this.§0!Z§)
         {
            this.§0!Z§.removeEventListener(Event.COMPLETE,this.§8c§);
            this.§0!Z§.stop();
         }
         this.§,b§ = §'"+§.§49§;
         this.§^E§(false);
      }
      
      private function §8c§(param1:Event) : void
      {
         switch(this.§,b§)
         {
            case §'"+§.§4!k§:
               this.§%!#§();
               break;
            case §'"+§.§85§:
               this.§@!M§();
               break;
            case §'"+§.§+U§:
               this.§#"8§();
         }
      }
      
      private function §%!#§() : void
      {
         this.onTransitionComplete(this.§,b§);
         if(this.§=!?§)
         {
            this.§[!P§(this.§=!?§);
            this.§=!?§ = null;
         }
      }
      
      private function §#"8§() : void
      {
         this.onTransitionComplete(this.§,b§);
         this.§`!n§();
         this.§<]§ = this.§,!K§;
         this.§,!K§ = "";
      }
      
      private function §@!M§() : void
      {
         this.onTransitionComplete(this.§,b§);
         this.§`!n§();
         this.§[!P§(this.§0!w§());
      }
      
      protected function §0!w§() : §'"+§
      {
         return new §'"+§(§5B§.§3!=§(),§5B§.§#!2§,§5B§.§<Z§,§'"+§.§4!k§,this.§[!?§,this.§4`§);
      }
      
      protected function onTransitionComplete(param1:String) : void
      {
      }
      
      protected function onTransitionStart(param1:String) : void
      {
      }
      
      protected function §&E§(param1:§'"+§, param2:Boolean = false) : void
      {
         if(!this.§0!Z§.§>+§)
         {
            this.§[!P§(param1);
            return;
         }
         this.§=!?§ = param1;
         this.§0!Z§.stop(param2);
      }
      
      protected function §]a§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:§'"+§ = null;
         if(param2)
         {
            (_loc4_ = new §'"+§()).startLabel = §5B§.§&!M§(param1);
            _loc4_.§%§ = §5B§.§#!2§;
            _loc4_.§9!M§ = §5B§.§<Z§;
            _loc4_.type = §'"+§.§+U§;
            _loc4_.stageQuality = this.§4`§;
            this.§&E§(_loc4_,param3);
            this.§,!K§ = param1;
         }
         else
         {
            this.§`!n§();
            this.§,!K§ = "";
            this.§<]§ = param1;
         }
      }
      
      public function §,'§(param1:Boolean) : void
      {
         this.§1_§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§[h§)
         {
            return;
         }
         if(this.§4!q§)
         {
            this.§4!q§.clear();
            this.§4!q§ = null;
         }
         while(this.§;v§.length > 0)
         {
            (this.§;v§.pop() as §0!%§).clear();
         }
         if(this.§3g§)
         {
            this.deActivate();
         }
         this.§[h§ = false;
      }
      
      public final function run(param1:Number) : int
      {
         if(!this.§[h§)
         {
            §?p§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §8!L§;
         }
         if(!this.§3g§)
         {
            §?p§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §;b§;
         }
         this.update(param1);
         this.runAnimations(param1);
         if(this.§<]§ != "")
         {
            return §]F§;
         }
         return §,!e§;
      }
      
      protected function update(param1:Number) : void
      {
      }
      
      protected function runAnimations(param1:Number) : void
      {
         if(this.§0!Z§ && this.§,b§ != §'"+§.§49§)
         {
            this.§0!Z§.run(param1);
         }
      }
      
      public function isGenericState() : Boolean
      {
         return this.§7U§;
      }
      
      public final function §#%§(param1:int, param2:String, param3:§#!L§) : void
      {
         if(this.isTransitioning)
         {
            return;
         }
         this.onUIInteraction(param1,param2,param3);
      }
      
      protected function get isTransitioning() : Boolean
      {
         return this.§0!Z§ && this.§0!Z§.§>+§ && (this.§,b§ == §'"+§.§85§ || this.§,b§ == §'"+§.§+U§);
      }
      
      protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
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
      
      public function §2!L§(param1:§0!%§) : void
      {
         this.§;v§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§ C§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§ C§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§ C§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§?5§)
         {
            return this.§?5§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§?5§)
         {
            return this.§?5§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§4!q§)
         {
            this.§4!q§.viewWidth = param1;
            this.§4!q§.viewHeight = param2;
         }
      }
      
      public function §]! §() : int
      {
         return §?>§;
      }
      
      public function updateLocalization() : void
      {
      }
      
      public function §8s§() : void
      {
      }
   }
}
