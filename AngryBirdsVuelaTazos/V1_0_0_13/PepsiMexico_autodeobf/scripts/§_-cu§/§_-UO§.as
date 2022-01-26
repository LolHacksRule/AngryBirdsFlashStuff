package §_-cu§
{
   import §_-1p§.§_-K9§;
   import §_-J-§.§_-ZG§;
   import §_-ex§.§_-mR§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-UO§
   {
      
      public static const §_-Ug§:String = "dummyState";
      
      public static const §_-vb§:int = 0;
      
      public static const §_-a1§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-2W§:Object = null;
       
      
      public var §_-GU§:Boolean = false;
      
      public var §_-qf§:Boolean = false;
      
      public var mName:String;
      
      public var §_-D9§:Boolean = false;
      
      public var §_-JV§:Boolean = false;
      
      public var §_-kl§:§_-K9§;
      
      public var §_-Wk§:Array;
      
      public var mNextState:String = "";
      
      public var §_-bB§:Sprite = null;
      
      public var §_-I0§:§_-qU§ = null;
      
      public function §_-UO§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-Wk§ = new Array();
         this.§_-bB§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-jB§(param1:String) : String
      {
         if(§_-2W§)
         {
            return §_-2W§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-GU§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-K9§ = null;
         if(!this.§_-GU§)
         {
            this.init();
         }
         if(this.§_-kl§)
         {
            this.§_-bB§.addChild(this.§_-kl§);
            this.§_-kl§.§_-ZB§();
         }
         for each(_loc1_ in this.§_-Wk§)
         {
            this.§_-bB§.addChild(_loc1_);
            _loc1_.§_-Q6§();
         }
         this.mNextState = "";
         this.§_-qf§ = true;
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-K9§ = null;
         if(this.§_-kl§)
         {
            this.§_-kl§.§_-Q6§();
            this.§_-bB§.removeChild(this.§_-kl§);
         }
         for each(_loc1_ in this.§_-Wk§)
         {
            _loc1_.§_-Q6§();
            this.§_-bB§.removeChild(_loc1_);
         }
         if(!this.§_-qf§)
         {
            if(this.§_-JV§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-qf§ = false;
         if(this.§_-JV§)
         {
            this.cleanup();
         }
      }
      
      public function §_-pm§(param1:Boolean) : void
      {
         this.§_-JV§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-GU§)
         {
            return;
         }
         if(this.§_-kl§)
         {
            this.§_-kl§.clear();
            this.§_-kl§ = null;
         }
         while(this.§_-Wk§.length > 0)
         {
            (this.§_-Wk§.pop() as §_-K9§).clear();
         }
         if(this.§_-qf§)
         {
            this.deActivate();
         }
         this.§_-GU§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-GU§)
         {
            §_-mR§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-vb§;
         }
         if(!this.§_-qf§)
         {
            §_-mR§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-a1§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-D9§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
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
      
      public function §_-hE§(param1:§_-K9§) : void
      {
         this.§_-Wk§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-bB§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-bB§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-bB§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-I0§)
         {
            return this.§_-I0§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-I0§)
         {
            return this.§_-I0§.getAppHeight();
         }
         return 0;
      }
   }
}
