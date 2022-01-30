package §5!5§
{
   import §4!S§.Texture;
   import §="#§.§"!E§;
   import §^I§.§5! §;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §[!M§ extends §?"5§
   {
       
      
      private var §7!;§:BitmapData;
      
      private var §!!Y§:int = 0;
      
      private var §&"'§:int = 0;
      
      private var §#!g§:Number = 1.0;
      
      private var §`!I§:Number = 1.0;
      
      private var §<F§:BitmapData;
      
      private var §>!z§:Vector.<Number>;
      
      private var §0'§:Matrix;
      
      private var §@!+§:ColorTransform;
      
      public function §[!M§()
      {
         this.§>!z§ = new Vector.<Number>(16);
         this.§0'§ = new Matrix();
         this.§@!+§ = new ColorTransform();
         super();
         this.§<F§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§7!;§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§<F§)
         {
            this.§<F§.dispose();
            this.§<F§ = null;
         }
      }
      
      override public function batchQuad(param1:§5! §, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§7!;§)
         {
            §6!c§.copyRawDataTo(this.§>!z§,0);
            this.§0'§.setTo(this.§>!z§[0],this.§>!z§[1],this.§>!z§[4],this.§>!z§[5],this.§>!z§[12],this.§>!z§[13]);
            this.§0'§.scale(this.§#!g§,this.§`!I§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§@!+§).redMultiplier = §"!E§.§0F§(_loc5_) / 255;
               _loc6_.greenMultiplier = §"!E§.§=r§(_loc5_) / 255;
               _loc6_.blueMultiplier = §"!E§.§`!d§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§@!+§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§<F§.setPixel(0,0,param1.color);
               _loc7_ = this.§<F§;
               this.§0'§.a *= param1.§##§;
               this.§0'§.b *= param1.§##§;
               this.§0'§.c *= param1.§,!+§;
               this.§0'§.d *= param1.§,!+§;
            }
            this.§7!;§.draw(_loc7_,this.§0'§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§7!;§)
         {
            if(this.§7!;§.width != this.§!!Y§ || this.§7!;§.height != this.§&"'§)
            {
               this.§7!;§.dispose();
               this.§7!;§ = null;
            }
            else
            {
               this.§7!;§.fillRect(this.§7!;§.rect,4278190080 | param2);
            }
         }
         if(this.§7!;§ == null && this.§!!Y§ > 0 && this.§&"'§ > 0)
         {
            this.§7!;§ = new BitmapData(this.§!!Y§,this.§&"'§,true,4278190080 | param2);
         }
         if(this.§7!;§)
         {
            this.§7!;§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§7!;§)
         {
            this.§7!;§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§!!Y§ = param1;
         this.§&"'§ = param2;
         this.§#!g§ = param3;
         this.§`!I§ = param4;
      }
   }
}
