package §0P§
{
   import §1!Y§.§5!W§;
   import §=v§.§?X§;
   import §^i§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §@!b§ extends §1!O§
   {
       
      
      private var §+q§:BitmapData;
      
      private var §9!L§:int = 0;
      
      private var §?g§:int = 0;
      
      private var §0!P§:Number = 1.0;
      
      private var §4?§:Number = 1.0;
      
      private var §^"$§:BitmapData;
      
      private var §7!h§:Vector.<Number>;
      
      private var §^8§:Matrix;
      
      private var §1!Z§:ColorTransform;
      
      public function §@!b§()
      {
         this.§7!h§ = new Vector.<Number>(16);
         this.§^8§ = new Matrix();
         this.§1!Z§ = new ColorTransform();
         super();
         this.§^"$§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§+q§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§^"$§)
         {
            this.§^"$§.dispose();
            this.§^"$§ = null;
         }
      }
      
      override public function batchQuad(param1:§5!W§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§+q§)
         {
            § D§.copyRawDataTo(this.§7!h§,0);
            this.§^8§.setTo(this.§7!h§[0],this.§7!h§[1],this.§7!h§[4],this.§7!h§[5],this.§7!h§[12],this.§7!h§[13]);
            this.§^8§.scale(this.§0!P§,this.§4?§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§1!Z§).redMultiplier = §?X§.§3P§(_loc5_) / 255;
               _loc6_.greenMultiplier = §?X§.§2z§(_loc5_) / 255;
               _loc6_.blueMultiplier = §?X§.§`!f§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§1!Z§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§^"$§.setPixel(0,0,param1.color);
               _loc7_ = this.§^"$§;
               this.§^8§.a *= param1.§+"-§;
               this.§^8§.b *= param1.§+"-§;
               this.§^8§.c *= param1.§9;§;
               this.§^8§.d *= param1.§9;§;
            }
            this.§+q§.draw(_loc7_,this.§^8§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§+q§)
         {
            if(this.§+q§.width != this.§9!L§ || this.§+q§.height != this.§?g§)
            {
               this.§+q§.dispose();
               this.§+q§ = null;
            }
            else
            {
               this.§+q§.fillRect(this.§+q§.rect,4278190080 | param2);
            }
         }
         if(this.§+q§ == null && this.§9!L§ > 0 && this.§?g§ > 0)
         {
            this.§+q§ = new BitmapData(this.§9!L§,this.§?g§,true,4278190080 | param2);
         }
         if(this.§+q§)
         {
            this.§+q§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§+q§)
         {
            this.§+q§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§9!L§ = param1;
         this.§?g§ = param2;
         this.§0!P§ = param3;
         this.§4?§ = param4;
      }
   }
}
