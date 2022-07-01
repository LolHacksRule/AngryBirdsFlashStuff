package §5!W§
{
   import §0!Y§.§-f§;
   import §^z§.Texture;
   import §`!"§.§;!j§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §+!Z§ extends §`+§
   {
       
      
      private var §"3§:BitmapData;
      
      private var §#L§:int = 0;
      
      private var §?w§:int = 0;
      
      private var §4[§:Number = 1.0;
      
      private var §#!!§:Number = 1.0;
      
      private var §5!#§:BitmapData;
      
      private var §+!d§:Vector.<Number>;
      
      private var §#D§:Matrix;
      
      private var §3c§:ColorTransform;
      
      public function §+!Z§()
      {
         this.§+!d§ = new Vector.<Number>(16);
         this.§#D§ = new Matrix();
         this.§3c§ = new ColorTransform();
         super();
         this.§5!#§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§"3§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§5!#§)
         {
            this.§5!#§.dispose();
            this.§5!#§ = null;
         }
      }
      
      override public function batchQuad(param1:§-f§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§"3§)
         {
            §'!Q§.copyRawDataTo(this.§+!d§,0);
            this.§#D§.setTo(this.§+!d§[0],this.§+!d§[1],this.§+!d§[4],this.§+!d§[5],this.§+!d§[12],this.§+!d§[13]);
            this.§#D§.scale(this.§4[§,this.§#!!§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§3c§).redMultiplier = §;!j§.§'!_§(_loc5_) / 255;
               _loc6_.greenMultiplier = §;!j§.final(_loc5_) / 255;
               _loc6_.blueMultiplier = §;!j§.§^!g§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§3c§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§5!#§.setPixel(0,0,param1.color);
               _loc7_ = this.§5!#§;
               this.§#D§.a *= param1.§#!Y§;
               this.§#D§.b *= param1.§#!Y§;
               this.§#D§.c *= param1.§0"#§;
               this.§#D§.d *= param1.§0"#§;
            }
            this.§"3§.draw(_loc7_,this.§#D§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§"3§)
         {
            if(this.§"3§.width != this.§#L§ || this.§"3§.height != this.§?w§)
            {
               this.§"3§.dispose();
               this.§"3§ = null;
            }
            else
            {
               this.§"3§.fillRect(this.§"3§.rect,4278190080 | param2);
            }
         }
         if(this.§"3§ == null && this.§#L§ > 0 && this.§?w§ > 0)
         {
            this.§"3§ = new BitmapData(this.§#L§,this.§?w§,true,4278190080 | param2);
         }
         if(this.§"3§)
         {
            this.§"3§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§"3§)
         {
            this.§"3§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§#L§ = param1;
         this.§?w§ = param2;
         this.§4[§ = param3;
         this.§#!!§ = param4;
      }
   }
}
