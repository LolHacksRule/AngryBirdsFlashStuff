package § =§
{
   import §!4§.§=!Z§;
   import §'Y§.§;J§;
   import §<s§.§]@§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class § x§
   {
      
      public static const §1!5§:int = 60;
      
      public static const §^!C§:String = "dummyState";
      
      public static const §^-§:int = 0;
      
      public static const §[t§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §+!-§:Object = null;
       
      
      public var §[g§:Boolean = false;
      
      public var §7!G§:Boolean = false;
      
      public var mName:String;
      
      public var §[4§:Boolean = false;
      
      public var §"q§:Boolean = false;
      
      public var §^!]§:§;J§;
      
      public var §+!J§:Array;
      
      public var mNextState:String = "";
      
      public var §&!C§:Sprite = null;
      
      public var §+!1§:§5!2§ = null;
      
      public function § x§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§+!J§ = new Array();
         this.§&!C§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §0!X§(param1:String) : String
      {
         if(§+!-§)
         {
            return §+!-§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§[g§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§;J§ = null;
         if(!this.§[g§)
         {
            this.init();
         }
         if(this.§^!]§)
         {
            this.§&!C§.addChild(this.§^!]§);
            this.§^!]§.§[!V§();
         }
         for each(_loc1_ in this.§+!J§)
         {
            this.§&!C§.addChild(_loc1_);
            _loc1_.§7Y§();
         }
         this.mNextState = "";
         this.§7!G§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§;J§ = null;
         if(this.§^!]§)
         {
            this.§^!]§.§7Y§();
            this.§&!C§.removeChild(this.§^!]§);
         }
         for each(_loc1_ in this.§+!J§)
         {
            _loc1_.§7Y§();
            this.§&!C§.removeChild(_loc1_);
         }
         if(!this.§7!G§)
         {
            if(this.§"q§)
            {
               this.cleanup();
            }
            return;
         }
         this.§7!G§ = false;
         if(this.§"q§)
         {
            this.cleanup();
         }
      }
      
      public function §@!R§(param1:Boolean) : void
      {
         this.§"q§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§[g§)
         {
            return;
         }
         if(this.§^!]§)
         {
            this.§^!]§.clear();
            this.§^!]§ = null;
         }
         while(this.§+!J§.length > 0)
         {
            (this.§+!J§.pop() as §;J§).clear();
         }
         if(this.§7!G§)
         {
            this.deActivate();
         }
         this.§[g§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§[g§)
         {
            §=!Z§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §^-§;
         }
         if(!this.§7!G§)
         {
            §=!Z§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §[t§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§[4§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§]@§) : void
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
      
      public function §+<§(param1:§;J§) : void
      {
         this.§+!J§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§&!C§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§&!C§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§&!C§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§+!1§)
         {
            return this.§+!1§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§+!1§)
         {
            return this.§+!1§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^!]§)
         {
            this.§^!]§.viewWidth = param1;
            this.§^!]§.viewHeight = param2;
         }
      }
      
      public function §`!O§() : int
      {
         return §1!5§;
      }
   }
}
