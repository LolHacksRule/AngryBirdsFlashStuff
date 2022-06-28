package §1N§
{
   import §0!Q§.UIEventListenerRovio;
   import §<u§.Log;
   import §=!5§.§`X§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class StateBase
   {
      
      public static const §5!N§:int = 60;
      
      public static const §<!8§:String = "dummyState";
      
      public static const §@!J§:int = 0;
      
      public static const §>!D§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §9!4§:Object = null;
       
      
      public var §&!C§:Boolean = false;
      
      public var §]`§:Boolean = false;
      
      public var mName:String;
      
      public var §1!O§:Boolean = false;
      
      public var §8$§:Boolean = false;
      
      public var §`=§:§`X§;
      
      public var §"0§:Array;
      
      public var mNextState:String = "";
      
      public var §"!,§:Sprite = null;
      
      public var §^c§:StateManager = null;
      
      public function StateBase(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§"0§ = new Array();
         this.§"!,§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §!!Z§(param1:String) : String
      {
         if(§9!4§)
         {
            return §9!4§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§&!C§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§`X§ = null;
         if(!this.§&!C§)
         {
            this.init();
         }
         if(this.§`=§)
         {
            this.§"!,§.addChild(this.§`=§);
            this.§`=§.activateView();
         }
         for each(_loc1_ in this.§"0§)
         {
            this.§"!,§.addChild(_loc1_);
            _loc1_.§&!N§();
         }
         this.mNextState = "";
         this.§]`§ = true;
      }
      
      public function §"!4§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§`X§ = null;
         if(this.§`=§)
         {
            this.§`=§.§&!N§();
            this.§"!,§.removeChild(this.§`=§);
         }
         for each(_loc1_ in this.§"0§)
         {
            _loc1_.§&!N§();
            this.§"!,§.removeChild(_loc1_);
         }
         if(!this.§]`§)
         {
            if(this.§8$§)
            {
               this.cleanup();
            }
            return;
         }
         this.§]`§ = false;
         if(this.§8$§)
         {
            this.cleanup();
         }
      }
      
      public function §,!]§(param1:Boolean) : void
      {
         this.§8$§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§&!C§)
         {
            return;
         }
         if(this.§`=§)
         {
            this.§`=§.clear();
            this.§`=§ = null;
         }
         while(this.§"0§.length > 0)
         {
            (this.§"0§.pop() as §`X§).clear();
         }
         if(this.§]`§)
         {
            this.deActivate();
         }
         this.§&!C§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§&!C§)
         {
            Log.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §@!J§;
         }
         if(!this.§]`§)
         {
            Log.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §>!D§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§1!O§;
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
      
      public function §0! §(param1:§`X§) : void
      {
         this.§"0§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§"!,§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§"!,§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§"!,§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§^c§)
         {
            return this.§^c§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§^c§)
         {
            return this.§^c§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`=§)
         {
            this.§`=§.viewWidth = param1;
            this.§`=§.viewHeight = param2;
         }
      }
      
      public function §>Y§() : int
      {
         return §5!N§;
      }
   }
}
