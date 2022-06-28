package §'X§
{
   import §0!<§.§#y§;
   import §1;§.§!!1§;
   import §@s§.§'!0§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §9[§
   {
      
      public static const §9!2§:int = 60;
      
      public static const §2Z§:String = "dummyState";
      
      public static const §0s§:int = 0;
      
      public static const § !+§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §=l§:Object = null;
       
      
      public var § !G§:Boolean = false;
      
      public var §9l§:Boolean = false;
      
      public var mName:String;
      
      public var § each§:Boolean = false;
      
      public var §#Z§:Boolean = false;
      
      public var §#!4§:§!!1§;
      
      public var §<;§:Array;
      
      public var mNextState:String = "";
      
      public var §0W§:Sprite = null;
      
      public var §4!=§:§%y§ = null;
      
      public function §9[§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§<;§ = new Array();
         this.§0W§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §while§(param1:String) : String
      {
         if(§=l§)
         {
            return §=l§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§ !G§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§!!1§ = null;
         if(!this.§ !G§)
         {
            this.init();
         }
         if(this.§#!4§)
         {
            this.§0W§.addChild(this.§#!4§);
            this.§#!4§.§+,§();
         }
         for each(_loc1_ in this.§<;§)
         {
            this.§0W§.addChild(_loc1_);
            _loc1_.§=Q§();
         }
         this.mNextState = "";
         this.§9l§ = true;
      }
      
      public function §,!G§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§!!1§ = null;
         if(this.§#!4§)
         {
            this.§#!4§.§=Q§();
            this.§0W§.removeChild(this.§#!4§);
         }
         for each(_loc1_ in this.§<;§)
         {
            _loc1_.§=Q§();
            this.§0W§.removeChild(_loc1_);
         }
         if(!this.§9l§)
         {
            if(this.§#Z§)
            {
               this.cleanup();
            }
            return;
         }
         this.§9l§ = false;
         if(this.§#Z§)
         {
            this.cleanup();
         }
      }
      
      public function §<Q§(param1:Boolean) : void
      {
         this.§#Z§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§ !G§)
         {
            return;
         }
         if(this.§#!4§)
         {
            this.§#!4§.clear();
            this.§#!4§ = null;
         }
         while(this.§<;§.length > 0)
         {
            (this.§<;§.pop() as §!!1§).clear();
         }
         if(this.§9l§)
         {
            this.deActivate();
         }
         this.§ !G§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§ !G§)
         {
            §#y§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §0s§;
         }
         if(!this.§9l§)
         {
            §#y§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return § !+§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§ each§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
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
      
      public function §0!"§(param1:§!!1§) : void
      {
         this.§<;§.push(param1);
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
         if(this.§4!=§)
         {
            return this.§4!=§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§4!=§)
         {
            return this.§4!=§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§#!4§)
         {
            this.§#!4§.viewWidth = param1;
            this.§#!4§.viewHeight = param2;
         }
      }
      
      public function §`u§() : int
      {
         return §9!2§;
      }
   }
}
