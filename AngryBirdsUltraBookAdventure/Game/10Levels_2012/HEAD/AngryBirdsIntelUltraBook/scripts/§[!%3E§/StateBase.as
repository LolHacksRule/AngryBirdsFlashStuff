package §[!>§
{
   import §'N§.Log;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class StateBase
   {
      
      public static const §2k§:int = 60;
      
      public static const §0i§:String = "dummyState";
      
      public static const §;B§:int = 0;
      
      public static const §=!H§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §#-§:Object = null;
       
      
      public var §"=§:Boolean = false;
      
      public var §'!f§:Boolean = false;
      
      public var mName:String;
      
      public var §!!6§:Boolean = false;
      
      public var §]!H§:Boolean = false;
      
      public var §^,§:§-!H§;
      
      public var §;!D§:Array;
      
      public var mNextState:String = "";
      
      public var §1!J§:Sprite = null;
      
      public var §'I§:StateManager = null;
      
      public function StateBase(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§;!D§ = new Array();
         this.§1!J§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §5!a§(param1:String) : String
      {
         if(§#-§)
         {
            return §#-§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§"=§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§-!H§ = null;
         if(!this.§"=§)
         {
            this.init();
         }
         if(this.§^,§)
         {
            this.§1!J§.addChild(this.§^,§);
            this.§^,§.activateView();
         }
         for each(_loc1_ in this.§;!D§)
         {
            this.§1!J§.addChild(_loc1_);
            _loc1_.§ !X§();
         }
         this.mNextState = "";
         this.§'!f§ = true;
      }
      
      public function §`^§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§-!H§ = null;
         if(this.§^,§)
         {
            this.§^,§.§ !X§();
            this.§1!J§.removeChild(this.§^,§);
         }
         for each(_loc1_ in this.§;!D§)
         {
            _loc1_.§ !X§();
            this.§1!J§.removeChild(_loc1_);
         }
         if(!this.§'!f§)
         {
            if(this.§]!H§)
            {
               this.cleanup();
            }
            return;
         }
         this.§'!f§ = false;
         if(this.§]!H§)
         {
            this.cleanup();
         }
      }
      
      public function §!t§(param1:Boolean) : void
      {
         this.§]!H§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§"=§)
         {
            return;
         }
         if(this.§^,§)
         {
            this.§^,§.clear();
            this.§^,§ = null;
         }
         while(this.§;!D§.length > 0)
         {
            (this.§;!D§.pop() as §-!H§).clear();
         }
         if(this.§'!f§)
         {
            this.deActivate();
         }
         this.§"=§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§"=§)
         {
            Log.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §;B§;
         }
         if(!this.§'!f§)
         {
            Log.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §=!H§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§!!6§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
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
      
      public function §5!§(param1:§-!H§) : void
      {
         this.§;!D§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§1!J§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§1!J§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§1!J§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§'I§)
         {
            return this.§'I§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§'I§)
         {
            return this.§'I§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^,§)
         {
            this.§^,§.viewWidth = param1;
            this.§^,§.viewHeight = param2;
         }
      }
      
      public function §5Q§() : int
      {
         return §2k§;
      }
   }
}
