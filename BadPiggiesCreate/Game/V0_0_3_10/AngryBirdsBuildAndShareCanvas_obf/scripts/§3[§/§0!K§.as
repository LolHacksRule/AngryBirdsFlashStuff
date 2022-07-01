package §3[§
{
   import §4!t§.§=p§;
   import §9!G§.§]!e§;
   import §<8§.§7!n§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §0!K§
   {
      
      public static const §'![§:int = 60;
      
      public static const §1s§:String = "dummyState";
      
      public static const §6!_§:int = 0;
      
      public static const §"!j§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §2"$§:Object = null;
       
      
      public var §8""§:Boolean = false;
      
      public var §7!§:Boolean = false;
      
      public var mName:String;
      
      public var §7"-§:Boolean = false;
      
      public var §#Z§:Boolean = false;
      
      public var §'K§:§=p§;
      
      public var §@6§:Array;
      
      public var mNextState:String = "";
      
      public var §;!E§:Sprite = null;
      
      public var §%,§:§-!&§ = null;
      
      public function §0!K§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§@6§ = new Array();
         this.§;!E§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function § !U§(param1:String) : String
      {
         if(§2"$§)
         {
            return §2"$§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§8""§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§=p§ = null;
         if(!this.§8""§)
         {
            this.init();
         }
         if(this.§'K§)
         {
            this.§;!E§.addChild(this.§'K§);
            this.§'K§.§@Y§();
         }
         for each(_loc1_ in this.§@6§)
         {
            this.§;!E§.addChild(_loc1_);
            _loc1_.§continue§();
         }
         this.mNextState = "";
         this.§7!§ = true;
      }
      
      public function §-Z§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§=p§ = null;
         if(this.§'K§)
         {
            this.§'K§.§continue§();
            this.§;!E§.removeChild(this.§'K§);
         }
         for each(_loc1_ in this.§@6§)
         {
            _loc1_.§continue§();
            this.§;!E§.removeChild(_loc1_);
         }
         if(!this.§7!§)
         {
            if(this.§#Z§)
            {
               this.cleanup();
            }
            return;
         }
         this.§7!§ = false;
         if(this.§#Z§)
         {
            this.cleanup();
         }
      }
      
      public function §7!b§(param1:Boolean) : void
      {
         this.§#Z§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§8""§)
         {
            return;
         }
         if(this.§'K§)
         {
            this.§'K§.clear();
            this.§'K§ = null;
         }
         while(this.§@6§.length > 0)
         {
            (this.§@6§.pop() as §=p§).clear();
         }
         if(this.§7!§)
         {
            this.deActivate();
         }
         this.§8""§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§8""§)
         {
            §]!e§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §6!_§;
         }
         if(!this.§7!§)
         {
            §]!e§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §"!j§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§7"-§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
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
      
      public function §%!j§(param1:§=p§) : void
      {
         this.§@6§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§;!E§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§;!E§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§;!E§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§%,§)
         {
            return this.§%,§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§%,§)
         {
            return this.§%,§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§'K§)
         {
            this.§'K§.viewWidth = param1;
            this.§'K§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §'![§;
      }
   }
}
