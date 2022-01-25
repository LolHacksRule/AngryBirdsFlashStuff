package §@W§
{
   import §%3§.§7b§;
   import §7!H§.§12§;
   import §<!!§.§-"§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §2!_§
   {
      
      public static const §3!9§:int = 60;
      
      public static const §>B§:String = "dummyState";
      
      public static const §8!>§:int = 0;
      
      public static const §'!<§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §"!d§:Object = null;
       
      
      public var §"^§:Boolean = false;
      
      public var §`![§:Boolean = false;
      
      public var mName:String;
      
      public var §#i§:Boolean = false;
      
      public var §'!M§:Boolean = false;
      
      public var §=!I§:§7b§;
      
      public var §6!-§:Array;
      
      public var mNextState:String = "";
      
      public var §1!?§:Sprite = null;
      
      public var §4!Z§:§[!'§ = null;
      
      public function §2!_§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§6!-§ = new Array();
         this.§1!?§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function getApplicationParameter(param1:String) : String
      {
         if(§"!d§)
         {
            return §"!d§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§"^§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§7b§ = null;
         if(!this.§"^§)
         {
            this.init();
         }
         if(this.§=!I§)
         {
            this.§1!?§.addChild(this.§=!I§);
            this.§=!I§.§]!6§();
         }
         for each(_loc1_ in this.§6!-§)
         {
            this.§1!?§.addChild(_loc1_);
            _loc1_.§=V§();
         }
         this.mNextState = "";
         this.§`![§ = true;
      }
      
      public function §@!U§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§7b§ = null;
         if(this.§=!I§)
         {
            this.§=!I§.§=V§();
            this.§1!?§.removeChild(this.§=!I§);
         }
         for each(_loc1_ in this.§6!-§)
         {
            _loc1_.§=V§();
            this.§1!?§.removeChild(_loc1_);
         }
         if(!this.§`![§)
         {
            if(this.§'!M§)
            {
               this.cleanup();
            }
            return;
         }
         this.§`![§ = false;
         if(this.§'!M§)
         {
            this.cleanup();
         }
      }
      
      public function §;t§(param1:Boolean) : void
      {
         this.§'!M§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§"^§)
         {
            return;
         }
         if(this.§=!I§)
         {
            this.§=!I§.clear();
            this.§=!I§ = null;
         }
         while(this.§6!-§.length > 0)
         {
            (this.§6!-§.pop() as §7b§).clear();
         }
         if(this.§`![§)
         {
            this.deActivate();
         }
         this.§"^§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§"^§)
         {
            §-"§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §8!>§;
         }
         if(!this.§`![§)
         {
            §-"§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §'!<§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§#i§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
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
      
      public function §2Y§(param1:§7b§) : void
      {
         this.§6!-§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§1!?§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§1!?§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§1!?§.contains(param1);
      }
      
      public function §5h§() : int
      {
         if(this.§4!Z§)
         {
            return this.§4!Z§.§5h§();
         }
         return 0;
      }
      
      public function §,!B§() : int
      {
         if(this.§4!Z§)
         {
            return this.§4!Z§.§,!B§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§=!I§)
         {
            this.§=!I§.viewWidth = param1;
            this.§=!I§.viewHeight = param2;
         }
      }
      
      public function §"!'§() : int
      {
         return §3!9§;
      }
   }
}
