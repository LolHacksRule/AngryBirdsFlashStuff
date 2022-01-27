package § "-§
{
   import §&"s§.Texture;
   import §7"G§.§5D§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import §use§.§-"z§;
   
   public class §+" § extends §"!_§
   {
       
      
      private var §1!e§:BitmapData;
      
      private var §else §:int = 0;
      
      private var § ;§:int = 0;
      
      private var §%"D§:Number = 1.0;
      
      private var §;q§:Number = 1.0;
      
      private var §>§:BitmapData;
      
      private var §,"+§:Vector.<Number>;
      
      private var §7"g§:Matrix;
      
      private var §4F§:ColorTransform;
      
      public function §+" §()
      {
         this.§,"+§ = new Vector.<Number>(16);
         this.§7"g§ = new Matrix();
         this.§4F§ = new ColorTransform();
         super();
         this.§>§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§1!e§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§>§)
         {
            this.§>§.dispose();
            this.§>§ = null;
         }
      }
      
      override public function batchQuad(param1:§-"z§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§1!e§)
         {
            §2!`§.copyRawDataTo(this.§,"+§,0);
            this.§7"g§.setTo(this.§,"+§[0],this.§,"+§[1],this.§,"+§[4],this.§,"+§[5],this.§,"+§[12],this.§,"+§[13]);
            this.§7"g§.scale(this.§%"D§,this.§;q§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§4F§).redMultiplier = §5D§.§>!s§(_loc5_) / 255;
               _loc6_.greenMultiplier = §5D§.§7r§(_loc5_) / 255;
               _loc6_.blueMultiplier = §5D§.§;E§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§4F§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§>§.setPixel(0,0,param1.color);
               _loc7_ = this.§>§;
               this.§7"g§.a *= param1.§1"H§;
               this.§7"g§.b *= param1.§1"H§;
               this.§7"g§.c *= param1.§>!v§;
               this.§7"g§.d *= param1.§>!v§;
            }
            this.§1!e§.draw(_loc7_,this.§7"g§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§1!e§)
         {
            if(this.§1!e§.width != this.§else § || this.§1!e§.height != this.§ ;§)
            {
               this.§1!e§.dispose();
               this.§1!e§ = null;
            }
            else
            {
               this.§1!e§.fillRect(this.§1!e§.rect,4278190080 | param2);
            }
         }
         if(this.§1!e§ == null && this.§else § > 0 && this.§ ;§ > 0)
         {
            this.§1!e§ = new BitmapData(this.§else §,this.§ ;§,true,4278190080 | param2);
         }
         if(this.§1!e§)
         {
            this.§1!e§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§1!e§)
         {
            this.§1!e§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§else § = param1;
         this.§ ;§ = param2;
         this.§%"D§ = param3;
         this.§;q§ = param4;
      }
   }
}
