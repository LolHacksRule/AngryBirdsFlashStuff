package §_-Xz§
{
   import §_-16§.§_-VR§;
   import §_-EH§.§_-uz§;
   import §_-Eg§.§_-Up§;
   import §_-Ib§.§_-2x§;
   import §_-KM§.§_-0A§;
   import §_-TX§.§_-0X§;
   import §_-r6§.§_-Oy§;
   import §_-xL§.§_-1-§;
   import §_-xL§.§_-y9§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-xD§ extends §_-uz§
   {
      
      public static const §_-3o§:String = "CreditsState";
       
      
      private var §_-tc§:§_-2x§ = null;
      
      private var §_-6V§:Boolean;
      
      private var §_-gJ§:Number;
      
      private var §if §:Number;
      
      private var §_-tI§:Number;
      
      private var §_-LM§:Number;
      
      private var §_-kb§:Number;
      
      public function §_-xD§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-nq§ = new §_-1-§(this);
         §_-nq§.init(§_-y9§.§_-HN§.Views.View_Credits[0]);
         this.§_-tc§ = new §_-2x§(§_-0X§.§_-O2§,"BACKGROUND_CHEETOS_1");
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.start();
         }
         §_-0X§.§_-O2§.§_-JY§(true);
         §_-0X§.§_-6P§(this.§_-tc§);
         this.§_-tc§.init();
         §_-WX§.§_-Jn§();
         §_-0A§.§with§.§_-QF§ = false;
         var _loc1_:§_-Up§ = §_-nq§.container.getItemByName("Container_Credits") as §_-Up§;
         §_-nq§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-5O§);
         §_-nq§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-vM§);
         §_-nq§.addEventListener(MouseEvent.MOUSE_UP,this.§_-Ea§);
         §_-nq§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-nq§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-X1§);
         this.§_-LM§ = 0;
         this.§_-gJ§ = 0;
         this.§if § = 0;
         this.§_-kb§ = _loc1_.height + §_-0X§.§_-ZV§ * §_-0X§.§_-6-§;
         this.§_-LM§ = -this.§_-kb§;
         §_-nq§.setText(§_-Oy§.§_-R3§,"TextField_Version_Number");
      }
      
      private function §_-5O§(param1:MouseEvent) : void
      {
         if(this.§_-6V§)
         {
            if(this.§_-tI§ - §_-nq§.mouseY > 0)
            {
               this.§_-gJ§ = this.§_-tI§ - §_-nq§.mouseY;
               this.§_-tI§ = §_-nq§.mouseY;
            }
            else if(this.§_-tI§ - §_-nq§.mouseY < 0)
            {
               this.§_-gJ§ = this.§_-tI§ - §_-nq§.mouseY;
               this.§_-tI§ = §_-nq§.mouseY;
            }
         }
      }
      
      private function §_-vM§(param1:MouseEvent) : void
      {
         this.§_-6V§ = true;
         this.§_-tI§ = §_-nq§.mouseY;
      }
      
      private function §_-Ea§(param1:MouseEvent) : void
      {
         this.§_-6V§ = false;
      }
      
      private function §_-X1§(param1:Event) : void
      {
         this.§_-6V§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§if § = 16;
         }
         if(param1.delta > 0)
         {
            this.§if § = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-0X§.§ try§.update(param1);
         (§_-nq§.getItemByName("Container_Credits") as §_-Up§).y = Math.floor(-this.§_-LM§);
         this.§_-YX§(param1);
         (§_-nq§.getItemByName("Container_Credits") as §_-Up§).setVisibility(true);
         if(mNextState.length > 0)
         {
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         return §_-uz§.STATE_STATUS_RUNNING;
      }
      
      private function §_-YX§(param1:Number) : void
      {
         this.§_-LM§ += this.§_-gJ§;
         this.§_-LM§ += this.§if §;
         if(!this.§_-6V§ && Math.abs(this.§if §) < param1 / 15)
         {
            this.§_-LM§ += param1 / 15;
         }
         if(this.§_-LM§ < -§_-WX§.§_-ZV§ * §_-0X§.§_-6-§)
         {
            this.§_-LM§ = this.§_-kb§;
         }
         else if(this.§_-LM§ > this.§_-kb§)
         {
            this.§_-LM§ = -§_-WX§.§_-ZV§ * §_-0X§.§_-6-§;
         }
         if(!this.§_-6V§)
         {
            this.§_-gJ§ *= 0.9;
            this.§if § *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-nq§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-5O§);
         §_-nq§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-vM§);
         §_-nq§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-Ea§);
         §_-nq§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-nq§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-X1§);
         (§_-nq§.getItemByName("Container_Credits") as §_-Up§).setVisibility(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-VR§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-0N§.§_-3o§;
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
