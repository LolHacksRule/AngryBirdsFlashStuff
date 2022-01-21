package §&!V§
{
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §5K§.§[C§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §=O§
   {
      
      public static const §2!0§:int = 60;
      
      public static const §]L§:String = "dummyState";
      
      public static const §>C§:int = 0;
      
      public static const §7I§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §-!0§:Object = null;
       
      
      public var §'!D§:Boolean = false;
      
      public var §#X§:Boolean = false;
      
      public var mName:String;
      
      public var §2!^§:Boolean = false;
      
      public var §'L§:Boolean = false;
      
      public var mUIView:§"!n§;
      
      public var §,!7§:Array;
      
      public var mNextState:String = "";
      
      public var §7U§:Sprite = null;
      
      public var §#!_§:§^z§ = null;
      
      public function §=O§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§,!7§ = new Array();
         this.§7U§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §7#§(param1:String) : String
      {
         if(§-!0§)
         {
            return §-!0§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§'!D§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§"!n§ = null;
         if(!this.§'!D§)
         {
            this.init();
         }
         if(this.mUIView)
         {
            this.§7U§.addChild(this.mUIView);
            this.mUIView.§4o§();
         }
         for each(_loc1_ in this.§,!7§)
         {
            this.§7U§.addChild(_loc1_);
            _loc1_.§=]§();
         }
         this.mNextState = "";
         this.§#X§ = true;
      }
      
      public function §-F§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§"!n§ = null;
         if(this.mUIView)
         {
            this.mUIView.§=]§();
            this.§7U§.removeChild(this.mUIView);
         }
         for each(_loc1_ in this.§,!7§)
         {
            _loc1_.§=]§();
            this.§7U§.removeChild(_loc1_);
         }
         if(!this.§#X§)
         {
            if(this.§'L§)
            {
               this.cleanup();
            }
            return;
         }
         this.§#X§ = false;
         if(this.§'L§)
         {
            this.cleanup();
         }
      }
      
      public function §@!f§(param1:Boolean) : void
      {
         this.§'L§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§'!D§)
         {
            return;
         }
         if(this.mUIView)
         {
            this.mUIView.clear();
            this.mUIView = null;
         }
         while(this.§,!7§.length > 0)
         {
            (this.§,!7§.pop() as §"!n§).clear();
         }
         if(this.§#X§)
         {
            this.deActivate();
         }
         this.§'!D§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§'!D§)
         {
            §[C§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §>C§;
         }
         if(!this.§#X§)
         {
            §[C§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §7I§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2!^§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
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
      
      public function § C§(param1:§"!n§) : void
      {
         this.§,!7§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§7U§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§7U§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§7U§.contains(param1);
      }
      
      public function §2i§() : int
      {
         if(this.§#!_§)
         {
            return this.§#!_§.§2i§();
         }
         return 0;
      }
      
      public function §[!c§() : int
      {
         if(this.§#!_§)
         {
            return this.§#!_§.§[!c§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.mUIView)
         {
            this.mUIView.viewWidth = param1;
            this.mUIView.viewHeight = param2;
         }
      }
      
      public function §0§() : int
      {
         return §2!0§;
      }
   }
}
