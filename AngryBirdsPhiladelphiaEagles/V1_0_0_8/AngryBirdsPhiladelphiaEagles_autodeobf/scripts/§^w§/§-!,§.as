package §^w§
{
   import §"1§.§3'§;
   import §5F§.§+!O§;
   import §>!7§.§"Q§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §-!,§
   {
      
      public static const §`!+§:int = 60;
      
      public static const §[!=§:String = "dummyState";
      
      public static const §;c§:int = 0;
      
      public static const §7L§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var § f§:Object = null;
       
      
      public var §@s§:Boolean = false;
      
      public var mActive:Boolean = false;
      
      public var mName:String;
      
      public var §2E§:Boolean = false;
      
      public var §<!N§:Boolean = false;
      
      public var §;I§:§"Q§;
      
      public var §9'§:Array;
      
      public var mNextState:String = "";
      
      public var §46§:Sprite = null;
      
      public var §>c§:§@!O§ = null;
      
      public function §-!,§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§9'§ = new Array();
         this.§46§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §2!6§(param1:String) : String
      {
         if(§ f§)
         {
            return § f§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§@s§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§"Q§ = null;
         if(!this.§@s§)
         {
            this.init();
         }
         if(this.§;I§)
         {
            this.§46§.addChild(this.§;I§);
            this.§;I§.§`!H§();
         }
         for each(_loc1_ in this.§9'§)
         {
            this.§46§.addChild(_loc1_);
            _loc1_.§]f§();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function §,R§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§"Q§ = null;
         if(this.§;I§)
         {
            this.§;I§.§]f§();
            this.§46§.removeChild(this.§;I§);
         }
         for each(_loc1_ in this.§9'§)
         {
            _loc1_.§]f§();
            this.§46§.removeChild(_loc1_);
         }
         if(!this.mActive)
         {
            if(this.§<!N§)
            {
               this.cleanup();
            }
            return;
         }
         this.mActive = false;
         if(this.§<!N§)
         {
            this.cleanup();
         }
      }
      
      public function § !D§(param1:Boolean) : void
      {
         this.§<!N§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§@s§)
         {
            return;
         }
         if(this.§;I§)
         {
            this.§;I§.clear();
            this.§;I§ = null;
         }
         while(this.§9'§.length > 0)
         {
            (this.§9'§.pop() as §"Q§).clear();
         }
         if(this.mActive)
         {
            this.deActivate();
         }
         this.§@s§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§@s§)
         {
            §3'§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §;c§;
         }
         if(!this.mActive)
         {
            §3'§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §7L§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2E§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
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
      
      public function §9w§(param1:§"Q§) : void
      {
         this.§9'§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§46§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§46§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§46§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§>c§)
         {
            return this.§>c§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§>c§)
         {
            return this.§>c§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§;I§)
         {
            this.§;I§.viewWidth = param1;
            this.§;I§.viewHeight = param2;
         }
      }
      
      public function §%!>§() : int
      {
         return §`!+§;
      }
   }
}
