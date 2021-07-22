package §'!j§
{
   import §"#z§.Texture;
   import §,#=§.Color;
   import §6#H§.§,"$§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §`$;§ extends §^$$§
   {
       
      
      private var §0#W§:BitmapData;
      
      private var §,!w§:int = 0;
      
      private var §7!+§:int = 0;
      
      private var §]$§:Number = 1.0;
      
      private var §8!$§:Number = 1.0;
      
      private var §<#2§:BitmapData;
      
      private var §[#G§:Vector.<Number>;
      
      private var §>#o§:Matrix;
      
      private var §'#!§:ColorTransform;
      
      public function §`$;§()
      {
         this.§[#G§ = new Vector.<Number>(16);
         this.§>#o§ = new Matrix();
         this.§'#!§ = new ColorTransform();
         super();
         this.§<#2§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§0#W§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§<#2§)
         {
            this.§<#2§.dispose();
            this.§<#2§ = null;
         }
      }
      
      override public function batchQuad(param1:§,"$§, param2:Number, param3:Texture = null, param4:int = 0) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§0#W§)
         {
            this.§>#o§.copyFrom(§1$%§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§'#!§).redMultiplier = Color.§7!L§(_loc5_) / 255;
               _loc6_.greenMultiplier = Color.§1[§(_loc5_) / 255;
               _loc6_.blueMultiplier = Color.§["U§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§'#!§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§<#2§.setPixel(0,0,param1.color);
               _loc7_ = this.§<#2§;
               this.§>#o§.a *= param1.width;
               this.§>#o§.b *= param1.width;
               this.§>#o§.c *= param1.height;
               this.§>#o§.d *= param1.height;
            }
            this.§0#W§.draw(_loc7_,this.§>#o§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§0#W§)
         {
            if(this.§0#W§.width != this.§,!w§ || this.§0#W§.height != this.§7!+§)
            {
               this.§0#W§.dispose();
               this.§0#W§ = null;
            }
            else
            {
               this.§0#W§.fillRect(this.§0#W§.rect,4278190080 | param2);
            }
         }
         if(this.§0#W§ == null && this.§,!w§ > 0 && this.§7!+§ > 0)
         {
            this.§0#W§ = new BitmapData(this.§,!w§,this.§7!+§,true,4278190080 | param2);
         }
         if(this.§0#W§)
         {
            this.§0#W§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§0#W§)
         {
            this.§0#W§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§,!w§ = param1;
         this.§7!+§ = param2;
         this.§]$§ = param3;
         this.§8!$§ = param4;
      }
   }
}
