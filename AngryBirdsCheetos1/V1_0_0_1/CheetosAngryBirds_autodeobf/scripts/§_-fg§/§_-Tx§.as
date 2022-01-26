package §_-fg§
{
   import §_-4x§.§_-Se§;
   import §_-9J§.§_-xD§;
   import §_-ES§.§_-L8§;
   import §_-Py§.§_-eK§;
   import §_-U0§.§_-tF§;
   import §_-gC§.§_-XR§;
   import §_-q6§.§_-Iy§;
   import §_-q6§.§_-ZW§;
   import §_-vB§.§_-Kk§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-Tx§ extends §_-eK§
   {
      
      public static const §_-bg§:String = "CreditsState";
       
      
      private var §_-FQ§:§_-Se§ = null;
      
      private var §_-Wk§:Boolean;
      
      private var §_-YW§:Number;
      
      private var §_-q7§:Number;
      
      private var §_-Qt§:Number;
      
      private var §_-4p§:Number;
      
      private var §_-KJ§:Number;
      
      public function §_-Tx§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Lb§ = new §_-ZW§(this);
         §_-Lb§.init(§_-Iy§.§_-y-§.Views.View_Credits[0]);
         this.§_-FQ§ = new §_-Se§(§_-XR§.§_-Xv§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.start();
         }
         §_-XR§.§_-Xv§.§_-1m§(true);
         §_-XR§.§_-Sx§(this.§_-FQ§);
         this.§_-FQ§.init();
         §_-Vc§.§_-Df§();
         §_-Kk§.§_-qh§.§_-xg§ = false;
         var _loc1_:§_-L8§ = §_-Lb§.container.getItemByName("Container_Credits") as §_-L8§;
         §_-Lb§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-N§);
         §_-Lb§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-J8§);
         §_-Lb§.addEventListener(MouseEvent.MOUSE_UP,this.§_-kN§);
         §_-Lb§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-Lb§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-PA§);
         this.§_-4p§ = 0;
         this.§_-YW§ = 0;
         this.§_-q7§ = 0;
         this.§_-KJ§ = _loc1_.height + §_-XR§.§_-0-3§ * §_-XR§.§_-Rt§;
         this.§_-4p§ = -this.§_-KJ§;
         §_-Lb§.setText(§_-tF§.§_-HS§,"TextField_Version_Number");
      }
      
      private function §_-N§(param1:MouseEvent) : void
      {
         if(this.§_-Wk§)
         {
            if(this.§_-Qt§ - §_-Lb§.mouseY > 0)
            {
               this.§_-YW§ = this.§_-Qt§ - §_-Lb§.mouseY;
               this.§_-Qt§ = §_-Lb§.mouseY;
            }
            else if(this.§_-Qt§ - §_-Lb§.mouseY < 0)
            {
               this.§_-YW§ = this.§_-Qt§ - §_-Lb§.mouseY;
               this.§_-Qt§ = §_-Lb§.mouseY;
            }
         }
      }
      
      private function §_-J8§(param1:MouseEvent) : void
      {
         this.§_-Wk§ = true;
         this.§_-Qt§ = §_-Lb§.mouseY;
      }
      
      private function §_-kN§(param1:MouseEvent) : void
      {
         this.§_-Wk§ = false;
      }
      
      private function §_-PA§(param1:Event) : void
      {
         this.§_-Wk§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§_-q7§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§_-q7§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-XR§.§_-Og§.update(param1);
         (§_-Lb§.getItemByName("Container_Credits") as §_-L8§).y = Math.floor(-this.§_-4p§);
         this.§_-8k§(param1);
         (§_-Lb§.getItemByName("Container_Credits") as §_-L8§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      private function §_-8k§(param1:Number) : void
      {
         this.§_-4p§ += this.§_-YW§;
         this.§_-4p§ += this.§_-q7§;
         if(!this.§_-Wk§ && Math.abs(this.§_-q7§) < param1 / 15)
         {
            this.§_-4p§ += param1 / 15;
         }
         if(this.§_-4p§ < -§_-Vc§.§_-0-3§ * §_-XR§.§_-Rt§)
         {
            this.§_-4p§ = this.§_-KJ§;
         }
         else if(this.§_-4p§ > this.§_-KJ§)
         {
            this.§_-4p§ = -§_-Vc§.§_-0-3§ * §_-XR§.§_-Rt§;
         }
         if(!this.§_-Wk§)
         {
            this.§_-YW§ *= 0.9;
            this.§_-q7§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-Lb§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-N§);
         §_-Lb§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-J8§);
         §_-Lb§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-kN§);
         §_-Lb§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-Lb§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-PA§);
         (§_-Lb§.getItemByName("Container_Credits") as §_-L8§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-xD§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-Pw§.§_-bg§;
               break;
            case "PRIVACY_BUTTON":
               navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
               break;
            case "EULA_BUTTON":
               navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
               break;
            case "FAQ_BUTTON":
               navigateToURL(new URLRequest("http://www.rovio.com/en/our-work/games/view/1/angry-birds/faq/"),"_blank");
         }
      }
   }
}
