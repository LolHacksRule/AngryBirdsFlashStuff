package §9]§
{
   import §%Q§.§`!C§;
   import §<!$§.§6f§;
   import §@'§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §+i§ extends §0`§
   {
       
      
      private var §%D§:BitmapData;
      
      private var §<6§:int = 0;
      
      private var §;!"§:int = 0;
      
      private var §1!A§:Number = 1.0;
      
      private var §[!R§:Number = 1.0;
      
      private var set:BitmapData;
      
      private var §[$§:Vector.<Number>;
      
      private var §-!G§:Matrix;
      
      private var §7!A§:ColorTransform;
      
      public function §+i§()
      {
         this.§[$§ = new Vector.<Number>(16);
         this.§-!G§ = new Matrix();
         this.§7!A§ = new ColorTransform();
         super();
         this.set = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§%D§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.set)
         {
            this.set.dispose();
            this.set = null;
         }
      }
      
      override public function batchQuad(param1:§6f§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§%D§)
         {
            §1Y§.copyRawDataTo(this.§[$§,0);
            this.§-!G§.setTo(this.§[$§[0],this.§[$§[1],this.§[$§[4],this.§[$§[5],this.§[$§[12],this.§[$§[13]);
            this.§-!G§.scale(this.§1!A§,this.§[!R§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§7!A§).redMultiplier = §`!C§.§,!"§(_loc5_) / 255;
               _loc6_.greenMultiplier = §`!C§.§1f§(_loc5_) / 255;
               _loc6_.blueMultiplier = §`!C§.§]!Y§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§7!A§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.set.setPixel(0,0,param1.color);
               _loc7_ = this.set;
               this.§-!G§.a *= param1.§ !O§;
               this.§-!G§.b *= param1.§ !O§;
               this.§-!G§.c *= param1.§9!_§;
               this.§-!G§.d *= param1.§9!_§;
            }
            this.§%D§.draw(_loc7_,this.§-!G§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§%D§)
         {
            if(this.§%D§.width != this.§<6§ || this.§%D§.height != this.§;!"§)
            {
               this.§%D§.dispose();
               this.§%D§ = null;
            }
            else
            {
               this.§%D§.fillRect(this.§%D§.rect,4278190080 | param2);
            }
         }
         if(this.§%D§ == null && this.§<6§ > 0 && this.§;!"§ > 0)
         {
            this.§%D§ = new BitmapData(this.§<6§,this.§;!"§,true,4278190080 | param2);
         }
         if(this.§%D§)
         {
            this.§%D§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§%D§)
         {
            this.§%D§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§<6§ = param1;
         this.§;!"§ = param2;
         this.§1!A§ = param3;
         this.§[!R§ = param4;
      }
   }
}
