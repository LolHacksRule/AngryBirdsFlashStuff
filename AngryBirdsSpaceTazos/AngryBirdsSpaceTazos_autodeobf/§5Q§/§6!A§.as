package §5Q§
{
   import §&!Z§.§@!a§;
   import §7!8§.§&!D§;
   import §`!#§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §6!A§ extends §%!t§
   {
       
      
      private var §2! §:BitmapData;
      
      private var §,"?§:int = 0;
      
      private var §>!G§:int = 0;
      
      private var §?!p§:Number = 1.0;
      
      private var §[!`§:Number = 1.0;
      
      private var §`4§:BitmapData;
      
      private var §1T§:Vector.<Number>;
      
      private var §`f§:Matrix;
      
      private var §0!f§:ColorTransform;
      
      public function §6!A§()
      {
         this.§1T§ = new Vector.<Number>(16);
         this.§`f§ = new Matrix();
         this.§0!f§ = new ColorTransform();
         super();
         this.§`4§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§2! §;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§`4§)
         {
            this.§`4§.dispose();
            this.§`4§ = null;
         }
      }
      
      override public function batchQuad(param1:§&!D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§2! §)
         {
            §!H§.copyRawDataTo(this.§1T§,0);
            this.§`f§.setTo(this.§1T§[0],this.§1T§[1],this.§1T§[4],this.§1T§[5],this.§1T§[12],this.§1T§[13]);
            this.§`f§.scale(this.§?!p§,this.§[!`§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§0!f§).redMultiplier = §@!a§.§4N§(_loc5_) / 255;
               _loc6_.greenMultiplier = §@!a§.§"g§(_loc5_) / 255;
               _loc6_.blueMultiplier = §@!a§.§?"7§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§0!f§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§`4§.setPixel(0,0,param1.color);
               _loc7_ = this.§`4§;
               this.§`f§.a *= param1.§41§;
               this.§`f§.b *= param1.§41§;
               this.§`f§.c *= param1.§@"5§;
               this.§`f§.d *= param1.§@"5§;
            }
            this.§2! §.draw(_loc7_,this.§`f§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§2! §)
         {
            if(this.§2! §.width != this.§,"?§ || this.§2! §.height != this.§>!G§)
            {
               this.§2! §.dispose();
               this.§2! § = null;
            }
            else
            {
               this.§2! §.fillRect(this.§2! §.rect,4278190080 | param2);
            }
         }
         if(this.§2! § == null && this.§,"?§ > 0 && this.§>!G§ > 0)
         {
            this.§2! § = new BitmapData(this.§,"?§,this.§>!G§,true,4278190080 | param2);
         }
         if(this.§2! §)
         {
            this.§2! §.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§2! §)
         {
            this.§2! §.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§,"?§ = param1;
         this.§>!G§ = param2;
         this.§?!p§ = param3;
         this.§[!`§ = param4;
      }
   }
}
