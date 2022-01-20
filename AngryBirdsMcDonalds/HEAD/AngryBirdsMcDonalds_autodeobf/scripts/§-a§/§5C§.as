package §-a§
{
   import §4!A§.§#b§;
   import §4!A§.§7#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §5C§ extends MovieClip
   {
       
      
      private var §4"§:§#b§;
      
      private var §,f§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §,<§:Boolean = false;
      
      public function §5C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false)
      {
         super();
         var _loc6_:ColorTransform;
         (_loc6_ = new ColorTransform()).redOffset = param1;
         _loc6_.greenOffset = param2;
         _loc6_.blueOffset = param3;
         transform.colorTransform = _loc6_;
         var _loc7_:Number = §3![§.§^e§;
         if(param5)
         {
            _loc7_ += §3![§.§=!S§;
         }
         var _loc8_:Number = §3![§.§0Z§;
         graphics.beginFill(0,1);
         graphics.drawRect(0,0,_loc7_,_loc8_);
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§8!5§);
      }
      
      public function §&&§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§,<§)
         {
            return;
         }
         if(this.§4"§)
         {
            this.§4"§.stop();
         }
         this.§,f§ = new ColorTransform();
         this.§,f§.redOffset = transform.colorTransform.redOffset;
         this.§,f§.greenOffset = transform.colorTransform.greenOffset;
         this.§,f§.blueOffset = transform.colorTransform.blueOffset;
         this.§4"§ = §7#§.§5!!§.§30§(this.§,f§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§4"§.onComplete = this.§^L§;
         this.§4"§.play();
         this.§,<§ = true;
      }
      
      public function §7!,§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function § q§(param1:Number, param2:Number = 0.5, param3:Function = null) : void
      {
         if(this.§4"§ != null)
         {
            this.§4"§.stop();
         }
         this.§4"§ = §7#§.§5!!§.§30§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§4"§.onComplete = this.§]8§;
         this.§4"§.§'!]§ = false;
         this.§4"§.play();
      }
      
      private function §]8§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§=%§));
      }
      
      private function §^L§() : void
      {
         this.§,<§ = false;
      }
      
      private function §8!5§(param1:Event) : void
      {
         if(this.§,f§)
         {
            transform.colorTransform = this.§,f§;
            if(!this.§,<§)
            {
               this.§,f§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§8!5§);
         if(this.§4"§)
         {
            this.§4"§.stop();
            this.§4"§ = null;
         }
      }
   }
}
