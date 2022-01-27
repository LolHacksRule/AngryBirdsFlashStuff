package §]!O§
{
   import §<!#§.§3"%§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   
   public class §^!j§ extends MovieClip
   {
       
      
      private var §`!7§:§8"+§;
      
      private var §'"@§:ColorTransform;
      
      public var mNewAlpha:Number;
      
      private var §,"2§:Boolean = false;
      
      public function §^!j§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = NaN, param6:Number = NaN)
      {
         param5 = Number(param5) || Number(§&!h§.§ u§.getAppWidth());
         param6 = Number(param6) || Number(§&!h§.§ u§.getAppHeight());
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
         §&!h§.§ u§.addEventListener(§3"%§.§9!w§,this.onEnterFrame);
      }
      
      public function §]6§(param1:Number, param2:Number, param3:Number, param4:Number = 0.3) : void
      {
         if(this.§,"2§)
         {
            return;
         }
         if(this.§`!7§)
         {
            this.§`!7§.stop();
         }
         this.§'"@§ = new ColorTransform();
         this.§'"@§.redOffset = transform.colorTransform.redOffset;
         this.§'"@§.greenOffset = transform.colorTransform.greenOffset;
         this.§'"@§.blueOffset = transform.colorTransform.blueOffset;
         this.§`!7§ = §<K§.§<"B§.§`!c§(this.§'"@§,{
            "redOffset":param1,
            "greenOffset":param2,
            "blueOffset":param3
         },null,param4);
         this.§`!7§.onComplete = this.§5!J§;
         this.§`!7§.play();
         this.§,"2§ = true;
      }
      
      public function §8!j§(param1:Number) : void
      {
         this.mNewAlpha = param1;
         alpha = param1;
      }
      
      public function §#A§(param1:Number, param2:Number = 0.5) : void
      {
         if(this.§`!7§ != null)
         {
            this.§`!7§.stop();
         }
         this.§`!7§ = §<K§.§<"B§.§`!c§(this,{"mNewAlpha":param1},null,param2);
         this.§`!7§.onComplete = this.§+!Y§;
         this.§`!7§.§5!Y§ = false;
         this.§`!7§.play();
      }
      
      private function §+!Y§() : void
      {
         dispatchEvent(new ColorFadeLayerEvent(ColorFadeLayerEvent.§9"?§));
      }
      
      private function §5!J§() : void
      {
         this.§,"2§ = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§'"@§)
         {
            transform.colorTransform = this.§'"@§;
            if(!this.§,"2§)
            {
               this.§'"@§ = null;
            }
         }
         if(alpha != this.mNewAlpha)
         {
            alpha = this.mNewAlpha;
         }
      }
      
      public function §#!O§() : void
      {
         §&!h§.§ u§.removeEventListener(§3"%§.§9!w§,this.onEnterFrame);
         if(this.§`!7§)
         {
            this.§`!7§.stop();
            this.§`!7§ = null;
         }
      }
   }
}
