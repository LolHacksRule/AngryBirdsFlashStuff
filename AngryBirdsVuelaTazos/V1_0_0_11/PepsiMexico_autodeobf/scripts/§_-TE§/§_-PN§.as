package §_-TE§
{
   import §_-QM§.§_-Ns§;
   import §_-ZG§.§_-Ne§;
   import §_-xN§.§_-pB§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-PN§
   {
      
      public static const §_-Uh§:String = "dummyState";
      
      public static const §_-Ox§:int = 0;
      
      public static const §_-r8§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-kK§:Object = null;
       
      
      public var §_-bN§:Boolean = false;
      
      public var §_-Wx§:Boolean = false;
      
      public var mName:String;
      
      public var §_-nF§:Boolean = false;
      
      public var §_-Nh§:Boolean = false;
      
      public var §_-qE§:§_-Ns§;
      
      public var §_-ul§:Array;
      
      public var mNextState:String = "";
      
      public var §_-0O§:Sprite = null;
      
      public var §_-Ea§:§_-ah§ = null;
      
      public function §_-PN§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-ul§ = new Array();
         this.§_-0O§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-Yv§(param1:String) : String
      {
         if(§_-kK§)
         {
            return §_-kK§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-bN§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-Ns§ = null;
         if(!this.§_-bN§)
         {
            this.init();
         }
         if(this.§_-qE§)
         {
            this.§_-0O§.addChild(this.§_-qE§);
            this.§_-qE§.§_-ck§();
         }
         for each(_loc1_ in this.§_-ul§)
         {
            this.§_-0O§.addChild(_loc1_);
            _loc1_.§_-a1§();
         }
         this.mNextState = "";
         this.§_-Wx§ = true;
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-Ns§ = null;
         if(this.§_-qE§)
         {
            this.§_-qE§.§_-a1§();
            this.§_-0O§.removeChild(this.§_-qE§);
         }
         for each(_loc1_ in this.§_-ul§)
         {
            _loc1_.§_-a1§();
            this.§_-0O§.removeChild(_loc1_);
         }
         if(!this.§_-Wx§)
         {
            if(this.§_-Nh§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-Wx§ = false;
         if(this.§_-Nh§)
         {
            this.cleanup();
         }
      }
      
      public function §_-Y7§(param1:Boolean) : void
      {
         this.§_-Nh§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-bN§)
         {
            return;
         }
         if(this.§_-qE§)
         {
            this.§_-qE§.clear();
            this.§_-qE§ = null;
         }
         while(this.§_-ul§.length > 0)
         {
            (this.§_-ul§.pop() as §_-Ns§).clear();
         }
         if(this.§_-Wx§)
         {
            this.deActivate();
         }
         this.§_-bN§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-bN§)
         {
            §_-Ne§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-Ox§;
         }
         if(!this.§_-Wx§)
         {
            §_-Ne§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-r8§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-nF§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
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
      
      public function §_-3m§(param1:§_-Ns§) : void
      {
         this.§_-ul§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-0O§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-0O§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-0O§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-Ea§)
         {
            return this.§_-Ea§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-Ea§)
         {
            return this.§_-Ea§.getAppHeight();
         }
         return 0;
      }
   }
}
