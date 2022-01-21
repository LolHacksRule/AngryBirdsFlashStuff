package §"v§
{
   import §2!g§.§2c§;
   import §=E§.§0!0§;
   import §@j§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §@L§ extends §&!i§
   {
       
      
      private var §'!0§:BitmapData;
      
      private var §7R§:int = 0;
      
      private var §#!]§:int = 0;
      
      private var §]X§:Number = 1.0;
      
      private var §84§:Number = 1.0;
      
      private var §4!Q§:BitmapData;
      
      private var §6@§:Vector.<Number>;
      
      private var §,!5§:Matrix;
      
      private var §#A§:ColorTransform;
      
      public function §@L§()
      {
         this.§6@§ = new Vector.<Number>(16);
         this.§,!5§ = new Matrix();
         this.§#A§ = new ColorTransform();
         super();
         this.§4!Q§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§'!0§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§4!Q§)
         {
            this.§4!Q§.dispose();
            this.§4!Q§ = null;
         }
      }
      
      override public function batchQuad(param1:§2c§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§'!0§)
         {
            §"e§.copyRawDataTo(this.§6@§,0);
            this.§,!5§.setTo(this.§6@§[0],this.§6@§[1],this.§6@§[4],this.§6@§[5],this.§6@§[12],this.§6@§[13]);
            this.§,!5§.scale(this.§]X§,this.§84§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§#A§).redMultiplier = §0!0§.§3!0§(_loc5_) / 255;
               _loc6_.greenMultiplier = §0!0§.§%0§(_loc5_) / 255;
               _loc6_.blueMultiplier = §0!0§.§"!m§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§#A§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§4!Q§.setPixel(0,0,param1.color);
               _loc7_ = this.§4!Q§;
               this.§,!5§.a *= param1.§8v§;
               this.§,!5§.b *= param1.§8v§;
               this.§,!5§.c *= param1.§ #§;
               this.§,!5§.d *= param1.§ #§;
            }
            this.§'!0§.draw(_loc7_,this.§,!5§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§'!0§)
         {
            if(this.§'!0§.width != this.§7R§ || this.§'!0§.height != this.§#!]§)
            {
               this.§'!0§.dispose();
               this.§'!0§ = null;
            }
            else
            {
               this.§'!0§.fillRect(this.§'!0§.rect,4278190080 | param2);
            }
         }
         if(this.§'!0§ == null && this.§7R§ > 0 && this.§#!]§ > 0)
         {
            this.§'!0§ = new BitmapData(this.§7R§,this.§#!]§,true,4278190080 | param2);
         }
         if(this.§'!0§)
         {
            this.§'!0§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§'!0§)
         {
            this.§'!0§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§7R§ = param1;
         this.§#!]§ = param2;
         this.§]X§ = param3;
         this.§84§ = param4;
      }
   }
}
