package §]!S§
{
   import §=!F§.§"!2§;
   import §=!F§.§^!^§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §59§ extends MovieClip
   {
       
      
      private var §3!d§:§^!^§;
      
      private var §+,§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §9!D§:Boolean = false;
      
      public function §59§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false)
      {
         super();
         var _loc6_:ColorTransform;
         (_loc6_ = new ColorTransform()).redOffset = param1;
         _loc6_.greenOffset = param2;
         _loc6_.blueOffset = param3;
         transform.colorTransform = _loc6_;
         var _loc7_:Number = §'j§.§7&§;
         if(param5)
         {
            _loc7_ += §'j§.§6,§;
         }
         var _loc8_:Number = §'j§.§+! §;
         graphics.beginFill(0,1);
         graphics.drawRect(0,0,_loc7_,_loc8_);
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         addEventListener(Event.ENTER_FRAME,this.§=d§);
      }
      
      public function §1I§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§9!D§)
         {
            return;
         }
         if(this.§3!d§)
         {
            this.§3!d§.stop();
         }
         this.§+,§ = new ColorTransform();
         this.§+,§.redOffset = transform.colorTransform.redOffset;
         this.§+,§.greenOffset = transform.colorTransform.greenOffset;
         this.§+,§.blueOffset = transform.colorTransform.blueOffset;
         this.§3!d§ = §"!2§.§'!S§.§-!S§(this.§+,§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§3!d§.onComplete = this.§!;§;
         this.§3!d§.play();
         this.§9!D§ = true;
      }
      
      public function §&S§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §1!M§(param1:Number, param2:Number = 0.5, param3:String = "linear") : void
      {
         if(this.§3!d§ != null)
         {
            this.§3!d§.stop();
         }
         this.§3!d§ = §"!2§.§'!S§.§-!S§(this,{"mNewAlpha":param1},null,param2,param3);
         this.§3!d§.onComplete = this.§%!n§;
         this.§3!d§.§8>§ = false;
         this.§3!d§.play();
      }
      
      private function §%!n§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§9!3§));
      }
      
      private function §!;§() : void
      {
         this.§9!D§ = false;
      }
      
      private function §=d§(param1:Event) : void
      {
         if(this.§+,§)
         {
            transform.colorTransform = this.§+,§;
            if(!this.§9!D§)
            {
               this.§+,§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         removeEventListener(Event.ENTER_FRAME,this.§=d§);
         if(this.§3!d§)
         {
            this.§3!d§.stop();
            this.§3!d§ = null;
         }
      }
   }
}
