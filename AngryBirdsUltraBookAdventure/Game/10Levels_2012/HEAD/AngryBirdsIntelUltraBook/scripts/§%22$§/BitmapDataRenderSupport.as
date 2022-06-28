package §"$§
{
   import §'_§.Texture;
   import §1!&§.§!!9§;
   import §@2§.§3§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class BitmapDataRenderSupport extends RenderSupport
   {
       
      
      private var §"B§:BitmapData;
      
      private var §3!A§:int = 0;
      
      private var §[!G§:int = 0;
      
      private var §>b§:Number = 1.0;
      
      private var §=2§:Number = 1.0;
      
      private var §9r§:BitmapData;
      
      private var §]Q§:Vector.<Number>;
      
      private var §?R§:Matrix;
      
      private var §&W§:ColorTransform;
      
      public function BitmapDataRenderSupport()
      {
         this.§]Q§ = new Vector.<Number>(16);
         this.§?R§ = new Matrix();
         this.§&W§ = new ColorTransform();
         super();
         this.§9r§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§"B§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§9r§)
         {
            this.§9r§.dispose();
            this.§9r§ = null;
         }
      }
      
      override public function batchQuad(param1:§!!9§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§"B§)
         {
            §7!W§.copyRawDataTo(this.§]Q§,0);
            this.§?R§.setTo(this.§]Q§[0],this.§]Q§[1],this.§]Q§[4],this.§]Q§[5],this.§]Q§[12],this.§]Q§[13]);
            this.§?R§.scale(this.§>b§,this.§=2§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               _loc6_ = this.§&W§;
               _loc6_.redMultiplier = §3§.§0!k§(_loc5_) / 255;
               _loc6_.greenMultiplier = §3§.§0!T§(_loc5_) / 255;
               _loc6_.blueMultiplier = §3§.§2&§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               _loc6_ = this.§&W§;
               _loc6_.alphaMultiplier = param2;
            }
            _loc7_ = param1.clippedBitmapData;
            if(_loc7_ == null)
            {
               this.§9r§.setPixel(0,0,param1.color);
               _loc7_ = this.§9r§;
               this.§?R§.a *= param1.§1!K§;
               this.§?R§.b *= param1.§1!K§;
               this.§?R§.c *= param1.§"!+§;
               this.§?R§.d *= param1.§"!+§;
            }
            this.§"B§.draw(_loc7_,this.§?R§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§"B§)
         {
            if(this.§"B§.width != this.§3!A§ || this.§"B§.height != this.§[!G§)
            {
               this.§"B§.dispose();
               this.§"B§ = null;
            }
            else
            {
               this.§"B§.fillRect(this.§"B§.rect,4278190080 | param2);
            }
         }
         if(this.§"B§ == null && this.§3!A§ > 0 && this.§[!G§ > 0)
         {
            this.§"B§ = new BitmapData(this.§3!A§,this.§[!G§,true,4278190080 | param2);
         }
         if(this.§"B§)
         {
            this.§"B§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§"B§)
         {
            this.§"B§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§3!A§ = param1;
         this.§[!G§ = param2;
         this.§>b§ = param3;
         this.§=2§ = param4;
      }
   }
}
