package §-!§
{
   import §9!V§.§%!&§;
   import §;!Q§.§,r§;
   import §]p§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §%! § extends §3!5§
   {
       
      
      private var §3!J§:BitmapData;
      
      private var §?W§:int = 0;
      
      private var §9!5§:int = 0;
      
      private var §;!F§:Number = 1.0;
      
      private var §8!X§:Number = 1.0;
      
      private var §=!G§:BitmapData;
      
      private var §&!7§:Vector.<Number>;
      
      private var §[,§:Matrix;
      
      private var § case§:ColorTransform;
      
      public function §%! §()
      {
         this.§&!7§ = new Vector.<Number>(16);
         this.§[,§ = new Matrix();
         this.§ case§ = new ColorTransform();
         super();
         this.§=!G§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§3!J§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§=!G§)
         {
            this.§=!G§.dispose();
            this.§=!G§ = null;
         }
      }
      
      override public function batchQuad(param1:§,r§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§3!J§)
         {
            §#T§.copyRawDataTo(this.§&!7§,0);
            this.§[,§.setTo(this.§&!7§[0],this.§&!7§[1],this.§&!7§[4],this.§&!7§[5],this.§&!7§[12],this.§&!7§[13]);
            this.§[,§.scale(this.§;!F§,this.§8!X§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§ case§).redMultiplier = §%!&§.§'j§(_loc5_) / 255;
               _loc6_.greenMultiplier = §%!&§.§;!J§(_loc5_) / 255;
               _loc6_.blueMultiplier = §%!&§.§<!L§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§ case§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§=!G§.setPixel(0,0,param1.color);
               _loc7_ = this.§=!G§;
               this.§[,§.a *= param1.§+_§;
               this.§[,§.b *= param1.§+_§;
               this.§[,§.c *= param1.§1!V§;
               this.§[,§.d *= param1.§1!V§;
            }
            this.§3!J§.draw(_loc7_,this.§[,§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§3!J§)
         {
            if(this.§3!J§.width != this.§?W§ || this.§3!J§.height != this.§9!5§)
            {
               this.§3!J§.dispose();
               this.§3!J§ = null;
            }
            else
            {
               this.§3!J§.fillRect(this.§3!J§.rect,4278190080 | param2);
            }
         }
         if(this.§3!J§ == null && this.§?W§ > 0 && this.§9!5§ > 0)
         {
            this.§3!J§ = new BitmapData(this.§?W§,this.§9!5§,true,4278190080 | param2);
         }
         if(this.§3!J§)
         {
            this.§3!J§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§3!J§)
         {
            this.§3!J§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§?W§ = param1;
         this.§9!5§ = param2;
         this.§;!F§ = param3;
         this.§8!X§ = param4;
      }
   }
}
