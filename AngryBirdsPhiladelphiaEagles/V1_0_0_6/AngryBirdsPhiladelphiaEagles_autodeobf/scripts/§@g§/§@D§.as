package §@g§
{
   import §7G§.§[!0§;
   import §86§.§=u§;
   import §[!A§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §@D§ extends §'U§
   {
       
      
      private var §`r§:BitmapData;
      
      private var §66§:int = 0;
      
      private var §0>§:int = 0;
      
      private var §2V§:Number = 1.0;
      
      private var §@!5§:Number = 1.0;
      
      private var § M§:BitmapData;
      
      private var §5I§:Vector.<Number>;
      
      private var §4[§:Matrix;
      
      private var §3@§:ColorTransform;
      
      public function §@D§()
      {
         this.§5I§ = new Vector.<Number>(16);
         this.§4[§ = new Matrix();
         this.§3@§ = new ColorTransform();
         super();
         this.§ M§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`r§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§ M§)
         {
            this.§ M§.dispose();
            this.§ M§ = null;
         }
      }
      
      override public function batchQuad(param1:§=u§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§`r§)
         {
            §2w§.copyRawDataTo(this.§5I§,0);
            this.§4[§.setTo(this.§5I§[0],this.§5I§[1],this.§5I§[4],this.§5I§[5],this.§5I§[12],this.§5I§[13]);
            this.§4[§.scale(this.§2V§,this.§@!5§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§3@§).redMultiplier = §[!0§.§-r§(_loc5_) / 255;
               _loc6_.greenMultiplier = §[!0§.§;!=§(_loc5_) / 255;
               _loc6_.blueMultiplier = §[!0§.§]&§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§3@§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§ M§.setPixel(0,0,param1.color);
               _loc7_ = this.§ M§;
               this.§4[§.a *= param1.§^!<§;
               this.§4[§.b *= param1.§^!<§;
               this.§4[§.c *= param1.§7!?§;
               this.§4[§.d *= param1.§7!?§;
            }
            this.§`r§.draw(_loc7_,this.§4[§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§`r§)
         {
            if(this.§`r§.width != this.§66§ || this.§`r§.height != this.§0>§)
            {
               this.§`r§.dispose();
               this.§`r§ = null;
            }
            else
            {
               this.§`r§.fillRect(this.§`r§.rect,4278190080 | param2);
            }
         }
         if(this.§`r§ == null && this.§66§ > 0 && this.§0>§ > 0)
         {
            this.§`r§ = new BitmapData(this.§66§,this.§0>§,true,4278190080 | param2);
         }
         if(this.§`r§)
         {
            this.§`r§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§`r§)
         {
            this.§`r§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§66§ = param1;
         this.§0>§ = param2;
         this.§2V§ = param3;
         this.§@!5§ = param4;
      }
   }
}
