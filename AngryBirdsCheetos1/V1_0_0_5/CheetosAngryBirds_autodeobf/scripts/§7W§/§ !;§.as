package §7W§
{
   import §!!R§.§^!4§;
   import §2k§.Texture;
   import §<!M§.§3!Z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class § !;§ extends §4!8§
   {
       
      
      private var §^!E§:BitmapData;
      
      private var §;0§:int = 0;
      
      private var §>!>§:int = 0;
      
      private var §[w§:Number = 1.0;
      
      private var §;§:Number = 1.0;
      
      private var §3r§:BitmapData;
      
      private var §@@§:Vector.<Number>;
      
      private var §0M§:Matrix;
      
      private var §%!,§:ColorTransform;
      
      public function § !;§()
      {
         this.§@@§ = new Vector.<Number>(16);
         this.§0M§ = new Matrix();
         this.§%!,§ = new ColorTransform();
         super();
         this.§3r§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§^!E§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§3r§)
         {
            this.§3r§.dispose();
            this.§3r§ = null;
         }
      }
      
      override public function batchQuad(param1:§^!4§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§^!E§)
         {
            §#!"§.copyRawDataTo(this.§@@§,0);
            this.§0M§.setTo(this.§@@§[0],this.§@@§[1],this.§@@§[4],this.§@@§[5],this.§@@§[12],this.§@@§[13]);
            this.§0M§.scale(this.§[w§,this.§;§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§%!,§).redMultiplier = §3!Z§.§0#§(_loc5_) / 255;
               _loc6_.greenMultiplier = §3!Z§.§!!P§(_loc5_) / 255;
               _loc6_.blueMultiplier = §3!Z§.§"!@§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§%!,§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§3r§.setPixel(0,0,param1.color);
               _loc7_ = this.§3r§;
               this.§0M§.a *= param1.§90§;
               this.§0M§.b *= param1.§90§;
               this.§0M§.c *= param1.§5P§;
               this.§0M§.d *= param1.§5P§;
            }
            this.§^!E§.draw(_loc7_,this.§0M§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§^!E§)
         {
            if(this.§^!E§.width != this.§;0§ || this.§^!E§.height != this.§>!>§)
            {
               this.§^!E§.dispose();
               this.§^!E§ = null;
            }
            else
            {
               this.§^!E§.fillRect(this.§^!E§.rect,4278190080 | param2);
            }
         }
         if(this.§^!E§ == null && this.§;0§ > 0 && this.§>!>§ > 0)
         {
            this.§^!E§ = new BitmapData(this.§;0§,this.§>!>§,true,4278190080 | param2);
         }
         if(this.§^!E§)
         {
            this.§^!E§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§^!E§)
         {
            this.§^!E§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§;0§ = param1;
         this.§>!>§ = param2;
         this.§[w§ = param3;
         this.§;§ = param4;
      }
   }
}
