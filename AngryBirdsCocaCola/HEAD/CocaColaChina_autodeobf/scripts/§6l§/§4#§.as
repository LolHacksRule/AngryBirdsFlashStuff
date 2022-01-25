package §6l§
{
   import § !K§.§&&§;
   import §"![§.Texture;
   import §9!^§.§83§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §4#§ extends §23§
   {
       
      
      private var §4!?§:BitmapData;
      
      private var §>!0§:int = 0;
      
      private var §&U§:int = 0;
      
      private var §07§:Number = 1.0;
      
      private var §4t§:Number = 1.0;
      
      private var §-!2§:BitmapData;
      
      private var §-!@§:Vector.<Number>;
      
      private var §]!0§:Matrix;
      
      private var §"!V§:ColorTransform;
      
      public function §4#§()
      {
         this.§-!@§ = new Vector.<Number>(16);
         this.§]!0§ = new Matrix();
         this.§"!V§ = new ColorTransform();
         super();
         this.§-!2§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§4!?§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§-!2§)
         {
            this.§-!2§.dispose();
            this.§-!2§ = null;
         }
      }
      
      override public function batchQuad(param1:§&&§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§4!?§)
         {
            §"'§.copyRawDataTo(this.§-!@§,0);
            this.§]!0§.setTo(this.§-!@§[0],this.§-!@§[1],this.§-!@§[4],this.§-!@§[5],this.§-!@§[12],this.§-!@§[13]);
            this.§]!0§.scale(this.§07§,this.§4t§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§"!V§).redMultiplier = §83§.§4i§(_loc5_) / 255;
               _loc6_.greenMultiplier = §83§.§use§(_loc5_) / 255;
               _loc6_.blueMultiplier = §83§.§3Q§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§"!V§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§-!2§.setPixel(0,0,param1.color);
               _loc7_ = this.§-!2§;
               this.§]!0§.a *= param1.§!@§;
               this.§]!0§.b *= param1.§!@§;
               this.§]!0§.c *= param1.§6!8§;
               this.§]!0§.d *= param1.§6!8§;
            }
            this.§4!?§.draw(_loc7_,this.§]!0§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§4!?§)
         {
            if(this.§4!?§.width != this.§>!0§ || this.§4!?§.height != this.§&U§)
            {
               this.§4!?§.dispose();
               this.§4!?§ = null;
            }
            else
            {
               this.§4!?§.fillRect(this.§4!?§.rect,4278190080 | param2);
            }
         }
         if(this.§4!?§ == null && this.§>!0§ > 0 && this.§&U§ > 0)
         {
            this.§4!?§ = new BitmapData(this.§>!0§,this.§&U§,true,4278190080 | param2);
         }
         if(this.§4!?§)
         {
            this.§4!?§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§4!?§)
         {
            this.§4!?§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§>!0§ = param1;
         this.§&U§ = param2;
         this.§07§ = param3;
         this.§4t§ = param4;
      }
   }
}
