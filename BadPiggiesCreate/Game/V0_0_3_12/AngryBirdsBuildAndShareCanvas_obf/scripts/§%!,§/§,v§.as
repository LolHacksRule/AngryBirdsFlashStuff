package §%!,§
{
   import §"p§.§@8§;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §,v§
   {
      
      public static const §<!i§:int = 60;
      
      public static const §5O§:String = "dummyState";
      
      public static const §2!-§:int = 0;
      
      public static const §#p§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §""<§:Object = null;
       
      
      public var §7d§:Boolean = false;
      
      public var §0"&§:Boolean = false;
      
      public var mName:String;
      
      public var §"!N§:Boolean = false;
      
      public var §>!K§:Boolean = false;
      
      public var §?F§:§%!u§;
      
      public var §[!'§:Array;
      
      public var mNextState:String = "";
      
      public var §+;§:Sprite = null;
      
      public var §^B§:§5!C§ = null;
      
      public function §,v§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§[!'§ = new Array();
         this.§+;§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function § T§(param1:String) : String
      {
         if(§""<§)
         {
            return §""<§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§7d§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§%!u§ = null;
         if(!this.§7d§)
         {
            this.init();
         }
         if(this.§?F§)
         {
            this.§+;§.addChild(this.§?F§);
            this.§?F§.§<O§();
         }
         for each(_loc1_ in this.§[!'§)
         {
            this.§+;§.addChild(_loc1_);
            _loc1_.§0"$§();
         }
         this.mNextState = "";
         this.§0"&§ = true;
      }
      
      public function §"!Y§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§%!u§ = null;
         if(this.§?F§)
         {
            this.§?F§.§0"$§();
            this.§+;§.removeChild(this.§?F§);
         }
         for each(_loc1_ in this.§[!'§)
         {
            _loc1_.§0"$§();
            this.§+;§.removeChild(_loc1_);
         }
         if(!this.§0"&§)
         {
            if(this.§>!K§)
            {
               this.cleanup();
            }
            return;
         }
         this.§0"&§ = false;
         if(this.§>!K§)
         {
            this.cleanup();
         }
      }
      
      public function §2""§(param1:Boolean) : void
      {
         this.§>!K§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§7d§)
         {
            return;
         }
         if(this.§?F§)
         {
            this.§?F§.clear();
            this.§?F§ = null;
         }
         while(this.§[!'§.length > 0)
         {
            (this.§[!'§.pop() as §%!u§).clear();
         }
         if(this.§0"&§)
         {
            this.deActivate();
         }
         this.§7d§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§7d§)
         {
            §@8§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §2!-§;
         }
         if(!this.§0"&§)
         {
            §@8§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §#p§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§"!N§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
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
      
      public function §2B§(param1:§%!u§) : void
      {
         this.§[!'§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§+;§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§+;§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§+;§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§^B§)
         {
            return this.§^B§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§^B§)
         {
            return this.§^B§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§?F§)
         {
            this.§?F§.viewWidth = param1;
            this.§?F§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §<!i§;
      }
   }
}
