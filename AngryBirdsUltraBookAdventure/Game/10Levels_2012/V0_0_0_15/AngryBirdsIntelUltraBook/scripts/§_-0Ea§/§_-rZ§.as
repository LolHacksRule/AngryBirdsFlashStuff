package §_-0Ea§
{
   import §_-UD§.§_-Jy§;
   import §_-uY§.§_-2p§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §_-rZ§ extends §_-zM§
   {
       
      
      private var §_-t8§:BitmapData;
      
      private var §_-0-b§:int = 0;
      
      private var §_-pJ§:int = 0;
      
      private var §_-pY§:Number = 1.0;
      
      private var §_-06u§:Number = 1.0;
      
      private var §_-ax§:BitmapData;
      
      private var §_-J-§:Vector.<Number>;
      
      private var §_-HB§:Matrix;
      
      private var §_-09y§:ColorTransform;
      
      public function §_-rZ§()
      {
         this.§_-J-§ = new Vector.<Number>(16);
         this.§_-HB§ = new Matrix();
         this.§_-09y§ = new ColorTransform();
         super();
         this.§_-ax§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§_-t8§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§_-ax§)
         {
            this.§_-ax§.dispose();
            this.§_-ax§ = null;
         }
      }
      
      override public function batchQuad(param1:§_-2p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§_-t8§)
         {
            §_-Sd§.copyRawDataTo(this.§_-J-§,0);
            this.§_-HB§.setTo(this.§_-J-§[0],this.§_-J-§[1],this.§_-J-§[4],this.§_-J-§[5],this.§_-J-§[12],this.§_-J-§[13]);
            this.§_-HB§.scale(this.§_-pY§,this.§_-06u§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§_-09y§).redMultiplier = §_-Jy§.§throw§(_loc5_) / 255;
               _loc6_.greenMultiplier = §_-Jy§.§_-OU§(_loc5_) / 255;
               _loc6_.blueMultiplier = §_-Jy§.§_-Gv§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§_-09y§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§_-ax§.setPixel(0,0,param1.color);
               _loc7_ = this.§_-ax§;
               this.§_-HB§.a *= param1.§_-ZD§;
               this.§_-HB§.b *= param1.§_-ZD§;
               this.§_-HB§.c *= param1.§_-u4§;
               this.§_-HB§.d *= param1.§_-u4§;
            }
            this.§_-t8§.draw(_loc7_,this.§_-HB§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§_-t8§)
         {
            if(this.§_-t8§.width != this.§_-0-b§ || this.§_-t8§.height != this.§_-pJ§)
            {
               this.§_-t8§.dispose();
               this.§_-t8§ = null;
            }
            else
            {
               this.§_-t8§.fillRect(this.§_-t8§.rect,4278190080 | param2);
            }
         }
         if(this.§_-t8§ == null && this.§_-0-b§ > 0 && this.§_-pJ§ > 0)
         {
            this.§_-t8§ = new BitmapData(this.§_-0-b§,this.§_-pJ§,true,4278190080 | param2);
         }
         if(this.§_-t8§)
         {
            this.§_-t8§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§_-t8§)
         {
            this.§_-t8§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§_-0-b§ = param1;
         this.§_-pJ§ = param2;
         this.§_-pY§ = param3;
         this.§_-06u§ = param4;
      }
   }
}
