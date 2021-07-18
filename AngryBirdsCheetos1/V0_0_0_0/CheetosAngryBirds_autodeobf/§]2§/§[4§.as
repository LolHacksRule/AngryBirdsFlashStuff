package §]2§
{
   import §+?§.§,!N§;
   import §@,§.§4h§;
   import §@R§.§]^§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §[4§
   {
      
      public static const §=!D§:String = "dummyState";
      
      public static const §0,§:int = 0;
      
      public static const §^Z§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §@z§:Object = null;
       
      
      public var §!!4§:Boolean = false;
      
      public var §4!>§:Boolean = false;
      
      public var mName:String;
      
      public var §2!@§:Boolean = false;
      
      public var §]O§:Boolean = false;
      
      public var §"c§:§,!N§;
      
      public var §1!=§:Array;
      
      public var mNextState:String = "";
      
      public var §9!A§:Sprite = null;
      
      public var §[!U§:§%!B§ = null;
      
      public function §[4§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§1!=§ = new Array();
         this.§9!A§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §59§(param1:String) : String
      {
         if(§@z§)
         {
            return §@z§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§!!4§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§,!N§ = null;
         if(!this.§!!4§)
         {
            this.init();
         }
         if(this.§"c§)
         {
            this.§9!A§.addChild(this.§"c§);
            this.§"c§.§'$§();
         }
         for each(_loc1_ in this.§1!=§)
         {
            this.§9!A§.addChild(_loc1_);
            _loc1_.§[!F§();
         }
         this.mNextState = "";
         this.§4!>§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§,!N§ = null;
         if(this.§"c§)
         {
            this.§"c§.§[!F§();
            this.§9!A§.removeChild(this.§"c§);
         }
         for each(_loc1_ in this.§1!=§)
         {
            _loc1_.§[!F§();
            this.§9!A§.removeChild(_loc1_);
         }
         if(!this.§4!>§)
         {
            if(this.§]O§)
            {
               this.cleanup();
            }
            return;
         }
         this.§4!>§ = false;
         if(this.§]O§)
         {
            this.cleanup();
         }
      }
      
      public function §81§(param1:Boolean) : void
      {
         this.§]O§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§!!4§)
         {
            return;
         }
         if(this.§"c§)
         {
            this.§"c§.clear();
            this.§"c§ = null;
         }
         while(this.§1!=§.length > 0)
         {
            (this.§1!=§.pop() as §,!N§).clear();
         }
         if(this.§4!>§)
         {
            this.deActivate();
         }
         this.§!!4§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§!!4§)
         {
            §4h§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §0,§;
         }
         if(!this.§4!>§)
         {
            §4h§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §^Z§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2!@§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
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
      
      public function §4!&§(param1:§,!N§) : void
      {
         this.§1!=§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§9!A§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§9!A§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§9!A§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§[!U§)
         {
            return this.§[!U§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§[!U§)
         {
            return this.§[!U§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§"c§)
         {
            this.§"c§.viewWidth = param1;
            this.§"c§.viewHeight = param2;
         }
      }
   }
}
