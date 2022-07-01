package §0Q§
{
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §]`§ extends MovieClip
   {
       
      
      private var §'"1§:§^!#§;
      
      private var §,!+§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §^!b§:Boolean = false;
      
      public function §]`§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(AngryBirdsFP11.§?!-§.getAppWidth());
         param6 = Number(param6) || Number(AngryBirdsFP11.§?!-§.getAppHeight());
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
         AngryBirdsFP11.§?!-§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      public function §^!Q§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§^!b§)
         {
            return;
         }
         if(this.§'"1§)
         {
            this.§'"1§.stop();
         }
         this.§,!+§ = new ColorTransform();
         this.§,!+§.redOffset = transform.colorTransform.redOffset;
         this.§,!+§.greenOffset = transform.colorTransform.greenOffset;
         this.§,!+§.blueOffset = transform.colorTransform.blueOffset;
         this.§'"1§ = §"g§.§'!o§.§while§(this.§,!+§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§'"1§.onComplete = this.§"Q§;
         this.§'"1§.play();
         this.§^!b§ = true;
      }
      
      public function §3!4§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §8!%§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§'"1§ != null)
         {
            this.§'"1§.stop();
         }
         this.§'"1§ = §"g§.§'!o§.§while§(this,{"mNewAlpha":param1},null,param2);
         this.§'"1§.onComplete = this.§&!A§;
         this.§'"1§.§;!O§ = false;
         this.§'"1§.play();
      }
      
      private function §&!A§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§]!-§));
      }
      
      private function §"Q§() : void
      {
         this.§^!b§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§,!+§)
         {
            transform.colorTransform = this.§,!+§;
            if(!this.§^!b§)
            {
               this.§,!+§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function clean() : void
      {
         AngryBirdsFP11.§?!-§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         if(this.§'"1§)
         {
            this.§'"1§.stop();
            this.§'"1§ = null;
         }
      }
   }
}
