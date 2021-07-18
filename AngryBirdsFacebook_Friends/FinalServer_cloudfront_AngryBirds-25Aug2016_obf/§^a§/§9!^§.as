package §^a§
{
   import §1&§.Texture;
   import §4"D§.Color;
   import §9$§.§],§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §9!^§ extends §'"1§
   {
       
      
      private var §]!i§:BitmapData;
      
      private var §0#k§:int = 0;
      
      private var §,"<§:int = 0;
      
      private var §3!d§:Number = 1.0;
      
      private var §4"u§:Number = 1.0;
      
      private var §2<§:BitmapData;
      
      private var §7!]§:Vector.<Number>;
      
      private var §7S§:Matrix;
      
      private var §8#c§:ColorTransform;
      
      public function §9!^§()
      {
         this.§7!]§ = new Vector.<Number>(16);
         this.§7S§ = new Matrix();
         this.§8#c§ = new ColorTransform();
         super();
         this.§2<§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§]!i§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§2<§)
         {
            this.§2<§.dispose();
            this.§2<§ = null;
         }
      }
      
      override public function batchQuad(param1:§],§, param2:Number, param3:Texture = null, param4:int = 0) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§]!i§)
         {
            this.§7S§.copyFrom(§?!@§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§8#c§).redMultiplier = Color.§<!D§(_loc5_) / 255;
               _loc6_.greenMultiplier = Color.§"!8§(_loc5_) / 255;
               _loc6_.blueMultiplier = Color.§7!i§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§8#c§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§2<§.setPixel(0,0,param1.color);
               _loc7_ = this.§2<§;
               this.§7S§.a *= param1.width;
               this.§7S§.b *= param1.width;
               this.§7S§.c *= param1.height;
               this.§7S§.d *= param1.height;
            }
            this.§]!i§.draw(_loc7_,this.§7S§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§]!i§)
         {
            if(this.§]!i§.width != this.§0#k§ || this.§]!i§.height != this.§,"<§)
            {
               this.§]!i§.dispose();
               this.§]!i§ = null;
            }
            else
            {
               this.§]!i§.fillRect(this.§]!i§.rect,4278190080 | param2);
            }
         }
         if(this.§]!i§ == null && this.§0#k§ > 0 && this.§,"<§ > 0)
         {
            this.§]!i§ = new BitmapData(this.§0#k§,this.§,"<§,true,4278190080 | param2);
         }
         if(this.§]!i§)
         {
            this.§]!i§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§]!i§)
         {
            this.§]!i§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§0#k§ = param1;
         this.§,"<§ = param2;
         this.§3!d§ = param3;
         this.§4"u§ = param4;
      }
   }
}
