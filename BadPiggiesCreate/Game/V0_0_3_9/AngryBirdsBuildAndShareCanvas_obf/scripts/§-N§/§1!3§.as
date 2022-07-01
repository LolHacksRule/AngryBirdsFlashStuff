package §-N§
{
   import §+M§.§4H§;
   import §7q§.§"L§;
   import §8Y§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §1!3§ extends §,!p§
   {
       
      
      private var §[!d§:BitmapData;
      
      private var § !u§:int = 0;
      
      private var §>!a§:int = 0;
      
      private var §5!?§:Number = 1.0;
      
      private var §;!b§:Number = 1.0;
      
      private var §'&§:BitmapData;
      
      private var §+!o§:Vector.<Number>;
      
      private var §<U§:Matrix;
      
      private var §,!+§:ColorTransform;
      
      public function §1!3§()
      {
         this.§+!o§ = new Vector.<Number>(16);
         this.§<U§ = new Matrix();
         this.§,!+§ = new ColorTransform();
         super();
         this.§'&§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§[!d§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§'&§)
         {
            this.§'&§.dispose();
            this.§'&§ = null;
         }
      }
      
      override public function batchQuad(param1:§"L§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§[!d§)
         {
            §7"+§.copyRawDataTo(this.§+!o§,0);
            this.§<U§.setTo(this.§+!o§[0],this.§+!o§[1],this.§+!o§[4],this.§+!o§[5],this.§+!o§[12],this.§+!o§[13]);
            this.§<U§.scale(this.§5!?§,this.§;!b§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§,!+§).redMultiplier = §4H§.§each §(_loc5_) / 255;
               _loc6_.greenMultiplier = §4H§.§"!8§(_loc5_) / 255;
               _loc6_.blueMultiplier = §4H§.§;!z§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§,!+§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§'&§.setPixel(0,0,param1.color);
               _loc7_ = this.§'&§;
               this.§<U§.a *= param1.§%z§;
               this.§<U§.b *= param1.§%z§;
               this.§<U§.c *= param1.§2!R§;
               this.§<U§.d *= param1.§2!R§;
            }
            this.§[!d§.draw(_loc7_,this.§<U§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§[!d§)
         {
            if(this.§[!d§.width != this.§ !u§ || this.§[!d§.height != this.§>!a§)
            {
               this.§[!d§.dispose();
               this.§[!d§ = null;
            }
            else
            {
               this.§[!d§.fillRect(this.§[!d§.rect,4278190080 | param2);
            }
         }
         if(this.§[!d§ == null && this.§ !u§ > 0 && this.§>!a§ > 0)
         {
            this.§[!d§ = new BitmapData(this.§ !u§,this.§>!a§,true,4278190080 | param2);
         }
         if(this.§[!d§)
         {
            this.§[!d§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§[!d§)
         {
            this.§[!d§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§ !u§ = param1;
         this.§>!a§ = param2;
         this.§5!?§ = param3;
         this.§;!b§ = param4;
      }
   }
}
