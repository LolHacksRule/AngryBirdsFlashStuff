package §7=§
{
   import §7J§.§<!?§;
   import §?H§.§+!B§;
   import §@!;§.§!!=§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §9Y§
   {
      
      public static const §&!L§:int = 60;
      
      public static const § n§:String = "dummyState";
      
      public static const §5!I§:int = 0;
      
      public static const §0p§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var § K§:Object = null;
       
      
      public var §]!5§:Boolean = false;
      
      public var §'n§:Boolean = false;
      
      public var mName:String;
      
      public var §-`§:Boolean = false;
      
      public var §4W§:Boolean = false;
      
      public var §!s§:§+!B§;
      
      public var §&!0§:Array;
      
      public var mNextState:String = "";
      
      public var §;e§:Sprite = null;
      
      public var §"u§:§6S§ = null;
      
      public function §9Y§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§&!0§ = new Array();
         this.§;e§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §&N§(param1:String) : String
      {
         if(§ K§)
         {
            return § K§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§]!5§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§+!B§ = null;
         if(!this.§]!5§)
         {
            this.init();
         }
         if(this.§!s§)
         {
            this.§;e§.addChild(this.§!s§);
            this.§!s§.§`>§();
         }
         for each(_loc1_ in this.§&!0§)
         {
            this.§;e§.addChild(_loc1_);
            _loc1_.§]N§();
         }
         this.mNextState = "";
         this.§'n§ = true;
      }
      
      public function §8-§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§+!B§ = null;
         if(this.§!s§)
         {
            this.§!s§.§]N§();
            this.§;e§.removeChild(this.§!s§);
         }
         for each(_loc1_ in this.§&!0§)
         {
            _loc1_.§]N§();
            this.§;e§.removeChild(_loc1_);
         }
         if(!this.§'n§)
         {
            if(this.§4W§)
            {
               this.cleanup();
            }
            return;
         }
         this.§'n§ = false;
         if(this.§4W§)
         {
            this.cleanup();
         }
      }
      
      public function §8@§(param1:Boolean) : void
      {
         this.§4W§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§]!5§)
         {
            return;
         }
         if(this.§!s§)
         {
            this.§!s§.clear();
            this.§!s§ = null;
         }
         while(this.§&!0§.length > 0)
         {
            (this.§&!0§.pop() as §+!B§).clear();
         }
         if(this.§'n§)
         {
            this.deActivate();
         }
         this.§]!5§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§]!5§)
         {
            §!!=§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §5!I§;
         }
         if(!this.§'n§)
         {
            §!!=§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §0p§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§-`§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
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
      
      public function §"!&§(param1:§+!B§) : void
      {
         this.§&!0§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§;e§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§;e§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§;e§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§"u§)
         {
            return this.§"u§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§"u§)
         {
            return this.§"u§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§!s§)
         {
            this.§!s§.viewWidth = param1;
            this.§!s§.viewHeight = param2;
         }
      }
      
      public function §&!H§() : int
      {
         return §&!L§;
      }
   }
}
