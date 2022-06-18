package §,!,§
{
   import §21§.Texture;
   import §5^§.§;c§;
   import §90§.§0!'§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §@!J§ extends §&v§
   {
       
      
      private var §,Y§:BitmapData;
      
      private var §4P§:int = 0;
      
      private var §3n§:int = 0;
      
      private var §@! §:Number = 1.0;
      
      private var §>!#§:Number = 1.0;
      
      private var §2b§:BitmapData;
      
      private var §]&§:Vector.<Number>;
      
      private var §4<§:Matrix;
      
      private var §7p§:ColorTransform;
      
      public function §@!J§()
      {
         this.§]&§ = new Vector.<Number>(16);
         this.§4<§ = new Matrix();
         this.§7p§ = new ColorTransform();
         super();
         this.§2b§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§,Y§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§2b§)
         {
            this.§2b§.dispose();
            this.§2b§ = null;
         }
      }
      
      override public function batchQuad(param1:§0!'§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§,Y§)
         {
            §?!5§.copyRawDataTo(this.§]&§,0);
            this.§4<§.setTo(this.§]&§[0],this.§]&§[1],this.§]&§[4],this.§]&§[5],this.§]&§[12],this.§]&§[13]);
            this.§4<§.scale(this.§@! §,this.§>!#§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§7p§).redMultiplier = §;c§.§>!E§(_loc5_) / 255;
               _loc6_.greenMultiplier = §;c§.§7F§(_loc5_) / 255;
               _loc6_.blueMultiplier = §;c§.§0;§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§7p§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§2b§.setPixel(0,0,param1.color);
               _loc7_ = this.§2b§;
               this.§4<§.a *= param1.initialWidth;
               this.§4<§.b *= param1.initialWidth;
               this.§4<§.c *= param1.initialHeight;
               this.§4<§.d *= param1.initialHeight;
            }
            this.§,Y§.draw(_loc7_,this.§4<§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§,Y§)
         {
            if(this.§,Y§.width != this.§4P§ || this.§,Y§.height != this.§3n§)
            {
               this.§,Y§.dispose();
               this.§,Y§ = null;
            }
            else
            {
               this.§,Y§.fillRect(this.§,Y§.rect,4278190080 | param2);
            }
         }
         if(this.§,Y§ == null && this.§4P§ > 0 && this.§3n§ > 0)
         {
            this.§,Y§ = new BitmapData(this.§4P§,this.§3n§,true,4278190080 | param2);
         }
         if(this.§,Y§)
         {
            this.§,Y§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§,Y§)
         {
            this.§,Y§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§4P§ = param1;
         this.§3n§ = param2;
         this.§@! § = param3;
         this.§>!#§ = param4;
      }
   }
}
