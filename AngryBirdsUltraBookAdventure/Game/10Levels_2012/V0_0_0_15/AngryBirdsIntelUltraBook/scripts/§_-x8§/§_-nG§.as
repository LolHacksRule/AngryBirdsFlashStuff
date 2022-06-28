package §_-x8§
{
   import §_-0BH§.§_-FK§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-nG§
   {
      
      public static const §_-zC§:int = 60;
      
      public static const §_-1R§:String = "dummyState";
      
      public static const §_-a6§:int = 0;
      
      public static const §_-JX§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-lH§:Object = null;
       
      
      public var §_-I8§:Boolean = false;
      
      public var §_-rE§:Boolean = false;
      
      public var mName:String;
      
      public var §_-9o§:Boolean = false;
      
      public var §_-ca§:Boolean = false;
      
      public var §_-s0§:§_-5q§;
      
      public var §_-EU§:Array;
      
      public var mNextState:String = "";
      
      public var §_-FQ§:Sprite = null;
      
      public var §_-vC§:§_-Ue§ = null;
      
      public function §_-nG§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-EU§ = new Array();
         this.§_-FQ§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-oh§(param1:String) : String
      {
         if(§_-lH§)
         {
            return §_-lH§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-I8§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-5q§ = null;
         if(!this.§_-I8§)
         {
            this.init();
         }
         if(this.§_-s0§)
         {
            this.§_-FQ§.addChild(this.§_-s0§);
            this.§_-s0§.activateView();
         }
         for each(_loc1_ in this.§_-EU§)
         {
            this.§_-FQ§.addChild(_loc1_);
            _loc1_.§_-nr§();
         }
         this.mNextState = "";
         this.§_-rE§ = true;
      }
      
      public function §_-zx§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-5q§ = null;
         if(this.§_-s0§)
         {
            this.§_-s0§.§_-nr§();
            this.§_-FQ§.removeChild(this.§_-s0§);
         }
         for each(_loc1_ in this.§_-EU§)
         {
            _loc1_.§_-nr§();
            this.§_-FQ§.removeChild(_loc1_);
         }
         if(!this.§_-rE§)
         {
            if(this.§_-ca§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-rE§ = false;
         if(this.§_-ca§)
         {
            this.cleanup();
         }
      }
      
      public function §_-vO§(param1:Boolean) : void
      {
         this.§_-ca§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-I8§)
         {
            return;
         }
         if(this.§_-s0§)
         {
            this.§_-s0§.clear();
            this.§_-s0§ = null;
         }
         while(this.§_-EU§.length > 0)
         {
            (this.§_-EU§.pop() as §_-5q§).clear();
         }
         if(this.§_-rE§)
         {
            this.deActivate();
         }
         this.§_-I8§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-I8§)
         {
            §_-FK§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-a6§;
         }
         if(!this.§_-rE§)
         {
            §_-FK§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-JX§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-9o§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
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
      
      public function §_-ys§(param1:§_-5q§) : void
      {
         this.§_-EU§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-FQ§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-FQ§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-FQ§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-vC§)
         {
            return this.§_-vC§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-vC§)
         {
            return this.§_-vC§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§_-s0§)
         {
            this.§_-s0§.viewWidth = param1;
            this.§_-s0§.viewHeight = param2;
         }
      }
      
      public function §_-lf§() : int
      {
         return §_-zC§;
      }
   }
}
