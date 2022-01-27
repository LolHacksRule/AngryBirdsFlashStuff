package §1f§
{
   import §'@§.Texture;
   import §4"@§.§6p§;
   import §[4§.§1R§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §"H§ extends §&"@§
   {
       
      
      private var §"%§:BitmapData;
      
      private var §4!f§:int = 0;
      
      private var §4S§:int = 0;
      
      private var §"!P§:Number = 1.0;
      
      private var §2$§:Number = 1.0;
      
      private var §[!=§:BitmapData;
      
      private var §3"B§:Vector.<Number>;
      
      private var §@"&§:Matrix;
      
      private var §"L§:ColorTransform;
      
      public function §"H§()
      {
         this.§3"B§ = new Vector.<Number>(16);
         this.§@"&§ = new Matrix();
         this.§"L§ = new ColorTransform();
         super();
         this.§[!=§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§"%§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§[!=§)
         {
            this.§[!=§.dispose();
            this.§[!=§ = null;
         }
      }
      
      override public function batchQuad(param1:§6p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§"%§)
         {
            §&!]§.copyRawDataTo(this.§3"B§,0);
            this.§@"&§.setTo(this.§3"B§[0],this.§3"B§[1],this.§3"B§[4],this.§3"B§[5],this.§3"B§[12],this.§3"B§[13]);
            this.§@"&§.scale(this.§"!P§,this.§2$§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§"L§).redMultiplier = §1R§.§7!§(_loc5_) / 255;
               _loc6_.greenMultiplier = §1R§.§&_§(_loc5_) / 255;
               _loc6_.blueMultiplier = §1R§.§&^§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§"L§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§[!=§.setPixel(0,0,param1.color);
               _loc7_ = this.§[!=§;
               this.§@"&§.a *= param1.§#!u§;
               this.§@"&§.b *= param1.§#!u§;
               this.§@"&§.c *= param1.§3" §;
               this.§@"&§.d *= param1.§3" §;
            }
            this.§"%§.draw(_loc7_,this.§@"&§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§"%§)
         {
            if(this.§"%§.width != this.§4!f§ || this.§"%§.height != this.§4S§)
            {
               this.§"%§.dispose();
               this.§"%§ = null;
            }
            else
            {
               this.§"%§.fillRect(this.§"%§.rect,4278190080 | param2);
            }
         }
         if(this.§"%§ == null && this.§4!f§ > 0 && this.§4S§ > 0)
         {
            this.§"%§ = new BitmapData(this.§4!f§,this.§4S§,true,4278190080 | param2);
         }
         if(this.§"%§)
         {
            this.§"%§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§"%§)
         {
            this.§"%§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§4!f§ = param1;
         this.§4S§ = param2;
         this.§"!P§ = param3;
         this.§2$§ = param4;
      }
   }
}
