package § if§
{
   import §"!K§.§,U§;
   import §1t§.§`!B§;
   import §?!8§.§2>§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §2q§
   {
      
      public static const §?!4§:int = 60;
      
      public static const §;9§:String = "dummyState";
      
      public static const §8=§:int = 0;
      
      public static const §>T§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §false§:Object = null;
       
      
      public var §[d§:Boolean = false;
      
      public var §;2§:Boolean = false;
      
      public var mName:String;
      
      public var §93§:Boolean = false;
      
      public var §-!F§:Boolean = false;
      
      public var §=V§:§,U§;
      
      public var §1R§:Array;
      
      public var mNextState:String = "";
      
      public var §>@§:Sprite = null;
      
      public var §2!-§:§&$§ = null;
      
      public function §2q§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§1R§ = new Array();
         this.§>@§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §6$§(param1:String) : String
      {
         if(§false§)
         {
            return §false§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§[d§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§,U§ = null;
         if(!this.§[d§)
         {
            this.init();
         }
         if(this.§=V§)
         {
            this.§>@§.addChild(this.§=V§);
            this.§=V§.§ L§();
         }
         for each(_loc1_ in this.§1R§)
         {
            this.§>@§.addChild(_loc1_);
            _loc1_.§;b§();
         }
         this.mNextState = "";
         this.§;2§ = true;
      }
      
      public function §"z§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§,U§ = null;
         if(this.§=V§)
         {
            this.§=V§.§;b§();
            this.§>@§.removeChild(this.§=V§);
         }
         for each(_loc1_ in this.§1R§)
         {
            _loc1_.§;b§();
            this.§>@§.removeChild(_loc1_);
         }
         if(!this.§;2§)
         {
            if(this.§-!F§)
            {
               this.cleanup();
            }
            return;
         }
         this.§;2§ = false;
         if(this.§-!F§)
         {
            this.cleanup();
         }
      }
      
      public function §,Q§(param1:Boolean) : void
      {
         this.§-!F§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§[d§)
         {
            return;
         }
         if(this.§=V§)
         {
            this.§=V§.clear();
            this.§=V§ = null;
         }
         while(this.§1R§.length > 0)
         {
            (this.§1R§.pop() as §,U§).clear();
         }
         if(this.§;2§)
         {
            this.deActivate();
         }
         this.§[d§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§[d§)
         {
            §2>§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §8=§;
         }
         if(!this.§;2§)
         {
            §2>§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §>T§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§93§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
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
      
      public function §^!N§(param1:§,U§) : void
      {
         this.§1R§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§>@§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§>@§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§>@§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§2!-§)
         {
            return this.§2!-§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§2!-§)
         {
            return this.§2!-§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§=V§)
         {
            this.§=V§.viewWidth = param1;
            this.§=V§.viewHeight = param2;
         }
      }
      
      public function §8i§() : int
      {
         return §?!4§;
      }
   }
}
