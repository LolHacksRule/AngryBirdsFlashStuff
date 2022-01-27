package §5J§
{
   import §#M§.§99§;
   import §0l§.Texture;
   import §3H§.§!q§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §^m§ extends §4!3§
   {
       
      
      private var §[a§:BitmapData;
      
      private var §0!;§:int = 0;
      
      private var §9!L§:int = 0;
      
      private var §%Y§:Number = 1.0;
      
      private var §57§:Number = 1.0;
      
      private var §??§:BitmapData;
      
      private var §6^§:Vector.<Number>;
      
      private var §^?§:Matrix;
      
      private var §'!L§:ColorTransform;
      
      public function §^m§()
      {
         this.§6^§ = new Vector.<Number>(16);
         this.§^?§ = new Matrix();
         this.§'!L§ = new ColorTransform();
         super();
         this.§??§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§[a§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§??§)
         {
            this.§??§.dispose();
            this.§??§ = null;
         }
      }
      
      override public function batchQuad(param1:§!q§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§[a§)
         {
            §[5§.copyRawDataTo(this.§6^§,0);
            this.§^?§.setTo(this.§6^§[0],this.§6^§[1],this.§6^§[4],this.§6^§[5],this.§6^§[12],this.§6^§[13]);
            this.§^?§.scale(this.§%Y§,this.§57§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§'!L§).redMultiplier = §99§.§8`§(_loc5_) / 255;
               _loc6_.greenMultiplier = §99§.§[3§(_loc5_) / 255;
               _loc6_.blueMultiplier = §99§.§<K§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§'!L§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§??§.setPixel(0,0,param1.color);
               _loc7_ = this.§??§;
               this.§^?§.a *= param1.§+!%§;
               this.§^?§.b *= param1.§+!%§;
               this.§^?§.c *= param1.§?8§;
               this.§^?§.d *= param1.§?8§;
            }
            this.§[a§.draw(_loc7_,this.§^?§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§[a§)
         {
            if(this.§[a§.width != this.§0!;§ || this.§[a§.height != this.§9!L§)
            {
               this.§[a§.dispose();
               this.§[a§ = null;
            }
            else
            {
               this.§[a§.fillRect(this.§[a§.rect,4278190080 | param2);
            }
         }
         if(this.§[a§ == null && this.§0!;§ > 0 && this.§9!L§ > 0)
         {
            this.§[a§ = new BitmapData(this.§0!;§,this.§9!L§,true,4278190080 | param2);
         }
         if(this.§[a§)
         {
            this.§[a§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§[a§)
         {
            this.§[a§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§0!;§ = param1;
         this.§9!L§ = param2;
         this.§%Y§ = param3;
         this.§57§ = param4;
      }
   }
}
