package §3!4§
{
   import §!!a§.§<"%§;
   import §'!&§.§ "E§;
   import §3"$§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §&'§ extends §3=§
   {
       
      
      private var §`"D§:BitmapData;
      
      private var §`!O§:int = 0;
      
      private var §9!T§:int = 0;
      
      private var §6,§:Number = 1.0;
      
      private var §;!4§:Number = 1.0;
      
      private var §+7§:BitmapData;
      
      private var §^!J§:Vector.<Number>;
      
      private var §2![§:Matrix;
      
      private var §'"@§:ColorTransform;
      
      public function §&'§()
      {
         this.§^!J§ = new Vector.<Number>(16);
         this.§2![§ = new Matrix();
         this.§'"@§ = new ColorTransform();
         super();
         this.§+7§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`"D§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§+7§)
         {
            this.§+7§.dispose();
            this.§+7§ = null;
         }
      }
      
      override public function batchQuad(param1:§ "E§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§`"D§)
         {
            §[n§.copyRawDataTo(this.§^!J§,0);
            this.§2![§.setTo(this.§^!J§[0],this.§^!J§[1],this.§^!J§[4],this.§^!J§[5],this.§^!J§[12],this.§^!J§[13]);
            this.§2![§.scale(this.§6,§,this.§;!4§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§'"@§).redMultiplier = §<"%§.§]%§(_loc5_) / 255;
               _loc6_.greenMultiplier = §<"%§.§!!&§(_loc5_) / 255;
               _loc6_.blueMultiplier = §<"%§.§>C§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§'"@§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§+7§.setPixel(0,0,param1.color);
               _loc7_ = this.§+7§;
               this.§2![§.a *= param1.§ do§;
               this.§2![§.b *= param1.§ do§;
               this.§2![§.c *= param1.§null§;
               this.§2![§.d *= param1.§null§;
            }
            this.§`"D§.draw(_loc7_,this.§2![§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§`"D§)
         {
            if(this.§`"D§.width != this.§`!O§ || this.§`"D§.height != this.§9!T§)
            {
               this.§`"D§.dispose();
               this.§`"D§ = null;
            }
            else
            {
               this.§`"D§.fillRect(this.§`"D§.rect,4278190080 | param2);
            }
         }
         if(this.§`"D§ == null && this.§`!O§ > 0 && this.§9!T§ > 0)
         {
            this.§`"D§ = new BitmapData(this.§`!O§,this.§9!T§,true,4278190080 | param2);
         }
         if(this.§`"D§)
         {
            this.§`"D§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§`"D§)
         {
            this.§`"D§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§`!O§ = param1;
         this.§9!T§ = param2;
         this.§6,§ = param3;
         this.§;!4§ = param4;
      }
   }
}
