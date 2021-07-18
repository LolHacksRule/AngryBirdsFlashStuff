package §5Z§
{
   import § N§.§6!O§;
   import §+§.§?g§;
   import §8z§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §]M§ extends §4]§
   {
       
      
      private var §#!G§:BitmapData;
      
      private var §1!-§:int = 0;
      
      private var §^6§:int = 0;
      
      private var §3%§:Number = 1.0;
      
      private var §2!E§:Number = 1.0;
      
      private var §&D§:BitmapData;
      
      private var §+x§:Vector.<Number>;
      
      private var §1!M§:Matrix;
      
      private var §@d§:ColorTransform;
      
      public function §]M§()
      {
         this.§+x§ = new Vector.<Number>(16);
         this.§1!M§ = new Matrix();
         this.§@d§ = new ColorTransform();
         super();
         this.§&D§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§#!G§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§&D§)
         {
            this.§&D§.dispose();
            this.§&D§ = null;
         }
      }
      
      override public function batchQuad(param1:§6!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§#!G§)
         {
            §4p§.copyRawDataTo(this.§+x§,0);
            this.§1!M§.setTo(this.§+x§[0],this.§+x§[1],this.§+x§[4],this.§+x§[5],this.§+x§[12],this.§+x§[13]);
            this.§1!M§.scale(this.§3%§,this.§2!E§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§@d§).redMultiplier = §?g§.§"!2§(_loc5_) / 255;
               _loc6_.greenMultiplier = §?g§.§2t§(_loc5_) / 255;
               _loc6_.blueMultiplier = §?g§.§7p§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§@d§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§&D§.setPixel(0,0,param1.color);
               _loc7_ = this.§&D§;
               this.§1!M§.a *= param1.§?+§;
               this.§1!M§.b *= param1.§?+§;
               this.§1!M§.c *= param1.§>!3§;
               this.§1!M§.d *= param1.§>!3§;
            }
            this.§#!G§.draw(_loc7_,this.§1!M§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§#!G§)
         {
            if(this.§#!G§.width != this.§1!-§ || this.§#!G§.height != this.§^6§)
            {
               this.§#!G§.dispose();
               this.§#!G§ = null;
            }
            else
            {
               this.§#!G§.fillRect(this.§#!G§.rect,4278190080 | param2);
            }
         }
         if(this.§#!G§ == null && this.§1!-§ > 0 && this.§^6§ > 0)
         {
            this.§#!G§ = new BitmapData(this.§1!-§,this.§^6§,true,4278190080 | param2);
         }
         if(this.§#!G§)
         {
            this.§#!G§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§#!G§)
         {
            this.§#!G§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§1!-§ = param1;
         this.§^6§ = param2;
         this.§3%§ = param3;
         this.§2!E§ = param4;
      }
   }
}
