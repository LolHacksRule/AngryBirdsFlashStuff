package §@4§
{
   import §!!9§.Texture;
   import §2N§.§;!u§;
   import §9E§.§1!w§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §^O§ extends §<!I§
   {
       
      
      private var §>!+§:BitmapData;
      
      private var §22§:int = 0;
      
      private var §3!x§:int = 0;
      
      private var §8T§:Number = 1.0;
      
      private var §7"§:Number = 1.0;
      
      private var § #§:BitmapData;
      
      private var §>]§:Vector.<Number>;
      
      private var §"§:Matrix;
      
      private var §`!L§:ColorTransform;
      
      public function §^O§()
      {
         this.§>]§ = new Vector.<Number>(16);
         this.§"§ = new Matrix();
         this.§`!L§ = new ColorTransform();
         super();
         this.§ #§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§>!+§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§ #§)
         {
            this.§ #§.dispose();
            this.§ #§ = null;
         }
      }
      
      override public function batchQuad(param1:§1!w§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§>!+§)
         {
            §`!0§.copyRawDataTo(this.§>]§,0);
            this.§"§.setTo(this.§>]§[0],this.§>]§[1],this.§>]§[4],this.§>]§[5],this.§>]§[12],this.§>]§[13]);
            this.§"§.scale(this.§8T§,this.§7"§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§`!L§).redMultiplier = §;!u§.§>W§(_loc5_) / 255;
               _loc6_.greenMultiplier = §;!u§.§^!Q§(_loc5_) / 255;
               _loc6_.blueMultiplier = §;!u§.§+!1§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§`!L§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§ #§.setPixel(0,0,param1.color);
               _loc7_ = this.§ #§;
               this.§"§.a *= param1.§5O§;
               this.§"§.b *= param1.§5O§;
               this.§"§.c *= param1.§@k§;
               this.§"§.d *= param1.§@k§;
            }
            this.§>!+§.draw(_loc7_,this.§"§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§>!+§)
         {
            if(this.§>!+§.width != this.§22§ || this.§>!+§.height != this.§3!x§)
            {
               this.§>!+§.dispose();
               this.§>!+§ = null;
            }
            else
            {
               this.§>!+§.fillRect(this.§>!+§.rect,4278190080 | param2);
            }
         }
         if(this.§>!+§ == null && this.§22§ > 0 && this.§3!x§ > 0)
         {
            this.§>!+§ = new BitmapData(this.§22§,this.§3!x§,true,4278190080 | param2);
         }
         if(this.§>!+§)
         {
            this.§>!+§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§>!+§)
         {
            this.§>!+§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§22§ = param1;
         this.§3!x§ = param2;
         this.§8T§ = param3;
         this.§7"§ = param4;
      }
   }
}
