package §7!>§
{
   import §#!,§.§6!Y§;
   import §'7§.§!,§;
   import §6!J§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class BitmapDataRenderSupport extends RenderSupport
   {
       
      
      private var §!!d§:BitmapData;
      
      private var §#!;§:int = 0;
      
      private var §?#§:int = 0;
      
      private var §=X§:Number = 1.0;
      
      private var §<!J§:Number = 1.0;
      
      private var §0!f§:BitmapData;
      
      private var §3!C§:Vector.<Number>;
      
      private var §&4§:Matrix;
      
      private var § S§:ColorTransform;
      
      public function BitmapDataRenderSupport()
      {
         this.§3!C§ = new Vector.<Number>(16);
         this.§&4§ = new Matrix();
         this.§ S§ = new ColorTransform();
         super();
         this.§0!f§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§!!d§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§0!f§)
         {
            this.§0!f§.dispose();
            this.§0!f§ = null;
         }
      }
      
      override public function batchQuad(param1:§6!Y§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§!!d§)
         {
            §@-§.copyRawDataTo(this.§3!C§,0);
            this.§&4§.setTo(this.§3!C§[0],this.§3!C§[1],this.§3!C§[4],this.§3!C§[5],this.§3!C§[12],this.§3!C§[13]);
            this.§&4§.scale(this.§=X§,this.§<!J§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               _loc6_ = this.§ S§;
               _loc6_.redMultiplier = §!,§.§0,§(_loc5_) / 255;
               _loc6_.greenMultiplier = §!,§.§-[§(_loc5_) / 255;
               _loc6_.blueMultiplier = §!,§.§4A§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               _loc6_ = this.§ S§;
               _loc6_.alphaMultiplier = param2;
            }
            _loc7_ = param1.clippedBitmapData;
            if(_loc7_ == null)
            {
               this.§0!f§.setPixel(0,0,param1.color);
               _loc7_ = this.§0!f§;
               this.§&4§.a *= param1.§6!=§;
               this.§&4§.b *= param1.§6!=§;
               this.§&4§.c *= param1.§?s§;
               this.§&4§.d *= param1.§?s§;
            }
            this.§!!d§.draw(_loc7_,this.§&4§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§!!d§)
         {
            if(this.§!!d§.width != this.§#!;§ || this.§!!d§.height != this.§?#§)
            {
               this.§!!d§.dispose();
               this.§!!d§ = null;
            }
            else
            {
               this.§!!d§.fillRect(this.§!!d§.rect,4278190080 | param2);
            }
         }
         if(this.§!!d§ == null && this.§#!;§ > 0 && this.§?#§ > 0)
         {
            this.§!!d§ = new BitmapData(this.§#!;§,this.§?#§,true,4278190080 | param2);
         }
         if(this.§!!d§)
         {
            this.§!!d§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§!!d§)
         {
            this.§!!d§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§#!;§ = param1;
         this.§?#§ = param2;
         this.§=X§ = param3;
         this.§<!J§ = param4;
      }
   }
}
