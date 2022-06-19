package §_-KM§
{
   import §_-i9§.Texture;
   import §_-kC§.§_-T9§;
   import §case §.§_-Gm§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §_-T3§ extends §_-H9§
   {
       
      
      private var §_-93§:BitmapData;
      
      private var §_-WI§:int = 0;
      
      private var §_-NI§:int = 0;
      
      private var §_-dJ§:Number = 1.0;
      
      private var §_-l4§:Number = 1.0;
      
      private var §_-Oi§:BitmapData;
      
      private var §_-22§:Vector.<Number>;
      
      private var §_-Xg§:Matrix;
      
      private var §_-tl§:ColorTransform;
      
      public function §_-T3§()
      {
         this.§_-22§ = new Vector.<Number>(16);
         this.§_-Xg§ = new Matrix();
         this.§_-tl§ = new ColorTransform();
         super();
         this.§_-Oi§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§_-93§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§_-Oi§)
         {
            this.§_-Oi§.dispose();
            this.§_-Oi§ = null;
         }
      }
      
      override public function batchQuad(param1:§_-Gm§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§_-93§)
         {
            §_-yR§.copyRawDataTo(this.§_-22§,0);
            this.§_-Xg§.setTo(this.§_-22§[0],this.§_-22§[1],this.§_-22§[4],this.§_-22§[5],this.§_-22§[12],this.§_-22§[13]);
            this.§_-Xg§.scale(this.§_-dJ§,this.§_-l4§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§_-tl§).redMultiplier = §_-T9§.§_-GF§(_loc5_) / 255;
               _loc6_.greenMultiplier = §_-T9§.§_-4F§(_loc5_) / 255;
               _loc6_.blueMultiplier = §_-T9§.§_-Xm§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§_-tl§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§_-Oi§.setPixel(0,0,param1.color);
               _loc7_ = this.§_-Oi§;
               this.§_-Xg§.a *= param1.§_-vu§;
               this.§_-Xg§.b *= param1.§_-vu§;
               this.§_-Xg§.c *= param1.§_-1W§;
               this.§_-Xg§.d *= param1.§_-1W§;
            }
            this.§_-93§.draw(_loc7_,this.§_-Xg§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§_-93§)
         {
            if(this.§_-93§.width != this.§_-WI§ || this.§_-93§.height != this.§_-NI§)
            {
               this.§_-93§.dispose();
               this.§_-93§ = null;
            }
            else
            {
               this.§_-93§.fillRect(this.§_-93§.rect,4278190080 | param2);
            }
         }
         if(this.§_-93§ == null && this.§_-WI§ > 0 && this.§_-NI§ > 0)
         {
            this.§_-93§ = new BitmapData(this.§_-WI§,this.§_-NI§,true,4278190080 | param2);
         }
         if(this.§_-93§)
         {
            this.§_-93§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§_-93§)
         {
            this.§_-93§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§_-WI§ = param1;
         this.§_-NI§ = param2;
         this.§_-dJ§ = param3;
         this.§_-l4§ = param4;
      }
   }
}
