package §0!§
{
   import §1;§.§!!1§;
   import §1h§.§@s§;
   import §2§.§0!<§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §0!5§
   {
      
      public static const §`u§:int = 60;
      
      public static const §9!2§:String = "dummyState";
      
      public static const §2Z§:int = 0;
      
      public static const §0s§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var § !+§:Object = null;
       
      
      public var §9[§:Boolean = false;
      
      public var §3!?§:Boolean = false;
      
      public var mName:String;
      
      public var § !G§:Boolean = false;
      
      public var § each§:Boolean = false;
      
      public var §#Z§:§!!1§;
      
      public var §#!4§:Array;
      
      public var mNextState:String = "";
      
      public var §0W§:Sprite = null;
      
      public var §<;§:§'X§ = null;
      
      public function §0!5§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§#!4§ = new Array();
         this.§0W§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §=l§(param1:String) : String
      {
         if(§ !+§)
         {
            return § !+§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§9[§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§!!1§ = null;
         if(!this.§9[§)
         {
            this.init();
         }
         if(this.§#Z§)
         {
            this.§0W§.addChild(this.§#Z§);
            this.§#Z§.§+,§();
         }
         for each(_loc1_ in this.§#!4§)
         {
            this.§0W§.addChild(_loc1_);
            _loc1_.§=Q§();
         }
         this.mNextState = "";
         this.§3!?§ = true;
      }
      
      public function §4!=§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§!!1§ = null;
         if(this.§#Z§)
         {
            this.§#Z§.§=Q§();
            this.§0W§.removeChild(this.§#Z§);
         }
         for each(_loc1_ in this.§#!4§)
         {
            _loc1_.§=Q§();
            this.§0W§.removeChild(_loc1_);
         }
         if(!this.§3!?§)
         {
            if(this.§ each§)
            {
               this.cleanup();
            }
            return;
         }
         this.§3!?§ = false;
         if(this.§ each§)
         {
            this.cleanup();
         }
      }
      
      public function §,!G§(param1:Boolean) : void
      {
         this.§ each§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§9[§)
         {
            return;
         }
         if(this.§#Z§)
         {
            this.§#Z§.clear();
            this.§#Z§ = null;
         }
         while(this.§#!4§.length > 0)
         {
            (this.§#!4§.pop() as §!!1§).clear();
         }
         if(this.§3!?§)
         {
            this.deActivate();
         }
         this.§9[§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§9[§)
         {
            §0!<§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §2Z§;
         }
         if(!this.§3!?§)
         {
            §0!<§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §0s§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§ !G§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
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
      
      public function §<Q§(param1:§!!1§) : void
      {
         this.§#!4§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§0W§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§0W§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§0W§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§<;§)
         {
            return this.§<;§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§<;§)
         {
            return this.§<;§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§#Z§)
         {
            this.§#Z§.viewWidth = param1;
            this.§#Z§.viewHeight = param2;
         }
      }
      
      public function §0!"§() : int
      {
         return §`u§;
      }
   }
}
