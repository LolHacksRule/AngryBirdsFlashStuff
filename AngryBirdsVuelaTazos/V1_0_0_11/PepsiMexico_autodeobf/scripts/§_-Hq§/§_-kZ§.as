package §_-Hq§
{
   import § if§.§_-Fk§;
   import §_-Ah§.§_-b§;
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-TW§.§_-qq§;
   import §_-ZG§.§_-Ne§;
   import §_-d5§.§_-6Y§;
   import §_-xN§.§_-pB§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-kZ§ extends §_-PN§
   {
      
      public static const §_-dh§:String = "CreditsState";
       
      
      private var §_-7§:§_-Fk§ = null;
      
      private var §_-1N§:Boolean;
      
      private var §_-Ws§:Number;
      
      private var §_-Hn§:Number;
      
      private var §_-vq§:Number;
      
      private var §_-AP§:Number;
      
      private var §_-FH§:Number;
      
      public function §_-kZ§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_Credits[0]);
         this.§_-7§ = new §_-Fk§(§_-b§.§_-cK§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.start();
         }
         this.§_-87§();
         §_-b§.§_-cK§.§_-uw§(true);
         §_-b§.§_-DZ§(this.§_-7§);
         this.§_-7§.init();
         §_-I8§.§_-NZ§();
         §_-6Y§.§_-7p§.§_-ej§ = false;
         var _loc1_:§_-qq§ = §_-qE§.container.getItemByName("Container_Credits") as §_-qq§;
         §_-qE§.addEventListener(MouseEvent.MOUSE_MOVE,this.§ true§);
         §_-qE§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-29§);
         §_-qE§.addEventListener(MouseEvent.MOUSE_UP,this.§_-2S§);
         §_-qE§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-qE§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-3d§);
         this.§_-AP§ = 0;
         this.§_-Ws§ = 0;
         this.§_-Hn§ = 0;
         this.§_-FH§ = _loc1_.height + §_-b§.§_-q§ * §_-b§.§_-Hu§;
         this.§_-AP§ = -this.§_-FH§;
         §_-qE§.setText(§_-Ne§.§_-p0§,"TextField_Version_Number");
      }
      
      private function §_-87§(param1:Boolean = true) : void
      {
         var _loc2_:Number = 760;
         var _loc3_:Number = 570;
         if(param1)
         {
            _loc2_ = 980;
         }
         §_-I8§.§_-iX§ = _loc2_;
         _loc2_ = _loc2_ / 980 * §_-0O§.stage.stageWidth;
         _loc3_ = §_-0O§.stage.stageHeight;
         §_-6Y§.§true§.viewPort = new Rectangle(0,0,_loc2_,_loc3_);
         if(!param1)
         {
            §_-6Y§.§true§.§_-W2§();
         }
         else
         {
            §_-6Y§.§true§.§_-U-§(_loc2_,_loc3_);
         }
      }
      
      private function § true§(param1:MouseEvent) : void
      {
         if(this.§_-1N§)
         {
            if(this.§_-vq§ - §_-qE§.mouseY > 0)
            {
               this.§_-Ws§ = this.§_-vq§ - §_-qE§.mouseY;
               this.§_-vq§ = §_-qE§.mouseY;
            }
            else if(this.§_-vq§ - §_-qE§.mouseY < 0)
            {
               this.§_-Ws§ = this.§_-vq§ - §_-qE§.mouseY;
               this.§_-vq§ = §_-qE§.mouseY;
            }
         }
      }
      
      private function §_-29§(param1:MouseEvent) : void
      {
         this.§_-1N§ = true;
         this.§_-vq§ = §_-qE§.mouseY;
      }
      
      private function §_-2S§(param1:MouseEvent) : void
      {
         this.§_-1N§ = false;
      }
      
      private function §_-3d§(param1:Event) : void
      {
         this.§_-1N§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§_-Hn§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§_-Hn§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-b§.§_-V7§.update(param1);
         (§_-qE§.getItemByName("Container_Credits") as §_-qq§).y = Math.floor(-this.§_-AP§);
         this.§_-PY§(param1);
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      private function §_-PY§(param1:Number) : void
      {
         this.§_-AP§ += this.§_-Ws§;
         this.§_-AP§ += this.§_-Hn§;
         if(!this.§_-1N§ && Math.abs(this.§_-Hn§) < param1 / 15)
         {
            this.§_-AP§ += param1 / 15;
         }
         if(this.§_-AP§ < -§_-I8§.§_-q§ * §_-b§.§_-Hu§)
         {
            this.§_-AP§ = this.§_-FH§;
         }
         else if(this.§_-AP§ > this.§_-FH§)
         {
            this.§_-AP§ = -§_-I8§.§_-q§ * §_-b§.§_-Hu§;
         }
         if(!this.§_-1N§)
         {
            this.§_-Ws§ *= 0.9;
            this.§_-Hn§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-qE§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§ true§);
         §_-qE§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-29§);
         §_-qE§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-2S§);
         §_-qE§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-qE§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-3d§);
         this.§_-87§(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-fR§.§_-dh§;
         }
      }
   }
}
