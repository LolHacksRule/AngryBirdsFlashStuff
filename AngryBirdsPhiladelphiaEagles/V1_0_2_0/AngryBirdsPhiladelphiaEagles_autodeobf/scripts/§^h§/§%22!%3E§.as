package §^h§
{
   import §-!A§.§6!<§;
   import §<!N§.§^3§;
   import §@M§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §"!>§ extends §?!D§
   {
       
      
      private var static:BitmapData;
      
      private var §%g§:int = 0;
      
      private var §0S§:int = 0;
      
      private var §=E§:Number = 1.0;
      
      private var §'2§:Number = 1.0;
      
      private var §set §:BitmapData;
      
      private var §]?§:Vector.<Number>;
      
      private var §8J§:Matrix;
      
      private var §83§:ColorTransform;
      
      public function §"!>§()
      {
         this.§]?§ = new Vector.<Number>(16);
         this.§8J§ = new Matrix();
         this.§83§ = new ColorTransform();
         super();
         this.§set § = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.static;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§set §)
         {
            this.§set §.dispose();
            this.§set § = null;
         }
      }
      
      override public function batchQuad(param1:§^3§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.static)
         {
            §&§.copyRawDataTo(this.§]?§,0);
            this.§8J§.setTo(this.§]?§[0],this.§]?§[1],this.§]?§[4],this.§]?§[5],this.§]?§[12],this.§]?§[13]);
            this.§8J§.scale(this.§=E§,this.§'2§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§83§).redMultiplier = §6!<§.§4>§(_loc5_) / 255;
               _loc6_.greenMultiplier = §6!<§.§[o§(_loc5_) / 255;
               _loc6_.blueMultiplier = §6!<§.§'A§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§83§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§set §.setPixel(0,0,param1.color);
               _loc7_ = this.§set §;
               this.§8J§.a *= param1.§?T§;
               this.§8J§.b *= param1.§?T§;
               this.§8J§.c *= param1.§+!8§;
               this.§8J§.d *= param1.§+!8§;
            }
            this.static.draw(_loc7_,this.§8J§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.static)
         {
            if(this.static.width != this.§%g§ || this.static.height != this.§0S§)
            {
               this.static.dispose();
               this.static = null;
            }
            else
            {
               this.static.fillRect(this.static.rect,4278190080 | param2);
            }
         }
         if(this.static == null && this.§%g§ > 0 && this.§0S§ > 0)
         {
            this.static = new BitmapData(this.§%g§,this.§0S§,true,4278190080 | param2);
         }
         if(this.static)
         {
            this.static.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.static)
         {
            this.static.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§%g§ = param1;
         this.§0S§ = param2;
         this.§=E§ = param3;
         this.§'2§ = param4;
      }
   }
}
