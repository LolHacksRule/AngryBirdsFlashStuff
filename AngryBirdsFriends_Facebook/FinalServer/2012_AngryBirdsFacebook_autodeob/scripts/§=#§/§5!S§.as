package §=#§
{
   import §#M§.§^0§;
   import §;n§.§^!;§;
   import §[x§.§%3§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §5!S§
   {
      
      public static const §null§:int = 60;
      
      public static const §4o§:String = "dummyState";
      
      public static const §do§:int = 0;
      
      public static const §^!_§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §]A§:Object = null;
       
      
      public var §!Q§:Boolean = false;
      
      public var §'"J§:Boolean = false;
      
      public var mName:String;
      
      public var §2!C§:Boolean = false;
      
      public var §-"3§:Boolean = false;
      
      public var §2!K§:§^0§;
      
      public var §1"!§:Array;
      
      public var mNextState:String = "";
      
      public var §`b§:Sprite = null;
      
      public var §6U§:§+!H§ = null;
      
      public function §5!S§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§1"!§ = new Array();
         this.§`b§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §4n§(param1:String) : String
      {
         if(§]A§)
         {
            return §]A§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§!Q§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§^0§ = null;
         if(!this.§!Q§)
         {
            this.init();
         }
         if(this.§2!K§)
         {
            this.§`b§.addChild(this.§2!K§);
            this.§2!K§.activateView();
         }
         for each(_loc1_ in this.§1"!§)
         {
            this.§`b§.addChild(_loc1_);
            _loc1_.§<%§();
         }
         this.mNextState = "";
         this.§'"J§ = true;
      }
      
      public function §%"§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§^0§ = null;
         if(this.§2!K§)
         {
            this.§2!K§.§<%§();
            this.§`b§.removeChild(this.§2!K§);
         }
         for each(_loc1_ in this.§1"!§)
         {
            _loc1_.§<%§();
            this.§`b§.removeChild(_loc1_);
         }
         if(!this.§'"J§)
         {
            if(this.§-"3§)
            {
               this.cleanup();
            }
            return;
         }
         this.§'"J§ = false;
         if(this.§-"3§)
         {
            this.cleanup();
         }
      }
      
      public function §["G§(param1:Boolean) : void
      {
         this.§-"3§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§!Q§)
         {
            return;
         }
         if(this.§2!K§)
         {
            this.§2!K§.clear();
            this.§2!K§ = null;
         }
         while(this.§1"!§.length > 0)
         {
            (this.§1"!§.pop() as §^0§).clear();
         }
         if(this.§'"J§)
         {
            this.deActivate();
         }
         this.§!Q§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§!Q§)
         {
            §%3§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §do§;
         }
         if(!this.§'"J§)
         {
            §%3§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §^!_§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2!C§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
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
      
      public function §@!$§(param1:§^0§) : void
      {
         this.§1"!§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§`b§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§`b§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§`b§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§6U§)
         {
            return this.§6U§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§6U§)
         {
            return this.§6U§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2!K§)
         {
            this.§2!K§.viewWidth = param1;
            this.§2!K§.viewHeight = param2;
         }
      }
      
      public function §9a§() : int
      {
         return §null§;
      }
   }
}
