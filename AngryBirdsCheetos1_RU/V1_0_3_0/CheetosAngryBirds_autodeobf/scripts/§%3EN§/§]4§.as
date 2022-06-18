package §>N§
{
   import §+a§.Texture;
   import §-!%§.§8!'§;
   import §9!a§.§]o§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §]4§ extends §>q§
   {
       
      
      private var §!!+§:BitmapData;
      
      private var §[V§:int = 0;
      
      private var §^!5§:int = 0;
      
      private var §5!Z§:Number = 1.0;
      
      private var §&! §:Number = 1.0;
      
      private var §8!X§:BitmapData;
      
      private var §7!`§:Vector.<Number>;
      
      private var §+![§:Matrix;
      
      private var §?!,§:ColorTransform;
      
      public function §]4§()
      {
         this.§7!`§ = new Vector.<Number>(16);
         this.§+![§ = new Matrix();
         this.§?!,§ = new ColorTransform();
         super();
         this.§8!X§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§!!+§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§8!X§)
         {
            this.§8!X§.dispose();
            this.§8!X§ = null;
         }
      }
      
      override public function batchQuad(param1:§]o§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§!!+§)
         {
            §!!!§.copyRawDataTo(this.§7!`§,0);
            this.§+![§.setTo(this.§7!`§[0],this.§7!`§[1],this.§7!`§[4],this.§7!`§[5],this.§7!`§[12],this.§7!`§[13]);
            this.§+![§.scale(this.§5!Z§,this.§&! §);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§?!,§).redMultiplier = §8!'§.§83§(_loc5_) / 255;
               _loc6_.greenMultiplier = §8!'§.§,B§(_loc5_) / 255;
               _loc6_.blueMultiplier = §8!'§.§&z§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§?!,§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§8!X§.setPixel(0,0,param1.color);
               _loc7_ = this.§8!X§;
               this.§+![§.a *= param1.§<!Z§;
               this.§+![§.b *= param1.§<!Z§;
               this.§+![§.c *= param1.§^f§;
               this.§+![§.d *= param1.§^f§;
            }
            this.§!!+§.draw(_loc7_,this.§+![§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§!!+§)
         {
            if(this.§!!+§.width != this.§[V§ || this.§!!+§.height != this.§^!5§)
            {
               this.§!!+§.dispose();
               this.§!!+§ = null;
            }
            else
            {
               this.§!!+§.fillRect(this.§!!+§.rect,4278190080 | param2);
            }
         }
         if(this.§!!+§ == null && this.§[V§ > 0 && this.§^!5§ > 0)
         {
            this.§!!+§ = new BitmapData(this.§[V§,this.§^!5§,true,4278190080 | param2);
         }
         if(this.§!!+§)
         {
            this.§!!+§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§!!+§)
         {
            this.§!!+§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§[V§ = param1;
         this.§^!5§ = param2;
         this.§5!Z§ = param3;
         this.§&! § = param4;
      }
   }
}
