package §=!0§
{
   import §&o§.§<3§;
   import §'j§.§]Z§;
   import §0! §.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §]8§ extends §2N§
   {
       
      
      private var §"B§:BitmapData;
      
      private var §,l§:int = 0;
      
      private var §!>§:int = 0;
      
      private var §=H§:Number = 1.0;
      
      private var §@F§:Number = 1.0;
      
      private var §=3§:BitmapData;
      
      private var §0!F§:Vector.<Number>;
      
      private var §<0§:Matrix;
      
      private var §,-§:ColorTransform;
      
      public function §]8§()
      {
         this.§0!F§ = new Vector.<Number>(16);
         this.§<0§ = new Matrix();
         this.§,-§ = new ColorTransform();
         super();
         this.§=3§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§"B§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§=3§)
         {
            this.§=3§.dispose();
            this.§=3§ = null;
         }
      }
      
      override public function batchQuad(param1:§<3§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§"B§)
         {
            §+k§.copyRawDataTo(this.§0!F§,0);
            this.§<0§.setTo(this.§0!F§[0],this.§0!F§[1],this.§0!F§[4],this.§0!F§[5],this.§0!F§[12],this.§0!F§[13]);
            this.§<0§.scale(this.§=H§,this.§@F§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§,-§).redMultiplier = §]Z§.§3e§(_loc5_) / 255;
               _loc6_.greenMultiplier = §]Z§.§7Z§(_loc5_) / 255;
               _loc6_.blueMultiplier = §]Z§.§?P§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§,-§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§=3§.setPixel(0,0,param1.color);
               _loc7_ = this.§=3§;
               this.§<0§.a *= param1.initialWidth;
               this.§<0§.b *= param1.initialWidth;
               this.§<0§.c *= param1.initialHeight;
               this.§<0§.d *= param1.initialHeight;
            }
            this.§"B§.draw(_loc7_,this.§<0§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§"B§)
         {
            if(this.§"B§.width != this.§,l§ || this.§"B§.height != this.§!>§)
            {
               this.§"B§.dispose();
               this.§"B§ = null;
            }
            else
            {
               this.§"B§.fillRect(this.§"B§.rect,4278190080 | param2);
            }
         }
         if(this.§"B§ == null && this.§,l§ > 0 && this.§!>§ > 0)
         {
            this.§"B§ = new BitmapData(this.§,l§,this.§!>§,true,4278190080 | param2);
         }
         if(this.§"B§)
         {
            this.§"B§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§"B§)
         {
            this.§"B§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§,l§ = param1;
         this.§!>§ = param2;
         this.§=H§ = param3;
         this.§@F§ = param4;
      }
   }
}
