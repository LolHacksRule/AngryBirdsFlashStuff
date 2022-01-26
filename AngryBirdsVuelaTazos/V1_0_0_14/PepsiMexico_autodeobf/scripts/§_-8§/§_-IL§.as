package §_-8§
{
   import §_-Eo§.§_-R4§;
   import §_-Jx§.§_-Ao§;
   import §_-M0§.§_-u4§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-fI§.§_-BI§;
   import §_-hf§.§_-WL§;
   import §_-nz§.§ set§;
   import §_-qT§.§_-O5§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-IL§ extends §_-O5§
   {
      
      public static const §_-7m§:String = "CreditsState";
       
      
      private var §_-Dv§:§ set§ = null;
      
      private var §_-1u§:Boolean;
      
      private var §_-1E§:Number;
      
      private var §_-hE§:Number;
      
      private var §_-1C§:Number;
      
      private var §_-sx§:Number;
      
      private var §_-ln§:Number;
      
      public function §_-IL§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_Credits[0]);
         this.§_-Dv§ = new § set§(§_-u4§.§_-40§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-h0§();
         §_-u4§.§_-40§.§_-AB§(true);
         §_-u4§.§_-Ib§(this.§_-Dv§);
         this.§_-Dv§.init();
         §_-Tj§.§_-j4§();
         §_-BI§.§_-CE§.§_-9m§ = false;
         var _loc1_:§_-WL§ = §_-Ih§.container.getItemByName("Container_Credits") as §_-WL§;
         §_-Ih§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-wO§);
         §_-Ih§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-ts§);
         §_-Ih§.addEventListener(MouseEvent.MOUSE_UP,this.§_-kf§);
         §_-Ih§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-Ih§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-cM§);
         this.§_-sx§ = 0;
         this.§_-1E§ = 0;
         this.§_-hE§ = 0;
         this.§_-ln§ = _loc1_.height + §_-u4§.§_-ho§ * §_-u4§.§_-Ps§;
         this.§_-sx§ = -this.§_-ln§;
         §_-Ih§.setText(§_-R4§.§_-uO§,"TextField_Version_Number");
      }
      
      private function §_-h0§(param1:Boolean = true) : void
      {
         var _loc2_:Number = 760;
         var _loc3_:Number = 570;
         if(param1)
         {
            _loc2_ = 980;
         }
         §_-Tj§.§_-4r§ = _loc2_;
         _loc2_ = _loc2_ / 980 * §_-MT§.stage.stageWidth;
         _loc3_ = §_-MT§.stage.stageHeight;
         if(_loc3_ < 32)
         {
            _loc3_ = 32;
         }
         if(_loc2_ < 32)
         {
            _loc2_ = 32;
         }
         §_-BI§.§_-44§.§_-jP§ = new Rectangle(0,0,_loc2_,_loc3_);
         if(!param1)
         {
            §_-BI§.§_-44§.§_-MV§();
         }
         else
         {
            §_-BI§.§_-44§.§_-si§(_loc2_,_loc3_);
         }
      }
      
      private function §_-wO§(param1:MouseEvent) : void
      {
         if(this.§_-1u§)
         {
            if(this.§_-1C§ - §_-Ih§.mouseY > 0)
            {
               this.§_-1E§ = this.§_-1C§ - §_-Ih§.mouseY;
               this.§_-1C§ = §_-Ih§.mouseY;
            }
            else if(this.§_-1C§ - §_-Ih§.mouseY < 0)
            {
               this.§_-1E§ = this.§_-1C§ - §_-Ih§.mouseY;
               this.§_-1C§ = §_-Ih§.mouseY;
            }
         }
      }
      
      private function §_-ts§(param1:MouseEvent) : void
      {
         this.§_-1u§ = true;
         this.§_-1C§ = §_-Ih§.mouseY;
      }
      
      private function §_-kf§(param1:MouseEvent) : void
      {
         this.§_-1u§ = false;
      }
      
      private function §_-cM§(param1:Event) : void
      {
         this.§_-1u§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§_-hE§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§_-hE§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-u4§.§_-FQ§.update(param1);
         (§_-Ih§.getItemByName("Container_Credits") as §_-WL§).y = Math.floor(-this.§_-sx§);
         this.§_-be§(param1);
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      private function §_-be§(param1:Number) : void
      {
         this.§_-sx§ += this.§_-1E§;
         this.§_-sx§ += this.§_-hE§;
         if(!this.§_-1u§ && Math.abs(this.§_-hE§) < param1 / 15)
         {
            this.§_-sx§ += param1 / 15;
         }
         if(this.§_-sx§ < -§_-Tj§.§_-ho§ * §_-u4§.§_-Ps§)
         {
            this.§_-sx§ = this.§_-ln§;
         }
         else if(this.§_-sx§ > this.§_-ln§)
         {
            this.§_-sx§ = -§_-Tj§.§_-ho§ * §_-u4§.§_-Ps§;
         }
         if(!this.§_-1u§)
         {
            this.§_-1E§ *= 0.9;
            this.§_-hE§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-Ih§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-wO§);
         §_-Ih§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-ts§);
         §_-Ih§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-kf§);
         §_-Ih§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-Ih§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-cM§);
         this.§_-h0§(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-VD§.§_-7m§;
         }
      }
   }
}
