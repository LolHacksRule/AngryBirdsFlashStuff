package §&#H§
{
   import §!!U§.§2"D§;
   import §&v§.Texture;
   import §=]§.§4"I§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §2a§ extends §%"H§
   {
       
      
      private var §["A§:BitmapData;
      
      private var §3#C§:int = 0;
      
      private var §+! §:int = 0;
      
      private var §<>§:Number = 1.0;
      
      private var §=0§:Number = 1.0;
      
      private var §;"o§:BitmapData;
      
      private var §+U§:Vector.<Number>;
      
      private var §4#Z§:Matrix;
      
      private var §^"K§:ColorTransform;
      
      public function §2a§()
      {
         this.§+U§ = new Vector.<Number>(16);
         this.§4#Z§ = new Matrix();
         this.§^"K§ = new ColorTransform();
         super();
         this.§;"o§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§["A§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§;"o§)
         {
            this.§;"o§.dispose();
            this.§;"o§ = null;
         }
      }
      
      override public function batchQuad(param1:§2"D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§["A§)
         {
            §&e§.copyRawDataTo(this.§+U§,0);
            this.§4#Z§.setTo(this.§+U§[0],this.§+U§[1],this.§+U§[4],this.§+U§[5],this.§+U§[12],this.§+U§[13]);
            this.§4#Z§.scale(this.§<>§,this.§=0§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§^"K§).redMultiplier = §4"I§.§7!0§(_loc5_) / 255;
               _loc6_.greenMultiplier = §4"I§.§=#Z§(_loc5_) / 255;
               _loc6_.blueMultiplier = §4"I§.§@H§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§^"K§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§;"o§.setPixel(0,0,param1.color);
               _loc7_ = this.§;"o§;
               this.§4#Z§.a *= param1.§9"#§;
               this.§4#Z§.b *= param1.§9"#§;
               this.§4#Z§.c *= param1.§2"U§;
               this.§4#Z§.d *= param1.§2"U§;
            }
            this.§["A§.draw(_loc7_,this.§4#Z§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§["A§)
         {
            if(this.§["A§.width != this.§3#C§ || this.§["A§.height != this.§+! §)
            {
               this.§["A§.dispose();
               this.§["A§ = null;
            }
            else
            {
               this.§["A§.fillRect(this.§["A§.rect,4278190080 | param2);
            }
         }
         if(this.§["A§ == null && this.§3#C§ > 0 && this.§+! § > 0)
         {
            this.§["A§ = new BitmapData(this.§3#C§,this.§+! §,true,4278190080 | param2);
         }
         if(this.§["A§)
         {
            this.§["A§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§["A§)
         {
            this.§["A§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§3#C§ = param1;
         this.§+! § = param2;
         this.§<>§ = param3;
         this.§=0§ = param4;
      }
   }
}
