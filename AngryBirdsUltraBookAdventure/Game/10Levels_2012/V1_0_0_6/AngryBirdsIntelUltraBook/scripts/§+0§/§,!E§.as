package §+0§
{
   import §"x§.§-8§;
   import §>7§.§,!c§;
   import §[!+§.§4`§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §,!E§
   {
      
      public static const § !A§:int = 60;
      
      public static const §'!=§:String = "dummyState";
      
      public static const §,!4§:int = 0;
      
      public static const §`g§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §4!k§:Object = null;
       
      
      public var §?C§:Boolean = false;
      
      public var §=F§:Boolean = false;
      
      public var mName:String;
      
      public var §#!B§:Boolean = false;
      
      public var §^d§:Boolean = false;
      
      public var §&!m§:§4`§;
      
      public var §-4§:Array;
      
      public var mNextState:String = "";
      
      public var §2O§:Sprite = null;
      
      public var §&!g§:§3!B§ = null;
      
      public function §,!E§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§-4§ = new Array();
         this.§2O§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §+!0§(param1:String) : String
      {
         if(§4!k§)
         {
            return §4!k§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§?C§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§4`§ = null;
         if(!this.§?C§)
         {
            this.init();
         }
         if(this.§&!m§)
         {
            this.§2O§.addChild(this.§&!m§);
            this.§&!m§.activateView();
         }
         for each(_loc1_ in this.§-4§)
         {
            this.§2O§.addChild(_loc1_);
            _loc1_.§=X§();
         }
         this.mNextState = "";
         this.§=F§ = true;
      }
      
      public function §?!B§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§4`§ = null;
         if(this.§&!m§)
         {
            this.§&!m§.§=X§();
            this.§2O§.removeChild(this.§&!m§);
         }
         for each(_loc1_ in this.§-4§)
         {
            _loc1_.§=X§();
            this.§2O§.removeChild(_loc1_);
         }
         if(!this.§=F§)
         {
            if(this.§^d§)
            {
               this.cleanup();
            }
            return;
         }
         this.§=F§ = false;
         if(this.§^d§)
         {
            this.cleanup();
         }
      }
      
      public function §6k§(param1:Boolean) : void
      {
         this.§^d§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§?C§)
         {
            return;
         }
         if(this.§&!m§)
         {
            this.§&!m§.clear();
            this.§&!m§ = null;
         }
         while(this.§-4§.length > 0)
         {
            (this.§-4§.pop() as §4`§).clear();
         }
         if(this.§=F§)
         {
            this.deActivate();
         }
         this.§?C§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§?C§)
         {
            §-8§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §,!4§;
         }
         if(!this.§=F§)
         {
            §-8§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §`g§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§#!B§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
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
      
      public function §@!`§(param1:§4`§) : void
      {
         this.§-4§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§2O§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§2O§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§2O§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§&!g§)
         {
            return this.§&!g§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§&!g§)
         {
            return this.§&!g§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§&!m§)
         {
            this.§&!m§.viewWidth = param1;
            this.§&!m§.viewHeight = param2;
         }
      }
      
      public function §>9§() : int
      {
         return § !A§;
      }
   }
}
