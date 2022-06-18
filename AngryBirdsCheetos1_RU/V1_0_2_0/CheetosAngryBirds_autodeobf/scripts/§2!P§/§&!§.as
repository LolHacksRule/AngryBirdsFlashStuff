package §2!P§
{
   import §&b§.§'0§;
   import §,H§.§>!C§;
   import §,Y§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §&!§ extends §@9§
   {
       
      
      private var §`z§:BitmapData;
      
      private var §?e§:int = 0;
      
      private var §;!Q§:int = 0;
      
      private var §7$§:Number = 1.0;
      
      private var §3@§:Number = 1.0;
      
      private var §<V§:BitmapData;
      
      private var §6@§:Vector.<Number>;
      
      private var §7A§:Matrix;
      
      private var §'P§:ColorTransform;
      
      public function §&!§()
      {
         this.§6@§ = new Vector.<Number>(16);
         this.§7A§ = new Matrix();
         this.§'P§ = new ColorTransform();
         super();
         this.§<V§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§`z§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§<V§)
         {
            this.§<V§.dispose();
            this.§<V§ = null;
         }
      }
      
      override public function batchQuad(param1:§>!C§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§`z§)
         {
            §=,§.copyRawDataTo(this.§6@§,0);
            this.§7A§.setTo(this.§6@§[0],this.§6@§[1],this.§6@§[4],this.§6@§[5],this.§6@§[12],this.§6@§[13]);
            this.§7A§.scale(this.§7$§,this.§3@§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§'P§).redMultiplier = §'0§.§-f§(_loc5_) / 255;
               _loc6_.greenMultiplier = §'0§.§@&§(_loc5_) / 255;
               _loc6_.blueMultiplier = §'0§.§"[§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§'P§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§<V§.setPixel(0,0,param1.color);
               _loc7_ = this.§<V§;
               this.§7A§.a *= param1.§]!`§;
               this.§7A§.b *= param1.§]!`§;
               this.§7A§.c *= param1.§<!=§;
               this.§7A§.d *= param1.§<!=§;
            }
            this.§`z§.draw(_loc7_,this.§7A§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§`z§)
         {
            if(this.§`z§.width != this.§?e§ || this.§`z§.height != this.§;!Q§)
            {
               this.§`z§.dispose();
               this.§`z§ = null;
            }
            else
            {
               this.§`z§.fillRect(this.§`z§.rect,4278190080 | param2);
            }
         }
         if(this.§`z§ == null && this.§?e§ > 0 && this.§;!Q§ > 0)
         {
            this.§`z§ = new BitmapData(this.§?e§,this.§;!Q§,true,4278190080 | param2);
         }
         if(this.§`z§)
         {
            this.§`z§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§`z§)
         {
            this.§`z§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§?e§ = param1;
         this.§;!Q§ = param2;
         this.§7$§ = param3;
         this.§3@§ = param4;
      }
   }
}
