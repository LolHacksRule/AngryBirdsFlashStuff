package §%!;§
{
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import §@V§.§`!5§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §!L§
   {
      
      public static const §<z§:int = 60;
      
      public static const §4W§:String = "dummyState";
      
      public static const §43§:int = 0;
      
      public static const §6%§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §[g§:Object = null;
       
      
      public var §9o§:Boolean = false;
      
      public var mActive:Boolean = false;
      
      public var mName:String;
      
      public var §^!,§:Boolean = false;
      
      public var §=y§:Boolean = false;
      
      public var §>2§:§<!K§;
      
      public var §06§:Array;
      
      public var mNextState:String = "";
      
      public var §=!"§:Sprite = null;
      
      public var §,!<§:§`p§ = null;
      
      public function §!L§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§06§ = new Array();
         this.§=!"§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §=q§(param1:String) : String
      {
         if(§[g§)
         {
            return §[g§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§9o§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§<!K§ = null;
         if(!this.§9o§)
         {
            this.init();
         }
         if(this.§>2§)
         {
            this.§=!"§.addChild(this.§>2§);
            this.§>2§.§%%§();
         }
         for each(_loc1_ in this.§06§)
         {
            this.§=!"§.addChild(_loc1_);
            _loc1_.§%s§();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function §6!%§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§<!K§ = null;
         if(this.§>2§)
         {
            this.§>2§.§%s§();
            this.§=!"§.removeChild(this.§>2§);
         }
         for each(_loc1_ in this.§06§)
         {
            _loc1_.§%s§();
            this.§=!"§.removeChild(_loc1_);
         }
         if(!this.mActive)
         {
            if(this.§=y§)
            {
               this.cleanup();
            }
            return;
         }
         this.mActive = false;
         if(this.§=y§)
         {
            this.cleanup();
         }
      }
      
      public function §5w§(param1:Boolean) : void
      {
         this.§=y§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§9o§)
         {
            return;
         }
         if(this.§>2§)
         {
            this.§>2§.clear();
            this.§>2§ = null;
         }
         while(this.§06§.length > 0)
         {
            (this.§06§.pop() as §<!K§).clear();
         }
         if(this.mActive)
         {
            this.deActivate();
         }
         this.§9o§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§9o§)
         {
            §`!5§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §43§;
         }
         if(!this.mActive)
         {
            §`!5§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §6%§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§^!,§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
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
      
      public function §2J§(param1:§<!K§) : void
      {
         this.§06§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§=!"§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§=!"§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§=!"§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§,!<§)
         {
            return this.§,!<§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§,!<§)
         {
            return this.§,!<§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§>2§)
         {
            this.§>2§.viewWidth = param1;
            this.§>2§.viewHeight = param2;
         }
      }
      
      public function §true §() : int
      {
         return §<z§;
      }
   }
}
