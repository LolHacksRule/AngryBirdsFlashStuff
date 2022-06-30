package §&L§
{
   import §!!S§.Texture;
   import §6!;§.§;o§;
   import §`>§.§^!5§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §'N§ extends §'I§
   {
       
      
      private var §8!I§:BitmapData;
      
      private var §5a§:int = 0;
      
      private var §?!V§:int = 0;
      
      private var §3h§:Number = 1.0;
      
      private var §'!6§:Number = 1.0;
      
      private var §%!<§:BitmapData;
      
      private var §7!b§:Vector.<Number>;
      
      private var §9k§:Matrix;
      
      private var §`a§:ColorTransform;
      
      public function §'N§()
      {
         this.§7!b§ = new Vector.<Number>(16);
         this.§9k§ = new Matrix();
         this.§`a§ = new ColorTransform();
         super();
         this.§%!<§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§8!I§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§%!<§)
         {
            this.§%!<§.dispose();
            this.§%!<§ = null;
         }
      }
      
      override public function batchQuad(param1:§;o§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§8!I§)
         {
            §9_§.copyRawDataTo(this.§7!b§,0);
            this.§9k§.setTo(this.§7!b§[0],this.§7!b§[1],this.§7!b§[4],this.§7!b§[5],this.§7!b§[12],this.§7!b§[13]);
            this.§9k§.scale(this.§3h§,this.§'!6§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§`a§).redMultiplier = §^!5§.§+!D§(_loc5_) / 255;
               _loc6_.greenMultiplier = §^!5§.static(_loc5_) / 255;
               _loc6_.blueMultiplier = §^!5§.§%D§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§`a§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§%!<§.setPixel(0,0,param1.color);
               _loc7_ = this.§%!<§;
               this.§9k§.a *= param1.§9!§;
               this.§9k§.b *= param1.§9!§;
               this.§9k§.c *= param1.§'7§;
               this.§9k§.d *= param1.§'7§;
            }
            this.§8!I§.draw(_loc7_,this.§9k§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§8!I§)
         {
            if(this.§8!I§.width != this.§5a§ || this.§8!I§.height != this.§?!V§)
            {
               this.§8!I§.dispose();
               this.§8!I§ = null;
            }
            else
            {
               this.§8!I§.fillRect(this.§8!I§.rect,4278190080 | param2);
            }
         }
         if(this.§8!I§ == null && this.§5a§ > 0 && this.§?!V§ > 0)
         {
            this.§8!I§ = new BitmapData(this.§5a§,this.§?!V§,true,4278190080 | param2);
         }
         if(this.§8!I§)
         {
            this.§8!I§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§8!I§)
         {
            this.§8!I§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§5a§ = param1;
         this.§?!V§ = param2;
         this.§3h§ = param3;
         this.§'!6§ = param4;
      }
   }
}
