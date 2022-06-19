package §`C§
{
   import §;! §.§[!'§;
   import §]!B§.Texture;
   import §]@§.§9!<§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §!T§ extends §'!N§
   {
       
      
      private var §1C§:BitmapData;
      
      private var §+!X§:int = 0;
      
      private var §?w§:int = 0;
      
      private var §7!P§:Number = 1.0;
      
      private var §!4§:Number = 1.0;
      
      private var §'!0§:BitmapData;
      
      private var §@k§:Vector.<Number>;
      
      private var §&§:Matrix;
      
      private var §8!4§:ColorTransform;
      
      public function §!T§()
      {
         this.§@k§ = new Vector.<Number>(16);
         this.§&§ = new Matrix();
         this.§8!4§ = new ColorTransform();
         super();
         this.§'!0§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§1C§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§'!0§)
         {
            this.§'!0§.dispose();
            this.§'!0§ = null;
         }
      }
      
      override public function batchQuad(param1:§9!<§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§1C§)
         {
            §7!V§.copyRawDataTo(this.§@k§,0);
            this.§&§.setTo(this.§@k§[0],this.§@k§[1],this.§@k§[4],this.§@k§[5],this.§@k§[12],this.§@k§[13]);
            this.§&§.scale(this.§7!P§,this.§!4§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§8!4§).redMultiplier = §[!'§.§,!6§(_loc5_) / 255;
               _loc6_.greenMultiplier = §[!'§.§`^§(_loc5_) / 255;
               _loc6_.blueMultiplier = §[!'§.§5R§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§8!4§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§'!0§.setPixel(0,0,param1.color);
               _loc7_ = this.§'!0§;
               this.§&§.a *= param1.§7X§;
               this.§&§.b *= param1.§7X§;
               this.§&§.c *= param1.§]%§;
               this.§&§.d *= param1.§]%§;
            }
            this.§1C§.draw(_loc7_,this.§&§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§1C§)
         {
            if(this.§1C§.width != this.§+!X§ || this.§1C§.height != this.§?w§)
            {
               this.§1C§.dispose();
               this.§1C§ = null;
            }
            else
            {
               this.§1C§.fillRect(this.§1C§.rect,4278190080 | param2);
            }
         }
         if(this.§1C§ == null && this.§+!X§ > 0 && this.§?w§ > 0)
         {
            this.§1C§ = new BitmapData(this.§+!X§,this.§?w§,true,4278190080 | param2);
         }
         if(this.§1C§)
         {
            this.§1C§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§1C§)
         {
            this.§1C§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§+!X§ = param1;
         this.§?w§ = param2;
         this.§7!P§ = param3;
         this.§!4§ = param4;
      }
   }
}
