package §9!L§
{
   import §+=§.§5h§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §8u§ extends MovieClip
   {
       
      
      private var § get§:§15§;
      
      private var §"L§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §`^§:Boolean = false;
      
      public function §8u§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§&"<§.§<!7§.getAppWidth());
         param6 = Number(param6) || Number(§&"<§.§<!7§.getAppHeight());
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
         §&"<§.§<!7§.addEventListener(§5h§.§ P§,this.onEnterFrame);
      }
      
      public function §!!g§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§`^§)
         {
            return;
         }
         if(this.§ get§)
         {
            this.§ get§.stop();
         }
         this.§"L§ = new ColorTransform();
         this.§"L§.redOffset = transform.colorTransform.redOffset;
         this.§"L§.greenOffset = transform.colorTransform.greenOffset;
         this.§"L§.blueOffset = transform.colorTransform.blueOffset;
         this.§ get§ = §@F§.§8!J§.§&6§(this.§"L§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§ get§.onComplete = this.§[r§;
         this.§ get§.play();
         this.§`^§ = true;
      }
      
      public function §"!i§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §<"&§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§ get§ != null)
         {
            this.§ get§.stop();
         }
         this.§ get§ = §@F§.§8!J§.§&6§(this,{"mNewAlpha":param1},null,param2);
         this.§ get§.onComplete = this.§^G§;
         this.§ get§.§!5§ = false;
         this.§ get§.play();
      }
      
      private function §^G§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§+[§));
      }
      
      private function §[r§() : void
      {
         this.§`^§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§"L§)
         {
            transform.colorTransform = this.§"L§;
            if(!this.§`^§)
            {
               this.§"L§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §&!§() : void
      {
         §&"<§.§<!7§.removeEventListener(§5h§.§ P§,this.onEnterFrame);
         if(this.§ get§)
         {
            this.§ get§.stop();
            this.§ get§ = null;
         }
      }
   }
}
