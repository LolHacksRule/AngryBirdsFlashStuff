package §0P§
{
   import §6!7§.§3x§;
   import §7i§.Texture;
   import §8g§.§2!E§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class BitmapDataRenderSupport extends RenderSupport
   {
       
      
      private var §=,§:BitmapData;
      
      private var §"#§:int = 0;
      
      private var §>!g§:int = 0;
      
      private var §"Y§:Number = 1.0;
      
      private var §,!F§:Number = 1.0;
      
      private var §6<§:BitmapData;
      
      private var §^U§:Vector.<Number>;
      
      private var §0Z§:Matrix;
      
      private var §^Q§:ColorTransform;
      
      public function BitmapDataRenderSupport()
      {
         this.§^U§ = new Vector.<Number>(16);
         this.§0Z§ = new Matrix();
         this.§^Q§ = new ColorTransform();
         super();
         this.§6<§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§=,§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§6<§)
         {
            this.§6<§.dispose();
            this.§6<§ = null;
         }
      }
      
      override public function batchQuad(param1:§3x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§=,§)
         {
            §6!E§.copyRawDataTo(this.§^U§,0);
            this.§0Z§.setTo(this.§^U§[0],this.§^U§[1],this.§^U§[4],this.§^U§[5],this.§^U§[12],this.§^U§[13]);
            this.§0Z§.scale(this.§"Y§,this.§,!F§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               _loc6_ = this.§^Q§;
               _loc6_.redMultiplier = §2!E§.§6,§(_loc5_) / 255;
               _loc6_.greenMultiplier = §2!E§.§3i§(_loc5_) / 255;
               _loc6_.blueMultiplier = §2!E§.§7!@§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               _loc6_ = this.§^Q§;
               _loc6_.alphaMultiplier = param2;
            }
            _loc7_ = param1.clippedBitmapData;
            if(_loc7_ == null)
            {
               this.§6<§.setPixel(0,0,param1.color);
               _loc7_ = this.§6<§;
               this.§0Z§.a *= param1.§5l§;
               this.§0Z§.b *= param1.§5l§;
               this.§0Z§.c *= param1.§<z§;
               this.§0Z§.d *= param1.§<z§;
            }
            this.§=,§.draw(_loc7_,this.§0Z§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§=,§)
         {
            if(this.§=,§.width != this.§"#§ || this.§=,§.height != this.§>!g§)
            {
               this.§=,§.dispose();
               this.§=,§ = null;
            }
            else
            {
               this.§=,§.fillRect(this.§=,§.rect,4278190080 | param2);
            }
         }
         if(this.§=,§ == null && this.§"#§ > 0 && this.§>!g§ > 0)
         {
            this.§=,§ = new BitmapData(this.§"#§,this.§>!g§,true,4278190080 | param2);
         }
         if(this.§=,§)
         {
            this.§=,§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§=,§)
         {
            this.§=,§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§"#§ = param1;
         this.§>!g§ = param2;
         this.§"Y§ = param3;
         this.§,!F§ = param4;
      }
   }
}
