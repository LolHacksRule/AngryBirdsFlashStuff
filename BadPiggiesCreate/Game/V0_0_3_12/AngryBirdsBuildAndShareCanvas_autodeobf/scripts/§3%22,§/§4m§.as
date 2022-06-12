package §3",§
{
   import §!p§.§=!Z§;
   import §@!i§.§'!a§;
   import §^Q§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §4m§ extends §'5§
   {
       
      
      private var §`!T§:BitmapData;
      
      private var §@!$§:int = 0;
      
      private var §`,§:int = 0;
      
      private var §22§:Number = 1.0;
      
      private var §1!b§:Number = 1.0;
      
      private var §]!_§:BitmapData;
      
      private var §@i§:Vector.<Number>;
      
      private var §5"'§:Matrix;
      
      private var §>3§:ColorTransform;
      
      public function §4m§()
      {
         this.§@i§ = new Vector.<Number>(16);
         this.§5"'§ = new Matrix();
         this.§>3§ = new ColorTransform();
         super();
         this.§]!_§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`!T§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§]!_§)
         {
            this.§]!_§.dispose();
            this.§]!_§ = null;
         }
      }
      
      override public function batchQuad(param1:§'!a§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§`!T§)
         {
            §?,§.copyRawDataTo(this.§@i§,0);
            this.§5"'§.setTo(this.§@i§[0],this.§@i§[1],this.§@i§[4],this.§@i§[5],this.§@i§[12],this.§@i§[13]);
            this.§5"'§.scale(this.§22§,this.§1!b§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§>3§).redMultiplier = §=!Z§.§;R§(_loc5_) / 255;
               _loc6_.greenMultiplier = §=!Z§.§9!U§(_loc5_) / 255;
               _loc6_.blueMultiplier = §=!Z§.§"!X§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§>3§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§]!_§.setPixel(0,0,param1.color);
               _loc7_ = this.§]!_§;
               this.§5"'§.a *= param1.§%!J§;
               this.§5"'§.b *= param1.§%!J§;
               this.§5"'§.c *= param1.§=$§;
               this.§5"'§.d *= param1.§=$§;
            }
            this.§`!T§.draw(_loc7_,this.§5"'§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§`!T§)
         {
            if(this.§`!T§.width != this.§@!$§ || this.§`!T§.height != this.§`,§)
            {
               this.§`!T§.dispose();
               this.§`!T§ = null;
            }
            else
            {
               this.§`!T§.fillRect(this.§`!T§.rect,4278190080 | param2);
            }
         }
         if(this.§`!T§ == null && this.§@!$§ > 0 && this.§`,§ > 0)
         {
            this.§`!T§ = new BitmapData(this.§@!$§,this.§`,§,true,4278190080 | param2);
         }
         if(this.§`!T§)
         {
            this.§`!T§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§`!T§)
         {
            this.§`!T§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§@!$§ = param1;
         this.§`,§ = param2;
         this.§22§ = param3;
         this.§1!b§ = param4;
      }
   }
}
