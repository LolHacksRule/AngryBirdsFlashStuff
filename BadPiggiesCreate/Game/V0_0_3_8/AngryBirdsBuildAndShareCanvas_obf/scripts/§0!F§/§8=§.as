package §0!F§
{
   import §3!U§.Texture;
   import §9!a§.§]!C§;
   import §]!2§.§?"2§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §8=§ extends §3`§
   {
       
      
      private var §,W§:BitmapData;
      
      private var §=@§:int = 0;
      
      private var §4C§:int = 0;
      
      private var §?S§:Number = 1.0;
      
      private var §^H§:Number = 1.0;
      
      private var §;O§:BitmapData;
      
      private var §"W§:Vector.<Number>;
      
      private var §]!4§:Matrix;
      
      private var §@+§:ColorTransform;
      
      public function §8=§()
      {
         this.§"W§ = new Vector.<Number>(16);
         this.§]!4§ = new Matrix();
         this.§@+§ = new ColorTransform();
         super();
         this.§;O§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§,W§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§;O§)
         {
            this.§;O§.dispose();
            this.§;O§ = null;
         }
      }
      
      override public function batchQuad(param1:§?"2§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§,W§)
         {
            §`"1§.copyRawDataTo(this.§"W§,0);
            this.§]!4§.setTo(this.§"W§[0],this.§"W§[1],this.§"W§[4],this.§"W§[5],this.§"W§[12],this.§"W§[13]);
            this.§]!4§.scale(this.§?S§,this.§^H§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§@+§).redMultiplier = §]!C§.§8"§(_loc5_) / 255;
               _loc6_.greenMultiplier = §]!C§.§+$§(_loc5_) / 255;
               _loc6_.blueMultiplier = §]!C§.§2!v§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§@+§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§;O§.setPixel(0,0,param1.color);
               _loc7_ = this.§;O§;
               this.§]!4§.a *= param1.§^!l§;
               this.§]!4§.b *= param1.§^!l§;
               this.§]!4§.c *= param1.§;W§;
               this.§]!4§.d *= param1.§;W§;
            }
            this.§,W§.draw(_loc7_,this.§]!4§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§,W§)
         {
            if(this.§,W§.width != this.§=@§ || this.§,W§.height != this.§4C§)
            {
               this.§,W§.dispose();
               this.§,W§ = null;
            }
            else
            {
               this.§,W§.fillRect(this.§,W§.rect,4278190080 | param2);
            }
         }
         if(this.§,W§ == null && this.§=@§ > 0 && this.§4C§ > 0)
         {
            this.§,W§ = new BitmapData(this.§=@§,this.§4C§,true,4278190080 | param2);
         }
         if(this.§,W§)
         {
            this.§,W§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§,W§)
         {
            this.§,W§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§=@§ = param1;
         this.§4C§ = param2;
         this.§?S§ = param3;
         this.§^H§ = param4;
      }
   }
}
