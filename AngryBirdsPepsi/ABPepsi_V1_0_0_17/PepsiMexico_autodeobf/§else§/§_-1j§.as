package §else§
{
   import §_-6r§.§_-7P§;
   import §_-AW§.§_-kY§;
   import §_-F1§.§_-k4§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-54§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-1j§ extends §_-VA§
   {
      
      public static const §_-Az§:String = "CreditsState";
       
      
      private var §_-6L§:§_-kY§ = null;
      
      private var §_-KZ§:Boolean;
      
      private var §_-mA§:Number;
      
      private var §_-OL§:Number;
      
      private var §_-bJ§:Number;
      
      private var §_-n4§:Number;
      
      private var §_-lT§:Number;
      
      public function §_-1j§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_Credits[0]);
         this.§_-6L§ = new §_-kY§(§_-MB§.§_-A7§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-62§();
         §_-MB§.§_-A7§.§_-Gf§(true);
         §_-MB§.§_-U0§(this.§_-6L§);
         this.§_-6L§.init();
         §_-Qu§.§_-os§();
         §_-Vu§.§_-jT§.§_-ra§ = false;
         var _loc1_:§_-k4§ = §_-NY§.container.getItemByName("Container_Credits") as §_-k4§;
         §_-NY§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-tj§);
         §_-NY§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-2q§);
         §_-NY§.addEventListener(MouseEvent.MOUSE_UP,this.§_-jH§);
         §_-NY§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-NY§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-o1§);
         this.§_-n4§ = 0;
         this.§_-mA§ = 0;
         this.§_-OL§ = 0;
         this.§_-lT§ = _loc1_.height + §_-MB§.§_-SP§ * §_-MB§.§_-y3§;
         this.§_-n4§ = -this.§_-lT§;
         §_-NY§.setText(§_-54§.§_-u9§,"TextField_Version_Number");
      }
      
      private function §_-62§(param1:Boolean = true) : void
      {
         var _loc2_:Number = 760;
         var _loc3_:Number = 570;
         if(param1)
         {
            _loc2_ = 980;
         }
         §_-Qu§.§_-1q§ = _loc2_;
         _loc2_ = _loc2_ / 980 * §_-Cv§.stage.stageWidth;
         _loc3_ = §_-Cv§.stage.stageHeight;
         if(_loc3_ < 32)
         {
            _loc3_ = 32;
         }
         if(_loc2_ < 32)
         {
            _loc2_ = 32;
         }
         §_-Vu§.§_-dq§.§_-cU§ = new Rectangle(0,0,_loc2_,_loc3_);
         if(!param1)
         {
            §_-Vu§.§_-dq§.§_-rd§();
         }
         else
         {
            §_-Vu§.§_-dq§.§_-Bq§(_loc2_,_loc3_);
         }
      }
      
      private function §_-tj§(param1:MouseEvent) : void
      {
         if(this.§_-KZ§)
         {
            if(this.§_-bJ§ - §_-NY§.mouseY > 0)
            {
               this.§_-mA§ = this.§_-bJ§ - §_-NY§.mouseY;
               this.§_-bJ§ = §_-NY§.mouseY;
            }
            else if(this.§_-bJ§ - §_-NY§.mouseY < 0)
            {
               this.§_-mA§ = this.§_-bJ§ - §_-NY§.mouseY;
               this.§_-bJ§ = §_-NY§.mouseY;
            }
         }
      }
      
      private function §_-2q§(param1:MouseEvent) : void
      {
         this.§_-KZ§ = true;
         this.§_-bJ§ = §_-NY§.mouseY;
      }
      
      private function §_-jH§(param1:MouseEvent) : void
      {
         this.§_-KZ§ = false;
      }
      
      private function §_-o1§(param1:Event) : void
      {
         this.§_-KZ§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§_-OL§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§_-OL§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-MB§.§_-Gk§.update(param1);
         (§_-NY§.getItemByName("Container_Credits") as §_-k4§).y = Math.floor(-this.§_-n4§);
         this.§_-kj§(param1);
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      private function §_-kj§(param1:Number) : void
      {
         this.§_-n4§ += this.§_-mA§;
         this.§_-n4§ += this.§_-OL§;
         if(!this.§_-KZ§ && Math.abs(this.§_-OL§) < param1 / 15)
         {
            this.§_-n4§ += param1 / 15;
         }
         if(this.§_-n4§ < -§_-Qu§.§_-SP§ * §_-MB§.§_-y3§)
         {
            this.§_-n4§ = this.§_-lT§;
         }
         else if(this.§_-n4§ > this.§_-lT§)
         {
            this.§_-n4§ = -§_-Qu§.§_-SP§ * §_-MB§.§_-y3§;
         }
         if(!this.§_-KZ§)
         {
            this.§_-mA§ *= 0.9;
            this.§_-OL§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-NY§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-tj§);
         §_-NY§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-2q§);
         §_-NY§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-jH§);
         §_-NY§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-NY§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-o1§);
         this.§_-62§(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-pX§.§_-Az§;
         }
      }
   }
}
