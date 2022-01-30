package §"h§
{
   import §&!&§.§7!8§;
   import §<Z§.§7!!§;
   import §@!;§.§&F§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §<"+§
   {
      
      public static const §3v§:int = 60;
      
      public static const §3!^§:String = "dummyState";
      
      public static const §2!i§:int = 0;
      
      public static const §<!Q§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §1i§:Object = null;
       
      
      public var §&!]§:Boolean = false;
      
      public var §]!L§:Boolean = false;
      
      public var mName:String;
      
      public var §8![§:Boolean = false;
      
      public var §5!$§:Boolean = false;
      
      public var §;i§:§7!!§;
      
      public var §^X§:Array;
      
      public var mNextState:String = "";
      
      public var §5H§:Sprite = null;
      
      public var §3c§:§<O§ = null;
      
      public function §<"+§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§^X§ = new Array();
         this.§5H§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §]"$§(param1:String) : String
      {
         if(§1i§)
         {
            return §1i§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§&!]§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§7!!§ = null;
         if(!this.§&!]§)
         {
            this.init();
         }
         if(this.§;i§)
         {
            this.§5H§.addChild(this.§;i§);
            this.§;i§.§,!r§();
         }
         for each(_loc1_ in this.§^X§)
         {
            this.§5H§.addChild(_loc1_);
            _loc1_.§^<§();
         }
         this.mNextState = "";
         this.§]!L§ = true;
      }
      
      public function §]!1§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§7!!§ = null;
         if(this.§;i§)
         {
            this.§;i§.§^<§();
            this.§5H§.removeChild(this.§;i§);
         }
         for each(_loc1_ in this.§^X§)
         {
            _loc1_.§^<§();
            this.§5H§.removeChild(_loc1_);
         }
         if(!this.§]!L§)
         {
            if(this.§5!$§)
            {
               this.cleanup();
            }
            return;
         }
         this.§]!L§ = false;
         if(this.§5!$§)
         {
            this.cleanup();
         }
      }
      
      public function §^U§(param1:Boolean) : void
      {
         this.§5!$§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§&!]§)
         {
            return;
         }
         if(this.§;i§)
         {
            this.§;i§.clear();
            this.§;i§ = null;
         }
         while(this.§^X§.length > 0)
         {
            (this.§^X§.pop() as §7!!§).clear();
         }
         if(this.§]!L§)
         {
            this.deActivate();
         }
         this.§&!]§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§&!]§)
         {
            §&F§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §2!i§;
         }
         if(!this.§]!L§)
         {
            §&F§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §<!Q§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§8![§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
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
      
      public function §%!0§(param1:§7!!§) : void
      {
         this.§^X§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§5H§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§5H§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§5H§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§3c§)
         {
            return this.§3c§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§3c§)
         {
            return this.§3c§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§;i§)
         {
            this.§;i§.viewWidth = param1;
            this.§;i§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §3v§;
      }
   }
}
