package §-H§
{
   import § !G§.§ #§;
   import §0F§.§'j§;
   import §1§.§'n§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §&c§
   {
      
      public static const §-S§:int = 60;
      
      public static const §&`§:String = "dummyState";
      
      public static const §`!;§:int = 0;
      
      public static const §!!Z§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §&!0§:Object = null;
       
      
      public var §]m§:Boolean = false;
      
      public var §<C§:Boolean = false;
      
      public var mName:String;
      
      public var §=!I§:Boolean = false;
      
      public var §"G§:Boolean = false;
      
      public var §3t§:§'j§;
      
      public var §;!?§:Array;
      
      public var mNextState:String = "";
      
      public var §?!N§:Sprite = null;
      
      public var §7P§:§ 5§ = null;
      
      public function §&c§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§;!?§ = new Array();
         this.§?!N§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function § !%§(param1:String) : String
      {
         if(§&!0§)
         {
            return §&!0§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§]m§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§'j§ = null;
         if(!this.§]m§)
         {
            this.init();
         }
         if(this.§3t§)
         {
            this.§?!N§.addChild(this.§3t§);
            this.§3t§.§'a§();
         }
         for each(_loc1_ in this.§;!?§)
         {
            this.§?!N§.addChild(_loc1_);
            _loc1_.§8!Q§();
         }
         this.mNextState = "";
         this.§<C§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§'j§ = null;
         if(this.§3t§)
         {
            this.§3t§.§8!Q§();
            this.§?!N§.removeChild(this.§3t§);
         }
         for each(_loc1_ in this.§;!?§)
         {
            _loc1_.§8!Q§();
            this.§?!N§.removeChild(_loc1_);
         }
         if(!this.§<C§)
         {
            if(this.§"G§)
            {
               this.cleanup();
            }
            return;
         }
         this.§<C§ = false;
         if(this.§"G§)
         {
            this.cleanup();
         }
      }
      
      public function §^!A§(param1:Boolean) : void
      {
         this.§"G§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§]m§)
         {
            return;
         }
         if(this.§3t§)
         {
            this.§3t§.clear();
            this.§3t§ = null;
         }
         while(this.§;!?§.length > 0)
         {
            (this.§;!?§.pop() as §'j§).clear();
         }
         if(this.§<C§)
         {
            this.deActivate();
         }
         this.§]m§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§]m§)
         {
            § #§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §`!;§;
         }
         if(!this.§<C§)
         {
            § #§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §!!Z§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§=!I§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
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
      
      public function §0H§(param1:§'j§) : void
      {
         this.§;!?§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§?!N§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§?!N§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§?!N§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§7P§)
         {
            return this.§7P§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§7P§)
         {
            return this.§7P§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§3t§)
         {
            this.§3t§.viewWidth = param1;
            this.§3t§.viewHeight = param2;
         }
      }
      
      public function §4f§() : int
      {
         return §-S§;
      }
   }
}
