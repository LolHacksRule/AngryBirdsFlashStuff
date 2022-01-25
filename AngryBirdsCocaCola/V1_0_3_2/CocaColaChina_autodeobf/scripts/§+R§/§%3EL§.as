package §+R§
{
   import §#!a§.Texture;
   import §;t§.§6!K§;
   import §^!L§.§#!`§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §>L§ extends §4!b§
   {
       
      
      private var §#R§:BitmapData;
      
      private var §@!E§:int = 0;
      
      private var override:int = 0;
      
      private var §3!>§:Number = 1.0;
      
      private var §7§:Number = 1.0;
      
      private var § G§:BitmapData;
      
      private var §3l§:Vector.<Number>;
      
      private var §>k§:Matrix;
      
      private var §+!-§:ColorTransform;
      
      public function §>L§()
      {
         this.§3l§ = new Vector.<Number>(16);
         this.§>k§ = new Matrix();
         this.§+!-§ = new ColorTransform();
         super();
         this.§ G§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§#R§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§ G§)
         {
            this.§ G§.dispose();
            this.§ G§ = null;
         }
      }
      
      override public function batchQuad(param1:§6!K§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§#R§)
         {
            §>!N§.copyRawDataTo(this.§3l§,0);
            this.§>k§.setTo(this.§3l§[0],this.§3l§[1],this.§3l§[4],this.§3l§[5],this.§3l§[12],this.§3l§[13]);
            this.§>k§.scale(this.§3!>§,this.§7§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§+!-§).redMultiplier = §#!`§.§^!I§(_loc5_) / 255;
               _loc6_.greenMultiplier = §#!`§.§;p§(_loc5_) / 255;
               _loc6_.blueMultiplier = §#!`§.§-!"§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§+!-§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§ G§.setPixel(0,0,param1.color);
               _loc7_ = this.§ G§;
               this.§>k§.a *= param1.§&$§;
               this.§>k§.b *= param1.§&$§;
               this.§>k§.c *= param1.§%!X§;
               this.§>k§.d *= param1.§%!X§;
            }
            this.§#R§.draw(_loc7_,this.§>k§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§#R§)
         {
            if(this.§#R§.width != this.§@!E§ || this.§#R§.height != this.override)
            {
               this.§#R§.dispose();
               this.§#R§ = null;
            }
            else
            {
               this.§#R§.fillRect(this.§#R§.rect,4278190080 | param2);
            }
         }
         if(this.§#R§ == null && this.§@!E§ > 0 && this.override > 0)
         {
            this.§#R§ = new BitmapData(this.§@!E§,this.override,true,4278190080 | param2);
         }
         if(this.§#R§)
         {
            this.§#R§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§#R§)
         {
            this.§#R§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§@!E§ = param1;
         this.override = param2;
         this.§3!>§ = param3;
         this.§7§ = param4;
      }
   }
}
