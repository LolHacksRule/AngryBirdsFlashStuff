package §2!O§
{
   import §+!d§.§6=§;
   import §;"$§.§`5§;
   import §;X§.§ do§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §,w§
   {
      
      public static const §;"6§:int = 60;
      
      public static const § R§:String = "dummyState";
      
      public static const §,s§:int = 0;
      
      public static const §%s§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §`!+§:Object = null;
       
      
      public var §&3§:Boolean = false;
      
      public var override:Boolean = false;
      
      public var mName:String;
      
      public var §-C§:Boolean = false;
      
      public var §8-§:Boolean = false;
      
      public var §%""§:§`5§;
      
      public var §>"8§:Array;
      
      public var mNextState:String = "";
      
      public var § "5§:Sprite = null;
      
      public var §8"6§:§2!x§ = null;
      
      public function §,w§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§>"8§ = new Array();
         this.§ "5§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §?I§(param1:String) : String
      {
         if(§`!+§)
         {
            return §`!+§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§&3§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§`5§ = null;
         if(!this.§&3§)
         {
            this.init();
         }
         if(this.§%""§)
         {
            this.§ "5§.addChild(this.§%""§);
            this.§%""§.§%!>§();
         }
         for each(_loc1_ in this.§>"8§)
         {
            this.§ "5§.addChild(_loc1_);
            _loc1_.§8P§();
         }
         this.mNextState = "";
         this.override = true;
      }
      
      public function §4!$§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§`5§ = null;
         if(this.§%""§)
         {
            this.§%""§.§8P§();
            this.§ "5§.removeChild(this.§%""§);
         }
         for each(_loc1_ in this.§>"8§)
         {
            _loc1_.§8P§();
            this.§ "5§.removeChild(_loc1_);
         }
         if(!this.override)
         {
            if(this.§8-§)
            {
               this.cleanup();
            }
            return;
         }
         this.override = false;
         if(this.§8-§)
         {
            this.cleanup();
         }
      }
      
      public function §'!O§(param1:Boolean) : void
      {
         this.§8-§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§&3§)
         {
            return;
         }
         if(this.§%""§)
         {
            this.§%""§.clear();
            this.§%""§ = null;
         }
         while(this.§>"8§.length > 0)
         {
            (this.§>"8§.pop() as §`5§).clear();
         }
         if(this.override)
         {
            this.deActivate();
         }
         this.§&3§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§&3§)
         {
            § do§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §,s§;
         }
         if(!this.override)
         {
            § do§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §%s§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§-C§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
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
      
      public function §true§(param1:§`5§) : void
      {
         this.§>"8§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§ "5§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§ "5§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§ "5§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§8"6§)
         {
            return this.§8"6§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§8"6§)
         {
            return this.§8"6§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§%""§)
         {
            this.§%""§.viewWidth = param1;
            this.§%""§.viewHeight = param2;
         }
      }
      
      public function getTargetFrameRate() : int
      {
         return §;"6§;
      }
   }
}
