package §-!+§
{
   import §+<§.§@r§;
   import §@!#§.Texture;
   import §`L§.§=!x§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §%,§ extends §,7§
   {
       
      
      private var §[!V§:BitmapData;
      
      private var §=c§:int = 0;
      
      private var §!$§:int = 0;
      
      private var §+b§:Number = 1.0;
      
      private var §+!y§:Number = 1.0;
      
      private var §8!L§:BitmapData;
      
      private var §]y§:Vector.<Number>;
      
      private var §7!&§:Matrix;
      
      private var §<m§:ColorTransform;
      
      public function §%,§()
      {
         this.§]y§ = new Vector.<Number>(16);
         this.§7!&§ = new Matrix();
         this.§<m§ = new ColorTransform();
         super();
         this.§8!L§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§[!V§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§8!L§)
         {
            this.§8!L§.dispose();
            this.§8!L§ = null;
         }
      }
      
      override public function batchQuad(param1:§=!x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§[!V§)
         {
            §'c§.copyRawDataTo(this.§]y§,0);
            this.§7!&§.setTo(this.§]y§[0],this.§]y§[1],this.§]y§[4],this.§]y§[5],this.§]y§[12],this.§]y§[13]);
            this.§7!&§.scale(this.§+b§,this.§+!y§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§<m§).redMultiplier = §@r§.§?!E§(_loc5_) / 255;
               _loc6_.greenMultiplier = §@r§.§]%§(_loc5_) / 255;
               _loc6_.blueMultiplier = §@r§.§&n§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§<m§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§8!L§.setPixel(0,0,param1.color);
               _loc7_ = this.§8!L§;
               this.§7!&§.a *= param1.§8Q§;
               this.§7!&§.b *= param1.§8Q§;
               this.§7!&§.c *= param1.§^!,§;
               this.§7!&§.d *= param1.§^!,§;
            }
            this.§[!V§.draw(_loc7_,this.§7!&§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§[!V§)
         {
            if(this.§[!V§.width != this.§=c§ || this.§[!V§.height != this.§!$§)
            {
               this.§[!V§.dispose();
               this.§[!V§ = null;
            }
            else
            {
               this.§[!V§.fillRect(this.§[!V§.rect,4278190080 | param2);
            }
         }
         if(this.§[!V§ == null && this.§=c§ > 0 && this.§!$§ > 0)
         {
            this.§[!V§ = new BitmapData(this.§=c§,this.§!$§,true,4278190080 | param2);
         }
         if(this.§[!V§)
         {
            this.§[!V§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§[!V§)
         {
            this.§[!V§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§=c§ = param1;
         this.§!$§ = param2;
         this.§+b§ = param3;
         this.§+!y§ = param4;
      }
   }
}
