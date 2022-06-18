package §7!§
{
   import §#!@§.§?h§;
   import §1#§.Texture;
   import §@!E§.§?!8§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §5z§ extends § 0§
   {
       
      
      private var §7!F§:BitmapData;
      
      private var §12§:int = 0;
      
      private var §<o§:int = 0;
      
      private var §^R§:Number = 1.0;
      
      private var §+!?§:Number = 1.0;
      
      private var §9c§:BitmapData;
      
      private var §;T§:Vector.<Number>;
      
      private var §]T§:Matrix;
      
      private var §^g§:ColorTransform;
      
      public function §5z§()
      {
         this.§;T§ = new Vector.<Number>(16);
         this.§]T§ = new Matrix();
         this.§^g§ = new ColorTransform();
         super();
         this.§9c§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§7!F§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§9c§)
         {
            this.§9c§.dispose();
            this.§9c§ = null;
         }
      }
      
      override public function batchQuad(param1:§?h§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§7!F§)
         {
            §7M§.copyRawDataTo(this.§;T§,0);
            this.§]T§.setTo(this.§;T§[0],this.§;T§[1],this.§;T§[4],this.§;T§[5],this.§;T§[12],this.§;T§[13]);
            this.§]T§.scale(this.§^R§,this.§+!?§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§^g§).redMultiplier = §?!8§.§^$§(_loc5_) / 255;
               _loc6_.greenMultiplier = §?!8§.§,9§(_loc5_) / 255;
               _loc6_.blueMultiplier = §?!8§.§"!"§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§^g§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§9c§.setPixel(0,0,param1.color);
               _loc7_ = this.§9c§;
               this.§]T§.a *= param1.initialWidth;
               this.§]T§.b *= param1.initialWidth;
               this.§]T§.c *= param1.initialHeight;
               this.§]T§.d *= param1.initialHeight;
            }
            this.§7!F§.draw(_loc7_,this.§]T§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§7!F§)
         {
            if(this.§7!F§.width != this.§12§ || this.§7!F§.height != this.§<o§)
            {
               this.§7!F§.dispose();
               this.§7!F§ = null;
            }
            else
            {
               this.§7!F§.fillRect(this.§7!F§.rect,4278190080 | param2);
            }
         }
         if(this.§7!F§ == null && this.§12§ > 0 && this.§<o§ > 0)
         {
            this.§7!F§ = new BitmapData(this.§12§,this.§<o§,true,4278190080 | param2);
         }
         if(this.§7!F§)
         {
            this.§7!F§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§7!F§)
         {
            this.§7!F§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§12§ = param1;
         this.§<o§ = param2;
         this.§^R§ = param3;
         this.§+!?§ = param4;
      }
   }
}
