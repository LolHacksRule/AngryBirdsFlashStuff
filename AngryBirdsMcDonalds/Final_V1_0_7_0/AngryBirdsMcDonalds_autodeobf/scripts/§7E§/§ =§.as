package §7E§
{
   import §+$§.§[!a§;
   import §0i§.§4!%§;
   import §3<§.§-2§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class § =§
   {
      
      public static const §+v§:int = 60;
      
      public static const §2!U§:String = "dummyState";
      
      public static const §,^§:int = 0;
      
      public static const §5!E§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §=9§:Object = null;
       
      
      public var §=?§:Boolean = false;
      
      public var §<!Y§:Boolean = false;
      
      public var mName:String;
      
      public var get:Boolean = false;
      
      public var §'!W§:Boolean = false;
      
      public var mUIView:§-2§;
      
      public var §#!F§:Array;
      
      public var mNextState:String = "";
      
      public var §#Y§:Sprite = null;
      
      public var §[!Z§:§%7§ = null;
      
      public function § =§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§#!F§ = new Array();
         this.§#Y§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §56§(param1:String) : String
      {
         if(§=9§)
         {
            return §=9§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§=?§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§-2§ = null;
         if(!this.§=?§)
         {
            this.init();
         }
         if(this.mUIView)
         {
            this.§#Y§.addChild(this.mUIView);
            this.mUIView.§'9§();
         }
         for each(_loc1_ in this.§#!F§)
         {
            this.§#Y§.addChild(_loc1_);
            _loc1_.§ !p§();
         }
         this.mNextState = "";
         this.§<!Y§ = true;
      }
      
      public function §!0§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§-2§ = null;
         if(this.mUIView)
         {
            this.mUIView.§ !p§();
            this.§#Y§.removeChild(this.mUIView);
         }
         for each(_loc1_ in this.§#!F§)
         {
            _loc1_.§ !p§();
            this.§#Y§.removeChild(_loc1_);
         }
         if(!this.§<!Y§)
         {
            if(this.§'!W§)
            {
               this.cleanup();
            }
            return;
         }
         this.§<!Y§ = false;
         if(this.§'!W§)
         {
            this.cleanup();
         }
      }
      
      public function § !_§(param1:Boolean) : void
      {
         this.§'!W§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§=?§)
         {
            return;
         }
         if(this.mUIView)
         {
            this.mUIView.clear();
            this.mUIView = null;
         }
         while(this.§#!F§.length > 0)
         {
            (this.§#!F§.pop() as §-2§).clear();
         }
         if(this.§<!Y§)
         {
            this.deActivate();
         }
         this.§=?§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§=?§)
         {
            §4!%§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §,^§;
         }
         if(!this.§<!Y§)
         {
            §4!%§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §5!E§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.get;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
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
      
      public function §1d§(param1:§-2§) : void
      {
         this.§#!F§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§#Y§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§#Y§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§#Y§.contains(param1);
      }
      
      public function §+!7§() : int
      {
         if(this.§[!Z§)
         {
            return this.§[!Z§.§+!7§();
         }
         return 0;
      }
      
      public function § !F§() : int
      {
         if(this.§[!Z§)
         {
            return this.§[!Z§.§ !F§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.mUIView)
         {
            this.mUIView.viewWidth = param1;
            this.mUIView.viewHeight = param2;
         }
      }
      
      public function §9!c§() : int
      {
         return §+v§;
      }
   }
}
