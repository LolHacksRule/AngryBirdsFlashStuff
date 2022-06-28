package §2m§
{
   import §7H§.include;
   import §?]§.Texture;
   import §`g§.§ O§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §@!H§ extends §@>§
   {
       
      
      private var §`O§:BitmapData;
      
      private var §'!M§:int = 0;
      
      private var §4$§:int = 0;
      
      private var §-=§:Number = 1.0;
      
      private var §9!t§:Number = 1.0;
      
      private var §1!G§:BitmapData;
      
      private var §=#§:Vector.<Number>;
      
      private var §'!z§:Matrix;
      
      private var §?f§:ColorTransform;
      
      public function §@!H§()
      {
         this.§=#§ = new Vector.<Number>(16);
         this.§'!z§ = new Matrix();
         this.§?f§ = new ColorTransform();
         super();
         this.§1!G§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`O§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§1!G§)
         {
            this.§1!G§.dispose();
            this.§1!G§ = null;
         }
      }
      
      override public function batchQuad(param1:§ O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§`O§)
         {
            §06§.copyRawDataTo(this.§=#§,0);
            this.§'!z§.setTo(this.§=#§[0],this.§=#§[1],this.§=#§[4],this.§=#§[5],this.§=#§[12],this.§=#§[13]);
            this.§'!z§.scale(this.§-=§,this.§9!t§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§?f§).redMultiplier = include.§`#§(_loc5_) / 255;
               _loc6_.greenMultiplier = include.§^9§(_loc5_) / 255;
               _loc6_.blueMultiplier = include.§]7§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§?f§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§1!G§.setPixel(0,0,param1.color);
               _loc7_ = this.§1!G§;
               this.§'!z§.a *= param1.§@!8§;
               this.§'!z§.b *= param1.§@!8§;
               this.§'!z§.c *= param1.§0!v§;
               this.§'!z§.d *= param1.§0!v§;
            }
            this.§`O§.draw(_loc7_,this.§'!z§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§`O§)
         {
            if(this.§`O§.width != this.§'!M§ || this.§`O§.height != this.§4$§)
            {
               this.§`O§.dispose();
               this.§`O§ = null;
            }
            else
            {
               this.§`O§.fillRect(this.§`O§.rect,4278190080 | param2);
            }
         }
         if(this.§`O§ == null && this.§'!M§ > 0 && this.§4$§ > 0)
         {
            this.§`O§ = new BitmapData(this.§'!M§,this.§4$§,true,4278190080 | param2);
         }
         if(this.§`O§)
         {
            this.§`O§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§`O§)
         {
            this.§`O§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§'!M§ = param1;
         this.§4$§ = param2;
         this.§-=§ = param3;
         this.§9!t§ = param4;
      }
   }
}
