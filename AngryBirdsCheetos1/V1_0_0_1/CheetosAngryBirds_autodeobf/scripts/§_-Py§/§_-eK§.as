package §_-Py§
{
   import §_-9J§.§_-xD§;
   import §_-U0§.§_-tF§;
   import §_-q6§.§_-ZW§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-eK§
   {
      
      public static const §_-rr§:String = "dummyState";
      
      public static const §_-tk§:int = 0;
      
      public static const §_-pQ§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-M-§:Object = null;
       
      
      public var §_-kE§:Boolean = false;
      
      public var §_-rE§:Boolean = false;
      
      public var mName:String;
      
      public var §_-M4§:Boolean = false;
      
      public var §_-uY§:Boolean = false;
      
      public var §_-Lb§:§_-ZW§;
      
      public var §_-HM§:Array;
      
      public var mNextState:String = "";
      
      public var §_-S0§:Sprite = null;
      
      public var §_-e2§:§_-kP§ = null;
      
      public function §_-eK§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-HM§ = new Array();
         this.§_-S0§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-os§(param1:String) : String
      {
         if(§_-M-§)
         {
            return §_-M-§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-kE§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-ZW§ = null;
         if(!this.§_-kE§)
         {
            this.init();
         }
         if(this.§_-Lb§)
         {
            this.§_-S0§.addChild(this.§_-Lb§);
            this.§_-Lb§.§_-2y§();
         }
         for each(_loc1_ in this.§_-HM§)
         {
            this.§_-S0§.addChild(_loc1_);
            _loc1_.§_-jM§();
         }
         this.mNextState = "";
         this.§_-rE§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-ZW§ = null;
         if(this.§_-Lb§)
         {
            this.§_-Lb§.§_-jM§();
            this.§_-S0§.removeChild(this.§_-Lb§);
         }
         for each(_loc1_ in this.§_-HM§)
         {
            _loc1_.§_-jM§();
            this.§_-S0§.removeChild(_loc1_);
         }
         if(!this.§_-rE§)
         {
            if(this.§_-uY§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-rE§ = false;
         if(this.§_-uY§)
         {
            this.cleanup();
         }
      }
      
      public function §_-uS§(param1:Boolean) : void
      {
         this.§_-uY§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-kE§)
         {
            return;
         }
         if(this.§_-Lb§)
         {
            this.§_-Lb§.clear();
            this.§_-Lb§ = null;
         }
         while(this.§_-HM§.length > 0)
         {
            (this.§_-HM§.pop() as §_-ZW§).clear();
         }
         if(this.§_-rE§)
         {
            this.deActivate();
         }
         this.§_-kE§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-kE§)
         {
            §_-tF§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-tk§;
         }
         if(!this.§_-rE§)
         {
            §_-tF§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-pQ§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-M4§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-xD§) : void
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
      
      public function §_-uJ§(param1:§_-ZW§) : void
      {
         this.§_-HM§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-S0§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-S0§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-S0§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-e2§)
         {
            return this.§_-e2§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-e2§)
         {
            return this.§_-e2§.getAppHeight();
         }
         return 0;
      }
   }
}
