package §"V§
{
   import §2x§.§'!@§;
   import §5Y§.§"!4§;
   import §8B§.§6!9§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §true§
   {
      
      public static const §&_§:int = 60;
      
      public static const §'§:String = "dummyState";
      
      public static const §4!9§:int = 0;
      
      public static const §<!+§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §5!"§:Object = null;
       
      
      public var §7!1§:Boolean = false;
      
      public var §,4§:Boolean = false;
      
      public var mName:String;
      
      public var §"l§:Boolean = false;
      
      public var §8!H§:Boolean = false;
      
      public var §6!$§:§"!4§;
      
      public var §=E§:Array;
      
      public var mNextState:String = "";
      
      public var §'M§:Sprite = null;
      
      public var §6a§:§8U§ = null;
      
      public function §true§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§=E§ = new Array();
         this.§'M§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §`!&§(param1:String) : String
      {
         if(§5!"§)
         {
            return §5!"§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§7!1§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§"!4§ = null;
         if(!this.§7!1§)
         {
            this.init();
         }
         if(this.§6!$§)
         {
            this.§'M§.addChild(this.§6!$§);
            this.§6!$§.§!N§();
         }
         for each(_loc1_ in this.§=E§)
         {
            this.§'M§.addChild(_loc1_);
            _loc1_.§"k§();
         }
         this.mNextState = "";
         this.§,4§ = true;
      }
      
      public function §"I§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§"!4§ = null;
         if(this.§6!$§)
         {
            this.§6!$§.§"k§();
            this.§'M§.removeChild(this.§6!$§);
         }
         for each(_loc1_ in this.§=E§)
         {
            _loc1_.§"k§();
            this.§'M§.removeChild(_loc1_);
         }
         if(!this.§,4§)
         {
            if(this.§8!H§)
            {
               this.cleanup();
            }
            return;
         }
         this.§,4§ = false;
         if(this.§8!H§)
         {
            this.cleanup();
         }
      }
      
      public function §?!$§(param1:Boolean) : void
      {
         this.§8!H§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§7!1§)
         {
            return;
         }
         if(this.§6!$§)
         {
            this.§6!$§.clear();
            this.§6!$§ = null;
         }
         while(this.§=E§.length > 0)
         {
            (this.§=E§.pop() as §"!4§).clear();
         }
         if(this.§,4§)
         {
            this.deActivate();
         }
         this.§7!1§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§7!1§)
         {
            §'!@§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §4!9§;
         }
         if(!this.§,4§)
         {
            §'!@§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §<!+§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§"l§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
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
      
      public function §@!6§(param1:§"!4§) : void
      {
         this.§=E§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§'M§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§'M§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§'M§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§6a§)
         {
            return this.§6a§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§6a§)
         {
            return this.§6a§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§6!$§)
         {
            this.§6!$§.viewWidth = param1;
            this.§6!$§.viewHeight = param2;
         }
      }
      
      public function §8Q§() : int
      {
         return §&_§;
      }
   }
}
