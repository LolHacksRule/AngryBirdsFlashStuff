package §_-qT§
{
   import §_-Eo§.§_-R4§;
   import §_-Jx§.§_-Ao§;
   import §_-Yh§.§_-fA§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §_-O5§
   {
      
      public static const §_-UF§:String = "dummyState";
      
      public static const §_-gQ§:int = 0;
      
      public static const §_-gu§:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var §_-WV§:Object = null;
       
      
      public var §_-su§:Boolean = false;
      
      public var §_-Yy§:Boolean = false;
      
      public var mName:String;
      
      public var §_-ZT§:Boolean = false;
      
      public var §_-xO§:Boolean = false;
      
      public var §_-Ih§:§_-fA§;
      
      public var §_-kQ§:Array;
      
      public var mNextState:String = "";
      
      public var §_-MT§:Sprite = null;
      
      public var §_-vZ§:§_-t8§ = null;
      
      public function §_-O5§(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.§_-kQ§ = new Array();
         this.§_-MT§ = new Sprite();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function §_-9I§(param1:String) : String
      {
         if(§_-WV§)
         {
            return §_-WV§[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.§_-su§ = true;
      }
      
      public function activate() : void
      {
         var _loc1_:§_-fA§ = null;
         if(!this.§_-su§)
         {
            this.init();
         }
         if(this.§_-Ih§)
         {
            this.§_-MT§.addChild(this.§_-Ih§);
            this.§_-Ih§.§_-M3§();
         }
         for each(_loc1_ in this.§_-kQ§)
         {
            this.§_-MT§.addChild(_loc1_);
            _loc1_.§_-HS§();
         }
         this.mNextState = "";
         this.§_-Yy§ = true;
      }
      
      public function §_-0t§() : void
      {
      }
      
      public function deActivate() : void
      {
         var _loc1_:§_-fA§ = null;
         if(this.§_-Ih§)
         {
            this.§_-Ih§.§_-HS§();
            this.§_-MT§.removeChild(this.§_-Ih§);
         }
         for each(_loc1_ in this.§_-kQ§)
         {
            _loc1_.§_-HS§();
            this.§_-MT§.removeChild(_loc1_);
         }
         if(!this.§_-Yy§)
         {
            if(this.§_-xO§)
            {
               this.cleanup();
            }
            return;
         }
         this.§_-Yy§ = false;
         if(this.§_-xO§)
         {
            this.cleanup();
         }
      }
      
      public function §_-OC§(param1:Boolean) : void
      {
         this.§_-xO§ = param1;
      }
      
      public function cleanup() : void
      {
         if(!this.§_-su§)
         {
            return;
         }
         if(this.§_-Ih§)
         {
            this.§_-Ih§.clear();
            this.§_-Ih§ = null;
         }
         while(this.§_-kQ§.length > 0)
         {
            (this.§_-kQ§.pop() as §_-fA§).clear();
         }
         if(this.§_-Yy§)
         {
            this.deActivate();
         }
         this.§_-su§ = false;
      }
      
      public function run(param1:Number) : int
      {
         if(!this.§_-su§)
         {
            §_-R4§.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return §_-gQ§;
         }
         if(!this.§_-Yy§)
         {
            §_-R4§.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return §_-gu§;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.§_-ZT§;
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
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
      
      public function §_-QT§(param1:§_-fA§) : void
      {
         this.§_-kQ§.push(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:Number) : void
      {
         this.§_-MT§.addChildAt(param1,param2);
      }
      
      public function removeChild(param1:DisplayObject) : void
      {
         this.§_-MT§.removeChild(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         return this.§_-MT§.contains(param1);
      }
      
      public function getAppWidth() : int
      {
         if(this.§_-vZ§)
         {
            return this.§_-vZ§.getAppWidth();
         }
         return 0;
      }
      
      public function getAppHeight() : int
      {
         if(this.§_-vZ§)
         {
            return this.§_-vZ§.getAppHeight();
         }
         return 0;
      }
   }
}
