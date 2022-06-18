package §'!S§
{
   import §#!`§.Texture;
   import §7u§.§&x§;
   import §@u§.§#g§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §@?§ extends §5[§
   {
       
      
      private var §`3§:BitmapData;
      
      private var § !P§:int = 0;
      
      private var §#!R§:int = 0;
      
      private var §8G§:Number = 1.0;
      
      private var §+!5§:Number = 1.0;
      
      private var §^=§:BitmapData;
      
      private var §]!#§:Vector.<Number>;
      
      private var §?L§:Matrix;
      
      private var §'k§:ColorTransform;
      
      public function §@?§()
      {
         this.§]!#§ = new Vector.<Number>(16);
         this.§?L§ = new Matrix();
         this.§'k§ = new ColorTransform();
         super();
         this.§^=§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`3§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§^=§)
         {
            this.§^=§.dispose();
            this.§^=§ = null;
         }
      }
      
      override public function batchQuad(param1:§&x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§`3§)
         {
            §`!2§.copyRawDataTo(this.§]!#§,0);
            this.§?L§.setTo(this.§]!#§[0],this.§]!#§[1],this.§]!#§[4],this.§]!#§[5],this.§]!#§[12],this.§]!#§[13]);
            this.§?L§.scale(this.§8G§,this.§+!5§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§'k§).redMultiplier = §#g§.§36§(_loc5_) / 255;
               _loc6_.greenMultiplier = §#g§.§+!8§(_loc5_) / 255;
               _loc6_.blueMultiplier = §#g§.§ !G§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§'k§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§^=§.setPixel(0,0,param1.color);
               _loc7_ = this.§^=§;
               this.§?L§.a *= param1.§68§;
               this.§?L§.b *= param1.§68§;
               this.§?L§.c *= param1.§]!N§;
               this.§?L§.d *= param1.§]!N§;
            }
            this.§`3§.draw(_loc7_,this.§?L§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§`3§)
         {
            if(this.§`3§.width != this.§ !P§ || this.§`3§.height != this.§#!R§)
            {
               this.§`3§.dispose();
               this.§`3§ = null;
            }
            else
            {
               this.§`3§.fillRect(this.§`3§.rect,4278190080 | param2);
            }
         }
         if(this.§`3§ == null && this.§ !P§ > 0 && this.§#!R§ > 0)
         {
            this.§`3§ = new BitmapData(this.§ !P§,this.§#!R§,true,4278190080 | param2);
         }
         if(this.§`3§)
         {
            this.§`3§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§`3§)
         {
            this.§`3§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§ !P§ = param1;
         this.§#!R§ = param2;
         this.§8G§ = param3;
         this.§+!5§ = param4;
      }
   }
}
