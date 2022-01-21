package §4!$§
{
   import §",§.Texture;
   import §5x§.§3"§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §'!-§ extends §]!f§
   {
       
      
      private var §[A§:BitmapData;
      
      private var §"J§:int = 0;
      
      private var §;!;§:int = 0;
      
      private var §8Y§:Number = 1.0;
      
      private var § !C§:Number = 1.0;
      
      private var §,!D§:BitmapData;
      
      private var §^§:Vector.<Number>;
      
      private var §0!a§:Matrix;
      
      private var §+,§:ColorTransform;
      
      public function §'!-§()
      {
         this.§^§ = new Vector.<Number>(16);
         this.§0!a§ = new Matrix();
         this.§+,§ = new ColorTransform();
         super();
         this.§,!D§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§[A§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§,!D§)
         {
            this.§,!D§.dispose();
            this.§,!D§ = null;
         }
      }
      
      override public function batchQuad(param1:§3"§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§[A§)
         {
            §8h§.copyRawDataTo(this.§^§,0);
            this.§0!a§.setTo(this.§^§[0],this.§^§[1],this.§^§[4],this.§^§[5],this.§^§[12],this.§^§[13]);
            this.§0!a§.scale(this.§8Y§,this.§ !C§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§+,§).redMultiplier = §'N§.§!!U§(_loc5_) / 255;
               _loc6_.greenMultiplier = §'N§.§8!?§(_loc5_) / 255;
               _loc6_.blueMultiplier = §'N§.§1d§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§+,§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§,!D§.setPixel(0,0,param1.color);
               _loc7_ = this.§,!D§;
               this.§0!a§.a *= param1.§<!l§;
               this.§0!a§.b *= param1.§<!l§;
               this.§0!a§.c *= param1.§ j§;
               this.§0!a§.d *= param1.§ j§;
            }
            this.§[A§.draw(_loc7_,this.§0!a§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§[A§)
         {
            if(this.§[A§.width != this.§"J§ || this.§[A§.height != this.§;!;§)
            {
               this.§[A§.dispose();
               this.§[A§ = null;
            }
            else
            {
               this.§[A§.fillRect(this.§[A§.rect,4278190080 | param2);
            }
         }
         if(this.§[A§ == null && this.§"J§ > 0 && this.§;!;§ > 0)
         {
            this.§[A§ = new BitmapData(this.§"J§,this.§;!;§,true,4278190080 | param2);
         }
         if(this.§[A§)
         {
            this.§[A§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§[A§)
         {
            this.§[A§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§"J§ = param1;
         this.§;!;§ = param2;
         this.§8Y§ = param3;
         this.§ !C§ = param4;
      }
   }
}
