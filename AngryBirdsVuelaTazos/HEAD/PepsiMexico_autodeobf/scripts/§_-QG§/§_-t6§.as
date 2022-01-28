package §_-QG§
{
   import §_-7V§.§_-Gs§;
   import §_-Qn§.§_-bo§;
   import §_-gM§.§_-yj§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-t6§
   {
      
      public static const §_-Ju§:String = "dummyState";
      
      public static const §_-x7§:int = 0;
      
      public static const §_-ps§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-I7§:Object = null;
       
      
      public var §_-sG§:Boolean = false;
      
      public var §_-yh§:Boolean = false;
      
      public var mName:String;
      
      public var §_-cw§:Boolean = false;
      
      public var §_-zD§:Boolean = false;
      
      public var §_-MF§:§_-bo§;
      
      public var §_-L8§:Array;
      
      public var mNextState:String = "";
      
      public var §_-j§:Sprite = null;
      
      public var §_-lk§:§_-gi§ = null;
      
      public function §_-t6§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-L8§ = new Array();
         this.§_-j§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-Z5§(param1:String) : String
      {
         if(§_-I7§)
         {
            return §_-I7§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-sG§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-bo§ = null;
         if(!this.§_-sG§)
         {
            this.init();
         }
         if(this.§_-MF§)
         {
            this.§_-j§.addChild(this.§_-MF§);
            this.§_-MF§.§_-UX§();
         }
         for each(_loc1_ in this.§_-L8§)
         {
            this.§_-j§.addChild(_loc1_);
            _loc1_.§_-Hd§();
         }
         this.mNextState = "";
         this.§_-yh§ = true;
      }
      
      public function §_-yL§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-bo§ = null;
         if(this.§_-MF§)
         {
            this.§_-MF§.§_-Hd§();
            this.§_-j§.removeChild(this.§_-MF§);
         }
         for each(_loc1_ in this.§_-L8§)
         {
            _loc1_.§_-Hd§();
            this.§_-j§.removeChild(_loc1_);
         }
         if(!this.§_-yh§)
         {
            if(this.§_-zD§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-yh§ = false;
         if(this.§_-zD§)
         {
            this.cleanup();
         }
      }
      
      public function §_-4F§(param1:Boolean) : void
      {
         this.§_-zD§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-sG§)
         {
            return;
         }
         if(this.§_-MF§)
         {
            this.§_-MF§.clear();
            this.§_-MF§ = null;
         }
         while(this.§_-L8§.length > 0)
         {
            (this.§_-L8§.pop() as §_-bo§).clear();
         }
         if(this.§_-yh§)
         {
            this.deActivate();
         }
         this.§_-sG§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-sG§)
         {
            §_-yj§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-x7§;
         }
         if(!this.§_-yh§)
         {
            §_-yj§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-ps§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-cw§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
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
      
      public function §_-Lh§(param1:§_-bo§) : void
      {
         this.§_-L8§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-j§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-j§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-j§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-lk§)
         {
            return this.§_-lk§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-lk§)
         {
            return this.§_-lk§.getAppHeight();
         }
         return 0;
      }
   }
}
