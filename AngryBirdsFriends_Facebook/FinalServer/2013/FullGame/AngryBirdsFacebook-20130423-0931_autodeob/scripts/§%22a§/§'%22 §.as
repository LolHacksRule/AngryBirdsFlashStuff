package §"a§
{
   import §!=§.§6$§;
   import §'!6§.§5T§;
   import §<5§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §'" § extends §>w§
   {
       
      
      private var §%3§:BitmapData;
      
      private var §[!Y§:int = 0;
      
      private var §>h§:int = 0;
      
      private var §["P§:Number = 1.0;
      
      private var §="0§:Number = 1.0;
      
      private var §>?§:BitmapData;
      
      private var §6!$§:Vector.<Number>;
      
      private var §;!r§:Matrix;
      
      private var §?!G§:ColorTransform;
      
      public function §'" §()
      {
         this.§6!$§ = new Vector.<Number>(16);
         this.§;!r§ = new Matrix();
         this.§?!G§ = new ColorTransform();
         super();
         this.§>?§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§%3§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§>?§)
         {
            this.§>?§.dispose();
            this.§>?§ = null;
         }
      }
      
      override public function batchQuad(param1:§5T§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§%3§)
         {
            §<"S§.copyRawDataTo(this.§6!$§,0);
            this.§;!r§.setTo(this.§6!$§[0],this.§6!$§[1],this.§6!$§[4],this.§6!$§[5],this.§6!$§[12],this.§6!$§[13]);
            this.§;!r§.scale(this.§["P§,this.§="0§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§?!G§).redMultiplier = §6$§.§3!6§(_loc5_) / 255;
               _loc6_.greenMultiplier = §6$§.§5"B§(_loc5_) / 255;
               _loc6_.blueMultiplier = §6$§.§="=§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§?!G§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§>?§.setPixel(0,0,param1.color);
               _loc7_ = this.§>?§;
               this.§;!r§.a *= param1.§3"W§;
               this.§;!r§.b *= param1.§3"W§;
               this.§;!r§.c *= param1.§8!h§;
               this.§;!r§.d *= param1.§8!h§;
            }
            this.§%3§.draw(_loc7_,this.§;!r§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§%3§)
         {
            if(this.§%3§.width != this.§[!Y§ || this.§%3§.height != this.§>h§)
            {
               this.§%3§.dispose();
               this.§%3§ = null;
            }
            else
            {
               this.§%3§.fillRect(this.§%3§.rect,4278190080 | param2);
            }
         }
         if(this.§%3§ == null && this.§[!Y§ > 0 && this.§>h§ > 0)
         {
            this.§%3§ = new BitmapData(this.§[!Y§,this.§>h§,true,4278190080 | param2);
         }
         if(this.§%3§)
         {
            this.§%3§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§%3§)
         {
            this.§%3§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§[!Y§ = param1;
         this.§>h§ = param2;
         this.§["P§ = param3;
         this.§="0§ = param4;
      }
   }
}
