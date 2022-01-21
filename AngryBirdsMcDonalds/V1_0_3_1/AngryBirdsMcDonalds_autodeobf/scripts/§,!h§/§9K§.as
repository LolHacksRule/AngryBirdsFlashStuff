package §,!h§
{
   import §`!"§.§2,§;
   import §`!"§.§;i§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §9K§ extends MovieClip
   {
       
      
      private var §82§:§2,§;
      
      private var §'6§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §9!N§:Boolean = false;
      
      public function §9K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false)
      {
         super();
         var _loc6_:ColorTransform;
         (_loc6_ = new ColorTransform()).redOffset = param1;
         _loc6_.greenOffset = param2;
         _loc6_.blueOffset = param3;
         transform.colorTransform = _loc6_;
         var _loc7_:Number = §2!M§.§[!V§;
         if(param5)
         {
            _loc7_ += §2!M§.§&-§;
         }
         var _loc8_:Number = §2!M§.§#k§;
         graphics.beginFill(0,1);
         graphics.drawRect(0,0,_loc7_,_loc8_);
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§=J§);
      }
      
      public function §?A§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§9!N§)
         {
            return;
         }
         if(this.§82§)
         {
            this.§82§.stop();
         }
         this.§'6§ = new ColorTransform();
         this.§'6§.redOffset = transform.colorTransform.redOffset;
         this.§'6§.greenOffset = transform.colorTransform.greenOffset;
         this.§'6§.blueOffset = transform.colorTransform.blueOffset;
         this.§82§ = §;i§.§@!7§.§@!6§(this.§'6§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§82§.onComplete = this.§5!!§;
         this.§82§.play();
         this.§9!N§ = true;
      }
      
      public function §`r§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §%b§(param1:Number, param2:Number = 0.5, param3:Function = null) : void
      {
         if(this.§82§ != null)
         {
            this.§82§.stop();
         }
         this.§82§ = §;i§.§@!7§.§@!6§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§82§.onComplete = this.§6;§;
         this.§82§.§#f§ = false;
         this.§82§.play();
      }
      
      private function §6;§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§4v§));
      }
      
      private function §5!!§() : void
      {
         this.§9!N§ = false;
      }
      
      private function §=J§(param1:Event) : void
      {
         if(this.§'6§)
         {
            transform.colorTransform = this.§'6§;
            if(!this.§9!N§)
            {
               this.§'6§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§=J§);
         if(this.§82§)
         {
            this.§82§.stop();
            this.§82§ = null;
         }
      }
   }
}
