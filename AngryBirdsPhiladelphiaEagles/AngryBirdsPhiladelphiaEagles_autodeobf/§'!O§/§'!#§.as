package §'!O§
{
   import §6v§.§`M§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §'!#§
   {
      
      public static const §&J§:int = 60;
      
      public static const §,!2§:String = "dummyState";
      
      public static const §2!8§:int = 0;
      
      public static const §^4§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §#f§:Object = null;
       
      
      public var §&K§:Boolean = false;
      
      public var mActive:Boolean = false;
      
      public var mName:String;
      
      public var §?q§:Boolean = false;
      
      public var §?v§:Boolean = false;
      
      public var §0q§:§`o§;
      
      public var §]_§:Array;
      
      public var mNextState:String = "";
      
      public var §8A§:Sprite = null;
      
      public var §1!Q§:§,!?§ = null;
      
      public function §'!#§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§]_§ = new Array();
         this.§8A§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §5F§(param1:String) : String
      {
         if(§#f§)
         {
            return §#f§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§&K§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§`o§ = null;
         if(!this.§&K§)
         {
            this.init();
         }
         if(this.§0q§)
         {
            this.§8A§.addChild(this.§0q§);
            this.§0q§.§[C§();
         }
         for each(_loc1_ in this.§]_§)
         {
            this.§8A§.addChild(_loc1_);
            _loc1_.§!q§();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function §!!P§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§`o§ = null;
         if(this.§0q§)
         {
            this.§0q§.§!q§();
            this.§8A§.removeChild(this.§0q§);
         }
         for each(_loc1_ in this.§]_§)
         {
            _loc1_.§!q§();
            this.§8A§.removeChild(_loc1_);
         }
         if(!this.mActive)
         {
            if(this.§?v§)
            {
               this.cleanup();
            }
            return;
         }
         this.mActive = false;
         if(this.§?v§)
         {
            this.cleanup();
         }
      }
      
      public function §<O§(param1:Boolean) : void
      {
         this.§?v§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§&K§)
         {
            return;
         }
         if(this.§0q§)
         {
            this.§0q§.clear();
            this.§0q§ = null;
         }
         while(this.§]_§.length > 0)
         {
            (this.§]_§.pop() as §`o§).clear();
         }
         if(this.mActive)
         {
            this.deActivate();
         }
         this.§&K§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§&K§)
         {
            § L§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §2!8§;
         }
         if(!this.mActive)
         {
            § L§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §^4§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§?q§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
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
      
      public function §^!+§(param1:§`o§) : void
      {
         this.§]_§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§8A§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§8A§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8A§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§1!Q§)
         {
            return this.§1!Q§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§1!Q§)
         {
            return this.§1!Q§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§0q§)
         {
            this.§0q§.viewWidth = param1;
            this.§0q§.viewHeight = param2;
         }
      }
      
      public function §[!;§() : int
      {
         return §&J§;
      }
   }
}
