package §9!2§
{
   import §2!+§.§[t§;
   import §<-§.Texture;
   import §<k§.§!1§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §^9§ extends §>P§
   {
       
      
      private var §<!E§:BitmapData;
      
      private var §3W§:int = 0;
      
      private var §3!7§:int = 0;
      
      private var §-!A§:Number = 1.0;
      
      private var §7A§:Number = 1.0;
      
      private var §=E§:BitmapData;
      
      private var §+!,§:Vector.<Number>;
      
      private var §[j§:Matrix;
      
      private var §"!#§:ColorTransform;
      
      public function §^9§()
      {
         this.§+!,§ = new Vector.<Number>(16);
         this.§[j§ = new Matrix();
         this.§"!#§ = new ColorTransform();
         super();
         this.§=E§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§<!E§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§=E§)
         {
            this.§=E§.dispose();
            this.§=E§ = null;
         }
      }
      
      override public function batchQuad(param1:§!1§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§<!E§)
         {
            §3w§.copyRawDataTo(this.§+!,§,0);
            this.§[j§.setTo(this.§+!,§[0],this.§+!,§[1],this.§+!,§[4],this.§+!,§[5],this.§+!,§[12],this.§+!,§[13]);
            this.§[j§.scale(this.§-!A§,this.§7A§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§"!#§).redMultiplier = §[t§.§4!<§(_loc5_) / 255;
               _loc6_.greenMultiplier = §[t§.§=!>§(_loc5_) / 255;
               _loc6_.blueMultiplier = §[t§.§-g§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§"!#§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§=E§.setPixel(0,0,param1.color);
               _loc7_ = this.§=E§;
               this.§[j§.a *= param1.initialWidth;
               this.§[j§.b *= param1.initialWidth;
               this.§[j§.c *= param1.initialHeight;
               this.§[j§.d *= param1.initialHeight;
            }
            this.§<!E§.draw(_loc7_,this.§[j§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§<!E§)
         {
            if(this.§<!E§.width != this.§3W§ || this.§<!E§.height != this.§3!7§)
            {
               this.§<!E§.dispose();
               this.§<!E§ = null;
            }
            else
            {
               this.§<!E§.fillRect(this.§<!E§.rect,4278190080 | param2);
            }
         }
         if(this.§<!E§ == null && this.§3W§ > 0 && this.§3!7§ > 0)
         {
            this.§<!E§ = new BitmapData(this.§3W§,this.§3!7§,true,4278190080 | param2);
         }
         if(this.§<!E§)
         {
            this.§<!E§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§<!E§)
         {
            this.§<!E§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§3W§ = param1;
         this.§3!7§ = param2;
         this.§-!A§ = param3;
         this.§7A§ = param4;
      }
   }
}
