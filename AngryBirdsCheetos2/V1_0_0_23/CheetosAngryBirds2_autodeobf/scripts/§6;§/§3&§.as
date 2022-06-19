package §6;§
{
   import §4v§.§@A§;
   import §]!a§.Texture;
   import §^a§.§ !'§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §3&§ extends §2^§
   {
       
      
      private var §#Z§:BitmapData;
      
      private var §+w§:int = 0;
      
      private var §&!U§:int = 0;
      
      private var §`%§:Number = 1.0;
      
      private var §var§:Number = 1.0;
      
      private var §>!=§:BitmapData;
      
      private var §7e§:Vector.<Number>;
      
      private var §0[§:Matrix;
      
      private var §"f§:ColorTransform;
      
      public function §3&§()
      {
         this.§7e§ = new Vector.<Number>(16);
         this.§0[§ = new Matrix();
         this.§"f§ = new ColorTransform();
         super();
         this.§>!=§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§#Z§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§>!=§)
         {
            this.§>!=§.dispose();
            this.§>!=§ = null;
         }
      }
      
      override public function batchQuad(param1:§ !'§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§#Z§)
         {
            §<!§.copyRawDataTo(this.§7e§,0);
            this.§0[§.setTo(this.§7e§[0],this.§7e§[1],this.§7e§[4],this.§7e§[5],this.§7e§[12],this.§7e§[13]);
            this.§0[§.scale(this.§`%§,this.§var§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§"f§).redMultiplier = §@A§.§2!O§(_loc5_) / 255;
               _loc6_.greenMultiplier = §@A§.§>!Q§(_loc5_) / 255;
               _loc6_.blueMultiplier = §@A§.§9Z§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§"f§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§>!=§.setPixel(0,0,param1.color);
               _loc7_ = this.§>!=§;
               this.§0[§.a *= param1.§3m§;
               this.§0[§.b *= param1.§3m§;
               this.§0[§.c *= param1.§=!f§;
               this.§0[§.d *= param1.§=!f§;
            }
            this.§#Z§.draw(_loc7_,this.§0[§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§#Z§)
         {
            if(this.§#Z§.width != this.§+w§ || this.§#Z§.height != this.§&!U§)
            {
               this.§#Z§.dispose();
               this.§#Z§ = null;
            }
            else
            {
               this.§#Z§.fillRect(this.§#Z§.rect,4278190080 | param2);
            }
         }
         if(this.§#Z§ == null && this.§+w§ > 0 && this.§&!U§ > 0)
         {
            this.§#Z§ = new BitmapData(this.§+w§,this.§&!U§,true,4278190080 | param2);
         }
         if(this.§#Z§)
         {
            this.§#Z§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§#Z§)
         {
            this.§#Z§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§+w§ = param1;
         this.§&!U§ = param2;
         this.§`%§ = param3;
         this.§var§ = param4;
      }
   }
}
