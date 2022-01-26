package §94§
{
   import §+![§.Texture;
   import §3§.§2?§;
   import §9![§.§8i§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §0o§ extends §#!a§
   {
       
      
      private var §&"§:BitmapData;
      
      private var §!!b§:int = 0;
      
      private var §-&§:int = 0;
      
      private var §?!a§:Number = 1.0;
      
      private var §=!C§:Number = 1.0;
      
      private var §"=§:BitmapData;
      
      private var §4!<§:Vector.<Number>;
      
      private var §04§:Matrix;
      
      private var §+&§:ColorTransform;
      
      public function §0o§()
      {
         this.§4!<§ = new Vector.<Number>(16);
         this.§04§ = new Matrix();
         this.§+&§ = new ColorTransform();
         super();
         this.§"=§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§&"§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§"=§)
         {
            this.§"=§.dispose();
            this.§"=§ = null;
         }
      }
      
      override public function batchQuad(param1:§2?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§&"§)
         {
            §?!E§.copyRawDataTo(this.§4!<§,0);
            this.§04§.setTo(this.§4!<§[0],this.§4!<§[1],this.§4!<§[4],this.§4!<§[5],this.§4!<§[12],this.§4!<§[13]);
            this.§04§.scale(this.§?!a§,this.§=!C§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§+&§).redMultiplier = §8i§.§]!]§(_loc5_) / 255;
               _loc6_.greenMultiplier = §8i§.§6,§(_loc5_) / 255;
               _loc6_.blueMultiplier = §8i§.§"!8§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§+&§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§"=§.setPixel(0,0,param1.color);
               _loc7_ = this.§"=§;
               this.§04§.a *= param1.§%!B§;
               this.§04§.b *= param1.§%!B§;
               this.§04§.c *= param1.§]!'§;
               this.§04§.d *= param1.§]!'§;
            }
            this.§&"§.draw(_loc7_,this.§04§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§&"§)
         {
            if(this.§&"§.width != this.§!!b§ || this.§&"§.height != this.§-&§)
            {
               this.§&"§.dispose();
               this.§&"§ = null;
            }
            else
            {
               this.§&"§.fillRect(this.§&"§.rect,4278190080 | param2);
            }
         }
         if(this.§&"§ == null && this.§!!b§ > 0 && this.§-&§ > 0)
         {
            this.§&"§ = new BitmapData(this.§!!b§,this.§-&§,true,4278190080 | param2);
         }
         if(this.§&"§)
         {
            this.§&"§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§&"§)
         {
            this.§&"§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§!!b§ = param1;
         this.§-&§ = param2;
         this.§?!a§ = param3;
         this.§=!C§ = param4;
      }
   }
}
