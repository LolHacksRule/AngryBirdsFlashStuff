package §>w§
{
   import §4u§.§<!L§;
   import §9!7§.§#p§;
   import §?!V§.§ T§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §4E§
   {
      
      public static const §%l§:int = 60;
      
      public static const §9n§:String = "dummyState";
      
      public static const §6! §:int = 0;
      
      public static const §+!S§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §9C§:Object = null;
       
      
      public var §3!+§:Boolean = false;
      
      public var §=!T§:Boolean = false;
      
      public var mName:String;
      
      public var §?!i§:Boolean = false;
      
      public var §6+§:Boolean = false;
      
      public var §1!j§:§ T§;
      
      public var §8!x§:Array;
      
      public var mNextState:String = "";
      
      public var §`!-§:Sprite = null;
      
      public var §^!g§:§`!L§ = null;
      
      public function §4E§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§8!x§ = new Array();
         this.§`!-§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §4!c§(param1:String) : String
      {
         if(§9C§)
         {
            return §9C§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§3!+§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§ T§ = null;
         if(!this.§3!+§)
         {
            this.init();
         }
         if(this.§1!j§)
         {
            this.§`!-§.addChild(this.§1!j§);
            this.§1!j§.§?v§();
         }
         for each(_loc1_ in this.§8!x§)
         {
            this.§`!-§.addChild(_loc1_);
            _loc1_.§5!w§();
         }
         this.mNextState = "";
         this.§=!T§ = true;
      }
      
      public function §-J§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§ T§ = null;
         if(this.§1!j§)
         {
            this.§1!j§.§5!w§();
            this.§`!-§.removeChild(this.§1!j§);
         }
         for each(_loc1_ in this.§8!x§)
         {
            _loc1_.§5!w§();
            this.§`!-§.removeChild(_loc1_);
         }
         if(!this.§=!T§)
         {
            if(this.§6+§)
            {
               this.cleanup();
            }
            return;
         }
         this.§=!T§ = false;
         if(this.§6+§)
         {
            this.cleanup();
         }
      }
      
      public function §[V§(param1:Boolean) : void
      {
         this.§6+§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§3!+§)
         {
            return;
         }
         if(this.§1!j§)
         {
            this.§1!j§.clear();
            this.§1!j§ = null;
         }
         while(this.§8!x§.length > 0)
         {
            (this.§8!x§.pop() as § T§).clear();
         }
         if(this.§=!T§)
         {
            this.deActivate();
         }
         this.§3!+§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§3!+§)
         {
            §<!L§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §6! §;
         }
         if(!this.§=!T§)
         {
            §<!L§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §+!S§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§?!i§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
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
      
      public function §!"1§(param1:§ T§) : void
      {
         this.§8!x§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§`!-§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§`!-§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§`!-§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§^!g§)
         {
            return this.§^!g§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§^!g§)
         {
            return this.§^!g§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§1!j§)
         {
            this.§1!j§.viewWidth = param1;
            this.§1!j§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §%l§;
      }
   }
}
