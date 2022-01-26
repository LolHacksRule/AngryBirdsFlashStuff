package §_-y7§
{
   import §_-6r§.§_-7P§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-54§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-VA§
   {
      
      public static const §_-U§:String = "dummyState";
      
      public static const §_-I5§:int = 0;
      
      public static const §_-vQ§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-nP§:Object = null;
       
      
      public var §_-Y2§:Boolean = false;
      
      public var §_-ZW§:Boolean = false;
      
      public var mName:String;
      
      public var §_-u7§:Boolean = false;
      
      public var §_-qu§:Boolean = false;
      
      public var §_-NY§:§_-ru§;
      
      public var §_-WZ§:Array;
      
      public var mNextState:String = "";
      
      public var §_-Cv§:Sprite = null;
      
      public var §_-f0§:§_-vT§ = null;
      
      public function §_-VA§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-WZ§ = new Array();
         this.§_-Cv§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §extends§(param1:String) : String
      {
         if(§_-nP§)
         {
            return §_-nP§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-Y2§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-ru§ = null;
         if(!this.§_-Y2§)
         {
            this.init();
         }
         if(this.§_-NY§)
         {
            this.§_-Cv§.addChild(this.§_-NY§);
            this.§_-NY§.§_-aN§();
         }
         for each(_loc1_ in this.§_-WZ§)
         {
            this.§_-Cv§.addChild(_loc1_);
            _loc1_.§_-JE§();
         }
         this.mNextState = "";
         this.§_-ZW§ = true;
      }
      
      public function §_-pY§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-ru§ = null;
         if(this.§_-NY§)
         {
            this.§_-NY§.§_-JE§();
            this.§_-Cv§.removeChild(this.§_-NY§);
         }
         for each(_loc1_ in this.§_-WZ§)
         {
            _loc1_.§_-JE§();
            this.§_-Cv§.removeChild(_loc1_);
         }
         if(!this.§_-ZW§)
         {
            if(this.§_-qu§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-ZW§ = false;
         if(this.§_-qu§)
         {
            this.cleanup();
         }
      }
      
      public function §_-Uu§(param1:Boolean) : void
      {
         this.§_-qu§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-Y2§)
         {
            return;
         }
         if(this.§_-NY§)
         {
            this.§_-NY§.clear();
            this.§_-NY§ = null;
         }
         while(this.§_-WZ§.length > 0)
         {
            (this.§_-WZ§.pop() as §_-ru§).clear();
         }
         if(this.§_-ZW§)
         {
            this.deActivate();
         }
         this.§_-Y2§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-Y2§)
         {
            §_-54§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-I5§;
         }
         if(!this.§_-ZW§)
         {
            §_-54§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-vQ§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-u7§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
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
      
      public function §_-Sh§(param1:§_-ru§) : void
      {
         this.§_-WZ§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-Cv§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-Cv§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-Cv§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-f0§)
         {
            return this.§_-f0§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-f0§)
         {
            return this.§_-f0§.getAppHeight();
         }
         return 0;
      }
   }
}
