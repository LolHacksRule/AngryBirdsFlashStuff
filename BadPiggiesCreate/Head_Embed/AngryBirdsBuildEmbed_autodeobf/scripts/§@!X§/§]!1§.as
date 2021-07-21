package §@!X§
{
   import §-!`§.§8!p§;
   import §0!-§.Texture;
   import §6x§.§!!Y§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §]!1§ extends §"W§
   {
       
      
      private var §4a§:BitmapData;
      
      private var §<!e§:int = 0;
      
      private var §<g§:int = 0;
      
      private var §^!'§:Number = 1.0;
      
      private var §8!?§:Number = 1.0;
      
      private var §&!?§:BitmapData;
      
      private var §^!h§:Vector.<Number>;
      
      private var §75§:Matrix;
      
      private var §<-§:ColorTransform;
      
      public function §]!1§()
      {
         this.§^!h§ = new Vector.<Number>(16);
         this.§75§ = new Matrix();
         this.§<-§ = new ColorTransform();
         super();
         this.§&!?§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§4a§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§&!?§)
         {
            this.§&!?§.dispose();
            this.§&!?§ = null;
         }
      }
      
      override public function batchQuad(param1:§8!p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§4a§)
         {
            §]N§.copyRawDataTo(this.§^!h§,0);
            this.§75§.setTo(this.§^!h§[0],this.§^!h§[1],this.§^!h§[4],this.§^!h§[5],this.§^!h§[12],this.§^!h§[13]);
            this.§75§.scale(this.§^!'§,this.§8!?§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§<-§).redMultiplier = §!!Y§.§&!;§(_loc5_) / 255;
               _loc6_.greenMultiplier = §!!Y§.§?!^§(_loc5_) / 255;
               _loc6_.blueMultiplier = §!!Y§.§3]§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§<-§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§&!?§.setPixel(0,0,param1.color);
               _loc7_ = this.§&!?§;
               this.§75§.a *= param1.initialWidth;
               this.§75§.b *= param1.initialWidth;
               this.§75§.c *= param1.initialHeight;
               this.§75§.d *= param1.initialHeight;
            }
            this.§4a§.draw(_loc7_,this.§75§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§4a§)
         {
            if(this.§4a§.width != this.§<!e§ || this.§4a§.height != this.§<g§)
            {
               this.§4a§.dispose();
               this.§4a§ = null;
            }
            else
            {
               this.§4a§.fillRect(this.§4a§.rect,4278190080 | param2);
            }
         }
         if(this.§4a§ == null && this.§<!e§ > 0 && this.§<g§ > 0)
         {
            this.§4a§ = new BitmapData(this.§<!e§,this.§<g§,true,4278190080 | param2);
         }
         if(this.§4a§)
         {
            this.§4a§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§4a§)
         {
            this.§4a§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§<!e§ = param1;
         this.§<g§ = param2;
         this.§^!'§ = param3;
         this.§8!?§ = param4;
      }
   }
}
