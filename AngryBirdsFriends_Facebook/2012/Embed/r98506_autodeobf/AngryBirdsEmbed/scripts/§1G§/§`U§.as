package §1G§
{
   import §+n§.§^!%§;
   import §-p§.§&2§;
   import §[R§.§5h§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §`U§
   {
      
      public static const §[!#§:int = 60;
      
      public static const §3V§:String = "dummyState";
      
      public static const §?3§:int = 0;
      
      public static const §=I§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §8!%§:Object = null;
       
      
      public var §=t§:Boolean = false;
      
      public var §;M§:Boolean = false;
      
      public var mName:String;
      
      public var §^"§:Boolean = false;
      
      public var §5r§:Boolean = false;
      
      public var §4G§:§5h§;
      
      public var §[M§:Array;
      
      public var mNextState:String = "";
      
      public var §]?§:Sprite = null;
      
      public var §1!;§:§3!!§ = null;
      
      public function §`U§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§[M§ = new Array();
         this.§]?§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §use §(param1:String) : String
      {
         if(§8!%§)
         {
            return §8!%§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§=t§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§5h§ = null;
         if(!this.§=t§)
         {
            this.init();
         }
         if(this.§4G§)
         {
            this.§]?§.addChild(this.§4G§);
            this.§4G§.§0j§();
         }
         for each(_loc1_ in this.§[M§)
         {
            this.§]?§.addChild(_loc1_);
            _loc1_.§3!>§();
         }
         this.mNextState = "";
         this.§;M§ = true;
      }
      
      public function §2,§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§5h§ = null;
         if(this.§4G§)
         {
            this.§4G§.§3!>§();
            this.§]?§.removeChild(this.§4G§);
         }
         for each(_loc1_ in this.§[M§)
         {
            _loc1_.§3!>§();
            this.§]?§.removeChild(_loc1_);
         }
         if(!this.§;M§)
         {
            if(this.§5r§)
            {
               this.cleanup();
            }
            return;
         }
         this.§;M§ = false;
         if(this.§5r§)
         {
            this.cleanup();
         }
      }
      
      public function §,k§(param1:Boolean) : void
      {
         this.§5r§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§=t§)
         {
            return;
         }
         if(this.§4G§)
         {
            this.§4G§.clear();
            this.§4G§ = null;
         }
         while(this.§[M§.length > 0)
         {
            (this.§[M§.pop() as §5h§).clear();
         }
         if(this.§;M§)
         {
            this.deActivate();
         }
         this.§=t§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§=t§)
         {
            §&2§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §?3§;
         }
         if(!this.§;M§)
         {
            §&2§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §=I§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§^"§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
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
      
      public function §2H§(param1:§5h§) : void
      {
         this.§[M§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§]?§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§]?§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§]?§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§1!;§)
         {
            return this.§1!;§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§1!;§)
         {
            return this.§1!;§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§4G§)
         {
            this.§4G§.viewWidth = param1;
            this.§4G§.viewHeight = param2;
         }
      }
      
      public function §!;§() : int
      {
         return §[!#§;
      }
   }
}
