package §>w§
{
   import §"`§.Texture;
   import §#!5§.§!B§;
   import §4G§.§5T§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §]b§ extends §"!,§
   {
       
      
      private var §3s§:BitmapData;
      
      private var §2!7§:int = 0;
      
      private var §=!%§:int = 0;
      
      private var §,d§:Number = 1.0;
      
      private var §`M§:Number = 1.0;
      
      private var §2p§:BitmapData;
      
      private var §75§:Vector.<Number>;
      
      private var §`?§:Matrix;
      
      private var §%!%§:ColorTransform;
      
      public function §]b§()
      {
         this.§75§ = new Vector.<Number>(16);
         this.§`?§ = new Matrix();
         this.§%!%§ = new ColorTransform();
         super();
         this.§2p§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§3s§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§2p§)
         {
            this.§2p§.dispose();
            this.§2p§ = null;
         }
      }
      
      override public function batchQuad(param1:§5T§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§3s§)
         {
            §>z§.copyRawDataTo(this.§75§,0);
            this.§`?§.setTo(this.§75§[0],this.§75§[1],this.§75§[4],this.§75§[5],this.§75§[12],this.§75§[13]);
            this.§`?§.scale(this.§,d§,this.§`M§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§%!%§).redMultiplier = §!B§.§"!@§(_loc5_) / 255;
               _loc6_.greenMultiplier = §!B§.§>!#§(_loc5_) / 255;
               _loc6_.blueMultiplier = §!B§.§=f§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§%!%§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§2p§.setPixel(0,0,param1.color);
               _loc7_ = this.§2p§;
               this.§`?§.a *= param1.§%>§;
               this.§`?§.b *= param1.§%>§;
               this.§`?§.c *= param1.§%n§;
               this.§`?§.d *= param1.§%n§;
            }
            this.§3s§.draw(_loc7_,this.§`?§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§3s§)
         {
            if(this.§3s§.width != this.§2!7§ || this.§3s§.height != this.§=!%§)
            {
               this.§3s§.dispose();
               this.§3s§ = null;
            }
            else
            {
               this.§3s§.fillRect(this.§3s§.rect,4278190080 | param2);
            }
         }
         if(this.§3s§ == null && this.§2!7§ > 0 && this.§=!%§ > 0)
         {
            this.§3s§ = new BitmapData(this.§2!7§,this.§=!%§,true,4278190080 | param2);
         }
         if(this.§3s§)
         {
            this.§3s§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§3s§)
         {
            this.§3s§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§2!7§ = param1;
         this.§=!%§ = param2;
         this.§,d§ = param3;
         this.§`M§ = param4;
      }
   }
}
