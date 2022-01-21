package §'d§
{
   import §"f§.§%1§;
   import §"f§.§@4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §8!]§ extends MovieClip
   {
       
      
      private var §6D§:§@4§;
      
      private var §3;§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §=!>§:Boolean = false;
      
      public function §8!]§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false)
      {
         super();
         var _loc6_:ColorTransform;
         (_loc6_ = new ColorTransform()).redOffset = param1;
         _loc6_.greenOffset = param2;
         _loc6_.blueOffset = param3;
         transform.colorTransform = _loc6_;
         var _loc7_:Number = § 4§.§#!<§;
         if(param5)
         {
            _loc7_ += § 4§.§ q§;
         }
         var _loc8_:Number = § 4§.§@+§;
         graphics.beginFill(0,1);
         graphics.drawRect(0,0,_loc7_,_loc8_);
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§!o§);
      }
      
      public function §,K§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§=!>§)
         {
            return;
         }
         if(this.§6D§)
         {
            this.§6D§.stop();
         }
         this.§3;§ = new ColorTransform();
         this.§3;§.redOffset = transform.colorTransform.redOffset;
         this.§3;§.greenOffset = transform.colorTransform.greenOffset;
         this.§3;§.blueOffset = transform.colorTransform.blueOffset;
         this.§6D§ = §%1§.§+j§.§78§(this.§3;§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§6D§.onComplete = this.§;!V§;
         this.§6D§.play();
         this.§=!>§ = true;
      }
      
      public function §9!S§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §-p§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§6D§ != null)
         {
            this.§6D§.stop();
         }
         this.§6D§ = §%1§.§+j§.§78§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§6D§.onComplete = this.§0[§;
         this.§6D§.§9g§ = false;
         this.§6D§.play();
      }
      
      private function §0[§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§3C§));
      }
      
      private function §;!V§() : void
      {
         this.§=!>§ = false;
      }
      
      private function §!o§(param1:Event) : void
      {
         if(this.§3;§)
         {
            transform.colorTransform = this.§3;§;
            if(!this.§=!>§)
            {
               this.§3;§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§!o§);
         if(this.§6D§)
         {
            this.§6D§.stop();
            this.§6D§ = null;
         }
      }
   }
}
