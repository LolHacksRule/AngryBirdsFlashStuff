package §9!!§
{
   import §1"s§.§#"b§;
   import §3"e§.§!G§;
   import §<"L§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §5!B§ extends § _§
   {
       
      
      private var §7"A§:BitmapData;
      
      private var §2"W§:int = 0;
      
      private var §>!0§:int = 0;
      
      private var §5I§:Number = 1.0;
      
      private var §!!3§:Number = 1.0;
      
      private var §0";§:BitmapData;
      
      private var §4j§:Vector.<Number>;
      
      private var §>!>§:Matrix;
      
      private var §5"B§:ColorTransform;
      
      public function §5!B§()
      {
         this.§4j§ = new Vector.<Number>(16);
         this.§>!>§ = new Matrix();
         this.§5"B§ = new ColorTransform();
         super();
         this.§0";§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§7"A§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§0";§)
         {
            this.§0";§.dispose();
            this.§0";§ = null;
         }
      }
      
      override public function batchQuad(param1:§#"b§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§7"A§)
         {
            §=!n§.copyRawDataTo(this.§4j§,0);
            this.§>!>§.setTo(this.§4j§[0],this.§4j§[1],this.§4j§[4],this.§4j§[5],this.§4j§[12],this.§4j§[13]);
            this.§>!>§.scale(this.§5I§,this.§!!3§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§5"B§).redMultiplier = §!G§.§ !H§(_loc5_) / 255;
               _loc6_.greenMultiplier = §!G§.§+!7§(_loc5_) / 255;
               _loc6_.blueMultiplier = §!G§.§?V§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§5"B§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§0";§.setPixel(0,0,param1.color);
               _loc7_ = this.§0";§;
               this.§>!>§.a *= param1.§!"?§;
               this.§>!>§.b *= param1.§!"?§;
               this.§>!>§.c *= param1.§1"a§;
               this.§>!>§.d *= param1.§1"a§;
            }
            this.§7"A§.draw(_loc7_,this.§>!>§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§7"A§)
         {
            if(this.§7"A§.width != this.§2"W§ || this.§7"A§.height != this.§>!0§)
            {
               this.§7"A§.dispose();
               this.§7"A§ = null;
            }
            else
            {
               this.§7"A§.fillRect(this.§7"A§.rect,4278190080 | param2);
            }
         }
         if(this.§7"A§ == null && this.§2"W§ > 0 && this.§>!0§ > 0)
         {
            this.§7"A§ = new BitmapData(this.§2"W§,this.§>!0§,true,4278190080 | param2);
         }
         if(this.§7"A§)
         {
            this.§7"A§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§7"A§)
         {
            this.§7"A§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§2"W§ = param1;
         this.§>!0§ = param2;
         this.§5I§ = param3;
         this.§!!3§ = param4;
      }
   }
}
