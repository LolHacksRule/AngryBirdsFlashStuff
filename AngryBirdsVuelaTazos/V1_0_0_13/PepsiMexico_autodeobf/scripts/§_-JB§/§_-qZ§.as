package §_-JB§
{
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-58§.§_-WC§;
   import §_-7§.§_-ph§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-cu§.§_-UO§;
   import §_-ex§.§_-mR§;
   import §_-tG§.§_-4C§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-qZ§ extends §_-UO§
   {
      
      public static const §_-1h§:String = "CreditsState";
       
      
      private var §_-bw§:§_-4C§ = null;
      
      private var §_-UA§:Boolean;
      
      private var §_-EP§:Number;
      
      private var §_-KT§:Number;
      
      private var §_-ln§:Number;
      
      private var §_-gT§:Number;
      
      private var §_-Ql§:Number;
      
      public function §_-qZ§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_Credits[0]);
         this.§_-bw§ = new §_-4C§(§_-ph§.§_-Tw§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.start();
         }
         this.§_-T8§();
         §_-ph§.§_-Tw§.§_-G9§(true);
         §_-ph§.§_-0g§(this.§_-bw§);
         this.§_-bw§.init();
         §_-2U§.§_-DK§();
         §_-yh§.§_-hY§.§_-xg§ = false;
         var _loc1_:§_-WC§ = §_-kl§.container.getItemByName("Container_Credits") as §_-WC§;
         §_-kl§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-42§);
         §_-kl§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-wF§);
         §_-kl§.addEventListener(MouseEvent.MOUSE_UP,this.§_-GH§);
         §_-kl§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-kl§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-Us§);
         this.§_-gT§ = 0;
         this.§_-EP§ = 0;
         this.§_-KT§ = 0;
         this.§_-Ql§ = _loc1_.height + §_-ph§.§_-UU§ * §_-ph§.§_-an§;
         this.§_-gT§ = -this.§_-Ql§;
         §_-kl§.setText(§_-mR§.§_-Ks§,"TextField_Version_Number");
      }
      
      private function §_-T8§(param1:Boolean = true) : void
      {
         var _loc2_:Number = 760;
         var _loc3_:Number = 570;
         if(param1)
         {
            _loc2_ = 980;
         }
         §_-2U§.§_-EK§ = _loc2_;
         _loc2_ = _loc2_ / 980 * §_-bB§.stage.stageWidth;
         _loc3_ = §_-bB§.stage.stageHeight;
         §_-yh§.§_-1o§.§_-F9§ = new Rectangle(0,0,_loc2_,_loc3_);
         if(!param1)
         {
            §_-yh§.§_-1o§.§_-Uk§();
         }
         else
         {
            §_-yh§.§_-1o§.§_-5E§(_loc2_,_loc3_);
         }
      }
      
      private function §_-42§(param1:MouseEvent) : void
      {
         if(this.§_-UA§)
         {
            if(this.§_-ln§ - §_-kl§.mouseY > 0)
            {
               this.§_-EP§ = this.§_-ln§ - §_-kl§.mouseY;
               this.§_-ln§ = §_-kl§.mouseY;
            }
            else if(this.§_-ln§ - §_-kl§.mouseY < 0)
            {
               this.§_-EP§ = this.§_-ln§ - §_-kl§.mouseY;
               this.§_-ln§ = §_-kl§.mouseY;
            }
         }
      }
      
      private function §_-wF§(param1:MouseEvent) : void
      {
         this.§_-UA§ = true;
         this.§_-ln§ = §_-kl§.mouseY;
      }
      
      private function §_-GH§(param1:MouseEvent) : void
      {
         this.§_-UA§ = false;
      }
      
      private function §_-Us§(param1:Event) : void
      {
         this.§_-UA§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§_-KT§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§_-KT§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-ph§.§_-eR§.update(param1);
         (§_-kl§.getItemByName("Container_Credits") as §_-WC§).y = Math.floor(-this.§_-gT§);
         this.§_-Hk§(param1);
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      private function §_-Hk§(param1:Number) : void
      {
         this.§_-gT§ += this.§_-EP§;
         this.§_-gT§ += this.§_-KT§;
         if(!this.§_-UA§ && Math.abs(this.§_-KT§) < param1 / 15)
         {
            this.§_-gT§ += param1 / 15;
         }
         if(this.§_-gT§ < -§_-2U§.§_-UU§ * §_-ph§.§_-an§)
         {
            this.§_-gT§ = this.§_-Ql§;
         }
         else if(this.§_-gT§ > this.§_-Ql§)
         {
            this.§_-gT§ = -§_-2U§.§_-UU§ * §_-ph§.§_-an§;
         }
         if(!this.§_-UA§)
         {
            this.§_-EP§ *= 0.9;
            this.§_-KT§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-kl§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-42§);
         §_-kl§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-wF§);
         §_-kl§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-GH§);
         §_-kl§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-kl§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-Us§);
         this.§_-T8§(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-Sp§.§_-1h§;
         }
      }
   }
}
