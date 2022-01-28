package §_-RV§
{
   import §_-7V§.§_-Gs§;
   import §_-Ku§.§_-Ha§;
   import §_-Ll§.§_-4G§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-gM§.§_-yj§;
   import §_-pm§.§_-gb§;
   import §_-pr§.§_-Ka§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §_-Vq§ extends §_-t6§
   {
      
      public static const §_-8r§:String = "CreditsState";
       
      
      private var §_-gF§:§_-Ka§ = null;
      
      private var §_-mR§:Boolean;
      
      private var §_-W-§:Number;
      
      private var §_-Q4§:Number;
      
      private var §_-be§:Number;
      
      private var §_-7u§:Number;
      
      private var §_-7I§:Number;
      
      public function §_-Vq§(param1:Boolean = false, param2:String = "CreditsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_Credits[0]);
         this.§_-gF§ = new §_-Ka§(§_-gb§.§_-ls§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-wd§();
         §_-gb§.§_-ls§.§_-2L§(true);
         §_-gb§.§_-A§(this.§_-gF§);
         this.§_-gF§.init();
         §_-q0§.§_-Qb§();
         §_-Ha§.§for §.§_-vd§ = false;
         var _loc1_:§_-4G§ = §_-MF§.container.getItemByName("Container_Credits") as §_-4G§;
         §_-MF§.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-y§);
         §_-MF§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-Zn§);
         §_-MF§.addEventListener(MouseEvent.MOUSE_UP,this.§_-4I§);
         §_-MF§.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-MF§.stage.addEventListener(Event.MOUSE_LEAVE,this.§_-m4§);
         this.§_-7u§ = 0;
         this.§_-W-§ = 0;
         this.§_-Q4§ = 0;
         this.§_-7I§ = _loc1_.height + §_-gb§.§_-aD§ * §_-gb§.§_-Kx§;
         this.§_-7u§ = -this.§_-7I§;
         §_-MF§.setText(§_-yj§.§_-ml§,"TextField_Version_Number");
      }
      
      private function §_-wd§(param1:Boolean = true) : void
      {
         var _loc2_:Number = 760;
         var _loc3_:Number = 570;
         if(param1)
         {
            _loc2_ = 980;
         }
         §_-q0§.§ null§ = _loc2_;
         _loc2_ = _loc2_ / 980 * §_-j§.stage.stageWidth;
         _loc3_ = §_-j§.stage.stageHeight;
         if(_loc3_ < 32)
         {
            _loc3_ = 32;
         }
         if(_loc2_ < 32)
         {
            _loc2_ = 32;
         }
         §_-Ha§.§_-Aq§.§_-lQ§ = new Rectangle(0,0,_loc2_,_loc3_);
         if(!param1)
         {
            §_-Ha§.§_-Aq§.§_-Cw§();
         }
         else
         {
            §_-Ha§.§_-Aq§.§_-CM§(_loc2_,_loc3_,false);
         }
      }
      
      private function §_-y§(param1:MouseEvent) : void
      {
         if(this.§_-mR§)
         {
            if(this.§_-be§ - §_-MF§.mouseY > 0)
            {
               this.§_-W-§ = this.§_-be§ - §_-MF§.mouseY;
               this.§_-be§ = §_-MF§.mouseY;
            }
            else if(this.§_-be§ - §_-MF§.mouseY < 0)
            {
               this.§_-W-§ = this.§_-be§ - §_-MF§.mouseY;
               this.§_-be§ = §_-MF§.mouseY;
            }
         }
      }
      
      private function §_-Zn§(param1:MouseEvent) : void
      {
         this.§_-mR§ = true;
         this.§_-be§ = §_-MF§.mouseY;
      }
      
      private function §_-4I§(param1:MouseEvent) : void
      {
         this.§_-mR§ = false;
      }
      
      private function §_-m4§(param1:Event) : void
      {
         this.§_-mR§ = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.§_-Q4§ = 16;
         }
         if(param1.delta > 0)
         {
            this.§_-Q4§ = -16;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §_-gb§.§_-6j§.update(param1);
         (§_-MF§.getItemByName("Container_Credits") as §_-4G§).y = Math.floor(-this.§_-7u§);
         this.§_-3p§(param1);
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      private function §_-3p§(param1:Number) : void
      {
         this.§_-7u§ += this.§_-W-§;
         this.§_-7u§ += this.§_-Q4§;
         if(!this.§_-mR§ && Math.abs(this.§_-Q4§) < param1 / 15)
         {
            this.§_-7u§ += param1 / 15;
         }
         if(this.§_-7u§ < -§_-q0§.§_-aD§ * §_-gb§.§_-Kx§)
         {
            this.§_-7u§ = this.§_-7I§;
         }
         else if(this.§_-7u§ > this.§_-7I§)
         {
            this.§_-7u§ = -§_-q0§.§_-aD§ * §_-gb§.§_-Kx§;
         }
         if(!this.§_-mR§)
         {
            this.§_-W-§ *= 0.9;
            this.§_-Q4§ *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         §_-MF§.removeEventListener(MouseEvent.MOUSE_MOVE,this.§_-y§);
         §_-MF§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-Zn§);
         §_-MF§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-4I§);
         §_-MF§.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         §_-MF§.stage.removeEventListener(Event.MOUSE_LEAVE,this.§_-m4§);
         this.§_-wd§(false);
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               mNextState = §_-V9§.§_-8r§;
         }
      }
   }
}
