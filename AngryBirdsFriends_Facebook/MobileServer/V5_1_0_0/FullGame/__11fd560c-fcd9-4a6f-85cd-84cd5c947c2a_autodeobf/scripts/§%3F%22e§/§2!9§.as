package §?"e§
{
   import §5!D§.Color;
   import §9$;§.Texture;
   import §^"S§.§'#E§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §2!9§ extends §[!Z§
   {
       
      
      private var §2D§:BitmapData;
      
      private var §;#,§:int = 0;
      
      private var §""!§:int = 0;
      
      private var §+"J§:Number = 1.0;
      
      private var §^"A§:Number = 1.0;
      
      private var §>#0§:BitmapData;
      
      private var §&!@§:Vector.<Number>;
      
      private var §##B§:Matrix;
      
      private var § #e§:ColorTransform;
      
      public function §2!9§()
      {
         this.§&!@§ = new Vector.<Number>(16);
         this.§##B§ = new Matrix();
         this.§ #e§ = new ColorTransform();
         super();
         this.§>#0§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§2D§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§>#0§)
         {
            this.§>#0§.dispose();
            this.§>#0§ = null;
         }
      }
      
      override public function batchQuad(param1:§'#E§, param2:Number, param3:Texture = null, param4:int = 0) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§2D§)
         {
            this.§##B§.copyFrom(§9!$§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§ #e§).redMultiplier = Color.§["=§(_loc5_) / 255;
               _loc6_.greenMultiplier = Color.§>#U§(_loc5_) / 255;
               _loc6_.blueMultiplier = Color.§9$%§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§ #e§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§>#0§.setPixel(0,0,param1.color);
               _loc7_ = this.§>#0§;
               this.§##B§.a *= param1.width;
               this.§##B§.b *= param1.width;
               this.§##B§.c *= param1.height;
               this.§##B§.d *= param1.height;
            }
            this.§2D§.draw(_loc7_,this.§##B§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§2D§)
         {
            if(this.§2D§.width != this.§;#,§ || this.§2D§.height != this.§""!§)
            {
               this.§2D§.dispose();
               this.§2D§ = null;
            }
            else
            {
               this.§2D§.fillRect(this.§2D§.rect,4278190080 | param2);
            }
         }
         if(this.§2D§ == null && this.§;#,§ > 0 && this.§""!§ > 0)
         {
            this.§2D§ = new BitmapData(this.§;#,§,this.§""!§,true,4278190080 | param2);
         }
         if(this.§2D§)
         {
            this.§2D§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§2D§)
         {
            this.§2D§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§;#,§ = param1;
         this.§""!§ = param2;
         this.§+"J§ = param3;
         this.§^"A§ = param4;
      }
   }
}
