package §"^§
{
   import §2Y§.§7?§;
   import §=9§.§>!<§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §5I§ extends §'X§
   {
       
      
      private var §=Z§:BitmapData;
      
      private var §+g§:int = 0;
      
      private var §3!3§:int = 0;
      
      private var §[!4§:Number = 1.0;
      
      private var §=G§:Number = 1.0;
      
      private var §]!$§:BitmapData;
      
      private var §#!+§:Vector.<Number>;
      
      private var §-q§:Matrix;
      
      private var §3!4§:ColorTransform;
      
      public function §5I§()
      {
         this.§#!+§ = new Vector.<Number>(16);
         this.§-q§ = new Matrix();
         this.§3!4§ = new ColorTransform();
         super();
         this.§]!$§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§=Z§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
            this.§]!$§ = null;
         }
      }
      
      override public function batchQuad(param1:§7?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§=Z§)
         {
            §1U§.copyRawDataTo(this.§#!+§,0);
            this.§-q§.setTo(this.§#!+§[0],this.§#!+§[1],this.§#!+§[4],this.§#!+§[5],this.§#!+§[12],this.§#!+§[13]);
            this.§-q§.scale(this.§[!4§,this.§=G§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§3!4§).redMultiplier = §>!<§.§;!6§(_loc5_) / 255;
               _loc6_.greenMultiplier = §>!<§.§4u§(_loc5_) / 255;
               _loc6_.blueMultiplier = §>!<§.§`5§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§3!4§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§]!$§.setPixel(0,0,param1.color);
               _loc7_ = this.§]!$§;
               this.§-q§.a *= param1.§8!`§;
               this.§-q§.b *= param1.§8!`§;
               this.§-q§.c *= param1.§&+§;
               this.§-q§.d *= param1.§&+§;
            }
            this.§=Z§.draw(_loc7_,this.§-q§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§=Z§)
         {
            if(this.§=Z§.width != this.§+g§ || this.§=Z§.height != this.§3!3§)
            {
               this.§=Z§.dispose();
               this.§=Z§ = null;
            }
            else
            {
               this.§=Z§.fillRect(this.§=Z§.rect,4278190080 | param2);
            }
         }
         if(this.§=Z§ == null && this.§+g§ > 0 && this.§3!3§ > 0)
         {
            this.§=Z§ = new BitmapData(this.§+g§,this.§3!3§,true,4278190080 | param2);
         }
         if(this.§=Z§)
         {
            this.§=Z§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§=Z§)
         {
            this.§=Z§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§+g§ = param1;
         this.§3!3§ = param2;
         this.§[!4§ = param3;
         this.§=G§ = param4;
      }
   }
}
