package §=!6§
{
   import §"!t§.§,!r§;
   import §&!;§.Texture;
   import §-![§.§5!<§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §]0§ extends §]q§
   {
       
      
      private var §`!j§:BitmapData;
      
      private var §!"'§:int = 0;
      
      private var §6Q§:int = 0;
      
      private var § N§:Number = 1.0;
      
      private var §;a§:Number = 1.0;
      
      private var §5!R§:BitmapData;
      
      private var §1E§:Vector.<Number>;
      
      private var §]!T§:Matrix;
      
      private var §,!]§:ColorTransform;
      
      public function §]0§()
      {
         this.§1E§ = new Vector.<Number>(16);
         this.§]!T§ = new Matrix();
         this.§,!]§ = new ColorTransform();
         super();
         this.§5!R§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`!j§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§5!R§)
         {
            this.§5!R§.dispose();
            this.§5!R§ = null;
         }
      }
      
      override public function batchQuad(param1:§5!<§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§`!j§)
         {
            §#"5§.copyRawDataTo(this.§1E§,0);
            this.§]!T§.setTo(this.§1E§[0],this.§1E§[1],this.§1E§[4],this.§1E§[5],this.§1E§[12],this.§1E§[13]);
            this.§]!T§.scale(this.§ N§,this.§;a§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§,!]§).redMultiplier = §,!r§.§ !0§(_loc5_) / 255;
               _loc6_.greenMultiplier = §,!r§.§2!O§(_loc5_) / 255;
               _loc6_.blueMultiplier = §,!r§.§0"'§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§,!]§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§5!R§.setPixel(0,0,param1.color);
               _loc7_ = this.§5!R§;
               this.§]!T§.a *= param1.§3!T§;
               this.§]!T§.b *= param1.§3!T§;
               this.§]!T§.c *= param1.§<!W§;
               this.§]!T§.d *= param1.§<!W§;
            }
            this.§`!j§.draw(_loc7_,this.§]!T§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§`!j§)
         {
            if(this.§`!j§.width != this.§!"'§ || this.§`!j§.height != this.§6Q§)
            {
               this.§`!j§.dispose();
               this.§`!j§ = null;
            }
            else
            {
               this.§`!j§.fillRect(this.§`!j§.rect,4278190080 | param2);
            }
         }
         if(this.§`!j§ == null && this.§!"'§ > 0 && this.§6Q§ > 0)
         {
            this.§`!j§ = new BitmapData(this.§!"'§,this.§6Q§,true,4278190080 | param2);
         }
         if(this.§`!j§)
         {
            this.§`!j§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§`!j§)
         {
            this.§`!j§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§!"'§ = param1;
         this.§6Q§ = param2;
         this.§ N§ = param3;
         this.§;a§ = param4;
      }
   }
}
