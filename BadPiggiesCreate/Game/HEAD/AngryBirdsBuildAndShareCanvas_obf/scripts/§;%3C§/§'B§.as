package §;<§
{
   import §&!<§.§>!V§;
   import §6]§.§,"0§;
   import §@y§.§0=§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §'B§
   {
      
      public static const §<!-§:int = 60;
      
      public static const §^o§:String = "dummyState";
      
      public static const §?u§:int = 0;
      
      public static const §++§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §!u§:Object = null;
       
      
      public var §'!<§:Boolean = false;
      
      public var §3!+§:Boolean = false;
      
      public var mName:String;
      
      public var §'!d§:Boolean = false;
      
      public var §?!x§:Boolean = false;
      
      public var §`!v§:§>!V§;
      
      public var §6e§:Array;
      
      public var mNextState:String = "";
      
      public var § D§:Sprite = null;
      
      public var §0!z§:§ "4§ = null;
      
      public function §'B§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§6e§ = new Array();
         this.§ D§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §'M§(param1:String) : String
      {
         if(§!u§)
         {
            return §!u§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§'!<§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§>!V§ = null;
         if(!this.§'!<§)
         {
            this.init();
         }
         if(this.§`!v§)
         {
            this.§ D§.addChild(this.§`!v§);
            this.§`!v§.§6!<§();
         }
         for each(_loc1_ in this.§6e§)
         {
            this.§ D§.addChild(_loc1_);
            _loc1_.§!c§();
         }
         this.mNextState = "";
         this.§3!+§ = true;
      }
      
      public function §!!3§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§>!V§ = null;
         if(this.§`!v§)
         {
            this.§`!v§.§!c§();
            this.§ D§.removeChild(this.§`!v§);
         }
         for each(_loc1_ in this.§6e§)
         {
            _loc1_.§!c§();
            this.§ D§.removeChild(_loc1_);
         }
         if(!this.§3!+§)
         {
            if(this.§?!x§)
            {
               this.cleanup();
            }
            return;
         }
         this.§3!+§ = false;
         if(this.§?!x§)
         {
            this.cleanup();
         }
      }
      
      public function §!4§(param1:Boolean) : void
      {
         this.§?!x§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§'!<§)
         {
            return;
         }
         if(this.§`!v§)
         {
            this.§`!v§.clear();
            this.§`!v§ = null;
         }
         while(this.§6e§.length > 0)
         {
            (this.§6e§.pop() as §>!V§).clear();
         }
         if(this.§3!+§)
         {
            this.deActivate();
         }
         this.§'!<§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§'!<§)
         {
            §,"0§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §?u§;
         }
         if(!this.§3!+§)
         {
            §,"0§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §++§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§'!d§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
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
      
      public function §;!l§(param1:§>!V§) : void
      {
         this.§6e§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§ D§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§ D§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§ D§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§0!z§)
         {
            return this.§0!z§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§0!z§)
         {
            return this.§0!z§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`!v§)
         {
            this.§`!v§.viewWidth = param1;
            this.§`!v§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §<!-§;
      }
   }
}
