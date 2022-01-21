package §each §
{
   import §&!9§.Texture;
   import §'!>§.§?!o§;
   import §0@§.§"%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §-!a§ extends § if§
   {
       
      
      private var §3A§:BitmapData;
      
      private var §"!n§:int = 0;
      
      private var §["§:int = 0;
      
      private var §>F§:Number = 1.0;
      
      private var §0j§:Number = 1.0;
      
      private var § +§:BitmapData;
      
      private var §^V§:Vector.<Number>;
      
      private var §;>§:Matrix;
      
      private var §^!@§:ColorTransform;
      
      public function §-!a§()
      {
         this.§^V§ = new Vector.<Number>(16);
         this.§;>§ = new Matrix();
         this.§^!@§ = new ColorTransform();
         super();
         this.§ +§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§3A§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§ +§)
         {
            this.§ +§.dispose();
            this.§ +§ = null;
         }
      }
      
      override public function batchQuad(param1:§"%§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§3A§)
         {
            §8!o§.copyRawDataTo(this.§^V§,0);
            this.§;>§.setTo(this.§^V§[0],this.§^V§[1],this.§^V§[4],this.§^V§[5],this.§^V§[12],this.§^V§[13]);
            this.§;>§.scale(this.§>F§,this.§0j§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§^!@§).redMultiplier = §?!o§.§;!=§(_loc5_) / 255;
               _loc6_.greenMultiplier = §?!o§.§]`§(_loc5_) / 255;
               _loc6_.blueMultiplier = §?!o§.§3!=§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§^!@§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§ +§.setPixel(0,0,param1.color);
               _loc7_ = this.§ +§;
               this.§;>§.a *= param1.§1;§;
               this.§;>§.b *= param1.§1;§;
               this.§;>§.c *= param1.§8!R§;
               this.§;>§.d *= param1.§8!R§;
            }
            this.§3A§.draw(_loc7_,this.§;>§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§3A§)
         {
            if(this.§3A§.width != this.§"!n§ || this.§3A§.height != this.§["§)
            {
               this.§3A§.dispose();
               this.§3A§ = null;
            }
            else
            {
               this.§3A§.fillRect(this.§3A§.rect,4278190080 | param2);
            }
         }
         if(this.§3A§ == null && this.§"!n§ > 0 && this.§["§ > 0)
         {
            this.§3A§ = new BitmapData(this.§"!n§,this.§["§,true,4278190080 | param2);
         }
         if(this.§3A§)
         {
            this.§3A§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§3A§)
         {
            this.§3A§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§"!n§ = param1;
         this.§["§ = param2;
         this.§>F§ = param3;
         this.§0j§ = param4;
      }
   }
}
