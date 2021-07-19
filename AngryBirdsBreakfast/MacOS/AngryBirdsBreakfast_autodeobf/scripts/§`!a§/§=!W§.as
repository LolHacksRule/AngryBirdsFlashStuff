package §`!a§
{
   import §%q§.Texture;
   import §+o§.§,!L§;
   import §6![§.§ !f§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §=!W§ extends §0L§
   {
       
      
      private var §!!U§:BitmapData;
      
      private var §;N§:int = 0;
      
      private var §+0§:int = 0;
      
      private var §>^§:Number = 1.0;
      
      private var §&!-§:Number = 1.0;
      
      private var §>!u§:BitmapData;
      
      private var §?!R§:Vector.<Number>;
      
      private var §"T§:Matrix;
      
      private var §>"§:ColorTransform;
      
      public function §=!W§()
      {
         this.§?!R§ = new Vector.<Number>(16);
         this.§"T§ = new Matrix();
         this.§>"§ = new ColorTransform();
         super();
         this.§>!u§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§!!U§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§>!u§)
         {
            this.§>!u§.dispose();
            this.§>!u§ = null;
         }
      }
      
      override public function batchQuad(param1:§ !f§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§!!U§)
         {
            § !K§.copyRawDataTo(this.§?!R§,0);
            this.§"T§.setTo(this.§?!R§[0],this.§?!R§[1],this.§?!R§[4],this.§?!R§[5],this.§?!R§[12],this.§?!R§[13]);
            this.§"T§.scale(this.§>^§,this.§&!-§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§>"§).redMultiplier = §,!L§.§3!2§(_loc5_) / 255;
               _loc6_.greenMultiplier = §,!L§.§3!B§(_loc5_) / 255;
               _loc6_.blueMultiplier = §,!L§.§>]§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§>"§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§>!u§.setPixel(0,0,param1.color);
               _loc7_ = this.§>!u§;
               this.§"T§.a *= param1.§ !v§;
               this.§"T§.b *= param1.§ !v§;
               this.§"T§.c *= param1.§4w§;
               this.§"T§.d *= param1.§4w§;
            }
            this.§!!U§.draw(_loc7_,this.§"T§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§!!U§)
         {
            if(this.§!!U§.width != this.§;N§ || this.§!!U§.height != this.§+0§)
            {
               this.§!!U§.dispose();
               this.§!!U§ = null;
            }
            else
            {
               this.§!!U§.fillRect(this.§!!U§.rect,4278190080 | param2);
            }
         }
         if(this.§!!U§ == null && this.§;N§ > 0 && this.§+0§ > 0)
         {
            this.§!!U§ = new BitmapData(this.§;N§,this.§+0§,true,4278190080 | param2);
         }
         if(this.§!!U§)
         {
            this.§!!U§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§!!U§)
         {
            this.§!!U§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§;N§ = param1;
         this.§+0§ = param2;
         this.§>^§ = param3;
         this.§&!-§ = param4;
      }
   }
}
