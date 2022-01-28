package §6p§
{
   import §3W§.§`!h§;
   import §7R§.Texture;
   import §default§.§^$§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §<!7§ extends §5!W§
   {
       
      
      private var §6!q§:BitmapData;
      
      private var § +§:int = 0;
      
      private var §^5§:int = 0;
      
      private var §="2§:Number = 1.0;
      
      private var §3n§:Number = 1.0;
      
      private var §<$§:BitmapData;
      
      private var §'`§:Vector.<Number>;
      
      private var §&R§:Matrix;
      
      private var § q§:ColorTransform;
      
      public function §<!7§()
      {
         this.§'`§ = new Vector.<Number>(16);
         this.§&R§ = new Matrix();
         this.§ q§ = new ColorTransform();
         super();
         this.§<$§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§6!q§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§<$§)
         {
            this.§<$§.dispose();
            this.§<$§ = null;
         }
      }
      
      override public function batchQuad(param1:§^$§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§6!q§)
         {
            §`!F§.copyRawDataTo(this.§'`§,0);
            this.§&R§.setTo(this.§'`§[0],this.§'`§[1],this.§'`§[4],this.§'`§[5],this.§'`§[12],this.§'`§[13]);
            this.§&R§.scale(this.§="2§,this.§3n§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§ q§).redMultiplier = §`!h§.§2!,§(_loc5_) / 255;
               _loc6_.greenMultiplier = §`!h§.§`"<§(_loc5_) / 255;
               _loc6_.blueMultiplier = §`!h§.§]&§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§ q§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§<$§.setPixel(0,0,param1.color);
               _loc7_ = this.§<$§;
               this.§&R§.a *= param1.§?!k§;
               this.§&R§.b *= param1.§?!k§;
               this.§&R§.c *= param1.§ !_§;
               this.§&R§.d *= param1.§ !_§;
            }
            this.§6!q§.draw(_loc7_,this.§&R§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§6!q§)
         {
            if(this.§6!q§.width != this.§ +§ || this.§6!q§.height != this.§^5§)
            {
               this.§6!q§.dispose();
               this.§6!q§ = null;
            }
            else
            {
               this.§6!q§.fillRect(this.§6!q§.rect,4278190080 | param2);
            }
         }
         if(this.§6!q§ == null && this.§ +§ > 0 && this.§^5§ > 0)
         {
            this.§6!q§ = new BitmapData(this.§ +§,this.§^5§,true,4278190080 | param2);
         }
         if(this.§6!q§)
         {
            this.§6!q§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§6!q§)
         {
            this.§6!q§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§ +§ = param1;
         this.§^5§ = param2;
         this.§="2§ = param3;
         this.§3n§ = param4;
      }
   }
}
