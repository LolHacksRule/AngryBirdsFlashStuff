package §8!#§
{
   import §8j§.§7f§;
   import §>u§.Texture;
   import §]!6§.§8D§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §&G§ extends §-!§
   {
       
      
      private var §'!5§:BitmapData;
      
      private var §^!6§:int = 0;
      
      private var §0§:int = 0;
      
      private var §?I§:Number = 1.0;
      
      private var §^z§:Number = 1.0;
      
      private var native:BitmapData;
      
      private var §@P§:Vector.<Number>;
      
      private var §<N§:Matrix;
      
      private var §!k§:ColorTransform;
      
      public function §&G§()
      {
         this.§@P§ = new Vector.<Number>(16);
         this.§<N§ = new Matrix();
         this.§!k§ = new ColorTransform();
         super();
         this.native = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§'!5§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.native)
         {
            this.native.dispose();
            this.native = null;
         }
      }
      
      override public function batchQuad(param1:§8D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§'!5§)
         {
            §,!F§.copyRawDataTo(this.§@P§,0);
            this.§<N§.setTo(this.§@P§[0],this.§@P§[1],this.§@P§[4],this.§@P§[5],this.§@P§[12],this.§@P§[13]);
            this.§<N§.scale(this.§?I§,this.§^z§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§!k§).redMultiplier = §7f§.§[H§(_loc5_) / 255;
               _loc6_.greenMultiplier = §7f§.§'X§(_loc5_) / 255;
               _loc6_.blueMultiplier = §7f§.§"?§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§!k§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.native.setPixel(0,0,param1.color);
               _loc7_ = this.native;
               this.§<N§.a *= param1.initialWidth;
               this.§<N§.b *= param1.initialWidth;
               this.§<N§.c *= param1.initialHeight;
               this.§<N§.d *= param1.initialHeight;
            }
            this.§'!5§.draw(_loc7_,this.§<N§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§'!5§)
         {
            if(this.§'!5§.width != this.§^!6§ || this.§'!5§.height != this.§0§)
            {
               this.§'!5§.dispose();
               this.§'!5§ = null;
            }
            else
            {
               this.§'!5§.fillRect(this.§'!5§.rect,4278190080 | param2);
            }
         }
         if(this.§'!5§ == null && this.§^!6§ > 0 && this.§0§ > 0)
         {
            this.§'!5§ = new BitmapData(this.§^!6§,this.§0§,true,4278190080 | param2);
         }
         if(this.§'!5§)
         {
            this.§'!5§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§'!5§)
         {
            this.§'!5§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§^!6§ = param1;
         this.§0§ = param2;
         this.§?I§ = param3;
         this.§^z§ = param4;
      }
   }
}
