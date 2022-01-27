package §?!5§
{
   import §"!<§.Texture;
   import §;!F§.§?`§;
   import §<!-§.§8J§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class final extends §;P§
   {
       
      
      private var §[!6§:BitmapData;
      
      private var §"P§:int = 0;
      
      private var §!P§:int = 0;
      
      private var §4!7§:Number = 1.0;
      
      private var §,!8§:Number = 1.0;
      
      private var §1d§:BitmapData;
      
      private var §=@§:Vector.<Number>;
      
      private var §!!$§:Matrix;
      
      private var §#!`§:ColorTransform;
      
      public function final()
      {
         this.§=@§ = new Vector.<Number>(16);
         this.§!!$§ = new Matrix();
         this.§#!`§ = new ColorTransform();
         super();
         this.§1d§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§[!6§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§1d§)
         {
            this.§1d§.dispose();
            this.§1d§ = null;
         }
      }
      
      override public function batchQuad(param1:§8J§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§[!6§)
         {
            §6!>§.copyRawDataTo(this.§=@§,0);
            this.§!!$§.setTo(this.§=@§[0],this.§=@§[1],this.§=@§[4],this.§=@§[5],this.§=@§[12],this.§=@§[13]);
            this.§!!$§.scale(this.§4!7§,this.§,!8§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§#!`§).redMultiplier = §?`§.§2&§(_loc5_) / 255;
               _loc6_.greenMultiplier = §?`§.§^f§(_loc5_) / 255;
               _loc6_.blueMultiplier = §?`§.§=!§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§#!`§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§1d§.setPixel(0,0,param1.color);
               _loc7_ = this.§1d§;
               this.§!!$§.a *= param1.§[_§;
               this.§!!$§.b *= param1.§[_§;
               this.§!!$§.c *= param1.§3!9§;
               this.§!!$§.d *= param1.§3!9§;
            }
            this.§[!6§.draw(_loc7_,this.§!!$§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§[!6§)
         {
            if(this.§[!6§.width != this.§"P§ || this.§[!6§.height != this.§!P§)
            {
               this.§[!6§.dispose();
               this.§[!6§ = null;
            }
            else
            {
               this.§[!6§.fillRect(this.§[!6§.rect,4278190080 | param2);
            }
         }
         if(this.§[!6§ == null && this.§"P§ > 0 && this.§!P§ > 0)
         {
            this.§[!6§ = new BitmapData(this.§"P§,this.§!P§,true,4278190080 | param2);
         }
         if(this.§[!6§)
         {
            this.§[!6§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§[!6§)
         {
            this.§[!6§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§"P§ = param1;
         this.§!P§ = param2;
         this.§4!7§ = param3;
         this.§,!8§ = param4;
      }
   }
}
