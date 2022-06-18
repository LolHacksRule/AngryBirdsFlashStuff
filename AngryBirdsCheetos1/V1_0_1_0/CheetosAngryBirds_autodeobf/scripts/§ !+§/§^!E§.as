package § !+§
{
   import §2!-§.Texture;
   import §<!M§.§3!Z§;
   import §`a§.§?!N§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §^!E§ extends §%L§
   {
       
      
      private var §;0§:BitmapData;
      
      private var §>!>§:int = 0;
      
      private var §[w§:int = 0;
      
      private var §;§:Number = 1.0;
      
      private var §3r§:Number = 1.0;
      
      private var §@@§:BitmapData;
      
      private var §0M§:Vector.<Number>;
      
      private var §[C§:Matrix;
      
      private var §0!-§:ColorTransform;
      
      public function §^!E§()
      {
         this.§0M§ = new Vector.<Number>(16);
         this.§[C§ = new Matrix();
         this.§0!-§ = new ColorTransform();
         super();
         this.§@@§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§;0§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§@@§)
         {
            this.§@@§.dispose();
            this.§@@§ = null;
         }
      }
      
      override public function batchQuad(param1:§?!N§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§;0§)
         {
            §'! §.copyRawDataTo(this.§0M§,0);
            this.§[C§.setTo(this.§0M§[0],this.§0M§[1],this.§0M§[4],this.§0M§[5],this.§0M§[12],this.§0M§[13]);
            this.§[C§.scale(this.§;§,this.§3r§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§0!-§).redMultiplier = §3!Z§.§0#§(_loc5_) / 255;
               _loc6_.greenMultiplier = §3!Z§.§!!P§(_loc5_) / 255;
               _loc6_.blueMultiplier = §3!Z§.§"!@§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§0!-§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§@@§.setPixel(0,0,param1.color);
               _loc7_ = this.§@@§;
               this.§[C§.a *= param1.§5P§;
               this.§[C§.b *= param1.§5P§;
               this.§[C§.c *= param1.§#c§;
               this.§[C§.d *= param1.§#c§;
            }
            this.§;0§.draw(_loc7_,this.§[C§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§;0§)
         {
            if(this.§;0§.width != this.§>!>§ || this.§;0§.height != this.§[w§)
            {
               this.§;0§.dispose();
               this.§;0§ = null;
            }
            else
            {
               this.§;0§.fillRect(this.§;0§.rect,4278190080 | param2);
            }
         }
         if(this.§;0§ == null && this.§>!>§ > 0 && this.§[w§ > 0)
         {
            this.§;0§ = new BitmapData(this.§>!>§,this.§[w§,true,4278190080 | param2);
         }
         if(this.§;0§)
         {
            this.§;0§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§;0§)
         {
            this.§;0§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§>!>§ = param1;
         this.§[w§ = param2;
         this.§;§ = param3;
         this.§3r§ = param4;
      }
   }
}
