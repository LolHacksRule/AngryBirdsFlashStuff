package §"4§
{
   import §%W§.§1! §;
   import §&!5§.§2G§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import §switch§.Texture;
   
   public class §;U§ extends §+s§
   {
       
      
      private var §8r§:BitmapData;
      
      private var §;p§:int = 0;
      
      private var §9!7§:int = 0;
      
      private var §[!Y§:Number = 1.0;
      
      private var §8!T§:Number = 1.0;
      
      private var §?!H§:BitmapData;
      
      private var §,§:Vector.<Number>;
      
      private var §,"§:Matrix;
      
      private var §;3§:ColorTransform;
      
      public function §;U§()
      {
         this.§,§ = new Vector.<Number>(16);
         this.§,"§ = new Matrix();
         this.§;3§ = new ColorTransform();
         super();
         this.§?!H§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§8r§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§?!H§)
         {
            this.§?!H§.dispose();
            this.§?!H§ = null;
         }
      }
      
      override public function batchQuad(param1:§2G§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§8r§)
         {
            §`k§.copyRawDataTo(this.§,§,0);
            this.§,"§.setTo(this.§,§[0],this.§,§[1],this.§,§[4],this.§,§[5],this.§,§[12],this.§,§[13]);
            this.§,"§.scale(this.§[!Y§,this.§8!T§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§;3§).redMultiplier = §1! §.§+a§(_loc5_) / 255;
               _loc6_.greenMultiplier = §1! §.§'!5§(_loc5_) / 255;
               _loc6_.blueMultiplier = §1! §.§6!1§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§;3§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§?!H§.setPixel(0,0,param1.color);
               _loc7_ = this.§?!H§;
               this.§,"§.a *= param1.§+7§;
               this.§,"§.b *= param1.§+7§;
               this.§,"§.c *= param1.§@!1§;
               this.§,"§.d *= param1.§@!1§;
            }
            this.§8r§.draw(_loc7_,this.§,"§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§8r§)
         {
            if(this.§8r§.width != this.§;p§ || this.§8r§.height != this.§9!7§)
            {
               this.§8r§.dispose();
               this.§8r§ = null;
            }
            else
            {
               this.§8r§.fillRect(this.§8r§.rect,4278190080 | param2);
            }
         }
         if(this.§8r§ == null && this.§;p§ > 0 && this.§9!7§ > 0)
         {
            this.§8r§ = new BitmapData(this.§;p§,this.§9!7§,true,4278190080 | param2);
         }
         if(this.§8r§)
         {
            this.§8r§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§8r§)
         {
            this.§8r§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§;p§ = param1;
         this.§9!7§ = param2;
         this.§[!Y§ = param3;
         this.§8!T§ = param4;
      }
   }
}
