package §'!3§
{
   import §,]§.Texture;
   import §-!'§.§ s§;
   import §5D§.§%z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §0K§ extends §@`§
   {
       
      
      private var §1^§:BitmapData;
      
      private var §%!3§:int = 0;
      
      private var §4T§:int = 0;
      
      private var §>_§:Number = 1.0;
      
      private var §!2§:Number = 1.0;
      
      private var §1-§:BitmapData;
      
      private var §8!I§:Vector.<Number>;
      
      private var §#s§:Matrix;
      
      private var §6!;§:ColorTransform;
      
      public function §0K§()
      {
         this.§8!I§ = new Vector.<Number>(16);
         this.§#s§ = new Matrix();
         this.§6!;§ = new ColorTransform();
         super();
         this.§1-§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§1^§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§1-§)
         {
            this.§1-§.dispose();
            this.§1-§ = null;
         }
      }
      
      override public function batchQuad(param1:§ s§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§1^§)
         {
            § !4§.copyRawDataTo(this.§8!I§,0);
            this.§#s§.setTo(this.§8!I§[0],this.§8!I§[1],this.§8!I§[4],this.§8!I§[5],this.§8!I§[12],this.§8!I§[13]);
            this.§#s§.scale(this.§>_§,this.§!2§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§6!;§).redMultiplier = §%z§.§"!J§(_loc5_) / 255;
               _loc6_.greenMultiplier = §%z§.§4w§(_loc5_) / 255;
               _loc6_.blueMultiplier = §%z§.§ get§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§6!;§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§1-§.setPixel(0,0,param1.color);
               _loc7_ = this.§1-§;
               this.§#s§.a *= param1.§8!4§;
               this.§#s§.b *= param1.§8!4§;
               this.§#s§.c *= param1.§3u§;
               this.§#s§.d *= param1.§3u§;
            }
            this.§1^§.draw(_loc7_,this.§#s§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§1^§)
         {
            if(this.§1^§.width != this.§%!3§ || this.§1^§.height != this.§4T§)
            {
               this.§1^§.dispose();
               this.§1^§ = null;
            }
            else
            {
               this.§1^§.fillRect(this.§1^§.rect,4278190080 | param2);
            }
         }
         if(this.§1^§ == null && this.§%!3§ > 0 && this.§4T§ > 0)
         {
            this.§1^§ = new BitmapData(this.§%!3§,this.§4T§,true,4278190080 | param2);
         }
         if(this.§1^§)
         {
            this.§1^§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§1^§)
         {
            this.§1^§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§%!3§ = param1;
         this.§4T§ = param2;
         this.§>_§ = param3;
         this.§!2§ = param4;
      }
   }
}
