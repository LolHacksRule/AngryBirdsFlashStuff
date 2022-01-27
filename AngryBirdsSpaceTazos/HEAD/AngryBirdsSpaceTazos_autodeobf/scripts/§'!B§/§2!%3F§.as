package §'!B§
{
   import §&!]§.§7!J§;
   import §6!5§.§3c§;
   import §9"@§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §2!?§ extends §0!p§
   {
       
      
      private var §?"3§:BitmapData;
      
      private var §9"7§:int = 0;
      
      private var §-"9§:int = 0;
      
      private var §0_§:Number = 1.0;
      
      private var §8H§:Number = 1.0;
      
      private var §09§:BitmapData;
      
      private var §5%§:Vector.<Number>;
      
      private var §0z§:Matrix;
      
      private var §1h§:ColorTransform;
      
      public function §2!?§()
      {
         this.§5%§ = new Vector.<Number>(16);
         this.§0z§ = new Matrix();
         this.§1h§ = new ColorTransform();
         super();
         this.§09§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§?"3§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§09§)
         {
            this.§09§.dispose();
            this.§09§ = null;
         }
      }
      
      override public function batchQuad(param1:§7!J§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§?"3§)
         {
            §9"?§.copyRawDataTo(this.§5%§,0);
            this.§0z§.setTo(this.§5%§[0],this.§5%§[1],this.§5%§[4],this.§5%§[5],this.§5%§[12],this.§5%§[13]);
            this.§0z§.scale(this.§0_§,this.§8H§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§1h§).redMultiplier = §3c§.§throw§(_loc5_) / 255;
               _loc6_.greenMultiplier = §3c§.§!!u§(_loc5_) / 255;
               _loc6_.blueMultiplier = §3c§.§8"-§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§1h§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§09§.setPixel(0,0,param1.color);
               _loc7_ = this.§09§;
               this.§0z§.a *= param1.§55§;
               this.§0z§.b *= param1.§55§;
               this.§0z§.c *= param1.§%!@§;
               this.§0z§.d *= param1.§%!@§;
            }
            this.§?"3§.draw(_loc7_,this.§0z§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§?"3§)
         {
            if(this.§?"3§.width != this.§9"7§ || this.§?"3§.height != this.§-"9§)
            {
               this.§?"3§.dispose();
               this.§?"3§ = null;
            }
            else
            {
               this.§?"3§.fillRect(this.§?"3§.rect,4278190080 | param2);
            }
         }
         if(this.§?"3§ == null && this.§9"7§ > 0 && this.§-"9§ > 0)
         {
            this.§?"3§ = new BitmapData(this.§9"7§,this.§-"9§,true,4278190080 | param2);
         }
         if(this.§?"3§)
         {
            this.§?"3§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§?"3§)
         {
            this.§?"3§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§9"7§ = param1;
         this.§-"9§ = param2;
         this.§0_§ = param3;
         this.§8H§ = param4;
      }
   }
}
