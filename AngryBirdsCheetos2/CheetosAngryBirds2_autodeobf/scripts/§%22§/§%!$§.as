package §"§
{
   import §'!D§.§08§;
   import §>P§.§5!§;
   import §>^§.§!6§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §%!$§
   {
      
      public static const §+d§:int = 60;
      
      public static const §7!@§:String = "dummyState";
      
      public static const §'!=§:int = 0;
      
      public static const §]!P§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §@!'§:Object = null;
       
      
      public var §]!3§:Boolean = false;
      
      public var §2A§:Boolean = false;
      
      public var mName:String;
      
      public var §2i§:Boolean = false;
      
      public var §,h§:Boolean = false;
      
      public var §%!0§:§5!§;
      
      public var §&!3§:Array;
      
      public var mNextState:String = "";
      
      public var §8!2§:Sprite = null;
      
      public var §]!2§:§]!&§ = null;
      
      public function §%!$§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§&!3§ = new Array();
         this.§8!2§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §'!A§(param1:String) : String
      {
         if(§@!'§)
         {
            return §@!'§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§]!3§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§5!§ = null;
         if(!this.§]!3§)
         {
            this.init();
         }
         if(this.§%!0§)
         {
            this.§8!2§.addChild(this.§%!0§);
            this.§%!0§.§%>§();
         }
         for each(_loc1_ in this.§&!3§)
         {
            this.§8!2§.addChild(_loc1_);
            _loc1_.§#j§();
         }
         this.mNextState = "";
         this.§2A§ = true;
      }
      
      public function activateComplete() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§5!§ = null;
         if(this.§%!0§)
         {
            this.§%!0§.§#j§();
            this.§8!2§.removeChild(this.§%!0§);
         }
         for each(_loc1_ in this.§&!3§)
         {
            _loc1_.§#j§();
            this.§8!2§.removeChild(_loc1_);
         }
         if(!this.§2A§)
         {
            if(this.§,h§)
            {
               this.cleanup();
            }
            return;
         }
         this.§2A§ = false;
         if(this.§,h§)
         {
            this.cleanup();
         }
      }
      
      public function §>!E§(param1:Boolean) : void
      {
         this.§,h§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§]!3§)
         {
            return;
         }
         if(this.§%!0§)
         {
            this.§%!0§.clear();
            this.§%!0§ = null;
         }
         while(this.§&!3§.length > 0)
         {
            (this.§&!3§.pop() as §5!§).clear();
         }
         if(this.§2A§)
         {
            this.deActivate();
         }
         this.§]!3§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§]!3§)
         {
            §!6§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §'!=§;
         }
         if(!this.§2A§)
         {
            §!6§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §]!P§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§2i§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
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
      
      public function §@!=§(param1:§5!§) : void
      {
         this.§&!3§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§8!2§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§8!2§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§8!2§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§]!2§)
         {
            return this.§]!2§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§]!2§)
         {
            return this.§]!2§.getAppHeight();
         }
         return 0;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§%!0§)
         {
            this.§%!0§.viewWidth = param1;
            this.§%!0§.viewHeight = param2;
         }
      }
      
      public function §7!`§() : int
      {
         return §+d§;
      }
   }
}
