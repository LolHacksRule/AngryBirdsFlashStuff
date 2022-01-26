package § F§
{
   import §+!S§.Texture;
   import §,!Q§.§2P§;
   import §?!Z§.§3!L§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §,!F§ extends §,!>§
   {
       
      
      private var §;!Y§:BitmapData;
      
      private var §]!'§:int = 0;
      
      private var §-!;§:int = 0;
      
      private var §+Y§:Number = 1.0;
      
      private var §"!]§:Number = 1.0;
      
      private var §4#§:BitmapData;
      
      private var §4!?§:Vector.<Number>;
      
      private var §>!0§:Matrix;
      
      private var §"!V§:ColorTransform;
      
      public function §,!F§()
      {
         this.§4!?§ = new Vector.<Number>(16);
         this.§>!0§ = new Matrix();
         this.§"!V§ = new ColorTransform();
         super();
         this.§4#§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§;!Y§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§4#§)
         {
            this.§4#§.dispose();
            this.§4#§ = null;
         }
      }
      
      override public function batchQuad(param1:§2P§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§;!Y§)
         {
            §0!Q§.copyRawDataTo(this.§4!?§,0);
            this.§>!0§.setTo(this.§4!?§[0],this.§4!?§[1],this.§4!?§[4],this.§4!?§[5],this.§4!?§[12],this.§4!?§[13]);
            this.§>!0§.scale(this.§+Y§,this.§"!]§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§"!V§).redMultiplier = §3!L§.§`K§(_loc5_) / 255;
               _loc6_.greenMultiplier = §3!L§.§#!O§(_loc5_) / 255;
               _loc6_.blueMultiplier = §3!L§.§4i§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§"!V§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§4#§.setPixel(0,0,param1.color);
               _loc7_ = this.§4#§;
               this.§>!0§.a *= param1.§`=§;
               this.§>!0§.b *= param1.§`=§;
               this.§>!0§.c *= param1.§&&§;
               this.§>!0§.d *= param1.§&&§;
            }
            this.§;!Y§.draw(_loc7_,this.§>!0§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§;!Y§)
         {
            if(this.§;!Y§.width != this.§]!'§ || this.§;!Y§.height != this.§-!;§)
            {
               this.§;!Y§.dispose();
               this.§;!Y§ = null;
            }
            else
            {
               this.§;!Y§.fillRect(this.§;!Y§.rect,4278190080 | param2);
            }
         }
         if(this.§;!Y§ == null && this.§]!'§ > 0 && this.§-!;§ > 0)
         {
            this.§;!Y§ = new BitmapData(this.§]!'§,this.§-!;§,true,4278190080 | param2);
         }
         if(this.§;!Y§)
         {
            this.§;!Y§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§;!Y§)
         {
            this.§;!Y§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§]!'§ = param1;
         this.§-!;§ = param2;
         this.§+Y§ = param3;
         this.§"!]§ = param4;
      }
   }
}
