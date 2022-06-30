package §>Q§
{
   import § !9§.Texture;
   import §8!4§.§'! §;
   import §[=§.§=!I§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §@!W§ extends §<!%§
   {
       
      
      private var §11§:BitmapData;
      
      private var § W§:int = 0;
      
      private var § =§:int = 0;
      
      private var §`!;§:Number = 1.0;
      
      private var §<!]§:Number = 1.0;
      
      private var §>O§:BitmapData;
      
      private var §;!Z§:Vector.<Number>;
      
      private var §7!>§:Matrix;
      
      private var §<@§:ColorTransform;
      
      public function §@!W§()
      {
         this.§;!Z§ = new Vector.<Number>(16);
         this.§7!>§ = new Matrix();
         this.§<@§ = new ColorTransform();
         super();
         this.§>O§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§11§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§>O§)
         {
            this.§>O§.dispose();
            this.§>O§ = null;
         }
      }
      
      override public function batchQuad(param1:§=!I§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§11§)
         {
            §3!H§.copyRawDataTo(this.§;!Z§,0);
            this.§7!>§.setTo(this.§;!Z§[0],this.§;!Z§[1],this.§;!Z§[4],this.§;!Z§[5],this.§;!Z§[12],this.§;!Z§[13]);
            this.§7!>§.scale(this.§`!;§,this.§<!]§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§<@§).redMultiplier = §'! §.§;_§(_loc5_) / 255;
               _loc6_.greenMultiplier = §'! §.§8^§(_loc5_) / 255;
               _loc6_.blueMultiplier = §'! §.§'c§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§<@§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§>O§.setPixel(0,0,param1.color);
               _loc7_ = this.§>O§;
               this.§7!>§.a *= param1.§%8§;
               this.§7!>§.b *= param1.§%8§;
               this.§7!>§.c *= param1.§]n§;
               this.§7!>§.d *= param1.§]n§;
            }
            this.§11§.draw(_loc7_,this.§7!>§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§11§)
         {
            if(this.§11§.width != this.§ W§ || this.§11§.height != this.§ =§)
            {
               this.§11§.dispose();
               this.§11§ = null;
            }
            else
            {
               this.§11§.fillRect(this.§11§.rect,4278190080 | param2);
            }
         }
         if(this.§11§ == null && this.§ W§ > 0 && this.§ =§ > 0)
         {
            this.§11§ = new BitmapData(this.§ W§,this.§ =§,true,4278190080 | param2);
         }
         if(this.§11§)
         {
            this.§11§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§11§)
         {
            this.§11§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§ W§ = param1;
         this.§ =§ = param2;
         this.§`!;§ = param3;
         this.§<!]§ = param4;
      }
   }
}
