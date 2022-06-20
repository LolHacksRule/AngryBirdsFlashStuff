package §9+§
{
   import §&!v§.§0"s§;
   import §-"+§.Texture;
   import §>l§.Color;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §=h§ extends §]"+§
   {
       
      
      private var §'!P§:BitmapData;
      
      private var §7#[§:int = 0;
      
      private var §`#E§:int = 0;
      
      private var §`h§:Number = 1.0;
      
      private var §6#,§:Number = 1.0;
      
      private var §8"v§:BitmapData;
      
      private var §8#J§:Vector.<Number>;
      
      private var §4#Q§:Matrix;
      
      private var §]^§:ColorTransform;
      
      public function §=h§()
      {
         this.§8#J§ = new Vector.<Number>(16);
         this.§4#Q§ = new Matrix();
         this.§]^§ = new ColorTransform();
         super();
         this.§8"v§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§'!P§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§8"v§)
         {
            this.§8"v§.dispose();
            this.§8"v§ = null;
         }
      }
      
      override public function batchQuad(param1:§0"s§, param2:Number, param3:Texture = null, param4:int = 0) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§'!P§)
         {
            this.§4#Q§.copyFrom(§]!l§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§]^§).redMultiplier = Color.§,m§(_loc5_) / 255;
               _loc6_.greenMultiplier = Color.§^!S§(_loc5_) / 255;
               _loc6_.blueMultiplier = Color.§>#t§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§]^§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§8"v§.setPixel(0,0,param1.color);
               _loc7_ = this.§8"v§;
               this.§4#Q§.a *= param1.width;
               this.§4#Q§.b *= param1.width;
               this.§4#Q§.c *= param1.height;
               this.§4#Q§.d *= param1.height;
            }
            this.§'!P§.draw(_loc7_,this.§4#Q§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§'!P§)
         {
            if(this.§'!P§.width != this.§7#[§ || this.§'!P§.height != this.§`#E§)
            {
               this.§'!P§.dispose();
               this.§'!P§ = null;
            }
            else
            {
               this.§'!P§.fillRect(this.§'!P§.rect,4278190080 | param2);
            }
         }
         if(this.§'!P§ == null && this.§7#[§ > 0 && this.§`#E§ > 0)
         {
            this.§'!P§ = new BitmapData(this.§7#[§,this.§`#E§,true,4278190080 | param2);
         }
         if(this.§'!P§)
         {
            this.§'!P§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§'!P§)
         {
            this.§'!P§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§7#[§ = param1;
         this.§`#E§ = param2;
         this.§`h§ = param3;
         this.§6#,§ = param4;
      }
   }
}
