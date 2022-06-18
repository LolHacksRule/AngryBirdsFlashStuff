package §<!A§
{
   import §'6§.§?!L§;
   import §@a§.§8H§;
   import §]!=§.§;!6§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §,!?§
   {
      
      public static const §9!&§:int = 60;
      
      public static const §??§:String = "dummyState";
      
      public static const §'!5§:int = 0;
      
      public static const §'E§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §0u§:Object = null;
       
      
      public var §3d§:Boolean = false;
      
      public var §0>§:Boolean = false;
      
      public var mName:String;
      
      public var §]!G§:Boolean = false;
      
      public var §8&§:Boolean = false;
      
      public var §while§:§8H§;
      
      public var §>!2§:Array;
      
      public var mNextState:String = "";
      
      public var §`8§:Sprite = null;
      
      public var §3!-§:§5y§ = null;
      
      public function §,!?§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§>!2§ = new Array();
         this.§`8§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §3v§(param1:String) : String
      {
         if(§0u§)
         {
            return §0u§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§3d§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§8H§ = null;
         if(!this.§3d§)
         {
            this.init();
         }
         if(this.§while§)
         {
            this.§`8§.addChild(this.§while§);
            this.§while§.§0A§();
         }
         for each(_loc1_ in this.§>!2§)
         {
            this.§`8§.addChild(_loc1_);
            _loc1_.§=!-§();
         }
         this.mNextState = "";
         this.§0>§ = true;
      }
      
      public function §,c§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§8H§ = null;
         if(this.§while§)
         {
            this.§while§.§=!-§();
            this.§`8§.removeChild(this.§while§);
         }
         for each(_loc1_ in this.§>!2§)
         {
            _loc1_.§=!-§();
            this.§`8§.removeChild(_loc1_);
         }
         if(!this.§0>§)
         {
            if(this.§8&§)
            {
               this.cleanup();
            }
            return;
         }
         this.§0>§ = false;
         if(this.§8&§)
         {
            this.cleanup();
         }
      }
      
      public function §!f§(param1:Boolean) : void
      {
         this.§8&§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§3d§)
         {
            return;
         }
         if(this.§while§)
         {
            this.§while§.clear();
            this.§while§ = null;
         }
         while(this.§>!2§.length > 0)
         {
            (this.§>!2§.pop() as §8H§).clear();
         }
         if(this.§0>§)
         {
            this.deActivate();
         }
         this.§3d§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§3d§)
         {
            §?!L§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §'!5§;
         }
         if(!this.§0>§)
         {
            §?!L§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §'E§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§]!G§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
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
      
      public function §<^§(param1:§8H§) : void
      {
         this.§>!2§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§`8§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§`8§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§`8§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§3!-§)
         {
            return this.§3!-§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§3!-§)
         {
            return this.§3!-§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§while§)
         {
            this.§while§.viewWidth = param1;
            this.§while§.viewHeight = param2;
         }
      }
      
      public function §!!0§() : int
      {
         return §9!&§;
      }
   }
}
