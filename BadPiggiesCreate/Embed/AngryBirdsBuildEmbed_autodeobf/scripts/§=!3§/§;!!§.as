package §=!3§
{
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §#!4§.§+!S§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §;!!§
   {
      
      public static const § [§:int = 60;
      
      public static const §!3§:String = "dummyState";
      
      public static const §#!Q§:int = 0;
      
      public static const §8K§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §[e§:Object = null;
       
      
      public var §?P§:Boolean = false;
      
      public var §8W§:Boolean = false;
      
      public var mName:String;
      
      public var §=u§:Boolean = false;
      
      public var §@!q§:Boolean = false;
      
      public var §+!$§:§2U§;
      
      public var §'!M§:Array;
      
      public var mNextState:String = "";
      
      public var §>E§:Sprite = null;
      
      public var §7'§:§=!p§ = null;
      
      public function §;!!§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§'!M§ = new Array();
         this.§>E§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function § !<§(param1:String) : String
      {
         if(§[e§)
         {
            return §[e§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§?P§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§2U§ = null;
         if(!this.§?P§)
         {
            this.init();
         }
         if(this.§+!$§)
         {
            this.§>E§.addChild(this.§+!$§);
            this.§+!$§.§[T§();
         }
         for each(_loc1_ in this.§'!M§)
         {
            this.§>E§.addChild(_loc1_);
            _loc1_.§=N§();
         }
         this.mNextState = "";
         this.§8W§ = true;
      }
      
      public function §+R§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§2U§ = null;
         if(this.§+!$§)
         {
            this.§+!$§.§=N§();
            this.§>E§.removeChild(this.§+!$§);
         }
         for each(_loc1_ in this.§'!M§)
         {
            _loc1_.§=N§();
            this.§>E§.removeChild(_loc1_);
         }
         if(!this.§8W§)
         {
            if(this.§@!q§)
            {
               this.cleanup();
            }
            return;
         }
         this.§8W§ = false;
         if(this.§@!q§)
         {
            this.cleanup();
         }
      }
      
      public function §5!e§(param1:Boolean) : void
      {
         this.§@!q§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§?P§)
         {
            return;
         }
         if(this.§+!$§)
         {
            this.§+!$§.clear();
            this.§+!$§ = null;
         }
         while(this.§'!M§.length > 0)
         {
            (this.§'!M§.pop() as §2U§).clear();
         }
         if(this.§8W§)
         {
            this.deActivate();
         }
         this.§?P§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§?P§)
         {
            §`![§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §#!Q§;
         }
         if(!this.§8W§)
         {
            §`![§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §8K§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§=u§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
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
      
      public function §%!0§(param1:§2U§) : void
      {
         this.§'!M§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§>E§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§>E§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§>E§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§7'§)
         {
            return this.§7'§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§7'§)
         {
            return this.§7'§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§+!$§)
         {
            this.§+!$§.viewWidth = param1;
            this.§+!$§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return § [§;
      }
   }
}
