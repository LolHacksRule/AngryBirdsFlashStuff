package §"I§
{
   import §&8§.§<O§;
   import §7L§.§9I§;
   import §=g§.§@!L§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §-x§
   {
      
      public static const §<!W§:int = 60;
      
      public static const §8!7§:String = "dummyState";
      
      public static const §[!B§:int = 0;
      
      public static const §`T§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §]!+§:Object = null;
       
      
      public var §1!]§:Boolean = false;
      
      public var §-!R§:Boolean = false;
      
      public var mName:String;
      
      public var §`!8§:Boolean = false;
      
      public var §&!3§:Boolean = false;
      
      public var §&X§:§<O§;
      
      public var §4a§:Array;
      
      public var mNextState:String = "";
      
      public var §=#§:Sprite = null;
      
      public var §"D§:§,r§ = null;
      
      public function §-x§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§4a§ = new Array();
         this.§=#§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §[!2§(param1:String) : String
      {
         if(§]!+§)
         {
            return §]!+§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§1!]§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§<O§ = null;
         if(!this.§1!]§)
         {
            this.init();
         }
         if(this.§&X§)
         {
            this.§=#§.addChild(this.§&X§);
            this.§&X§.§0!;§();
         }
         for each(_loc1_ in this.§4a§)
         {
            this.§=#§.addChild(_loc1_);
            _loc1_.§@!H§();
         }
         this.mNextState = "";
         this.§-!R§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§<O§ = null;
         if(this.§&X§)
         {
            this.§&X§.§@!H§();
            this.§=#§.removeChild(this.§&X§);
         }
         for each(_loc1_ in this.§4a§)
         {
            _loc1_.§@!H§();
            this.§=#§.removeChild(_loc1_);
         }
         if(!this.§-!R§)
         {
            if(this.§&!3§)
            {
               this.cleanup();
            }
            return;
         }
         this.§-!R§ = false;
         if(this.§&!3§)
         {
            this.cleanup();
         }
      }
      
      public function §<^§(param1:Boolean) : void
      {
         this.§&!3§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§1!]§)
         {
            return;
         }
         if(this.§&X§)
         {
            this.§&X§.clear();
            this.§&X§ = null;
         }
         while(this.§4a§.length > 0)
         {
            (this.§4a§.pop() as §<O§).clear();
         }
         if(this.§-!R§)
         {
            this.deActivate();
         }
         this.§1!]§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§1!]§)
         {
            §@!L§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §[!B§;
         }
         if(!this.§-!R§)
         {
            §@!L§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §`T§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§`!8§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§9I§) : void
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
      
      public function §'I§(param1:§<O§) : void
      {
         this.§4a§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§=#§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§=#§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§=#§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§"D§)
         {
            return this.§"D§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§"D§)
         {
            return this.§"D§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§&X§)
         {
            this.§&X§.viewWidth = param1;
            this.§&X§.viewHeight = param2;
         }
      }
      
      public function §'v§() : int
      {
         return §<!W§;
      }
   }
}
