package §+"6§
{
   import §<L§.Texture;
   import §>!+§.§73§;
   import §]&§.§[T§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §4g§ extends §2!6§
   {
       
      
      private var §"=§:BitmapData;
      
      private var §@";§:int = 0;
      
      private var §8;§:int = 0;
      
      private var §8"<§:Number = 1.0;
      
      private var §5!u§:Number = 1.0;
      
      private var §>-§:BitmapData;
      
      private var §4!0§:Vector.<Number>;
      
      private var §@a§:Matrix;
      
      private var §#`§:ColorTransform;
      
      public function §4g§()
      {
         this.§4!0§ = new Vector.<Number>(16);
         this.§@a§ = new Matrix();
         this.§#`§ = new ColorTransform();
         super();
         this.§>-§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§"=§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§>-§)
         {
            this.§>-§.dispose();
            this.§>-§ = null;
         }
      }
      
      override public function batchQuad(param1:§[T§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§"=§)
         {
            §+!T§.copyRawDataTo(this.§4!0§,0);
            this.§@a§.setTo(this.§4!0§[0],this.§4!0§[1],this.§4!0§[4],this.§4!0§[5],this.§4!0§[12],this.§4!0§[13]);
            this.§@a§.scale(this.§8"<§,this.§5!u§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§#`§).redMultiplier = §73§.§>l§(_loc5_) / 255;
               _loc6_.greenMultiplier = §73§.§]Q§(_loc5_) / 255;
               _loc6_.blueMultiplier = §73§.§[D§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§#`§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§>-§.setPixel(0,0,param1.color);
               _loc7_ = this.§>-§;
               this.§@a§.a *= param1.§?!c§;
               this.§@a§.b *= param1.§?!c§;
               this.§@a§.c *= param1.§'!§;
               this.§@a§.d *= param1.§'!§;
            }
            this.§"=§.draw(_loc7_,this.§@a§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§"=§)
         {
            if(this.§"=§.width != this.§@";§ || this.§"=§.height != this.§8;§)
            {
               this.§"=§.dispose();
               this.§"=§ = null;
            }
            else
            {
               this.§"=§.fillRect(this.§"=§.rect,4278190080 | param2);
            }
         }
         if(this.§"=§ == null && this.§@";§ > 0 && this.§8;§ > 0)
         {
            this.§"=§ = new BitmapData(this.§@";§,this.§8;§,true,4278190080 | param2);
         }
         if(this.§"=§)
         {
            this.§"=§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§"=§)
         {
            this.§"=§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§@";§ = param1;
         this.§8;§ = param2;
         this.§8"<§ = param3;
         this.§5!u§ = param4;
      }
   }
}
