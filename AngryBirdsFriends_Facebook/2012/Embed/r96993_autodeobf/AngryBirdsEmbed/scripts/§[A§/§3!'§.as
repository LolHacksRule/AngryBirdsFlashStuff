package §[A§
{
   import §!^§.§"%§;
   import §3v§.§1a§;
   import §^s§.§&"§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §3!'§
   {
      
      public static const § r§:int = 60;
      
      public static const §'!$§:String = "dummyState";
      
      public static const §[!+§:int = 0;
      
      public static const §+!$§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §;!C§:Object = null;
       
      
      public var §@!+§:Boolean = false;
      
      public var §?a§:Boolean = false;
      
      public var mName:String;
      
      public var §?9§:Boolean = false;
      
      public var §7!7§:Boolean = false;
      
      public var §+!2§:§&"§;
      
      public var §[P§:Array;
      
      public var mNextState:String = "";
      
      public var §^!>§:Sprite = null;
      
      public var §2!B§:§8!B§ = null;
      
      public function §3!'§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§[P§ = new Array();
         this.§^!>§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §[h§(param1:String) : String
      {
         if(§;!C§)
         {
            return §;!C§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§@!+§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§&"§ = null;
         if(!this.§@!+§)
         {
            this.init();
         }
         if(this.§+!2§)
         {
            this.§^!>§.addChild(this.§+!2§);
            this.§+!2§.§%g§();
         }
         for each(_loc1_ in this.§[P§)
         {
            this.§^!>§.addChild(_loc1_);
            _loc1_.§6l§();
         }
         this.mNextState = "";
         this.§?a§ = true;
      }
      
      public function §8!A§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§&"§ = null;
         if(this.§+!2§)
         {
            this.§+!2§.§6l§();
            this.§^!>§.removeChild(this.§+!2§);
         }
         for each(_loc1_ in this.§[P§)
         {
            _loc1_.§6l§();
            this.§^!>§.removeChild(_loc1_);
         }
         if(!this.§?a§)
         {
            if(this.§7!7§)
            {
               this.cleanup();
            }
            return;
         }
         this.§?a§ = false;
         if(this.§7!7§)
         {
            this.cleanup();
         }
      }
      
      public function §1!1§(param1:Boolean) : void
      {
         this.§7!7§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§@!+§)
         {
            return;
         }
         if(this.§+!2§)
         {
            this.§+!2§.clear();
            this.§+!2§ = null;
         }
         while(this.§[P§.length > 0)
         {
            (this.§[P§.pop() as §&"§).clear();
         }
         if(this.§?a§)
         {
            this.deActivate();
         }
         this.§@!+§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§@!+§)
         {
            §1a§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §[!+§;
         }
         if(!this.§?a§)
         {
            §1a§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §+!$§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§?9§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
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
      
      public function §,k§(param1:§&"§) : void
      {
         this.§[P§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§^!>§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§^!>§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§^!>§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§2!B§)
         {
            return this.§2!B§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§2!B§)
         {
            return this.§2!B§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§+!2§)
         {
            this.§+!2§.viewWidth = param1;
            this.§+!2§.viewHeight = param2;
         }
      }
      
      public function §?y§() : int
      {
         return § r§;
      }
   }
}
