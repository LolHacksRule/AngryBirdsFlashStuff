package §&p§
{
   import §%-§.§^K§;
   import §8f§.§<A§;
   import §?!"§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §,l§ extends §`G§
   {
       
      
      private var §<P§:BitmapData;
      
      private var §^9§:int = 0;
      
      private var §@!0§:int = 0;
      
      private var §[C§:Number = 1.0;
      
      private var §+]§:Number = 1.0;
      
      private var §;!7§:BitmapData;
      
      private var §0M§:Vector.<Number>;
      
      private var §-I§:Matrix;
      
      private var §%I§:ColorTransform;
      
      public function §,l§()
      {
         this.§0M§ = new Vector.<Number>(16);
         this.§-I§ = new Matrix();
         this.§%I§ = new ColorTransform();
         super();
         this.§;!7§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§<P§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§;!7§)
         {
            this.§;!7§.dispose();
            this.§;!7§ = null;
         }
      }
      
      override public function batchQuad(param1:§^K§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§<P§)
         {
            §%G§.copyRawDataTo(this.§0M§,0);
            this.§-I§.setTo(this.§0M§[0],this.§0M§[1],this.§0M§[4],this.§0M§[5],this.§0M§[12],this.§0M§[13]);
            this.§-I§.scale(this.§[C§,this.§+]§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§%I§).redMultiplier = §<A§.§2t§(_loc5_) / 255;
               _loc6_.greenMultiplier = §<A§.§;c§(_loc5_) / 255;
               _loc6_.blueMultiplier = §<A§.§^q§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§%I§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§;!7§.setPixel(0,0,param1.color);
               _loc7_ = this.§;!7§;
               this.§-I§.a *= param1.initialWidth;
               this.§-I§.b *= param1.initialWidth;
               this.§-I§.c *= param1.initialHeight;
               this.§-I§.d *= param1.initialHeight;
            }
            this.§<P§.draw(_loc7_,this.§-I§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§<P§)
         {
            if(this.§<P§.width != this.§^9§ || this.§<P§.height != this.§@!0§)
            {
               this.§<P§.dispose();
               this.§<P§ = null;
            }
            else
            {
               this.§<P§.fillRect(this.§<P§.rect,4278190080 | param2);
            }
         }
         if(this.§<P§ == null && this.§^9§ > 0 && this.§@!0§ > 0)
         {
            this.§<P§ = new BitmapData(this.§^9§,this.§@!0§,true,4278190080 | param2);
         }
         if(this.§<P§)
         {
            this.§<P§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§<P§)
         {
            this.§<P§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§^9§ = param1;
         this.§@!0§ = param2;
         this.§[C§ = param3;
         this.§+]§ = param4;
      }
   }
}
