package §_-ob§
{
   import §_-4R§.§_-pH§;
   import §_-94§.§_-si§;
   import §_-A§.§_-KQ§;
   import §_-Ye§.§_-cP§;
   import §_-aA§.§_-I0§;
   import §_-ab§.§_-IP§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-Jg§;
   import §_-w8§.§_-S6§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-p6§ extends §_-qs§
   {
      
      public static const §_-jn§:String = "CreditsState";
       
      
      private var §_-ug§:§_-pH§ = null;
      
      private var §null§:Boolean;
      
      private var §_-Nx§:Number;
      
      private var §_-X9§:Number;
      
      private var §_-wT§:Number;
      
      private var §_-Cf§:Number;
      
      private var §_-1K§:Number;
      
      public function §_-p6§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-x2§ = new §_-S6§(this);
         §_-x2§.init(§_-Jg§.§_-E§.Views.View_Credits[0]);
         this.§_-ug§ = new §_-pH§(§_-si§.§_-HI§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.start();
         }
         §_-si§.§_-HI§.§_-2c§(true);
         §_-si§.§_-Mr§(this.§_-ug§);
         this.§_-ug§.init();
         §_-rs§.§_-Q3§();
         §_-cP§.§_-Nz§.§_-Zn§ = false;
         var _loc1_:§_-IP§ = §_-x2§.container.getItemByName("Container_Credits") as §_-IP§;
         §_-x2§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-8b§);
         §_-x2§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-RA§);
         §_-x2§.addEventListener(MouseEvent.MOUSE_UP,this.§_-Zt§);
         §_-x2§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-x2§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-7s§);
         this.§_-Cf§ = 0;
         this.§_-Nx§ = 0;
         this.§_-X9§ = 0;
         this.§_-1K§ = _loc1_.height + §_-si§.§_-0R§ * §_-si§.§_-3a§;
         this.§_-Cf§ = -this.§_-1K§;
         §_-x2§.setText(§_-I0§.§_-kF§,"TextField_Version_Number");
      }
      
      private function §_-8b§(param1:MouseEvent) : void
      {
         if(this.§null§)
         {
            if(this.§_-wT§ - §_-x2§.mouseY > 0)
            {
               this.§_-Nx§ = this.§_-wT§ - §_-x2§.mouseY;
               this.§_-wT§ = §_-x2§.mouseY;
            }
            else if(this.§_-wT§ - §_-x2§.mouseY < 0)
            {
               this.§_-Nx§ = this.§_-wT§ - §_-x2§.mouseY;
               this.§_-wT§ = §_-x2§.mouseY;
            }
         }
      }
      
      private function §_-RA§(param1:MouseEvent) : void
      {
         this.§null§ = true;
         this.§_-wT§ = §_-x2§.mouseY;
      }
      
      private function §_-Zt§(param1:MouseEvent) : void
      {
         this.§null§ = false;
      }
      
      private function §_-7s§(param1:Event) : void
      {
         this.§null§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§_-X9§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§_-X9§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-si§.§_-0j§.update(param1);
         (§_-x2§.getItemByName("Container_Credits") as §_-IP§).y = Math.floor(-this.§_-Cf§);
         this.§while§(param1);
         (§_-x2§.getItemByName("Container_Credits") as §_-IP§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         return §_-qs§.STATE_STATUS_RUNNING;
      }
      
      private function §while§(param1:Number) : void
      {
         this.§_-Cf§ += this.§_-Nx§;
         this.§_-Cf§ += this.§_-X9§;
         if(!this.§null§ && Math.abs(this.§_-X9§) < param1 / 15)
         {
            this.§_-Cf§ += param1 / 15;
         }
         if(this.§_-Cf§ < -§_-rs§.§_-0R§ * §_-si§.§_-3a§)
         {
            this.§_-Cf§ = this.§_-1K§;
         }
         else if(this.§_-Cf§ > this.§_-1K§)
         {
            this.§_-Cf§ = -§_-rs§.§_-0R§ * §_-si§.§_-3a§;
         }
         if(!this.§null§)
         {
            this.§_-Nx§ *= 0.9;
            this.§_-X9§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-x2§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-8b§);
         §_-x2§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-RA§);
         §_-x2§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Zt§);
         §_-x2§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-x2§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-7s§);
         (§_-x2§.getItemByName("Container_Credits") as §_-IP§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-KQ§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-qP§.§_-jn§;
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
