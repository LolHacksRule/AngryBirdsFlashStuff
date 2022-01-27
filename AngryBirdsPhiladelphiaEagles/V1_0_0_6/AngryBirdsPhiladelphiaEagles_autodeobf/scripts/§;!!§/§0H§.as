package §;!!§
{
   import §!!0§.§ true§;
   import §3!O§.§5q§;
   import §4M§.§^'§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §0H§
   {
      
      public static const §2Z§:int = 60;
      
      public static const §;5§:String = "dummyState";
      
      public static const §do §:int = 0;
      
      public static const §?&§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §13§:Object = null;
       
      
      public var §34§:Boolean = false;
      
      public var mActive:Boolean = false;
      
      public var mName:String;
      
      public var §0j§:Boolean = false;
      
      public var §[a§:Boolean = false;
      
      public var §<A§:§^'§;
      
      public var §'!"§:Array;
      
      public var mNextState:String = "";
      
      public var §+!N§:Sprite = null;
      
      public var §;@§:§"Q§ = null;
      
      public function §0H§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§'!"§ = new Array();
         this.§+!N§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §5!!§(param1:String) : String
      {
         if(§13§)
         {
            return §13§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§34§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§^'§ = null;
         if(!this.§34§)
         {
            this.init();
         }
         if(this.§<A§)
         {
            this.§+!N§.addChild(this.§<A§);
            this.§<A§.§>j§();
         }
         for each(_loc1_ in this.§'!"§)
         {
            this.§+!N§.addChild(_loc1_);
            _loc1_.§6!@§();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function §default§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§^'§ = null;
         if(this.§<A§)
         {
            this.§<A§.§6!@§();
            this.§+!N§.removeChild(this.§<A§);
         }
         for each(_loc1_ in this.§'!"§)
         {
            _loc1_.§6!@§();
            this.§+!N§.removeChild(_loc1_);
         }
         if(!this.mActive)
         {
            if(this.§[a§)
            {
               this.cleanup();
            }
            return;
         }
         this.mActive = false;
         if(this.§[a§)
         {
            this.cleanup();
         }
      }
      
      public function §"!H§(param1:Boolean) : void
      {
         this.§[a§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§34§)
         {
            return;
         }
         if(this.§<A§)
         {
            this.§<A§.clear();
            this.§<A§ = null;
         }
         while(this.§'!"§.length > 0)
         {
            (this.§'!"§.pop() as §^'§).clear();
         }
         if(this.mActive)
         {
            this.deActivate();
         }
         this.§34§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§34§)
         {
            §5q§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §do §;
         }
         if(!this.mActive)
         {
            §5q§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §?&§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§0j§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
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
      
      public function §+<§(param1:§^'§) : void
      {
         this.§'!"§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§+!N§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§+!N§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§+!N§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§;@§)
         {
            return this.§;@§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§;@§)
         {
            return this.§;@§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§<A§)
         {
            this.§<A§.viewWidth = param1;
            this.§<A§.viewHeight = param2;
         }
      }
      
      public function §,Y§() : int
      {
         return §2Z§;
      }
   }
}
