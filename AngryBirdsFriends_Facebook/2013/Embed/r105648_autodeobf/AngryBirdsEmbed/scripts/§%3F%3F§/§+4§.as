package §??§
{
   import §"X§.Texture;
   import §;^§.§+a§;
   import §`8§.§,&§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §+4§ extends §!0§
   {
       
      
      private var §3v§:BitmapData;
      
      private var §<W§:int = 0;
      
      private var §!!1§:int = 0;
      
      private var §;&§:Number = 1.0;
      
      private var §[K§:Number = 1.0;
      
      private var §8_§:BitmapData;
      
      private var §9Z§:Vector.<Number>;
      
      private var §7k§:Matrix;
      
      private var §3=§:ColorTransform;
      
      public function §+4§()
      {
         this.§9Z§ = new Vector.<Number>(16);
         this.§7k§ = new Matrix();
         this.§3=§ = new ColorTransform();
         super();
         this.§8_§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§3v§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§8_§)
         {
            this.§8_§.dispose();
            this.§8_§ = null;
         }
      }
      
      override public function batchQuad(param1:§+a§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§3v§)
         {
            §2!>§.copyRawDataTo(this.§9Z§,0);
            this.§7k§.setTo(this.§9Z§[0],this.§9Z§[1],this.§9Z§[4],this.§9Z§[5],this.§9Z§[12],this.§9Z§[13]);
            this.§7k§.scale(this.§;&§,this.§[K§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§3=§).redMultiplier = §,&§.§^B§(_loc5_) / 255;
               _loc6_.greenMultiplier = §,&§.§^!;§(_loc5_) / 255;
               _loc6_.blueMultiplier = §,&§.§`!H§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§3=§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§8_§.setPixel(0,0,param1.color);
               _loc7_ = this.§8_§;
               this.§7k§.a *= param1.initialWidth;
               this.§7k§.b *= param1.initialWidth;
               this.§7k§.c *= param1.initialHeight;
               this.§7k§.d *= param1.initialHeight;
            }
            this.§3v§.draw(_loc7_,this.§7k§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§3v§)
         {
            if(this.§3v§.width != this.§<W§ || this.§3v§.height != this.§!!1§)
            {
               this.§3v§.dispose();
               this.§3v§ = null;
            }
            else
            {
               this.§3v§.fillRect(this.§3v§.rect,4278190080 | param2);
            }
         }
         if(this.§3v§ == null && this.§<W§ > 0 && this.§!!1§ > 0)
         {
            this.§3v§ = new BitmapData(this.§<W§,this.§!!1§,true,4278190080 | param2);
         }
         if(this.§3v§)
         {
            this.§3v§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§3v§)
         {
            this.§3v§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§<W§ = param1;
         this.§!!1§ = param2;
         this.§;&§ = param3;
         this.§[K§ = param4;
      }
   }
}
