package §!!!§
{
   import §3!J§.§8!l§;
   import §=!4§.Texture;
   import §^!^§.§+%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §;",§ extends §<@§
   {
       
      
      private var §-!x§:BitmapData;
      
      private var §0d§:int = 0;
      
      private var §,!p§:int = 0;
      
      private var §0!$§:Number = 1.0;
      
      private var §>4§:Number = 1.0;
      
      private var §[!D§:BitmapData;
      
      private var §?D§:Vector.<Number>;
      
      private var §?S§:Matrix;
      
      private var §=8§:ColorTransform;
      
      public function §;",§()
      {
         this.§?D§ = new Vector.<Number>(16);
         this.§?S§ = new Matrix();
         this.§=8§ = new ColorTransform();
         super();
         this.§[!D§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§-!x§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§[!D§)
         {
            this.§[!D§.dispose();
            this.§[!D§ = null;
         }
      }
      
      override public function batchQuad(param1:§8!l§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§-!x§)
         {
            § !"§.copyRawDataTo(this.§?D§,0);
            this.§?S§.setTo(this.§?D§[0],this.§?D§[1],this.§?D§[4],this.§?D§[5],this.§?D§[12],this.§?D§[13]);
            this.§?S§.scale(this.§0!$§,this.§>4§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§=8§).redMultiplier = §+%§.§<#§(_loc5_) / 255;
               _loc6_.greenMultiplier = §+%§.§4!V§(_loc5_) / 255;
               _loc6_.blueMultiplier = §+%§.§7h§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§=8§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§[!D§.setPixel(0,0,param1.color);
               _loc7_ = this.§[!D§;
               this.§?S§.a *= param1.§3!$§;
               this.§?S§.b *= param1.§3!$§;
               this.§?S§.c *= param1.§![§;
               this.§?S§.d *= param1.§![§;
            }
            this.§-!x§.draw(_loc7_,this.§?S§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§-!x§)
         {
            if(this.§-!x§.width != this.§0d§ || this.§-!x§.height != this.§,!p§)
            {
               this.§-!x§.dispose();
               this.§-!x§ = null;
            }
            else
            {
               this.§-!x§.fillRect(this.§-!x§.rect,4278190080 | param2);
            }
         }
         if(this.§-!x§ == null && this.§0d§ > 0 && this.§,!p§ > 0)
         {
            this.§-!x§ = new BitmapData(this.§0d§,this.§,!p§,true,4278190080 | param2);
         }
         if(this.§-!x§)
         {
            this.§-!x§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§-!x§)
         {
            this.§-!x§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§0d§ = param1;
         this.§,!p§ = param2;
         this.§0!$§ = param3;
         this.§>4§ = param4;
      }
   }
}
