package §_-IC§
{
   import §_-8J§.§_-8s§;
   import §_-RG§.§_-HT§;
   import §_-Ys§.§_-o-§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-Uw§
   {
      
      public static const §_-SG§:String = "dummyState";
      
      public static const §_-SJ§:int = 0;
      
      public static const §_-ug§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-2D§:Object = null;
       
      
      public var §_-5h§:Boolean = false;
      
      public var §_-dA§:Boolean = false;
      
      public var mName:String;
      
      public var §_-Yy§:Boolean = false;
      
      public var §_-oI§:Boolean = false;
      
      public var §_-Bv§:§_-8s§;
      
      public var §_-j4§:Array;
      
      public var mNextState:String = "";
      
      public var §_-C8§:Sprite = null;
      
      public var §_-QH§:§_-ZK§ = null;
      
      public function §_-Uw§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-j4§ = new Array();
         this.§_-C8§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-gl§(param1:String) : String
      {
         if(§_-2D§)
         {
            return §_-2D§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-5h§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-8s§ = null;
         if(!this.§_-5h§)
         {
            this.init();
         }
         if(this.§_-Bv§)
         {
            this.§_-C8§.addChild(this.§_-Bv§);
            this.§_-Bv§.§_-gt§();
         }
         for each(_loc1_ in this.§_-j4§)
         {
            this.§_-C8§.addChild(_loc1_);
            _loc1_.§_-8h§();
         }
         this.mNextState = "";
         this.§_-dA§ = true;
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-8s§ = null;
         if(this.§_-Bv§)
         {
            this.§_-Bv§.§_-8h§();
            this.§_-C8§.removeChild(this.§_-Bv§);
         }
         for each(_loc1_ in this.§_-j4§)
         {
            _loc1_.§_-8h§();
            this.§_-C8§.removeChild(_loc1_);
         }
         if(!this.§_-dA§)
         {
            if(this.§_-oI§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-dA§ = false;
         if(this.§_-oI§)
         {
            this.cleanup();
         }
      }
      
      public function §_-gr§(param1:Boolean) : void
      {
         this.§_-oI§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-5h§)
         {
            return;
         }
         if(this.§_-Bv§)
         {
            this.§_-Bv§.clear();
            this.§_-Bv§ = null;
         }
         while(this.§_-j4§.length > 0)
         {
            (this.§_-j4§.pop() as §_-8s§).clear();
         }
         if(this.§_-dA§)
         {
            this.deActivate();
         }
         this.§_-5h§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-5h§)
         {
            §_-HT§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-SJ§;
         }
         if(!this.§_-dA§)
         {
            §_-HT§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-ug§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-Yy§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
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
      
      public function §_-d1§(param1:§_-8s§) : void
      {
         this.§_-j4§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-C8§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-C8§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-C8§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-QH§)
         {
            return this.§_-QH§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-QH§)
         {
            return this.§_-QH§.getAppHeight();
         }
         return 0;
      }
   }
}
