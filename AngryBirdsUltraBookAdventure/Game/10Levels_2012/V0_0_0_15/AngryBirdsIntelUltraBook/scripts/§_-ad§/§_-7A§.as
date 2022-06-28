package §_-ad§
{
   import §_-0BH§.§_-FK§;
   import §_-0Dg§.§class§;
   import §_-6C§.§_-gt§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §_-7A§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "CreditsState";
       
      
      protected var §_-kL§:§class§ = null;
      
      private var §_-07-§:Boolean;
      
      private var §_-02Y§:Number;
      
      private var §_-Yg§:Number;
      
      private var §_-jg§:Number;
      
      private var §_-K2§:Number;
      
      private var §_-wT§:Number;
      
      public function §_-7A§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_Credits[0]);
         this.§_-kL§ = new §class§(§ in§.§_-Dc§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-wT§ = (§_-s0§.getItemByName("Container_Credits") as §_-gt§).height + § in§.§_-Kj§ * § in§.§_-Sr§;
         this.§_-K2§ = -this.§_-wT§;
         § in§.§_-Dc§.§_-Vf§(true);
         § in§.resume();
         § in§.setController(this.§_-kL§);
         this.§_-kL§.init();
         AngryBirdsFP11.playThemeMusic();
         §_-s0§.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-0AC§);
         §_-s0§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-lM§);
         §_-s0§.stage.addEventListener(MouseEvent.MOUSE_UP,this.§_-i5§);
         §_-s0§.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-s0§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-06h§);
         this.§_-02Y§ = 0;
         this.§_-Yg§ = 0;
         var _loc1_:String = §_-FK§.§_-2C§;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         §_-s0§.setText(_loc1_,"TextField_Version_Number");
         §_-s0§.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function §_-tL§(param1:MouseEvent) : Boolean
      {
         if(§_-s0§.stage.mouseX < §_-s0§.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function §_-0AC§(param1:MouseEvent) : void
      {
         if(this.§_-07-§)
         {
            if(!this.§_-tL§(param1))
            {
               this.§_-07-§ = false;
               return;
            }
            if(this.§_-jg§ - §_-s0§.stage.mouseY > 0)
            {
               this.§_-02Y§ = this.§_-jg§ - §_-s0§.stage.mouseY;
               this.§_-jg§ = §_-s0§.stage.mouseY;
            }
            else if(this.§_-jg§ - §_-s0§.stage.mouseY < 0)
            {
               this.§_-02Y§ = this.§_-jg§ - §_-s0§.stage.mouseY;
               this.§_-jg§ = §_-s0§.stage.mouseY;
            }
         }
      }
      
      private function §_-lM§(param1:MouseEvent) : void
      {
         if(this.§_-tL§(param1))
         {
            if(!§ in§.isPaused)
            {
               this.§_-07-§ = true;
               this.§_-jg§ = §_-s0§.stage.mouseY;
            }
         }
      }
      
      private function §_-i5§(param1:MouseEvent) : void
      {
         this.§_-07-§ = false;
      }
      
      private function §_-06h§(param1:Event) : void
      {
         this.§_-07-§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.§_-tL§(param1))
         {
            if(param1.delta < 0)
            {
               this.§_-Yg§ = 16;
            }
            else if(param1.delta > 0)
            {
               this.§_-Yg§ = -16;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!§ in§.isPaused)
         {
            § in§.§_-03s§.update(param1);
            (§_-s0§.getItemByName("Container_Credits") as §_-gt§).setVisibility(true);
            this.readyToShowCredits();
            (§_-s0§.getItemByName("Container_Credits") as §_-gt§).y = Math.floor(-this.§_-K2§);
            this.§_-Ps§(param1);
         }
         if(mNextState.length > 0)
         {
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function §_-Ps§(param1:Number) : void
      {
         this.§_-K2§ += this.§_-02Y§;
         this.§_-K2§ += this.§_-Yg§;
         if(!this.§_-07-§ && Math.abs(this.§_-Yg§) < param1 / 15)
         {
            this.§_-K2§ += param1 / 15;
         }
         if(this.§_-K2§ < -AngryBirdsFP11.§_-06d§ * § in§.§_-Sr§)
         {
            this.§_-K2§ = this.§_-wT§;
         }
         else if(this.§_-K2§ > this.§_-wT§)
         {
            this.§_-K2§ = -AngryBirdsFP11.§_-06d§ * § in§.§_-Sr§;
         }
         if(!this.§_-07-§)
         {
            this.§_-02Y§ *= 0.9;
            this.§_-Yg§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-s0§.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-0AC§);
         §_-s0§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-lM§);
         §_-s0§.stage.removeEventListener(MouseEvent.MOUSE_UP,this.§_-i5§);
         §_-s0§.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-s0§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-06h§);
         (§_-s0§.getItemByName("Container_Credits") as §_-gt§).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-05N§.§_-pk§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§_-07§.§_-0De§();
         }
      }
   }
}
