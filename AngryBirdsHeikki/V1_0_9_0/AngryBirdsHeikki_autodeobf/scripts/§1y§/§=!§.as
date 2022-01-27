package §1y§
{
   import § 0§.Texture;
   import §"=§.§;!#§;
   import §#!f§.§,!0§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §=!§ extends §2n§
   {
       
      
      private var §`!]§:BitmapData;
      
      private var § !8§:int = 0;
      
      private var §'c§:int = 0;
      
      private var §>g§:Number = 1.0;
      
      private var §3o§:Number = 1.0;
      
      private var §#i§:BitmapData;
      
      private var §<!$§:Vector.<Number>;
      
      private var §8C§:Matrix;
      
      private var §+8§:ColorTransform;
      
      public function §=!§()
      {
         this.§<!$§ = new Vector.<Number>(16);
         this.§8C§ = new Matrix();
         this.§+8§ = new ColorTransform();
         super();
         this.§#i§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`!]§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§#i§)
         {
            this.§#i§.dispose();
            this.§#i§ = null;
         }
      }
      
      override public function batchQuad(param1:§,!0§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§`!]§)
         {
            §2!1§.copyRawDataTo(this.§<!$§,0);
            this.§8C§.setTo(this.§<!$§[0],this.§<!$§[1],this.§<!$§[4],this.§<!$§[5],this.§<!$§[12],this.§<!$§[13]);
            this.§8C§.scale(this.§>g§,this.§3o§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§+8§).redMultiplier = §;!#§.§5!G§(_loc5_) / 255;
               _loc6_.greenMultiplier = §;!#§.§]!f§(_loc5_) / 255;
               _loc6_.blueMultiplier = §;!#§.§<!;§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§+8§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§#i§.setPixel(0,0,param1.color);
               _loc7_ = this.§#i§;
               this.§8C§.a *= param1.§3'§;
               this.§8C§.b *= param1.§3'§;
               this.§8C§.c *= param1.§5v§;
               this.§8C§.d *= param1.§5v§;
            }
            this.§`!]§.draw(_loc7_,this.§8C§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§`!]§)
         {
            if(this.§`!]§.width != this.§ !8§ || this.§`!]§.height != this.§'c§)
            {
               this.§`!]§.dispose();
               this.§`!]§ = null;
            }
            else
            {
               this.§`!]§.fillRect(this.§`!]§.rect,4278190080 | param2);
            }
         }
         if(this.§`!]§ == null && this.§ !8§ > 0 && this.§'c§ > 0)
         {
            this.§`!]§ = new BitmapData(this.§ !8§,this.§'c§,true,4278190080 | param2);
         }
         if(this.§`!]§)
         {
            this.§`!]§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§`!]§)
         {
            this.§`!]§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§ !8§ = param1;
         this.§'c§ = param2;
         this.§>g§ = param3;
         this.§3o§ = param4;
      }
   }
}
