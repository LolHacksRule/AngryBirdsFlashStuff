package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-QG§.§_-2i§;
   import §_-RG§.§_-HT§;
   import §_-Ys§.§_-o-§;
   import §_-of§.§_-H4§;
   import §_-v3§.§_-G3§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-vk§ extends §_-Uw§
   {
      
      public static const §_-Mi§:String = "CreditsState";
       
      
      private var §_-el§:§_-2i§ = null;
      
      private var §_-nR§:Boolean;
      
      private var §_-Ez§:Number;
      
      private var §_-Kl§:Number;
      
      private var §_-hl§:Number;
      
      private var §_-jX§:Number;
      
      private var §_-q9§:Number;
      
      public function §_-vk§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_Credits[0]);
         this.§_-el§ = new §_-2i§(§_-3C§.§_-bz§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.start();
         }
         this.§_-bM§();
         §_-3C§.§_-bz§.§_-cZ§(true);
         §_-3C§.§_-dV§(this.§_-el§);
         this.§_-el§.init();
         §_-0Y§.§_-ku§();
         §_-G3§.§_-gw§.§_-be§ = false;
         var _loc1_:§_-H4§ = §_-Bv§.container.getItemByName("Container_Credits") as §_-H4§;
         §_-Bv§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-V§);
         §_-Bv§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-VS§);
         §_-Bv§.addEventListener(MouseEvent.MOUSE_UP,this.§_-rM§);
         §_-Bv§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-Bv§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-Go§);
         this.§_-jX§ = 0;
         this.§_-Ez§ = 0;
         this.§_-Kl§ = 0;
         this.§_-q9§ = _loc1_.height + §_-3C§.§_-mI§ * §_-3C§.§_-Wc§;
         this.§_-jX§ = -this.§_-q9§;
         §_-Bv§.setText(§_-HT§.§_-w0§,"TextField_Version_Number");
      }
      
      private function §_-bM§(param1:Boolean = true) : void
      {
         var _loc2_:Number = 760;
         var _loc3_:Number = 570;
         if(param1)
         {
            _loc2_ = 980;
         }
         §_-0Y§.§_-dN§ = _loc2_;
         _loc2_ = _loc2_ / 980 * §_-C8§.stage.stageWidth;
         _loc3_ = §_-C8§.stage.stageHeight;
         §_-G3§.§_-9S§.§_-I-§ = new Rectangle(0,0,_loc2_,_loc3_);
         if(!param1)
         {
            §_-G3§.§_-9S§.§_-ee§();
         }
         else
         {
            §_-G3§.§_-9S§.§_-mW§(_loc2_,_loc3_);
         }
      }
      
      private function §_-V§(param1:MouseEvent) : void
      {
         if(this.§_-nR§)
         {
            if(this.§_-hl§ - §_-Bv§.mouseY > 0)
            {
               this.§_-Ez§ = this.§_-hl§ - §_-Bv§.mouseY;
               this.§_-hl§ = §_-Bv§.mouseY;
            }
            else if(this.§_-hl§ - §_-Bv§.mouseY < 0)
            {
               this.§_-Ez§ = this.§_-hl§ - §_-Bv§.mouseY;
               this.§_-hl§ = §_-Bv§.mouseY;
            }
         }
      }
      
      private function §_-VS§(param1:MouseEvent) : void
      {
         this.§_-nR§ = true;
         this.§_-hl§ = §_-Bv§.mouseY;
      }
      
      private function §_-rM§(param1:MouseEvent) : void
      {
         this.§_-nR§ = false;
      }
      
      private function §_-Go§(param1:Event) : void
      {
         this.§_-nR§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§_-Kl§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§_-Kl§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-3C§.§_-0A§.update(param1);
         (§_-Bv§.getItemByName("Container_Credits") as §_-H4§).y = Math.floor(-this.§_-jX§);
         this.§_-sO§(param1);
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      private function §_-sO§(param1:Number) : void
      {
         this.§_-jX§ += this.§_-Ez§;
         this.§_-jX§ += this.§_-Kl§;
         if(!this.§_-nR§ && Math.abs(this.§_-Kl§) < param1 / 15)
         {
            this.§_-jX§ += param1 / 15;
         }
         if(this.§_-jX§ < -§_-0Y§.§_-mI§ * §_-3C§.§_-Wc§)
         {
            this.§_-jX§ = this.§_-q9§;
         }
         else if(this.§_-jX§ > this.§_-q9§)
         {
            this.§_-jX§ = -§_-0Y§.§_-mI§ * §_-3C§.§_-Wc§;
         }
         if(!this.§_-nR§)
         {
            this.§_-Ez§ *= 0.9;
            this.§_-Kl§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-Bv§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-V§);
         §_-Bv§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-VS§);
         §_-Bv§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-rM§);
         §_-Bv§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-Bv§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-Go§);
         this.§_-bM§(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-Tm§.§_-Mi§;
         }
      }
   }
}
