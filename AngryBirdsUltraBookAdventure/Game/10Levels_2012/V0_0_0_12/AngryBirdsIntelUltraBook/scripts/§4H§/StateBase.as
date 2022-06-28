package §4H§
{
   import §4!9§.§6"§;
   import §6b§.Log;
   import §>!-§.UIEventListenerRovio;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class StateBase
   {
      
      public static const §'!%§:int = 60;
      
      public static const §&r§:String = "dummyState";
      
      public static const §&!P§:int = 0;
      
      public static const §3Q§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §"z§:Object = null;
       
      
      public var §'n§:Boolean = false;
      
      public var §;!M§:Boolean = false;
      
      public var mName:String;
      
      public var §@V§:Boolean = false;
      
      public var §^!'§:Boolean = false;
      
      public var §5!M§:§6"§;
      
      public var §-x§:Array;
      
      public var mNextState:String = "";
      
      public var §'6§:Sprite = null;
      
      public var §4!R§:StateManager = null;
      
      public function StateBase(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§-x§ = new Array();
         this.§'6§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §#1§(param1:String) : String
      {
         if(§"z§)
         {
            return §"z§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§'n§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§6"§ = null;
         if(!this.§'n§)
         {
            this.init();
         }
         if(this.§5!M§)
         {
            this.§'6§.addChild(this.§5!M§);
            this.§5!M§.activateView();
         }
         for each(_loc1_ in this.§-x§)
         {
            this.§'6§.addChild(_loc1_);
            _loc1_.§"!e§();
         }
         this.mNextState = "";
         this.§;!M§ = true;
      }
      
      public function §6!,§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§6"§ = null;
         if(this.§5!M§)
         {
            this.§5!M§.§"!e§();
            this.§'6§.removeChild(this.§5!M§);
         }
         for each(_loc1_ in this.§-x§)
         {
            _loc1_.§"!e§();
            this.§'6§.removeChild(_loc1_);
         }
         if(!this.§;!M§)
         {
            if(this.§^!'§)
            {
               this.cleanup();
            }
            return;
         }
         this.§;!M§ = false;
         if(this.§^!'§)
         {
            this.cleanup();
         }
      }
      
      public function §+l§(param1:Boolean) : void
      {
         this.§^!'§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§'n§)
         {
            return;
         }
         if(this.§5!M§)
         {
            this.§5!M§.clear();
            this.§5!M§ = null;
         }
         while(this.§-x§.length > 0)
         {
            (this.§-x§.pop() as §6"§).clear();
         }
         if(this.§;!M§)
         {
            this.deActivate();
         }
         this.§'n§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§'n§)
         {
            Log.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §&!P§;
         }
         if(!this.§;!M§)
         {
            Log.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §3Q§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§@V§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
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
      
      public function §5!!§(param1:§6"§) : void
      {
         this.§-x§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§'6§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§'6§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§'6§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§4!R§)
         {
            return this.§4!R§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§4!R§)
         {
            return this.§4!R§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§5!M§)
         {
            this.§5!M§.viewWidth = param1;
            this.§5!M§.viewHeight = param2;
         }
      }
      
      public function §5!Q§() : int
      {
         return §'!%§;
      }
   }
}
