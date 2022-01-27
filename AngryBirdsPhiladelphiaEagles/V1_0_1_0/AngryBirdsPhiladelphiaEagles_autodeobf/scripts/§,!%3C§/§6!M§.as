package §,!<§
{
   import §'!N§.§%!E§;
   import §-!5§.§5s§;
   import §]!O§.§+[§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §6!M§
   {
      
      public static const §1z§:int = 60;
      
      public static const §@!1§:String = "dummyState";
      
      public static const §%!,§:int = 0;
      
      public static const §4u§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §>!9§:Object = null;
       
      
      public var §8U§:Boolean = false;
      
      public var mActive:Boolean = false;
      
      public var mName:String;
      
      public var §%[§:Boolean = false;
      
      public var §9!4§:Boolean = false;
      
      public var § §:§+[§;
      
      public var §21§:Array;
      
      public var mNextState:String = "";
      
      public var §5+§:Sprite = null;
      
      public var §2i§:§7! § = null;
      
      public function §6!M§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§21§ = new Array();
         this.§5+§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function § D§(param1:String) : String
      {
         if(§>!9§)
         {
            return §>!9§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§8U§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§+[§ = null;
         if(!this.§8U§)
         {
            this.init();
         }
         if(this.§ §)
         {
            this.§5+§.addChild(this.§ §);
            this.§ §.§#W§();
         }
         for each(_loc1_ in this.§21§)
         {
            this.§5+§.addChild(_loc1_);
            _loc1_.§?!3§();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function §?!4§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§+[§ = null;
         if(this.§ §)
         {
            this.§ §.§?!3§();
            this.§5+§.removeChild(this.§ §);
         }
         for each(_loc1_ in this.§21§)
         {
            _loc1_.§?!3§();
            this.§5+§.removeChild(_loc1_);
         }
         if(!this.mActive)
         {
            if(this.§9!4§)
            {
               this.cleanup();
            }
            return;
         }
         this.mActive = false;
         if(this.§9!4§)
         {
            this.cleanup();
         }
      }
      
      public function §]!D§(param1:Boolean) : void
      {
         this.§9!4§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§8U§)
         {
            return;
         }
         if(this.§ §)
         {
            this.§ §.clear();
            this.§ § = null;
         }
         while(this.§21§.length > 0)
         {
            (this.§21§.pop() as §+[§).clear();
         }
         if(this.mActive)
         {
            this.deActivate();
         }
         this.§8U§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§8U§)
         {
            §5s§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §%!,§;
         }
         if(!this.mActive)
         {
            §5s§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §4u§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§%[§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
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
      
      public function §8!>§(param1:§+[§) : void
      {
         this.§21§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§5+§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§5+§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§5+§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§2i§)
         {
            return this.§2i§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§2i§)
         {
            return this.§2i§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§ §)
         {
            this.§ §.viewWidth = param1;
            this.§ §.viewHeight = param2;
         }
      }
      
      public function §5D§() : int
      {
         return §1z§;
      }
   }
}
