package §_-sj§
{
   import §_-A§.§_-KQ§;
   import §_-aA§.§_-I0§;
   import §_-w8§.§_-S6§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-qs§
   {
      
      public static const §_-sa§:String = "dummyState";
      
      public static const §_-0-O§:int = 0;
      
      public static const §_-ar§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-Ks§:Object = null;
       
      
      public var §_-P9§:Boolean = false;
      
      public var §_-00L§:Boolean = false;
      
      public var mName:String;
      
      public var §_-aE§:Boolean = false;
      
      public var §_-Lf§:Boolean = false;
      
      public var §_-x2§:§_-S6§;
      
      public var §_-Ad§:Array;
      
      public var mNextState:String = "";
      
      public var §_-xQ§:Sprite = null;
      
      public var §_-lJ§:§_-Vo§ = null;
      
      public function §_-qs§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-Ad§ = new Array();
         this.§_-xQ§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-6p§(param1:String) : String
      {
         if(§_-Ks§)
         {
            return §_-Ks§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-P9§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-S6§ = null;
         if(!this.§_-P9§)
         {
            this.init();
         }
         if(this.§_-x2§)
         {
            this.§_-xQ§.addChild(this.§_-x2§);
            this.§_-x2§.§_-0-M§();
         }
         for each(_loc1_ in this.§_-Ad§)
         {
            this.§_-xQ§.addChild(_loc1_);
            _loc1_.§_-tN§();
         }
         this.mNextState = "";
         this.§_-00L§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-S6§ = null;
         if(this.§_-x2§)
         {
            this.§_-x2§.§_-tN§();
            this.§_-xQ§.removeChild(this.§_-x2§);
         }
         for each(_loc1_ in this.§_-Ad§)
         {
            _loc1_.§_-tN§();
            this.§_-xQ§.removeChild(_loc1_);
         }
         if(!this.§_-00L§)
         {
            if(this.§_-Lf§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-00L§ = false;
         if(this.§_-Lf§)
         {
            this.cleanup();
         }
      }
      
      public function §_-qb§(param1:Boolean) : void
      {
         this.§_-Lf§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-P9§)
         {
            return;
         }
         if(this.§_-x2§)
         {
            this.§_-x2§.clear();
            this.§_-x2§ = null;
         }
         while(this.§_-Ad§.length > 0)
         {
            (this.§_-Ad§.pop() as §_-S6§).clear();
         }
         if(this.§_-00L§)
         {
            this.deActivate();
         }
         this.§_-P9§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-P9§)
         {
            §_-I0§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-0-O§;
         }
         if(!this.§_-00L§)
         {
            §_-I0§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-ar§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-aE§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-KQ§) : void
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
      
      public function §_-Ej§(param1:§_-S6§) : void
      {
         this.§_-Ad§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-xQ§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-xQ§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-xQ§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-lJ§)
         {
            return this.§_-lJ§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-lJ§)
         {
            return this.§_-lJ§.getAppHeight();
         }
         return 0;
      }
   }
}
