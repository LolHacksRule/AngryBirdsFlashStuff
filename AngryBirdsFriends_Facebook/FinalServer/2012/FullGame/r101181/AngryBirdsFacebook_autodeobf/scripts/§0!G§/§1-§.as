package §0!G§
{
   import §#^§.§7!A§;
   import §2!i§.§'M§;
   import §6o§.§+!k§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §1-§
   {
      
      public static const §!!!§:int = 60;
      
      public static const §+"7§:String = "dummyState";
      
      public static const §!!3§:int = 0;
      
      public static const §]m§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §[U§:Object = null;
       
      
      public var § J§:Boolean = false;
      
      public var §+L§:Boolean = false;
      
      public var mName:String;
      
      public var §=&§:Boolean = false;
      
      public var §+s§:Boolean = false;
      
      public var §6w§:§7!A§;
      
      public var §?!9§:Array;
      
      public var mNextState:String = "";
      
      public var §3^§:Sprite = null;
      
      public var §0!+§:§&"5§ = null;
      
      public function §1-§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§?!9§ = new Array();
         this.§3^§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §5t§(param1:String) : String
      {
         if(§[U§)
         {
            return §[U§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§ J§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§7!A§ = null;
         if(!this.§ J§)
         {
            this.init();
         }
         if(this.§6w§)
         {
            this.§3^§.addChild(this.§6w§);
            this.§6w§.activateView();
         }
         for each(_loc1_ in this.§?!9§)
         {
            this.§3^§.addChild(_loc1_);
            _loc1_.§6v§();
         }
         this.mNextState = "";
         this.§+L§ = true;
      }
      
      public function §7!#§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§7!A§ = null;
         if(this.§6w§)
         {
            this.§6w§.§6v§();
            this.§3^§.removeChild(this.§6w§);
         }
         for each(_loc1_ in this.§?!9§)
         {
            _loc1_.§6v§();
            this.§3^§.removeChild(_loc1_);
         }
         if(!this.§+L§)
         {
            if(this.§+s§)
            {
               this.cleanup();
            }
            return;
         }
         this.§+L§ = false;
         if(this.§+s§)
         {
            this.cleanup();
         }
      }
      
      public function §[#§(param1:Boolean) : void
      {
         this.§+s§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§ J§)
         {
            return;
         }
         if(this.§6w§)
         {
            this.§6w§.clear();
            this.§6w§ = null;
         }
         while(this.§?!9§.length > 0)
         {
            (this.§?!9§.pop() as §7!A§).clear();
         }
         if(this.§+L§)
         {
            this.deActivate();
         }
         this.§ J§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§ J§)
         {
            §+!k§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §!!3§;
         }
         if(!this.§+L§)
         {
            §+!k§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §]m§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§=&§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
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
      
      public function §var §(param1:§7!A§) : void
      {
         this.§?!9§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§3^§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§3^§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§3^§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§0!+§)
         {
            return this.§0!+§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§0!+§)
         {
            return this.§0!+§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§6w§)
         {
            this.§6w§.viewWidth = param1;
            this.§6w§.viewHeight = param2;
         }
      }
      
      public function § g§() : int
      {
         return §!!!§;
      }
   }
}
