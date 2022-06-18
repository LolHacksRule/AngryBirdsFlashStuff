package §]_§
{
   import §-A§.Texture;
   import §;!,§.§>!R§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import §null §.§>U§;
   
   public class §]w§ extends §7o§
   {
       
      
      private var §,$§:BitmapData;
      
      private var §,G§:int = 0;
      
      private var § r§:int = 0;
      
      private var §`H§:Number = 1.0;
      
      private var §%!_§:Number = 1.0;
      
      private var §[L§:BitmapData;
      
      private var §->§:Vector.<Number>;
      
      private var § !0§:Matrix;
      
      private var §8@§:ColorTransform;
      
      public function §]w§()
      {
         this.§->§ = new Vector.<Number>(16);
         this.§ !0§ = new Matrix();
         this.§8@§ = new ColorTransform();
         super();
         this.§[L§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§,$§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§[L§)
         {
            this.§[L§.dispose();
            this.§[L§ = null;
         }
      }
      
      override public function batchQuad(param1:§>U§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§,$§)
         {
            §`!§.copyRawDataTo(this.§->§,0);
            this.§ !0§.setTo(this.§->§[0],this.§->§[1],this.§->§[4],this.§->§[5],this.§->§[12],this.§->§[13]);
            this.§ !0§.scale(this.§`H§,this.§%!_§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§8@§).redMultiplier = §>!R§.§+!_§(_loc5_) / 255;
               _loc6_.greenMultiplier = §>!R§.§[q§(_loc5_) / 255;
               _loc6_.blueMultiplier = §>!R§.§!<§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§8@§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§[L§.setPixel(0,0,param1.color);
               _loc7_ = this.§[L§;
               this.§ !0§.a *= param1.§[C§;
               this.§ !0§.b *= param1.§[C§;
               this.§ !0§.c *= param1.§2+§;
               this.§ !0§.d *= param1.§2+§;
            }
            this.§,$§.draw(_loc7_,this.§ !0§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§,$§)
         {
            if(this.§,$§.width != this.§,G§ || this.§,$§.height != this.§ r§)
            {
               this.§,$§.dispose();
               this.§,$§ = null;
            }
            else
            {
               this.§,$§.fillRect(this.§,$§.rect,4278190080 | param2);
            }
         }
         if(this.§,$§ == null && this.§,G§ > 0 && this.§ r§ > 0)
         {
            this.§,$§ = new BitmapData(this.§,G§,this.§ r§,true,4278190080 | param2);
         }
         if(this.§,$§)
         {
            this.§,$§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§,$§)
         {
            this.§,$§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§,G§ = param1;
         this.§ r§ = param2;
         this.§`H§ = param3;
         this.§%!_§ = param4;
      }
   }
}
