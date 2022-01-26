package §-!O§
{
   import §%t§.§@!%§;
   import §]!5§.§-!3§;
   import §]!Y§.§5W§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §7'§
   {
      
      public static const §8!9§:int = 60;
      
      public static const §-[§:String = "dummyState";
      
      public static const § in§:int = 0;
      
      public static const §"k§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §<!Q§:Object = null;
       
      
      public var §&!a§:Boolean = false;
      
      public var §;K§:Boolean = false;
      
      public var mName:String;
      
      public var §'!#§:Boolean = false;
      
      public var §6Z§:Boolean = false;
      
      public var §??§:§5W§;
      
      public var §9!!§:Array;
      
      public var mNextState:String = "";
      
      public var §6`§:Sprite = null;
      
      public var §`&§:§3!Y§ = null;
      
      public function §7'§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§9!!§ = new Array();
         this.§6`§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §8!Z§(param1:String) : String
      {
         if(§<!Q§)
         {
            return §<!Q§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§&!a§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§5W§ = null;
         if(!this.§&!a§)
         {
            this.init();
         }
         if(this.§??§)
         {
            this.§6`§.addChild(this.§??§);
            this.§??§.§-H§();
         }
         for each(_loc1_ in this.§9!!§)
         {
            this.§6`§.addChild(_loc1_);
            _loc1_.§>%§();
         }
         this.mNextState = "";
         this.§;K§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§5W§ = null;
         if(this.§??§)
         {
            this.§??§.§>%§();
            this.§6`§.removeChild(this.§??§);
         }
         for each(_loc1_ in this.§9!!§)
         {
            _loc1_.§>%§();
            this.§6`§.removeChild(_loc1_);
         }
         if(!this.§;K§)
         {
            if(this.§6Z§)
            {
               this.cleanup();
            }
            return;
         }
         this.§;K§ = false;
         if(this.§6Z§)
         {
            this.cleanup();
         }
      }
      
      public function §<U§(param1:Boolean) : void
      {
         this.§6Z§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§&!a§)
         {
            return;
         }
         if(this.§??§)
         {
            this.§??§.clear();
            this.§??§ = null;
         }
         while(this.§9!!§.length > 0)
         {
            (this.§9!!§.pop() as §5W§).clear();
         }
         if(this.§;K§)
         {
            this.deActivate();
         }
         this.§&!a§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§&!a§)
         {
            §@!%§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return § in§;
         }
         if(!this.§;K§)
         {
            §@!%§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §"k§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§'!#§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§-!3§) : void
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
      
      public function §]5§(param1:§5W§) : void
      {
         this.§9!!§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§6`§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§6`§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§6`§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§`&§)
         {
            return this.§`&§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§`&§)
         {
            return this.§`&§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§??§)
         {
            this.§??§.viewWidth = param1;
            this.§??§.viewHeight = param2;
         }
      }
      
      public function §>y§() : int
      {
         return §8!9§;
      }
   }
}
