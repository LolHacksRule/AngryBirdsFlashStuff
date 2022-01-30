package §>!5§
{
   import §&W§.§7L§;
   import §0!C§.§=!]§;
   import §4!j§.§0p§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §>!T§
   {
      
      public static const §,!R§:int = 60;
      
      public static const §9!$§:String = "dummyState";
      
      public static const §>!n§:int = 0;
      
      public static const §9!L§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var § "%§:Object = null;
       
      
      public var §<!j§:Boolean = false;
      
      public var §%w§:Boolean = false;
      
      public var mName:String;
      
      public var §4!s§:Boolean = false;
      
      public var §7!L§:Boolean = false;
      
      public var §3?§:§=!]§;
      
      public var §1!M§:Array;
      
      public var mNextState:String = "";
      
      public var §`B§:Sprite = null;
      
      public var §#! §:§`!X§ = null;
      
      public function §>!T§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§1!M§ = new Array();
         this.§`B§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §&!D§(param1:String) : String
      {
         if(§ "%§)
         {
            return § "%§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§<!j§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§=!]§ = null;
         if(!this.§<!j§)
         {
            this.init();
         }
         if(this.§3?§)
         {
            this.§`B§.addChild(this.§3?§);
            this.§3?§.§6!n§();
         }
         for each(_loc1_ in this.§1!M§)
         {
            this.§`B§.addChild(_loc1_);
            _loc1_.§^!N§();
         }
         this.mNextState = "";
         this.§%w§ = true;
      }
      
      public function §=G§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§=!]§ = null;
         if(this.§3?§)
         {
            this.§3?§.§^!N§();
            this.§`B§.removeChild(this.§3?§);
         }
         for each(_loc1_ in this.§1!M§)
         {
            _loc1_.§^!N§();
            this.§`B§.removeChild(_loc1_);
         }
         if(!this.§%w§)
         {
            if(this.§7!L§)
            {
               this.cleanup();
            }
            return;
         }
         this.§%w§ = false;
         if(this.§7!L§)
         {
            this.cleanup();
         }
      }
      
      public function §0!A§(param1:Boolean) : void
      {
         this.§7!L§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§<!j§)
         {
            return;
         }
         if(this.§3?§)
         {
            this.§3?§.clear();
            this.§3?§ = null;
         }
         while(this.§1!M§.length > 0)
         {
            (this.§1!M§.pop() as §=!]§).clear();
         }
         if(this.§%w§)
         {
            this.deActivate();
         }
         this.§<!j§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§<!j§)
         {
            §7L§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §>!n§;
         }
         if(!this.§%w§)
         {
            §7L§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §9!L§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§4!s§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
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
      
      public function §>"7§(param1:§=!]§) : void
      {
         this.§1!M§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§`B§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§`B§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§`B§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§#! §)
         {
            return this.§#! §.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§#! §)
         {
            return this.§#! §.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§3?§)
         {
            this.§3?§.viewWidth = param1;
            this.§3?§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §,!R§;
      }
   }
}
