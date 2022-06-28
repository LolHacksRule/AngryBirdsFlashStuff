package §6H§
{
   import §0w§.§0#§;
   import §>K§.§9X§;
   import §`!0§.§"?§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §>3§
   {
      
      public static const §@x§:int = 60;
      
      public static const §0s§:String = "dummyState";
      
      public static const §&,§:int = 0;
      
      public static const §8! §:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §,n§:Object = null;
       
      
      public var §?z§:Boolean = false;
      
      public var §>U§:Boolean = false;
      
      public var mName:String;
      
      public var §`D§:Boolean = false;
      
      public var §#t§:Boolean = false;
      
      public var §-f§:§0#§;
      
      public var §^A§:Array;
      
      public var mNextState:String = "";
      
      public var §62§:Sprite = null;
      
      public var §'X§:§5S§ = null;
      
      public function §>3§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§^A§ = new Array();
         this.§62§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §&A§(param1:String) : String
      {
         if(§,n§)
         {
            return §,n§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§?z§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§0#§ = null;
         if(!this.§?z§)
         {
            this.init();
         }
         if(this.§-f§)
         {
            this.§62§.addChild(this.§-f§);
            this.§-f§.§@`§();
         }
         for each(_loc1_ in this.§^A§)
         {
            this.§62§.addChild(_loc1_);
            _loc1_.§2!"§();
         }
         this.mNextState = "";
         this.§>U§ = true;
      }
      
      public function § Z§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§0#§ = null;
         if(this.§-f§)
         {
            this.§-f§.§2!"§();
            this.§62§.removeChild(this.§-f§);
         }
         for each(_loc1_ in this.§^A§)
         {
            _loc1_.§2!"§();
            this.§62§.removeChild(_loc1_);
         }
         if(!this.§>U§)
         {
            if(this.§#t§)
            {
               this.cleanup();
            }
            return;
         }
         this.§>U§ = false;
         if(this.§#t§)
         {
            this.cleanup();
         }
      }
      
      public function §9"§(param1:Boolean) : void
      {
         this.§#t§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§?z§)
         {
            return;
         }
         if(this.§-f§)
         {
            this.§-f§.clear();
            this.§-f§ = null;
         }
         while(this.§^A§.length > 0)
         {
            (this.§^A§.pop() as §0#§).clear();
         }
         if(this.§>U§)
         {
            this.deActivate();
         }
         this.§?z§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§?z§)
         {
            §9X§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §&,§;
         }
         if(!this.§>U§)
         {
            §9X§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §8! §;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§`D§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
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
      
      public function §%u§(param1:§0#§) : void
      {
         this.§^A§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§62§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§62§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§62§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§'X§)
         {
            return this.§'X§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§'X§)
         {
            return this.§'X§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§-f§)
         {
            this.§-f§.viewWidth = param1;
            this.§-f§.viewHeight = param2;
         }
      }
      
      public function §'!6§() : int
      {
         return §@x§;
      }
   }
}
