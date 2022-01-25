package §+&§
{
   import §&!9§.§7!D§;
   import §6!4§.Texture;
   import §@!a§.§`!#§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §3y§ extends §;J§
   {
       
      
      private var §6!0§:BitmapData;
      
      private var §@!,§:int = 0;
      
      private var §!U§:int = 0;
      
      private var §=6§:Number = 1.0;
      
      private var §+!=§:Number = 1.0;
      
      private var §8!a§:BitmapData;
      
      private var §[!Y§:Vector.<Number>;
      
      private var §<b§:Matrix;
      
      private var §;&§:ColorTransform;
      
      public function §3y§()
      {
         this.§[!Y§ = new Vector.<Number>(16);
         this.§<b§ = new Matrix();
         this.§;&§ = new ColorTransform();
         super();
         this.§8!a§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§6!0§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§8!a§)
         {
            this.§8!a§.dispose();
            this.§8!a§ = null;
         }
      }
      
      override public function batchQuad(param1:§7!D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§6!0§)
         {
            §7?§.copyRawDataTo(this.§[!Y§,0);
            this.§<b§.setTo(this.§[!Y§[0],this.§[!Y§[1],this.§[!Y§[4],this.§[!Y§[5],this.§[!Y§[12],this.§[!Y§[13]);
            this.§<b§.scale(this.§=6§,this.§+!=§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§;&§).redMultiplier = §`!#§.§do §(_loc5_) / 255;
               _loc6_.greenMultiplier = §`!#§.§<!;§(_loc5_) / 255;
               _loc6_.blueMultiplier = §`!#§.§27§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§;&§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§8!a§.setPixel(0,0,param1.color);
               _loc7_ = this.§8!a§;
               this.§<b§.a *= param1.§[]§;
               this.§<b§.b *= param1.§[]§;
               this.§<b§.c *= param1.§3!;§;
               this.§<b§.d *= param1.§3!;§;
            }
            this.§6!0§.draw(_loc7_,this.§<b§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§6!0§)
         {
            if(this.§6!0§.width != this.§@!,§ || this.§6!0§.height != this.§!U§)
            {
               this.§6!0§.dispose();
               this.§6!0§ = null;
            }
            else
            {
               this.§6!0§.fillRect(this.§6!0§.rect,4278190080 | param2);
            }
         }
         if(this.§6!0§ == null && this.§@!,§ > 0 && this.§!U§ > 0)
         {
            this.§6!0§ = new BitmapData(this.§@!,§,this.§!U§,true,4278190080 | param2);
         }
         if(this.§6!0§)
         {
            this.§6!0§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§6!0§)
         {
            this.§6!0§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§@!,§ = param1;
         this.§!U§ = param2;
         this.§=6§ = param3;
         this.§+!=§ = param4;
      }
   }
}
