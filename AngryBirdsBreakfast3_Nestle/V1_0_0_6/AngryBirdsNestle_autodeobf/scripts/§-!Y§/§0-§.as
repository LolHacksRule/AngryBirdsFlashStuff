package §-!Y§
{
   import §,!q§.§#!H§;
   import §-$§.§4!f§;
   import §?V§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §0-§ extends §,!f§
   {
       
      
      private var §?"5§:BitmapData;
      
      private var §`"+§:int = 0;
      
      private var §`"4§:int = 0;
      
      private var §<+§:Number = 1.0;
      
      private var §99§:Number = 1.0;
      
      private var §"!!§:BitmapData;
      
      private var §#[§:Vector.<Number>;
      
      private var §,5§:Matrix;
      
      private var § o§:ColorTransform;
      
      public function §0-§()
      {
         this.§#[§ = new Vector.<Number>(16);
         this.§,5§ = new Matrix();
         this.§ o§ = new ColorTransform();
         super();
         this.§"!!§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§?"5§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§"!!§)
         {
            this.§"!!§.dispose();
            this.§"!!§ = null;
         }
      }
      
      override public function batchQuad(param1:§#!H§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§?"5§)
         {
            §-7§.copyRawDataTo(this.§#[§,0);
            this.§,5§.setTo(this.§#[§[0],this.§#[§[1],this.§#[§[4],this.§#[§[5],this.§#[§[12],this.§#[§[13]);
            this.§,5§.scale(this.§<+§,this.§99§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§ o§).redMultiplier = §4!f§.§=!S§(_loc5_) / 255;
               _loc6_.greenMultiplier = §4!f§.§if §(_loc5_) / 255;
               _loc6_.blueMultiplier = §4!f§.§^j§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§ o§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§"!!§.setPixel(0,0,param1.color);
               _loc7_ = this.§"!!§;
               this.§,5§.a *= param1.§5![§;
               this.§,5§.b *= param1.§5![§;
               this.§,5§.c *= param1.§5"!§;
               this.§,5§.d *= param1.§5"!§;
            }
            this.§?"5§.draw(_loc7_,this.§,5§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§?"5§)
         {
            if(this.§?"5§.width != this.§`"+§ || this.§?"5§.height != this.§`"4§)
            {
               this.§?"5§.dispose();
               this.§?"5§ = null;
            }
            else
            {
               this.§?"5§.fillRect(this.§?"5§.rect,4278190080 | param2);
            }
         }
         if(this.§?"5§ == null && this.§`"+§ > 0 && this.§`"4§ > 0)
         {
            this.§?"5§ = new BitmapData(this.§`"+§,this.§`"4§,true,4278190080 | param2);
         }
         if(this.§?"5§)
         {
            this.§?"5§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§?"5§)
         {
            this.§?"5§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§`"+§ = param1;
         this.§`"4§ = param2;
         this.§<+§ = param3;
         this.§99§ = param4;
      }
   }
}
