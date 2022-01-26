package §<!P§
{
   import §"A§.§?3§;
   import §-!6§.§>I§;
   import §^r§.§>`§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §>l§
   {
      
      public static const §8!Z§:int = 60;
      
      public static const §<+§:String = "dummyState";
      
      public static const §%!T§:int = 0;
      
      public static const §]!4§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §+!F§:Object = null;
       
      
      public var §9m§:Boolean = false;
      
      public var §"S§:Boolean = false;
      
      public var mName:String;
      
      public var §^[§:Boolean = false;
      
      public var §[!#§:Boolean = false;
      
      public var §[B§:§?3§;
      
      public var §;N§:Array;
      
      public var mNextState:String = "";
      
      public var §3!F§:Sprite = null;
      
      public var §+v§:§[!T§ = null;
      
      public function §>l§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§;N§ = new Array();
         this.§3!F§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §^U§(param1:String) : String
      {
         if(§+!F§)
         {
            return §+!F§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§9m§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§?3§ = null;
         if(!this.§9m§)
         {
            this.init();
         }
         if(this.§[B§)
         {
            this.§3!F§.addChild(this.§[B§);
            this.§[B§.§,!Q§();
         }
         for each(_loc1_ in this.§;N§)
         {
            this.§3!F§.addChild(_loc1_);
            _loc1_.§7L§();
         }
         this.mNextState = "";
         this.§"S§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§?3§ = null;
         if(this.§[B§)
         {
            this.§[B§.§7L§();
            this.§3!F§.removeChild(this.§[B§);
         }
         for each(_loc1_ in this.§;N§)
         {
            _loc1_.§7L§();
            this.§3!F§.removeChild(_loc1_);
         }
         if(!this.§"S§)
         {
            if(this.§[!#§)
            {
               this.cleanup();
            }
            return;
         }
         this.§"S§ = false;
         if(this.§[!#§)
         {
            this.cleanup();
         }
      }
      
      public function §?!,§(param1:Boolean) : void
      {
         this.§[!#§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§9m§)
         {
            return;
         }
         if(this.§[B§)
         {
            this.§[B§.clear();
            this.§[B§ = null;
         }
         while(this.§;N§.length > 0)
         {
            (this.§;N§.pop() as §?3§).clear();
         }
         if(this.§"S§)
         {
            this.deActivate();
         }
         this.§9m§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§9m§)
         {
            §>I§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §%!T§;
         }
         if(!this.§"S§)
         {
            §>I§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §]!4§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§^[§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§>`§) : void
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
      
      public function §8!G§(param1:§?3§) : void
      {
         this.§;N§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§3!F§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§3!F§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§3!F§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§+v§)
         {
            return this.§+v§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§+v§)
         {
            return this.§+v§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§[B§)
         {
            this.§[B§.viewWidth = param1;
            this.§[B§.viewHeight = param2;
         }
      }
      
      public function §'1§() : int
      {
         return §8!Z§;
      }
   }
}
