package §!!t§
{
   import §0!?§.§'!$§;
   import §1"2§.§,!]§;
   import §]!F§.§"!j§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §,-§
   {
      
      public static const § S§:int = 60;
      
      public static const §#"%§:String = "dummyState";
      
      public static const §#!m§:int = 0;
      
      public static const §7!I§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var § R§:Object = null;
       
      
      public var §@!5§:Boolean = false;
      
      public var §9!L§:Boolean = false;
      
      public var mName:String;
      
      public var §8!i§:Boolean = false;
      
      public var §0!O§:Boolean = false;
      
      public var §2"-§:§"!j§;
      
      public var §8" §:Array;
      
      public var mNextState:String = "";
      
      public var §3!b§:Sprite = null;
      
      public var §,!P§:§7t§ = null;
      
      public function §,-§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§8" § = new Array();
         this.§3!b§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §9"=§(param1:String) : String
      {
         if(§ R§)
         {
            return § R§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§@!5§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§"!j§ = null;
         if(!this.§@!5§)
         {
            this.init();
         }
         if(this.§2"-§)
         {
            this.§3!b§.addChild(this.§2"-§);
            this.§2"-§.activateView();
         }
         for each(_loc1_ in this.§8" §)
         {
            this.§3!b§.addChild(_loc1_);
            _loc1_.§!g§();
         }
         this.mNextState = "";
         this.§9!L§ = true;
      }
      
      public function §4A§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§"!j§ = null;
         if(this.§2"-§)
         {
            this.§2"-§.§!g§();
            this.§3!b§.removeChild(this.§2"-§);
         }
         for each(_loc1_ in this.§8" §)
         {
            _loc1_.§!g§();
            this.§3!b§.removeChild(_loc1_);
         }
         if(!this.§9!L§)
         {
            if(this.§0!O§)
            {
               this.cleanup();
            }
            return;
         }
         this.§9!L§ = false;
         if(this.§0!O§)
         {
            this.cleanup();
         }
      }
      
      public function §[,§(param1:Boolean) : void
      {
         this.§0!O§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§@!5§)
         {
            return;
         }
         if(this.§2"-§)
         {
            this.§2"-§.clear();
            this.§2"-§ = null;
         }
         while(this.§8" §.length > 0)
         {
            (this.§8" §.pop() as §"!j§).clear();
         }
         if(this.§9!L§)
         {
            this.deActivate();
         }
         this.§@!5§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§@!5§)
         {
            §'!$§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §#!m§;
         }
         if(!this.§9!L§)
         {
            §'!$§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §7!I§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§8!i§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
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
      
      public function §'`§(param1:§"!j§) : void
      {
         this.§8" §.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§3!b§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§3!b§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§3!b§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§,!P§)
         {
            return this.§,!P§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§,!P§)
         {
            return this.§,!P§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2"-§)
         {
            this.§2"-§.viewWidth = param1;
            this.§2"-§.viewHeight = param2;
         }
      }
      
      public function §try §() : int
      {
         return § S§;
      }
   }
}
