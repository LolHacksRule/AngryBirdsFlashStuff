package §_-EH§
{
   import §_-16§.§_-VR§;
   import §_-r6§.§_-Oy§;
   import §_-xL§.§_-1-§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-uz§
   {
      
      public static const §_-1m§:String = "dummyState";
      
      public static const §_-sU§:int = 0;
      
      public static const §_-aY§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-go§:Object = null;
       
      
      public var §_-Cu§:Boolean = false;
      
      public var §_-c8§:Boolean = false;
      
      public var mName:String;
      
      public var §_-TF§:Boolean = false;
      
      public var §_-7n§:Boolean = false;
      
      public var §_-nq§:§_-1-§;
      
      public var §_-mt§:Array;
      
      public var mNextState:String = "";
      
      public var §_-kv§:Sprite = null;
      
      public var §_-mO§:§_-xS§ = null;
      
      public function §_-uz§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-mt§ = new Array();
         this.§_-kv§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-U0§(param1:String) : String
      {
         if(§_-go§)
         {
            return §_-go§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-Cu§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-1-§ = null;
         if(!this.§_-Cu§)
         {
            this.init();
         }
         if(this.§_-nq§)
         {
            this.§_-kv§.addChild(this.§_-nq§);
            this.§_-nq§.§_-Zg§();
         }
         for each(_loc1_ in this.§_-mt§)
         {
            this.§_-kv§.addChild(_loc1_);
            _loc1_.§_-gk§();
         }
         this.mNextState = "";
         this.§_-c8§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-1-§ = null;
         if(this.§_-nq§)
         {
            this.§_-nq§.§_-gk§();
            this.§_-kv§.removeChild(this.§_-nq§);
         }
         for each(_loc1_ in this.§_-mt§)
         {
            _loc1_.§_-gk§();
            this.§_-kv§.removeChild(_loc1_);
         }
         if(!this.§_-c8§)
         {
            if(this.§_-7n§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-c8§ = false;
         if(this.§_-7n§)
         {
            this.cleanup();
         }
      }
      
      public function §_-ur§(param1:Boolean) : void
      {
         this.§_-7n§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-Cu§)
         {
            return;
         }
         if(this.§_-nq§)
         {
            this.§_-nq§.clear();
            this.§_-nq§ = null;
         }
         while(this.§_-mt§.length > 0)
         {
            (this.§_-mt§.pop() as §_-1-§).clear();
         }
         if(this.§_-c8§)
         {
            this.deActivate();
         }
         this.§_-Cu§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-Cu§)
         {
            §_-Oy§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-sU§;
         }
         if(!this.§_-c8§)
         {
            §_-Oy§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-aY§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-TF§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-VR§) : void
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
      
      public function §_-iA§(param1:§_-1-§) : void
      {
         this.§_-mt§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-kv§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-kv§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-kv§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-mO§)
         {
            return this.§_-mO§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-mO§)
         {
            return this.§_-mO§.getAppHeight();
         }
         return 0;
      }
   }
}
