package §_-Je§
{
   import §_-PK§.§_-Jb§;
   import §_-Ux§.§_-2E§;
   import §_-ot§.§_-o6§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-RH§
   {
      
      public static const §_-rV§:String = "dummyState";
      
      public static const §_-Ye§:int = 0;
      
      public static const §_-St§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-Gp§:Object = null;
       
      
      public var §_-NX§:Boolean = false;
      
      public var §_-TY§:Boolean = false;
      
      public var mName:String;
      
      public var §_-U6§:Boolean = false;
      
      public var §_-bh§:Boolean = false;
      
      public var §_-wB§:§_-2E§;
      
      public var §_-oy§:Array;
      
      public var mNextState:String = "";
      
      public var §_-Pj§:Sprite = null;
      
      public var §_-lL§:§_-Qy§ = null;
      
      public function §_-RH§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-oy§ = new Array();
         this.§_-Pj§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-hv§(param1:String) : String
      {
         if(§_-Gp§)
         {
            return §_-Gp§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-NX§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-2E§ = null;
         if(!this.§_-NX§)
         {
            this.init();
         }
         if(this.§_-wB§)
         {
            this.§_-Pj§.addChild(this.§_-wB§);
            this.§_-wB§.§_-XS§();
         }
         for each(_loc1_ in this.§_-oy§)
         {
            this.§_-Pj§.addChild(_loc1_);
            _loc1_.§_-VN§();
         }
         this.mNextState = "";
         this.§_-TY§ = true;
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-2E§ = null;
         if(this.§_-wB§)
         {
            this.§_-wB§.§_-VN§();
            this.§_-Pj§.removeChild(this.§_-wB§);
         }
         for each(_loc1_ in this.§_-oy§)
         {
            _loc1_.§_-VN§();
            this.§_-Pj§.removeChild(_loc1_);
         }
         if(!this.§_-TY§)
         {
            if(this.§_-bh§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-TY§ = false;
         if(this.§_-bh§)
         {
            this.cleanup();
         }
      }
      
      public function §_-BO§(param1:Boolean) : void
      {
         this.§_-bh§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-NX§)
         {
            return;
         }
         if(this.§_-wB§)
         {
            this.§_-wB§.clear();
            this.§_-wB§ = null;
         }
         while(this.§_-oy§.length > 0)
         {
            (this.§_-oy§.pop() as §_-2E§).clear();
         }
         if(this.§_-TY§)
         {
            this.deActivate();
         }
         this.§_-NX§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-NX§)
         {
            §_-o6§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-Ye§;
         }
         if(!this.§_-TY§)
         {
            §_-o6§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-St§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-U6§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
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
      
      public function §_-uq§(param1:§_-2E§) : void
      {
         this.§_-oy§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-Pj§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-Pj§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-Pj§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-lL§)
         {
            return this.§_-lL§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-lL§)
         {
            return this.§_-lL§.getAppHeight();
         }
         return 0;
      }
   }
}
