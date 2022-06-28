package §"!&§
{
   import §+!"§.§5!<§;
   import §-!F§.§^h§;
   import §<!G§.§^3§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §#!,§
   {
      
      public static const §#t§:int = 60;
      
      public static const §47§:String = "dummyState";
      
      public static const §?0§:int = 0;
      
      public static const §0m§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §+!!§:Object = null;
       
      
      public var §;!$§:Boolean = false;
      
      public var §6V§:Boolean = false;
      
      public var mName:String;
      
      public var §[z§:Boolean = false;
      
      public var §"v§:Boolean = false;
      
      public var §[=§:§^3§;
      
      public var §;!C§:Array;
      
      public var mNextState:String = "";
      
      public var §[0§:Sprite = null;
      
      public var §-_§:§7§ = null;
      
      public function §#!,§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§;!C§ = new Array();
         this.§[0§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §,!<§(param1:String) : String
      {
         if(§+!!§)
         {
            return §+!!§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§;!$§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§^3§ = null;
         if(!this.§;!$§)
         {
            this.init();
         }
         if(this.§[=§)
         {
            this.§[0§.addChild(this.§[=§);
            this.§[=§.§<!&§();
         }
         for each(_loc1_ in this.§;!C§)
         {
            this.§[0§.addChild(_loc1_);
            _loc1_.§%Y§();
         }
         this.mNextState = "";
         this.§6V§ = true;
      }
      
      public function §4Q§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§^3§ = null;
         if(this.§[=§)
         {
            this.§[=§.§%Y§();
            this.§[0§.removeChild(this.§[=§);
         }
         for each(_loc1_ in this.§;!C§)
         {
            _loc1_.§%Y§();
            this.§[0§.removeChild(_loc1_);
         }
         if(!this.§6V§)
         {
            if(this.§"v§)
            {
               this.cleanup();
            }
            return;
         }
         this.§6V§ = false;
         if(this.§"v§)
         {
            this.cleanup();
         }
      }
      
      public function §7!2§(param1:Boolean) : void
      {
         this.§"v§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§;!$§)
         {
            return;
         }
         if(this.§[=§)
         {
            this.§[=§.clear();
            this.§[=§ = null;
         }
         while(this.§;!C§.length > 0)
         {
            (this.§;!C§.pop() as §^3§).clear();
         }
         if(this.§6V§)
         {
            this.deActivate();
         }
         this.§;!$§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§;!$§)
         {
            §5!<§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §?0§;
         }
         if(!this.§6V§)
         {
            §5!<§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §0m§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§[z§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
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
      
      public function §+H§(param1:§^3§) : void
      {
         this.§;!C§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§[0§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§[0§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§[0§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§-_§)
         {
            return this.§-_§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§-_§)
         {
            return this.§-_§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§[=§)
         {
            this.§[=§.viewWidth = param1;
            this.§[=§.viewHeight = param2;
         }
      }
      
      public function §#K§() : int
      {
         return §#t§;
      }
   }
}
