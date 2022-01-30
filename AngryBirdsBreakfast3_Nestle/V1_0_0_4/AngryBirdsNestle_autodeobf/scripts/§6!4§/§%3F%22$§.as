package §6!4§
{
   import §-!f§.§7!6§;
   import §7"+§.Texture;
   import §<C§.§&L§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §?"$§ extends §8P§
   {
       
      
      private var §^J§:BitmapData;
      
      private var § !N§:int = 0;
      
      private var §?" §:int = 0;
      
      private var §],§:Number = 1.0;
      
      private var §%?§:Number = 1.0;
      
      private var §47§:BitmapData;
      
      private var §<H§:Vector.<Number>;
      
      private var §<,§:Matrix;
      
      private var §-!A§:ColorTransform;
      
      public function §?"$§()
      {
         this.§<H§ = new Vector.<Number>(16);
         this.§<,§ = new Matrix();
         this.§-!A§ = new ColorTransform();
         super();
         this.§47§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§^J§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§47§)
         {
            this.§47§.dispose();
            this.§47§ = null;
         }
      }
      
      override public function batchQuad(param1:§7!6§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§^J§)
         {
            §;"+§.copyRawDataTo(this.§<H§,0);
            this.§<,§.setTo(this.§<H§[0],this.§<H§[1],this.§<H§[4],this.§<H§[5],this.§<H§[12],this.§<H§[13]);
            this.§<,§.scale(this.§],§,this.§%?§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§-!A§).redMultiplier = §&L§.§4! §(_loc5_) / 255;
               _loc6_.greenMultiplier = §&L§.§,!e§(_loc5_) / 255;
               _loc6_.blueMultiplier = §&L§.§1<§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§-!A§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§47§.setPixel(0,0,param1.color);
               _loc7_ = this.§47§;
               this.§<,§.a *= param1.§8!v§;
               this.§<,§.b *= param1.§8!v§;
               this.§<,§.c *= param1.§0-§;
               this.§<,§.d *= param1.§0-§;
            }
            this.§^J§.draw(_loc7_,this.§<,§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§^J§)
         {
            if(this.§^J§.width != this.§ !N§ || this.§^J§.height != this.§?" §)
            {
               this.§^J§.dispose();
               this.§^J§ = null;
            }
            else
            {
               this.§^J§.fillRect(this.§^J§.rect,4278190080 | param2);
            }
         }
         if(this.§^J§ == null && this.§ !N§ > 0 && this.§?" § > 0)
         {
            this.§^J§ = new BitmapData(this.§ !N§,this.§?" §,true,4278190080 | param2);
         }
         if(this.§^J§)
         {
            this.§^J§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§^J§)
         {
            this.§^J§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§ !N§ = param1;
         this.§?" § = param2;
         this.§],§ = param3;
         this.§%?§ = param4;
      }
   }
}
