package §?!=§
{
   import §!6§.§3!5§;
   import §5!<§.§@]§;
   import §5f§.§]_§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §<!>§
   {
      
      public static const §9!5§:int = 60;
      
      public static const §3!9§:String = "dummyState";
      
      public static const §-!D§:int = 0;
      
      public static const §+!3§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §8z§:Object = null;
       
      
      public var §0!2§:Boolean = false;
      
      public var mActive:Boolean = false;
      
      public var mName:String;
      
      public var §=!O§:Boolean = false;
      
      public var §"4§:Boolean = false;
      
      public var §3g§:§@]§;
      
      public var §[g§:Array;
      
      public var mNextState:String = "";
      
      public var §!!+§:Sprite = null;
      
      public var §&g§:§5!,§ = null;
      
      public function §<!>§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§[g§ = new Array();
         this.§!!+§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §#!2§(param1:String) : String
      {
         if(§8z§)
         {
            return §8z§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§0!2§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§@]§ = null;
         if(!this.§0!2§)
         {
            this.init();
         }
         if(this.§3g§)
         {
            this.§!!+§.addChild(this.§3g§);
            this.§3g§.§4!2§();
         }
         for each(_loc1_ in this.§[g§)
         {
            this.§!!+§.addChild(_loc1_);
            _loc1_.§#!D§();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function §49§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§@]§ = null;
         if(this.§3g§)
         {
            this.§3g§.§#!D§();
            this.§!!+§.removeChild(this.§3g§);
         }
         for each(_loc1_ in this.§[g§)
         {
            _loc1_.§#!D§();
            this.§!!+§.removeChild(_loc1_);
         }
         if(!this.mActive)
         {
            if(this.§"4§)
            {
               this.cleanup();
            }
            return;
         }
         this.mActive = false;
         if(this.§"4§)
         {
            this.cleanup();
         }
      }
      
      public function §<!'§(param1:Boolean) : void
      {
         this.§"4§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§0!2§)
         {
            return;
         }
         if(this.§3g§)
         {
            this.§3g§.clear();
            this.§3g§ = null;
         }
         while(this.§[g§.length > 0)
         {
            (this.§[g§.pop() as §@]§).clear();
         }
         if(this.mActive)
         {
            this.deActivate();
         }
         this.§0!2§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§0!2§)
         {
            §3!5§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §-!D§;
         }
         if(!this.mActive)
         {
            §3!5§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §+!3§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§=!O§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
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
      
      public function §7C§(param1:§@]§) : void
      {
         this.§[g§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§!!+§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§!!+§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§!!+§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§&g§)
         {
            return this.§&g§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§&g§)
         {
            return this.§&g§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§3g§)
         {
            this.§3g§.viewWidth = param1;
            this.§3g§.viewHeight = param2;
         }
      }
      
      public function §,<§() : int
      {
         return §9!5§;
      }
   }
}
