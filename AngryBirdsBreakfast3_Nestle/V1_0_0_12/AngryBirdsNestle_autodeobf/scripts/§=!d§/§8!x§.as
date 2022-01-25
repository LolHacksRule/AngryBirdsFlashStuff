package §=!d§
{
   import §1Q§.§-"-§;
   import §6s§.Texture;
   import §`!B§.§]!J§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §8!x§ extends §`J§
   {
       
      
      private var §8@§:BitmapData;
      
      private var §1]§:int = 0;
      
      private var §^Z§:int = 0;
      
      private var §;!&§:Number = 1.0;
      
      private var §5""§:Number = 1.0;
      
      private var §?B§:BitmapData;
      
      private var §&P§:Vector.<Number>;
      
      private var §7P§:Matrix;
      
      private var §1K§:ColorTransform;
      
      public function §8!x§()
      {
         this.§&P§ = new Vector.<Number>(16);
         this.§7P§ = new Matrix();
         this.§1K§ = new ColorTransform();
         super();
         this.§?B§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§8@§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§?B§)
         {
            this.§?B§.dispose();
            this.§?B§ = null;
         }
      }
      
      override public function batchQuad(param1:§]!J§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§8@§)
         {
            §`!u§.copyRawDataTo(this.§&P§,0);
            this.§7P§.setTo(this.§&P§[0],this.§&P§[1],this.§&P§[4],this.§&P§[5],this.§&P§[12],this.§&P§[13]);
            this.§7P§.scale(this.§;!&§,this.§5""§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§1K§).redMultiplier = §-"-§.§&D§(_loc5_) / 255;
               _loc6_.greenMultiplier = §-"-§.§7"5§(_loc5_) / 255;
               _loc6_.blueMultiplier = §-"-§.§]!_§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§1K§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§?B§.setPixel(0,0,param1.color);
               _loc7_ = this.§?B§;
               this.§7P§.a *= param1.§9!7§;
               this.§7P§.b *= param1.§9!7§;
               this.§7P§.c *= param1.§3!Y§;
               this.§7P§.d *= param1.§3!Y§;
            }
            this.§8@§.draw(_loc7_,this.§7P§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§8@§)
         {
            if(this.§8@§.width != this.§1]§ || this.§8@§.height != this.§^Z§)
            {
               this.§8@§.dispose();
               this.§8@§ = null;
            }
            else
            {
               this.§8@§.fillRect(this.§8@§.rect,4278190080 | param2);
            }
         }
         if(this.§8@§ == null && this.§1]§ > 0 && this.§^Z§ > 0)
         {
            this.§8@§ = new BitmapData(this.§1]§,this.§^Z§,true,4278190080 | param2);
         }
         if(this.§8@§)
         {
            this.§8@§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§8@§)
         {
            this.§8@§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§1]§ = param1;
         this.§^Z§ = param2;
         this.§;!&§ = param3;
         this.§5""§ = param4;
      }
   }
}
