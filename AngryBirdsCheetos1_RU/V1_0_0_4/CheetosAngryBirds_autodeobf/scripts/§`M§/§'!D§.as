package §`M§
{
   import §1!A§.§@!O§;
   import §5L§.§8!8§;
   import §^n§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §'!D§ extends §[7§
   {
       
      
      private var §^U§:BitmapData;
      
      private var §8I§:int = 0;
      
      private var §6w§:int = 0;
      
      private var §[k§:Number = 1.0;
      
      private var § set§:Number = 1.0;
      
      private var §,b§:BitmapData;
      
      private var §41§:Vector.<Number>;
      
      private var §!R§:Matrix;
      
      private var §@!0§:ColorTransform;
      
      public function §'!D§()
      {
         this.§41§ = new Vector.<Number>(16);
         this.§!R§ = new Matrix();
         this.§@!0§ = new ColorTransform();
         super();
         this.§,b§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§^U§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§,b§)
         {
            this.§,b§.dispose();
            this.§,b§ = null;
         }
      }
      
      override public function batchQuad(param1:§@!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§^U§)
         {
            §;!@§.copyRawDataTo(this.§41§,0);
            this.§!R§.setTo(this.§41§[0],this.§41§[1],this.§41§[4],this.§41§[5],this.§41§[12],this.§41§[13]);
            this.§!R§.scale(this.§[k§,this.§ set§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§@!0§).redMultiplier = §8!8§.§1!@§(_loc5_) / 255;
               _loc6_.greenMultiplier = §8!8§.§;L§(_loc5_) / 255;
               _loc6_.blueMultiplier = §8!8§.§`!D§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§@!0§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§,b§.setPixel(0,0,param1.color);
               _loc7_ = this.§,b§;
               this.§!R§.a *= param1.§3! §;
               this.§!R§.b *= param1.§3! §;
               this.§!R§.c *= param1.§?a§;
               this.§!R§.d *= param1.§?a§;
            }
            this.§^U§.draw(_loc7_,this.§!R§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§^U§)
         {
            if(this.§^U§.width != this.§8I§ || this.§^U§.height != this.§6w§)
            {
               this.§^U§.dispose();
               this.§^U§ = null;
            }
            else
            {
               this.§^U§.fillRect(this.§^U§.rect,4278190080 | param2);
            }
         }
         if(this.§^U§ == null && this.§8I§ > 0 && this.§6w§ > 0)
         {
            this.§^U§ = new BitmapData(this.§8I§,this.§6w§,true,4278190080 | param2);
         }
         if(this.§^U§)
         {
            this.§^U§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§^U§)
         {
            this.§^U§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§8I§ = param1;
         this.§6w§ = param2;
         this.§[k§ = param3;
         this.§ set§ = param4;
      }
   }
}
