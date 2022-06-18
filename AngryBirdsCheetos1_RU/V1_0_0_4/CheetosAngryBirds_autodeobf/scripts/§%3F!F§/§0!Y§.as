package §?!F§
{
   import §!!S§.§^P§;
   import §^!&§.§;C§;
   import §`B§.§-Z§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §0!Y§
   {
      
      public static const §'`§:int = 60;
      
      public static const §"!A§:String = "dummyState";
      
      public static const §"N§:int = 0;
      
      public static const §?!H§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §1!+§:Object = null;
       
      
      public var §]N§:Boolean = false;
      
      public var §[!<§:Boolean = false;
      
      public var mName:String;
      
      public var §-!-§:Boolean = false;
      
      public var §-?§:Boolean = false;
      
      public var §2m§:§-Z§;
      
      public var §,!!§:Array;
      
      public var mNextState:String = "";
      
      public var §0!5§:Sprite = null;
      
      public var §!Z§:§]T§ = null;
      
      public function §0!Y§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§,!!§ = new Array();
         this.§0!5§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §+E§(param1:String) : String
      {
         if(§1!+§)
         {
            return §1!+§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§]N§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§-Z§ = null;
         if(!this.§]N§)
         {
            this.init();
         }
         if(this.§2m§)
         {
            this.§0!5§.addChild(this.§2m§);
            this.§2m§.§3q§();
         }
         for each(_loc1_ in this.§,!!§)
         {
            this.§0!5§.addChild(_loc1_);
            _loc1_.§ !_§();
         }
         this.mNextState = "";
         this.§[!<§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§-Z§ = null;
         if(this.§2m§)
         {
            this.§2m§.§ !_§();
            this.§0!5§.removeChild(this.§2m§);
         }
         for each(_loc1_ in this.§,!!§)
         {
            _loc1_.§ !_§();
            this.§0!5§.removeChild(_loc1_);
         }
         if(!this.§[!<§)
         {
            if(this.§-?§)
            {
               this.cleanup();
            }
            return;
         }
         this.§[!<§ = false;
         if(this.§-?§)
         {
            this.cleanup();
         }
      }
      
      public function §`!U§(param1:Boolean) : void
      {
         this.§-?§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§]N§)
         {
            return;
         }
         if(this.§2m§)
         {
            this.§2m§.clear();
            this.§2m§ = null;
         }
         while(this.§,!!§.length > 0)
         {
            (this.§,!!§.pop() as §-Z§).clear();
         }
         if(this.§[!<§)
         {
            this.deActivate();
         }
         this.§]N§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§]N§)
         {
            §;C§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §"N§;
         }
         if(!this.§[!<§)
         {
            §;C§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §?!H§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§-!-§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^P§) : void
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
      
      public function §'!H§(param1:§-Z§) : void
      {
         this.§,!!§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§0!5§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§0!5§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§0!5§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§!Z§)
         {
            return this.§!Z§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§!Z§)
         {
            return this.§!Z§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2m§)
         {
            this.§2m§.viewWidth = param1;
            this.§2m§.viewHeight = param2;
         }
      }
      
      public function §^;§() : int
      {
         return §'`§;
      }
   }
}
