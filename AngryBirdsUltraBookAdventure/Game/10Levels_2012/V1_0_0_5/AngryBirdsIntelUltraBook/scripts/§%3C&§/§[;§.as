package §<&§
{
   import §'!9§.§%!g§;
   import §^!+§.Texture;
   import §`s§.§ z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §[;§ extends §`K§
   {
       
      
      private var §8!0§:BitmapData;
      
      private var §3#§:int = 0;
      
      private var §?8§:int = 0;
      
      private var §5!U§:Number = 1.0;
      
      private var §-![§:Number = 1.0;
      
      private var §!!@§:BitmapData;
      
      private var §4!0§:Vector.<Number>;
      
      private var §-!C§:Matrix;
      
      private var §]u§:ColorTransform;
      
      public function §[;§()
      {
         this.§4!0§ = new Vector.<Number>(16);
         this.§-!C§ = new Matrix();
         this.§]u§ = new ColorTransform();
         super();
         this.§!!@§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§8!0§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§!!@§)
         {
            this.§!!@§.dispose();
            this.§!!@§ = null;
         }
      }
      
      override public function batchQuad(param1:§%!g§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§8!0§)
         {
            §[V§.copyRawDataTo(this.§4!0§,0);
            this.§-!C§.setTo(this.§4!0§[0],this.§4!0§[1],this.§4!0§[4],this.§4!0§[5],this.§4!0§[12],this.§4!0§[13]);
            this.§-!C§.scale(this.§5!U§,this.§-![§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§]u§).redMultiplier = § z§.§6!q§(_loc5_) / 255;
               _loc6_.greenMultiplier = § z§.§"5§(_loc5_) / 255;
               _loc6_.blueMultiplier = § z§.§9!,§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§]u§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§!!@§.setPixel(0,0,param1.color);
               _loc7_ = this.§!!@§;
               this.§-!C§.a *= param1.§>V§;
               this.§-!C§.b *= param1.§>V§;
               this.§-!C§.c *= param1.§=!`§;
               this.§-!C§.d *= param1.§=!`§;
            }
            this.§8!0§.draw(_loc7_,this.§-!C§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§8!0§)
         {
            if(this.§8!0§.width != this.§3#§ || this.§8!0§.height != this.§?8§)
            {
               this.§8!0§.dispose();
               this.§8!0§ = null;
            }
            else
            {
               this.§8!0§.fillRect(this.§8!0§.rect,4278190080 | param2);
            }
         }
         if(this.§8!0§ == null && this.§3#§ > 0 && this.§?8§ > 0)
         {
            this.§8!0§ = new BitmapData(this.§3#§,this.§?8§,true,4278190080 | param2);
         }
         if(this.§8!0§)
         {
            this.§8!0§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§8!0§)
         {
            this.§8!0§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§3#§ = param1;
         this.§?8§ = param2;
         this.§5!U§ = param3;
         this.§-![§ = param4;
      }
   }
}
