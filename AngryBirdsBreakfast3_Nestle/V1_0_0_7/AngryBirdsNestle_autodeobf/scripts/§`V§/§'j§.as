package §`V§
{
   import § !=§.§break§;
   import § !a§.Texture;
   import §=D§.§@!j§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §'j§ extends §^M§
   {
       
      
      private var §6L§:BitmapData;
      
      private var §5!b§:int = 0;
      
      private var §1c§:int = 0;
      
      private var §^! §:Number = 1.0;
      
      private var §>@§:Number = 1.0;
      
      private var §-4§:BitmapData;
      
      private var §7!d§:Vector.<Number>;
      
      private var native:Matrix;
      
      private var §34§:ColorTransform;
      
      public function §'j§()
      {
         this.§7!d§ = new Vector.<Number>(16);
         this.native = new Matrix();
         this.§34§ = new ColorTransform();
         super();
         this.§-4§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§6L§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§-4§)
         {
            this.§-4§.dispose();
            this.§-4§ = null;
         }
      }
      
      override public function batchQuad(param1:§break§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§6L§)
         {
            §="5§.copyRawDataTo(this.§7!d§,0);
            this.native.setTo(this.§7!d§[0],this.§7!d§[1],this.§7!d§[4],this.§7!d§[5],this.§7!d§[12],this.§7!d§[13]);
            this.native.scale(this.§^! §,this.§>@§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§34§).redMultiplier = §@!j§.§>!4§(_loc5_) / 255;
               _loc6_.greenMultiplier = §@!j§.§7N§(_loc5_) / 255;
               _loc6_.blueMultiplier = §@!j§.§7!T§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§34§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§-4§.setPixel(0,0,param1.color);
               _loc7_ = this.§-4§;
               this.native.a *= param1.§4"!§;
               this.native.b *= param1.§4"!§;
               this.native.c *= param1.§29§;
               this.native.d *= param1.§29§;
            }
            this.§6L§.draw(_loc7_,this.native,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§6L§)
         {
            if(this.§6L§.width != this.§5!b§ || this.§6L§.height != this.§1c§)
            {
               this.§6L§.dispose();
               this.§6L§ = null;
            }
            else
            {
               this.§6L§.fillRect(this.§6L§.rect,4278190080 | param2);
            }
         }
         if(this.§6L§ == null && this.§5!b§ > 0 && this.§1c§ > 0)
         {
            this.§6L§ = new BitmapData(this.§5!b§,this.§1c§,true,4278190080 | param2);
         }
         if(this.§6L§)
         {
            this.§6L§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§6L§)
         {
            this.§6L§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§5!b§ = param1;
         this.§1c§ = param2;
         this.§^! § = param3;
         this.§>@§ = param4;
      }
   }
}
