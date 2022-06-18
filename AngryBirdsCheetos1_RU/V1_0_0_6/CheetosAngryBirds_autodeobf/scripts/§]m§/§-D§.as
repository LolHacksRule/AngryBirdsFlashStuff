package §]m§
{
   import §'!N§.§9!O§;
   import §'D§.§8e§;
   import §;!K§.§+!4§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §-D§
   {
      
      public static const §3X§:int = 60;
      
      public static const §%v§:String = "dummyState";
      
      public static const §7F§:int = 0;
      
      public static const §5E§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §%!a§:Object = null;
       
      
      public var §29§:Boolean = false;
      
      public var §#'§:Boolean = false;
      
      public var mName:String;
      
      public var §1!]§:Boolean = false;
      
      public var §`#§:Boolean = false;
      
      public var §>#§:§+!4§;
      
      public var § !B§:Array;
      
      public var mNextState:String = "";
      
      public var §`K§:Sprite = null;
      
      public var §`d§:§&P§ = null;
      
      public function §-D§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§ !B§ = new Array();
         this.§`K§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §]!I§(param1:String) : String
      {
         if(§%!a§)
         {
            return §%!a§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§29§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§+!4§ = null;
         if(!this.§29§)
         {
            this.init();
         }
         if(this.§>#§)
         {
            this.§`K§.addChild(this.§>#§);
            this.§>#§.§ R§();
         }
         for each(_loc1_ in this.§ !B§)
         {
            this.§`K§.addChild(_loc1_);
            _loc1_.§`!7§();
         }
         this.mNextState = "";
         this.§#'§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§+!4§ = null;
         if(this.§>#§)
         {
            this.§>#§.§`!7§();
            this.§`K§.removeChild(this.§>#§);
         }
         for each(_loc1_ in this.§ !B§)
         {
            _loc1_.§`!7§();
            this.§`K§.removeChild(_loc1_);
         }
         if(!this.§#'§)
         {
            if(this.§`#§)
            {
               this.cleanup();
            }
            return;
         }
         this.§#'§ = false;
         if(this.§`#§)
         {
            this.cleanup();
         }
      }
      
      public function §,J§(param1:Boolean) : void
      {
         this.§`#§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§29§)
         {
            return;
         }
         if(this.§>#§)
         {
            this.§>#§.clear();
            this.§>#§ = null;
         }
         while(this.§ !B§.length > 0)
         {
            (this.§ !B§.pop() as §+!4§).clear();
         }
         if(this.§#'§)
         {
            this.deActivate();
         }
         this.§29§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§29§)
         {
            §8e§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §7F§;
         }
         if(!this.§#'§)
         {
            §8e§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §5E§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§1!]§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§9!O§) : void
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
      
      public function §5a§(param1:§+!4§) : void
      {
         this.§ !B§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§`K§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§`K§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§`K§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§`d§)
         {
            return this.§`d§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§`d§)
         {
            return this.§`d§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§>#§)
         {
            this.§>#§.viewWidth = param1;
            this.§>#§.viewHeight = param2;
         }
      }
      
      public function §@!&§() : int
      {
         return §3X§;
      }
   }
}
