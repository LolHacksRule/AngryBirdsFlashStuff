package § !C§
{
   import §&V§.§9t§;
   import §^6§.§;l§;
   import §^=§.§8!6§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §6!W§
   {
      
      public static const §9l§:int = 60;
      
      public static const §>!C§:String = "dummyState";
      
      public static const §5V§:int = 0;
      
      public static const §>y§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var § !_§:Object = null;
       
      
      public var §#!7§:Boolean = false;
      
      public var §@!e§:Boolean = false;
      
      public var mName:String;
      
      public var §#"§:Boolean = false;
      
      public var §4p§:Boolean = false;
      
      public var §^!;§:§;l§;
      
      public var §,!2§:Array;
      
      public var mNextState:String = "";
      
      public var §@!Y§:Sprite = null;
      
      public var §8!"§:§'h§ = null;
      
      public function §6!W§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§,!2§ = new Array();
         this.§@!Y§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function getApplicationParameter(param1:String) : String
      {
         if(§ !_§)
         {
            return § !_§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§#!7§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§;l§ = null;
         if(!this.§#!7§)
         {
            this.init();
         }
         if(this.§^!;§)
         {
            this.§@!Y§.addChild(this.§^!;§);
            this.§^!;§.§%a§();
         }
         for each(_loc1_ in this.§,!2§)
         {
            this.§@!Y§.addChild(_loc1_);
            _loc1_.§@^§();
         }
         this.mNextState = "";
         this.§@!e§ = true;
      }
      
      public function §%s§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§;l§ = null;
         if(this.§^!;§)
         {
            this.§^!;§.§@^§();
            this.§@!Y§.removeChild(this.§^!;§);
         }
         for each(_loc1_ in this.§,!2§)
         {
            _loc1_.§@^§();
            this.§@!Y§.removeChild(_loc1_);
         }
         if(!this.§@!e§)
         {
            if(this.§4p§)
            {
               this.cleanup();
            }
            return;
         }
         this.§@!e§ = false;
         if(this.§4p§)
         {
            this.cleanup();
         }
      }
      
      public function §8h§(param1:Boolean) : void
      {
         this.§4p§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§#!7§)
         {
            return;
         }
         if(this.§^!;§)
         {
            this.§^!;§.clear();
            this.§^!;§ = null;
         }
         while(this.§,!2§.length > 0)
         {
            (this.§,!2§.pop() as §;l§).clear();
         }
         if(this.§@!e§)
         {
            this.deActivate();
         }
         this.§#!7§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§#!7§)
         {
            §8!6§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §5V§;
         }
         if(!this.§@!e§)
         {
            §8!6§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §>y§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§#"§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
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
      
      public function §=u§(param1:§;l§) : void
      {
         this.§,!2§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§@!Y§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§@!Y§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§@!Y§.contains(param1);
      }
      
      public function §6A§() : int
      {
         if(this.§8!"§)
         {
            return this.§8!"§.§6A§();
         }
         return 0;
      }
      
      public function §'i§() : int
      {
         if(this.§8!"§)
         {
            return this.§8!"§.§'i§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^!;§)
         {
            this.§^!;§.viewWidth = param1;
            this.§^!;§.viewHeight = param2;
         }
      }
      
      public function §&<§() : int
      {
         return §9l§;
      }
   }
}
