package §=!K§
{
   import § !^§.Texture;
   import §2![§.§7Q§;
   import §6!J§.§7s§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §;!k§ extends §>[§
   {
       
      
      private var § !!§:BitmapData;
      
      private var §8!R§:int = 0;
      
      private var §8!>§:int = 0;
      
      private var §2!T§:Number = 1.0;
      
      private var §7t§:Number = 1.0;
      
      private var §7!7§:BitmapData;
      
      private var §3g§:Vector.<Number>;
      
      private var §]a§:Matrix;
      
      private var §3;§:ColorTransform;
      
      public function §;!k§()
      {
         this.§3g§ = new Vector.<Number>(16);
         this.§]a§ = new Matrix();
         this.§3;§ = new ColorTransform();
         super();
         this.§7!7§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§ !!§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§7!7§)
         {
            this.§7!7§.dispose();
            this.§7!7§ = null;
         }
      }
      
      override public function batchQuad(param1:§7Q§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§ !!§)
         {
            §6P§.copyRawDataTo(this.§3g§,0);
            this.§]a§.setTo(this.§3g§[0],this.§3g§[1],this.§3g§[4],this.§3g§[5],this.§3g§[12],this.§3g§[13]);
            this.§]a§.scale(this.§2!T§,this.§7t§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§3;§).redMultiplier = §7s§.§<!K§(_loc5_) / 255;
               _loc6_.greenMultiplier = §7s§.§]!I§(_loc5_) / 255;
               _loc6_.blueMultiplier = §7s§.§ B§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§3;§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§7!7§.setPixel(0,0,param1.color);
               _loc7_ = this.§7!7§;
               this.§]a§.a *= param1.§+A§;
               this.§]a§.b *= param1.§+A§;
               this.§]a§.c *= param1.§#f§;
               this.§]a§.d *= param1.§#f§;
            }
            this.§ !!§.draw(_loc7_,this.§]a§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§ !!§)
         {
            if(this.§ !!§.width != this.§8!R§ || this.§ !!§.height != this.§8!>§)
            {
               this.§ !!§.dispose();
               this.§ !!§ = null;
            }
            else
            {
               this.§ !!§.fillRect(this.§ !!§.rect,4278190080 | param2);
            }
         }
         if(this.§ !!§ == null && this.§8!R§ > 0 && this.§8!>§ > 0)
         {
            this.§ !!§ = new BitmapData(this.§8!R§,this.§8!>§,true,4278190080 | param2);
         }
         if(this.§ !!§)
         {
            this.§ !!§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§ !!§)
         {
            this.§ !!§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§8!R§ = param1;
         this.§8!>§ = param2;
         this.§2!T§ = param3;
         this.§7t§ = param4;
      }
   }
}
