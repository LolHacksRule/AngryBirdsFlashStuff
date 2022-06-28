package §#!;§
{
   import §5!@§.Texture;
   import §9W§.§3g§;
   import §@e§.§=!2§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §1O§ extends §?h§
   {
       
      
      private var §7P§:BitmapData;
      
      private var §&!8§:int = 0;
      
      private var §^D§:int = 0;
      
      private var §6!2§:Number = 1.0;
      
      private var §-V§:Number = 1.0;
      
      private var §!9§:BitmapData;
      
      private var §^!C§:Vector.<Number>;
      
      private var §-!0§:Matrix;
      
      private var §=J§:ColorTransform;
      
      public function §1O§()
      {
         this.§^!C§ = new Vector.<Number>(16);
         this.§-!0§ = new Matrix();
         this.§=J§ = new ColorTransform();
         super();
         this.§!9§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§7P§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§!9§)
         {
            this.§!9§.dispose();
            this.§!9§ = null;
         }
      }
      
      override public function batchQuad(param1:§3g§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§7P§)
         {
            §9v§.copyRawDataTo(this.§^!C§,0);
            this.§-!0§.setTo(this.§^!C§[0],this.§^!C§[1],this.§^!C§[4],this.§^!C§[5],this.§^!C§[12],this.§^!C§[13]);
            this.§-!0§.scale(this.§6!2§,this.§-V§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§=J§).redMultiplier = §=!2§.§`_§(_loc5_) / 255;
               _loc6_.greenMultiplier = §=!2§.§"!5§(_loc5_) / 255;
               _loc6_.blueMultiplier = §=!2§.§+L§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§=J§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§!9§.setPixel(0,0,param1.color);
               _loc7_ = this.§!9§;
               this.§-!0§.a *= param1.initialWidth;
               this.§-!0§.b *= param1.initialWidth;
               this.§-!0§.c *= param1.initialHeight;
               this.§-!0§.d *= param1.initialHeight;
            }
            this.§7P§.draw(_loc7_,this.§-!0§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§7P§)
         {
            if(this.§7P§.width != this.§&!8§ || this.§7P§.height != this.§^D§)
            {
               this.§7P§.dispose();
               this.§7P§ = null;
            }
            else
            {
               this.§7P§.fillRect(this.§7P§.rect,4278190080 | param2);
            }
         }
         if(this.§7P§ == null && this.§&!8§ > 0 && this.§^D§ > 0)
         {
            this.§7P§ = new BitmapData(this.§&!8§,this.§^D§,true,4278190080 | param2);
         }
         if(this.§7P§)
         {
            this.§7P§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§7P§)
         {
            this.§7P§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§&!8§ = param1;
         this.§^D§ = param2;
         this.§6!2§ = param3;
         this.§-V§ = param4;
      }
   }
}
