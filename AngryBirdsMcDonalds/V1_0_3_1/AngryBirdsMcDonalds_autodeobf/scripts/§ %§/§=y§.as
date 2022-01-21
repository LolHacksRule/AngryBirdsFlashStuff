package § %§
{
   import §&Y§.Texture;
   import §&c§.§2!]§;
   import §=G§.§3!%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §=y§ extends §3!e§
   {
       
      
      private var §,!6§:BitmapData;
      
      private var §5]§:int = 0;
      
      private var §<!D§:int = 0;
      
      private var §]!_§:Number = 1.0;
      
      private var §>!]§:Number = 1.0;
      
      private var §]h§:BitmapData;
      
      private var §!!e§:Vector.<Number>;
      
      private var §<i§:Matrix;
      
      private var §'6§:ColorTransform;
      
      public function §=y§()
      {
         this.§!!e§ = new Vector.<Number>(16);
         this.§<i§ = new Matrix();
         this.§'6§ = new ColorTransform();
         super();
         this.§]h§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§,!6§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§]h§)
         {
            this.§]h§.dispose();
            this.§]h§ = null;
         }
      }
      
      override public function batchQuad(param1:§2!]§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§,!6§)
         {
            §+J§.copyRawDataTo(this.§!!e§,0);
            this.§<i§.setTo(this.§!!e§[0],this.§!!e§[1],this.§!!e§[4],this.§!!e§[5],this.§!!e§[12],this.§!!e§[13]);
            this.§<i§.scale(this.§]!_§,this.§>!]§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§'6§).redMultiplier = §3!%§.§[s§(_loc5_) / 255;
               _loc6_.greenMultiplier = §3!%§.§^!>§(_loc5_) / 255;
               _loc6_.blueMultiplier = §3!%§.§=Q§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§'6§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§]h§.setPixel(0,0,param1.color);
               _loc7_ = this.§]h§;
               this.§<i§.a *= param1.§';§;
               this.§<i§.b *= param1.§';§;
               this.§<i§.c *= param1.§!!C§;
               this.§<i§.d *= param1.§!!C§;
            }
            this.§,!6§.draw(_loc7_,this.§<i§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§,!6§)
         {
            if(this.§,!6§.width != this.§5]§ || this.§,!6§.height != this.§<!D§)
            {
               this.§,!6§.dispose();
               this.§,!6§ = null;
            }
            else
            {
               this.§,!6§.fillRect(this.§,!6§.rect,4278190080 | param2);
            }
         }
         if(this.§,!6§ == null && this.§5]§ > 0 && this.§<!D§ > 0)
         {
            this.§,!6§ = new BitmapData(this.§5]§,this.§<!D§,true,4278190080 | param2);
         }
         if(this.§,!6§)
         {
            this.§,!6§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§,!6§)
         {
            this.§,!6§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§5]§ = param1;
         this.§<!D§ = param2;
         this.§]!_§ = param3;
         this.§>!]§ = param4;
      }
   }
}
