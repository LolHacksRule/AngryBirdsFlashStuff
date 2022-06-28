package §catch§
{
   import §,G§.§"p§;
   import §,_§.§-!!§;
   import §7!=§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §+7§ extends §'d§
   {
       
      
      private var §6#§:BitmapData;
      
      private var §,J§:int = 0;
      
      private var §%W§:int = 0;
      
      private var §@E§:Number = 1.0;
      
      private var §0&§:Number = 1.0;
      
      private var §2x§:BitmapData;
      
      private var §`!H§:Vector.<Number>;
      
      private var §3]§:Matrix;
      
      private var §+o§:ColorTransform;
      
      public function §+7§()
      {
         this.§`!H§ = new Vector.<Number>(16);
         this.§3]§ = new Matrix();
         this.§+o§ = new ColorTransform();
         super();
         this.§2x§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§6#§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§2x§)
         {
            this.§2x§.dispose();
            this.§2x§ = null;
         }
      }
      
      override public function batchQuad(param1:§-!!§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§6#§)
         {
            §`I§.copyRawDataTo(this.§`!H§,0);
            this.§3]§.setTo(this.§`!H§[0],this.§`!H§[1],this.§`!H§[4],this.§`!H§[5],this.§`!H§[12],this.§`!H§[13]);
            this.§3]§.scale(this.§@E§,this.§0&§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§+o§).redMultiplier = §"p§.§9V§(_loc5_) / 255;
               _loc6_.greenMultiplier = §"p§.§5J§(_loc5_) / 255;
               _loc6_.blueMultiplier = §"p§.§@R§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§+o§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§2x§.setPixel(0,0,param1.color);
               _loc7_ = this.§2x§;
               this.§3]§.a *= param1.initialWidth;
               this.§3]§.b *= param1.initialWidth;
               this.§3]§.c *= param1.initialHeight;
               this.§3]§.d *= param1.initialHeight;
            }
            this.§6#§.draw(_loc7_,this.§3]§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§6#§)
         {
            if(this.§6#§.width != this.§,J§ || this.§6#§.height != this.§%W§)
            {
               this.§6#§.dispose();
               this.§6#§ = null;
            }
            else
            {
               this.§6#§.fillRect(this.§6#§.rect,4278190080 | param2);
            }
         }
         if(this.§6#§ == null && this.§,J§ > 0 && this.§%W§ > 0)
         {
            this.§6#§ = new BitmapData(this.§,J§,this.§%W§,true,4278190080 | param2);
         }
         if(this.§6#§)
         {
            this.§6#§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§6#§)
         {
            this.§6#§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§,J§ = param1;
         this.§%W§ = param2;
         this.§@E§ = param3;
         this.§0&§ = param4;
      }
   }
}
