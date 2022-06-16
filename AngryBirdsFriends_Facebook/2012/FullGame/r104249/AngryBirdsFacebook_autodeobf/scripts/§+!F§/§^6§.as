package §+!F§
{
   import §8!8§.§+!w§;
   import §?7§.Texture;
   import §]!v§.§+!`§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §^6§ extends §<!l§
   {
       
      
      private var §%!C§:BitmapData;
      
      private var §#!w§:int = 0;
      
      private var §^s§:int = 0;
      
      private var §1"3§:Number = 1.0;
      
      private var §'N§:Number = 1.0;
      
      private var §;"'§:BitmapData;
      
      private var §`!`§:Vector.<Number>;
      
      private var §]`§:Matrix;
      
      private var § "G§:ColorTransform;
      
      public function §^6§()
      {
         this.§`!`§ = new Vector.<Number>(16);
         this.§]`§ = new Matrix();
         this.§ "G§ = new ColorTransform();
         super();
         this.§;"'§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§%!C§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§;"'§)
         {
            this.§;"'§.dispose();
            this.§;"'§ = null;
         }
      }
      
      override public function batchQuad(param1:§+!`§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§%!C§)
         {
            §<!w§.copyRawDataTo(this.§`!`§,0);
            this.§]`§.setTo(this.§`!`§[0],this.§`!`§[1],this.§`!`§[4],this.§`!`§[5],this.§`!`§[12],this.§`!`§[13]);
            this.§]`§.scale(this.§1"3§,this.§'N§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§ "G§).redMultiplier = §+!w§.§76§(_loc5_) / 255;
               _loc6_.greenMultiplier = §+!w§.§=+§(_loc5_) / 255;
               _loc6_.blueMultiplier = §+!w§.§5!K§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§ "G§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§;"'§.setPixel(0,0,param1.color);
               _loc7_ = this.§;"'§;
               this.§]`§.a *= param1.§9"1§;
               this.§]`§.b *= param1.§9"1§;
               this.§]`§.c *= param1.§ U§;
               this.§]`§.d *= param1.§ U§;
            }
            this.§%!C§.draw(_loc7_,this.§]`§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§%!C§)
         {
            if(this.§%!C§.width != this.§#!w§ || this.§%!C§.height != this.§^s§)
            {
               this.§%!C§.dispose();
               this.§%!C§ = null;
            }
            else
            {
               this.§%!C§.fillRect(this.§%!C§.rect,4278190080 | param2);
            }
         }
         if(this.§%!C§ == null && this.§#!w§ > 0 && this.§^s§ > 0)
         {
            this.§%!C§ = new BitmapData(this.§#!w§,this.§^s§,true,4278190080 | param2);
         }
         if(this.§%!C§)
         {
            this.§%!C§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§%!C§)
         {
            this.§%!C§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§#!w§ = param1;
         this.§^s§ = param2;
         this.§1"3§ = param3;
         this.§'N§ = param4;
      }
   }
}
