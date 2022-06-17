package §"#k§
{
   import §,#e§.§;!`§;
   import §-#]§.Texture;
   import §8#p§.Color;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §9D§ extends §79§
   {
       
      
      private var §]#s§:BitmapData;
      
      private var §8e§:int = 0;
      
      private var §=!6§:int = 0;
      
      private var §%J§:Number = 1.0;
      
      private var §>4§:Number = 1.0;
      
      private var §?]§:BitmapData;
      
      private var §,$3§:Vector.<Number>;
      
      private var §[W§:Matrix;
      
      private var §"!I§:ColorTransform;
      
      public function §9D§()
      {
         this.§,$3§ = new Vector.<Number>(16);
         this.§[W§ = new Matrix();
         this.§"!I§ = new ColorTransform();
         super();
         this.§?]§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§]#s§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§?]§)
         {
            this.§?]§.dispose();
            this.§?]§ = null;
         }
      }
      
      override public function batchQuad(param1:§;!`§, param2:Number, param3:Texture = null, param4:int = 0) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§]#s§)
         {
            this.§[W§.copyFrom(§4"b§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§"!I§).redMultiplier = Color.§!!F§(_loc5_) / 255;
               _loc6_.greenMultiplier = Color.§<!n§(_loc5_) / 255;
               _loc6_.blueMultiplier = Color.§,=§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§"!I§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§?]§.setPixel(0,0,param1.color);
               _loc7_ = this.§?]§;
               this.§[W§.a *= param1.width;
               this.§[W§.b *= param1.width;
               this.§[W§.c *= param1.height;
               this.§[W§.d *= param1.height;
            }
            this.§]#s§.draw(_loc7_,this.§[W§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§]#s§)
         {
            if(this.§]#s§.width != this.§8e§ || this.§]#s§.height != this.§=!6§)
            {
               this.§]#s§.dispose();
               this.§]#s§ = null;
            }
            else
            {
               this.§]#s§.fillRect(this.§]#s§.rect,4278190080 | param2);
            }
         }
         if(this.§]#s§ == null && this.§8e§ > 0 && this.§=!6§ > 0)
         {
            this.§]#s§ = new BitmapData(this.§8e§,this.§=!6§,true,4278190080 | param2);
         }
         if(this.§]#s§)
         {
            this.§]#s§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§]#s§)
         {
            this.§]#s§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§8e§ = param1;
         this.§=!6§ = param2;
         this.§%J§ = param3;
         this.§>4§ = param4;
      }
   }
}
