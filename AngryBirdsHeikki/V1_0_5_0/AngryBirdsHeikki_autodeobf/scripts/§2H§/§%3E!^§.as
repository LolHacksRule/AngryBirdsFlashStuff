package §2H§
{
   import § !Y§.§if§;
   import §1!K§.§>!<§;
   import §93§.§^!H§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §>!^§
   {
      
      public static const §`W§:int = 60;
      
      public static const §%3§:String = "dummyState";
      
      public static const §%!G§:int = 0;
      
      public static const §<!X§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §98§:Object = null;
       
      
      public var §'!§:Boolean = false;
      
      public var §6T§:Boolean = false;
      
      public var mName:String;
      
      public var §^!'§:Boolean = false;
      
      public var §9!$§:Boolean = false;
      
      public var §?P§:§if§;
      
      public var §5!B§:Array;
      
      public var mNextState:String = "";
      
      public var §%@§:Sprite = null;
      
      public var §true §:§%!>§ = null;
      
      public function §>!^§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§5!B§ = new Array();
         this.§%@§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §,G§(param1:String) : String
      {
         if(§98§)
         {
            return §98§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§'!§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§if§ = null;
         if(!this.§'!§)
         {
            this.init();
         }
         if(this.§?P§)
         {
            this.§%@§.addChild(this.§?P§);
            this.§?P§.§class§();
         }
         for each(_loc1_ in this.§5!B§)
         {
            this.§%@§.addChild(_loc1_);
            _loc1_.§,!X§();
         }
         this.mNextState = "";
         this.§6T§ = true;
      }
      
      public function §+6§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§if§ = null;
         if(this.§?P§)
         {
            this.§?P§.§,!X§();
            this.§%@§.removeChild(this.§?P§);
         }
         for each(_loc1_ in this.§5!B§)
         {
            _loc1_.§,!X§();
            this.§%@§.removeChild(_loc1_);
         }
         if(!this.§6T§)
         {
            if(this.§9!$§)
            {
               this.cleanup();
            }
            return;
         }
         this.§6T§ = false;
         if(this.§9!$§)
         {
            this.cleanup();
         }
      }
      
      public function §&!W§(param1:Boolean) : void
      {
         this.§9!$§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§'!§)
         {
            return;
         }
         if(this.§?P§)
         {
            this.§?P§.clear();
            this.§?P§ = null;
         }
         while(this.§5!B§.length > 0)
         {
            (this.§5!B§.pop() as §if§).clear();
         }
         if(this.§6T§)
         {
            this.deActivate();
         }
         this.§'!§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§'!§)
         {
            §>!<§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §%!G§;
         }
         if(!this.§6T§)
         {
            §>!<§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §<!X§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§^!'§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
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
      
      public function §?!P§(param1:§if§) : void
      {
         this.§5!B§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§%@§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§%@§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§%@§.contains(param1);
      }
      
      public function §3g§() : int
      {
         if(this.§true §)
         {
            return this.§true §.§3g§();
         }
         return 0;
      }
      
      public function §@!_§() : int
      {
         if(this.§true §)
         {
            return this.§true §.§@!_§();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§?P§)
         {
            this.§?P§.viewWidth = param1;
            this.§?P§.viewHeight = param2;
         }
      }
      
      public function §4!F§() : int
      {
         return §`W§;
      }
   }
}
