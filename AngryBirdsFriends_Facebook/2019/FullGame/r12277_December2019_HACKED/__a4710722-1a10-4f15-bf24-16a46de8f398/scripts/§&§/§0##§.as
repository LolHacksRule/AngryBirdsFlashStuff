package §&§#8
{
   import §""4§.Texture;
   import §#Z§.§6J§;
   import §0"D§.Color;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §0##§ extends §""F§
   {
       
      
      private var § "U§:BitmapData;
      
      private var §3$=§:int = 0;
      
      private var §4!o§:int = 0;
      
      private var §;#`§:Number = 1.0;
      
      private var §#"H§:Number = 1.0;
      
      private var §<!8§:BitmapData;
      
      private var §+"?§:Vector.<Number>;
      
      private var §,"1§:Matrix;
      
      private var §?!5§:ColorTransform;
      
      public function §0##§()
      {
         this.§+"?§ = new Vector.<Number>(16);
         this.§,"1§ = new Matrix();
         this.§?!5§ = new ColorTransform();
         super();
         this.§<!8§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§ "U§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§<!8§)
         {
            this.§<!8§.dispose();
            this.§<!8§ = null;
         }
      }
      
      override public function batchQuad(param1:§6J§, param2:Number, param3:Texture = null, param4:int = 0) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§ "U§)
         {
            this.§,"1§.copyFrom(§5P§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§?!5§).redMultiplier = Color.§0"3§(_loc5_) / 255;
               _loc6_.greenMultiplier = Color.§-"]§(_loc5_) / 255;
               _loc6_.blueMultiplier = Color.§ "x§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§?!5§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§<!8§.setPixel(0,0,param1.color);
               _loc7_ = this.§<!8§;
               this.§,"1§.a *= param1.width;
               this.§,"1§.b *= param1.width;
               this.§,"1§.c *= param1.height;
               this.§,"1§.d *= param1.height;
            }
            this.§ "U§.draw(_loc7_,this.§,"1§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§ "U§)
         {
            if(this.§ "U§.width != this.§3$=§ || this.§ "U§.height != this.§4!o§)
            {
               this.§ "U§.dispose();
               this.§ "U§ = null;
            }
            else
            {
               this.§ "U§.fillRect(this.§ "U§.rect,4278190080 | param2);
            }
         }
         if(this.§ "U§ == null && this.§3$=§ > 0 && this.§4!o§ > 0)
         {
            this.§ "U§ = new BitmapData(this.§3$=§,this.§4!o§,true,4278190080 | param2);
         }
         if(this.§ "U§)
         {
            this.§ "U§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§ "U§)
         {
            this.§ "U§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§3$=§ = param1;
         this.§4!o§ = param2;
         this.§;#`§ = param3;
         this.§#"H§ = param4;
      }
   }
}
