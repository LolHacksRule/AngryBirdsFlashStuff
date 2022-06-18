package §;%§
{
   import §2c§.§]e§;
   import §5@§.Texture;
   import §;q§.§-!>§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §@'§ extends §8S§
   {
       
      
      private var §1!0§:BitmapData;
      
      private var §;`§:int = 0;
      
      private var § !§:int = 0;
      
      private var §&$§:Number = 1.0;
      
      private var §@!6§:Number = 1.0;
      
      private var §7L§:BitmapData;
      
      private var §=,§:Vector.<Number>;
      
      private var §=C§:Matrix;
      
      private var §1Q§:ColorTransform;
      
      public function §@'§()
      {
         this.§=,§ = new Vector.<Number>(16);
         this.§=C§ = new Matrix();
         this.§1Q§ = new ColorTransform();
         super();
         this.§7L§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§1!0§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§7L§)
         {
            this.§7L§.dispose();
            this.§7L§ = null;
         }
      }
      
      override public function batchQuad(param1:§-!>§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§1!0§)
         {
            §#l§.copyRawDataTo(this.§=,§,0);
            this.§=C§.setTo(this.§=,§[0],this.§=,§[1],this.§=,§[4],this.§=,§[5],this.§=,§[12],this.§=,§[13]);
            this.§=C§.scale(this.§&$§,this.§@!6§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§1Q§).redMultiplier = §]e§.§&!6§(_loc5_) / 255;
               _loc6_.greenMultiplier = §]e§.§2U§(_loc5_) / 255;
               _loc6_.blueMultiplier = §]e§.§8!B§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§1Q§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§7L§.setPixel(0,0,param1.color);
               _loc7_ = this.§7L§;
               this.§=C§.a *= param1.initialWidth;
               this.§=C§.b *= param1.initialWidth;
               this.§=C§.c *= param1.initialHeight;
               this.§=C§.d *= param1.initialHeight;
            }
            this.§1!0§.draw(_loc7_,this.§=C§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§1!0§)
         {
            if(this.§1!0§.width != this.§;`§ || this.§1!0§.height != this.§ !§)
            {
               this.§1!0§.dispose();
               this.§1!0§ = null;
            }
            else
            {
               this.§1!0§.fillRect(this.§1!0§.rect,4278190080 | param2);
            }
         }
         if(this.§1!0§ == null && this.§;`§ > 0 && this.§ !§ > 0)
         {
            this.§1!0§ = new BitmapData(this.§;`§,this.§ !§,true,4278190080 | param2);
         }
         if(this.§1!0§)
         {
            this.§1!0§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§1!0§)
         {
            this.§1!0§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§;`§ = param1;
         this.§ !§ = param2;
         this.§&$§ = param3;
         this.§@!6§ = param4;
      }
   }
}
