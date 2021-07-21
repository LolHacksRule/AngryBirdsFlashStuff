package §5!`§
{
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §%!Y§ extends MovieClip
   {
       
      
      private var §?-§:§0Y§;
      
      private var §<-§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §^!S§:Boolean = false;
      
      public function §%!Y§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§`!d§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§`!d§.getAppHeight());
         super();
         var _loc7_:ColorTransform;
         (_loc7_ = new ColorTransform()).redOffset = param1;
         _loc7_.greenOffset = param2;
         _loc7_.blueOffset = param3;
         transform.colorTransform = _loc7_;
         graphics.beginFill(0,1);
         graphics.drawRect(-param5,-param6,param5 * 2,param6 * 2);
         scaleX = 100;
         scaleY = 100;
         graphics.endFill();
         this.mNewAlpha = param4;
         alpha = param4;
         this.mouseEnabled = true;
         AngryBirdsFP11.§`!d§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §+8§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§^!S§)
         {
            return;
         }
         if(this.§?-§)
         {
            this.§?-§.stop();
         }
         this.§<-§ = new ColorTransform();
         this.§<-§.redOffset = transform.colorTransform.redOffset;
         this.§<-§.greenOffset = transform.colorTransform.greenOffset;
         this.§<-§.blueOffset = transform.colorTransform.blueOffset;
         this.§?-§ = §@!T§.§`!t§.§8!"§(this.§<-§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§?-§.onComplete = this.§'! §;
         this.§?-§.play();
         this.§^!S§ = true;
      }
      
      public function §@!J§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §#[§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§?-§ != null)
         {
            this.§?-§.stop();
         }
         this.§?-§ = §@!T§.§`!t§.§8!"§(this,{"mNewAlpha":param1},null,param2);
         this.§?-§.onComplete = this.§[k§;
         this.§?-§.§0! § = false;
         this.§?-§.play();
      }
      
      private function §[k§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§1!4§));
      }
      
      private function §'! §() : void
      {
         this.§^!S§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§<-§)
         {
            transform.colorTransform = this.§<-§;
            if(!this.§^!S§)
            {
               this.§<-§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§`!d§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§?-§)
         {
            this.§?-§.stop();
            this.§?-§ = null;
         }
      }
   }
}
