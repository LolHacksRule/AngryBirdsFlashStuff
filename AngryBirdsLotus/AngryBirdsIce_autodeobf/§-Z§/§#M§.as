package §-Z§
{
   import §3!$§.§5!6§;
   import §[P§.Texture;
   import §^V§.§09§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §#M§ extends § G§
   {
       
      
      private var §5A§:BitmapData;
      
      private var §%!F§:int = 0;
      
      private var §2U§:int = 0;
      
      private var §?i§:Number = 1.0;
      
      private var §#f§:Number = 1.0;
      
      private var § 7§:BitmapData;
      
      private var §%y§:Vector.<Number>;
      
      private var §[1§:Matrix;
      
      private var §<q§:ColorTransform;
      
      public function §#M§()
      {
         this.§%y§ = new Vector.<Number>(16);
         this.§[1§ = new Matrix();
         this.§<q§ = new ColorTransform();
         super();
         this.§ 7§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§5A§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§ 7§)
         {
            this.§ 7§.dispose();
            this.§ 7§ = null;
         }
      }
      
      override public function batchQuad(param1:§09§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§5A§)
         {
            §1w§.copyRawDataTo(this.§%y§,0);
            this.§[1§.setTo(this.§%y§[0],this.§%y§[1],this.§%y§[4],this.§%y§[5],this.§%y§[12],this.§%y§[13]);
            this.§[1§.scale(this.§?i§,this.§#f§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§<q§).redMultiplier = §5!6§.§get §(_loc5_) / 255;
               _loc6_.greenMultiplier = §5!6§.§>c§(_loc5_) / 255;
               _loc6_.blueMultiplier = §5!6§.§;!D§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§<q§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§ 7§.setPixel(0,0,param1.color);
               _loc7_ = this.§ 7§;
               this.§[1§.a *= param1.§1!%§;
               this.§[1§.b *= param1.§1!%§;
               this.§[1§.c *= param1.§>L§;
               this.§[1§.d *= param1.§>L§;
            }
            this.§5A§.draw(_loc7_,this.§[1§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§5A§)
         {
            if(this.§5A§.width != this.§%!F§ || this.§5A§.height != this.§2U§)
            {
               this.§5A§.dispose();
               this.§5A§ = null;
            }
            else
            {
               this.§5A§.fillRect(this.§5A§.rect,4278190080 | param2);
            }
         }
         if(this.§5A§ == null && this.§%!F§ > 0 && this.§2U§ > 0)
         {
            this.§5A§ = new BitmapData(this.§%!F§,this.§2U§,true,4278190080 | param2);
         }
         if(this.§5A§)
         {
            this.§5A§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§5A§)
         {
            this.§5A§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§%!F§ = param1;
         this.§2U§ = param2;
         this.§?i§ = param3;
         this.§#f§ = param4;
      }
   }
}
