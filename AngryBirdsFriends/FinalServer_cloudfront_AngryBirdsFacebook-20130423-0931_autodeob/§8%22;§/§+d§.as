package §8";§
{
   import §+!c§.§;!=§;
   import §1!t§.§""B§;
   import §`"%§.§`_§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §+d§
   {
      
      public static const §]!"§:int = 60;
      
      public static const §-!7§:String = "dummyState";
      
      public static const §7!D§:int = 0;
      
      public static const §8!I§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §!"R§:Object = null;
       
      
      public var §>!%§:Boolean = false;
      
      public var §@!Q§:Boolean = false;
      
      public var mName:String;
      
      public var §]!§:Boolean = false;
      
      public var §8!Z§:Boolean = false;
      
      public var §2"@§:§`_§;
      
      public var §1!z§:Array;
      
      public var mNextState:String = "";
      
      public var §?!T§:Sprite = null;
      
      public var §8!G§:§6!9§ = null;
      
      public function §+d§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§1!z§ = new Array();
         this.§?!T§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §+!a§(param1:String) : String
      {
         if(§!"R§)
         {
            return §!"R§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§>!%§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§`_§ = null;
         if(!this.§>!%§)
         {
            this.init();
         }
         if(this.§2"@§)
         {
            this.§?!T§.addChild(this.§2"@§);
            this.§2"@§.activateView();
         }
         for each(_loc1_ in this.§1!z§)
         {
            this.§?!T§.addChild(_loc1_);
            _loc1_.§^#§();
         }
         this.mNextState = "";
         this.§@!Q§ = true;
      }
      
      public function §=k§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§`_§ = null;
         if(this.§2"@§)
         {
            this.§2"@§.§^#§();
            this.§?!T§.removeChild(this.§2"@§);
         }
         for each(_loc1_ in this.§1!z§)
         {
            _loc1_.§^#§();
            this.§?!T§.removeChild(_loc1_);
         }
         if(!this.§@!Q§)
         {
            if(this.§8!Z§)
            {
               this.cleanup();
            }
            return;
         }
         this.§@!Q§ = false;
         if(this.§8!Z§)
         {
            this.cleanup();
         }
      }
      
      public function §get §(param1:Boolean) : void
      {
         this.§8!Z§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§>!%§)
         {
            return;
         }
         if(this.§2"@§)
         {
            this.§2"@§.clear();
            this.§2"@§ = null;
         }
         while(this.§1!z§.length > 0)
         {
            (this.§1!z§.pop() as §`_§).clear();
         }
         if(this.§@!Q§)
         {
            this.deActivate();
         }
         this.§>!%§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§>!%§)
         {
            §;!=§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §7!D§;
         }
         if(!this.§@!Q§)
         {
            §;!=§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §8!I§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§]!§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
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
      
      public function §`l§(param1:§`_§) : void
      {
         this.§1!z§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§?!T§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§?!T§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§?!T§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§8!G§)
         {
            return this.§8!G§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§8!G§)
         {
            return this.§8!G§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2"@§)
         {
            this.§2"@§.viewWidth = param1;
            this.§2"@§.viewHeight = param2;
         }
      }
      
      public function §1!_§() : int
      {
         return §]!"§;
      }
   }
}
