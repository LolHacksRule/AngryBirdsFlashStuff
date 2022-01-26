package §_-5M§
{
   import §_-B2§.§_-H4§;
   import §_-E-§.§_-hw§;
   import §_-I1§.§_-2N§;
   import §_-Je§.§_-RH§;
   import §_-N3§.§_-UA§;
   import §_-PK§.§_-Jb§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   import §_-ot§.§_-o6§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-QB§ extends §_-RH§
   {
      
      public static const §_-7J§:String = "CreditsState";
       
      
      private var §_-Jo§:§_-UA§ = null;
      
      private var §_-hh§:Boolean;
      
      private var §_-pR§:Number;
      
      private var §_-Jl§:Number;
      
      private var §_-FO§:Number;
      
      private var §_-IN§:Number;
      
      private var §_-On§:Number;
      
      public function §_-QB§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_Credits[0]);
         this.§_-Jo§ = new §_-UA§(§_-2N§.§_-iP§);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.start();
         }
         this.§_-9r§();
         §_-2N§.§_-iP§.§_-jx§(true);
         §_-2N§.§_-Uk§(this.§_-Jo§);
         this.§_-Jo§.init();
         §_-5e§.§_-YO§();
         §_-H4§.§_-5y§.§_-Jq§ = false;
         var _loc1_:§_-hw§ = §_-wB§.container.getItemByName("Container_Credits") as §_-hw§;
         §_-wB§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-dL§);
         §_-wB§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-Qb§);
         §_-wB§.addEventListener(MouseEvent.MOUSE_UP,this.§_-d9§);
         §_-wB§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-wB§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-75§);
         this.§_-IN§ = 0;
         this.§_-pR§ = 0;
         this.§_-Jl§ = 0;
         this.§_-On§ = _loc1_.height + §_-2N§.§_-Uw§ * §_-2N§.§_-pv§;
         this.§_-IN§ = -this.§_-On§;
         §_-wB§.setText(§_-o6§.§_-J§,"TextField_Version_Number");
      }
      
      private function §_-9r§(param1:Boolean = true) : void
      {
         var _loc2_:Number = 760;
         var _loc3_:Number = 570;
         if(param1)
         {
            _loc2_ = 980;
         }
         §_-5e§.§_-ZL§ = _loc2_;
         _loc2_ = _loc2_ / 980 * §_-Pj§.stage.stageWidth;
         _loc3_ = §_-Pj§.stage.stageHeight;
         §_-H4§.§_-I9§.viewPort = new Rectangle(0,0,_loc2_,_loc3_);
         if(!param1)
         {
            §_-H4§.§_-I9§.§_-98§();
         }
         else
         {
            §_-H4§.§_-I9§.§_-Od§(_loc2_,_loc3_);
         }
      }
      
      private function §_-dL§(param1:MouseEvent) : void
      {
         if(this.§_-hh§)
         {
            if(this.§_-FO§ - §_-wB§.mouseY > 0)
            {
               this.§_-pR§ = this.§_-FO§ - §_-wB§.mouseY;
               this.§_-FO§ = §_-wB§.mouseY;
            }
            else if(this.§_-FO§ - §_-wB§.mouseY < 0)
            {
               this.§_-pR§ = this.§_-FO§ - §_-wB§.mouseY;
               this.§_-FO§ = §_-wB§.mouseY;
            }
         }
      }
      
      private function §_-Qb§(param1:MouseEvent) : void
      {
         this.§_-hh§ = true;
         this.§_-FO§ = §_-wB§.mouseY;
      }
      
      private function §_-d9§(param1:MouseEvent) : void
      {
         this.§_-hh§ = false;
      }
      
      private function §_-75§(param1:Event) : void
      {
         this.§_-hh§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§_-Jl§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§_-Jl§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-2N§.§_-gT§.update(param1);
         (§_-wB§.getItemByName("Container_Credits") as §_-hw§).y = Math.floor(-this.§_-IN§);
         this.§_-5n§(param1);
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      private function §_-5n§(param1:Number) : void
      {
         this.§_-IN§ += this.§_-pR§;
         this.§_-IN§ += this.§_-Jl§;
         if(!this.§_-hh§ && Math.abs(this.§_-Jl§) < param1 / 15)
         {
            this.§_-IN§ += param1 / 15;
         }
         if(this.§_-IN§ < -§_-5e§.§_-Uw§ * §_-2N§.§_-pv§)
         {
            this.§_-IN§ = this.§_-On§;
         }
         else if(this.§_-IN§ > this.§_-On§)
         {
            this.§_-IN§ = -§_-5e§.§_-Uw§ * §_-2N§.§_-pv§;
         }
         if(!this.§_-hh§)
         {
            this.§_-pR§ *= 0.9;
            this.§_-Jl§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-wB§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-dL§);
         §_-wB§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-Qb§);
         §_-wB§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-d9§);
         §_-wB§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-wB§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-75§);
         this.§_-9r§(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-Vn§.§_-7J§;
         }
      }
   }
}
