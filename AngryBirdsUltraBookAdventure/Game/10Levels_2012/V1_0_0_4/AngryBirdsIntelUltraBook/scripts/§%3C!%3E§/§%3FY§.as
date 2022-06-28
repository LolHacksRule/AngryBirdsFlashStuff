package §<!>§
{
   import §2h§.§'!^§;
   import §9Y§.§6!8§;
   import §^_§.§!>§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §?Y§
   {
      
      public static const §^!7§:int = 60;
      
      public static const §-!'§:String = "dummyState";
      
      public static const §#E§:int = 0;
      
      public static const §^!]§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §'!;§:Object = null;
       
      
      public var §<"§:Boolean = false;
      
      public var §2c§:Boolean = false;
      
      public var mName:String;
      
      public var §8g§:Boolean = false;
      
      public var §<!W§:Boolean = false;
      
      public var §5!P§:§'!^§;
      
      public var §5!S§:Array;
      
      public var mNextState:String = "";
      
      public var §8X§:Sprite = null;
      
      public var §&!C§:§>!C§ = null;
      
      public function §?Y§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§5!S§ = new Array();
         this.§8X§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §&!I§(param1:String) : String
      {
         if(§'!;§)
         {
            return §'!;§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§<"§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§'!^§ = null;
         if(!this.§<"§)
         {
            this.init();
         }
         if(this.§5!P§)
         {
            this.§8X§.addChild(this.§5!P§);
            this.§5!P§.activateView();
         }
         for each(_loc1_ in this.§5!S§)
         {
            this.§8X§.addChild(_loc1_);
            _loc1_.§3a§();
         }
         this.mNextState = "";
         this.§2c§ = true;
      }
      
      public function §9U§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§'!^§ = null;
         if(this.§5!P§)
         {
            this.§5!P§.§3a§();
            this.§8X§.removeChild(this.§5!P§);
         }
         for each(_loc1_ in this.§5!S§)
         {
            _loc1_.§3a§();
            this.§8X§.removeChild(_loc1_);
         }
         if(!this.§2c§)
         {
            if(this.§<!W§)
            {
               this.cleanup();
            }
            return;
         }
         this.§2c§ = false;
         if(this.§<!W§)
         {
            this.cleanup();
         }
      }
      
      public function §62§(param1:Boolean) : void
      {
         this.§<!W§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§<"§)
         {
            return;
         }
         if(this.§5!P§)
         {
            this.§5!P§.clear();
            this.§5!P§ = null;
         }
         while(this.§5!S§.length > 0)
         {
            (this.§5!S§.pop() as §'!^§).clear();
         }
         if(this.§2c§)
         {
            this.deActivate();
         }
         this.§<"§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§<"§)
         {
            §!>§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §#E§;
         }
         if(!this.§2c§)
         {
            §!>§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §^!]§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§8g§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
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
      
      public function §^! §(param1:§'!^§) : void
      {
         this.§5!S§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§8X§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§8X§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8X§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§&!C§)
         {
            return this.§&!C§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§&!C§)
         {
            return this.§&!C§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§5!P§)
         {
            this.§5!P§.viewWidth = param1;
            this.§5!P§.viewHeight = param2;
         }
      }
      
      public function § a§() : int
      {
         return §^!7§;
      }
   }
}
