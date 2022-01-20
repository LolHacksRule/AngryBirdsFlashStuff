package §%%§
{
   import §&7§.Texture;
   import §>!a§.§%!c§;
   import §`!n§.§ !i§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §5!-§ extends §,!<§
   {
       
      
      private var §5B§:BitmapData;
      
      private var §%C§:int = 0;
      
      private var §'!I§:int = 0;
      
      private var §`T§:Number = 1.0;
      
      private var §@!l§:Number = 1.0;
      
      private var §#C§:BitmapData;
      
      private var §=!#§:Vector.<Number>;
      
      private var §6'§:Matrix;
      
      private var §,f§:ColorTransform;
      
      public function §5!-§()
      {
         this.§=!#§ = new Vector.<Number>(16);
         this.§6'§ = new Matrix();
         this.§,f§ = new ColorTransform();
         super();
         this.§#C§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§5B§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§#C§)
         {
            this.§#C§.dispose();
            this.§#C§ = null;
         }
      }
      
      override public function batchQuad(param1:§ !i§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§5B§)
         {
            §1X§.copyRawDataTo(this.§=!#§,0);
            this.§6'§.setTo(this.§=!#§[0],this.§=!#§[1],this.§=!#§[4],this.§=!#§[5],this.§=!#§[12],this.§=!#§[13]);
            this.§6'§.scale(this.§`T§,this.§@!l§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§,f§).redMultiplier = §%!c§.§1r§(_loc5_) / 255;
               _loc6_.greenMultiplier = §%!c§.§^y§(_loc5_) / 255;
               _loc6_.blueMultiplier = §%!c§.§?M§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§,f§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§#C§.setPixel(0,0,param1.color);
               _loc7_ = this.§#C§;
               this.§6'§.a *= param1.§+!W§;
               this.§6'§.b *= param1.§+!W§;
               this.§6'§.c *= param1.§?Z§;
               this.§6'§.d *= param1.§?Z§;
            }
            this.§5B§.draw(_loc7_,this.§6'§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§5B§)
         {
            if(this.§5B§.width != this.§%C§ || this.§5B§.height != this.§'!I§)
            {
               this.§5B§.dispose();
               this.§5B§ = null;
            }
            else
            {
               this.§5B§.fillRect(this.§5B§.rect,4278190080 | param2);
            }
         }
         if(this.§5B§ == null && this.§%C§ > 0 && this.§'!I§ > 0)
         {
            this.§5B§ = new BitmapData(this.§%C§,this.§'!I§,true,4278190080 | param2);
         }
         if(this.§5B§)
         {
            this.§5B§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§5B§)
         {
            this.§5B§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§%C§ = param1;
         this.§'!I§ = param2;
         this.§`T§ = param3;
         this.§@!l§ = param4;
      }
   }
}
