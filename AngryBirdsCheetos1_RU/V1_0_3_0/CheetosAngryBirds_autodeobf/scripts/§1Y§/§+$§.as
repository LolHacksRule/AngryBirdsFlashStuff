package §1Y§
{
   import §7!P§.§-3§;
   import §7'§.§-!6§;
   import §8v§.§#Z§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §+$§
   {
      
      public static const §5!a§:int = 60;
      
      public static const §0!Q§:String = "dummyState";
      
      public static const §^k§:int = 0;
      
      public static const §[!%§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §@!!§:Object = null;
       
      
      public var §<!O§:Boolean = false;
      
      public var §9C§:Boolean = false;
      
      public var mName:String;
      
      public var §06§:Boolean = false;
      
      public var §]W§:Boolean = false;
      
      public var §2!J§:§#Z§;
      
      public var § each§:Array;
      
      public var mNextState:String = "";
      
      public var §"$§:Sprite = null;
      
      public var §<!>§:§?^§ = null;
      
      public function §+$§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§ each§ = new Array();
         this.§"$§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §-!W§(param1:String) : String
      {
         if(§@!!§)
         {
            return §@!!§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§<!O§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§#Z§ = null;
         if(!this.§<!O§)
         {
            this.init();
         }
         if(this.§2!J§)
         {
            this.§"$§.addChild(this.§2!J§);
            this.§2!J§.§2e§();
         }
         for each(_loc1_ in this.§ each§)
         {
            this.§"$§.addChild(_loc1_);
            _loc1_.§<s§();
         }
         this.mNextState = "";
         this.§9C§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§#Z§ = null;
         if(this.§2!J§)
         {
            this.§2!J§.§<s§();
            this.§"$§.removeChild(this.§2!J§);
         }
         for each(_loc1_ in this.§ each§)
         {
            _loc1_.§<s§();
            this.§"$§.removeChild(_loc1_);
         }
         if(!this.§9C§)
         {
            if(this.§]W§)
            {
               this.cleanup();
            }
            return;
         }
         this.§9C§ = false;
         if(this.§]W§)
         {
            this.cleanup();
         }
      }
      
      public function §+Z§(param1:Boolean) : void
      {
         this.§]W§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§<!O§)
         {
            return;
         }
         if(this.§2!J§)
         {
            this.§2!J§.clear();
            this.§2!J§ = null;
         }
         while(this.§ each§.length > 0)
         {
            (this.§ each§.pop() as §#Z§).clear();
         }
         if(this.§9C§)
         {
            this.deActivate();
         }
         this.§<!O§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§<!O§)
         {
            §-3§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §^k§;
         }
         if(!this.§9C§)
         {
            §-3§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §[!%§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§06§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§-!6§) : void
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
      
      public function §8!@§(param1:§#Z§) : void
      {
         this.§ each§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§"$§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§"$§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§"$§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§<!>§)
         {
            return this.§<!>§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§<!>§)
         {
            return this.§<!>§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2!J§)
         {
            this.§2!J§.viewWidth = param1;
            this.§2!J§.viewHeight = param2;
         }
      }
      
      public function §>!-§() : int
      {
         return §5!a§;
      }
   }
}
