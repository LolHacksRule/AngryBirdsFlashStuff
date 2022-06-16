package §'6§
{
   import §0!R§.Texture;
   import §1!$§.§!"?§;
   import §1V§.§-G§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §#"C§ extends §'"3§
   {
       
      
      private var §5!X§:BitmapData;
      
      private var §'""§:int = 0;
      
      private var §`>§:int = 0;
      
      private var §"J§:Number = 1.0;
      
      private var §7"B§:Number = 1.0;
      
      private var § "2§:BitmapData;
      
      private var §4&§:Vector.<Number>;
      
      private var §`!B§:Matrix;
      
      private var §9Z§:ColorTransform;
      
      public function §#"C§()
      {
         this.§4&§ = new Vector.<Number>(16);
         this.§`!B§ = new Matrix();
         this.§9Z§ = new ColorTransform();
         super();
         this.§ "2§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§5!X§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§ "2§)
         {
            this.§ "2§.dispose();
            this.§ "2§ = null;
         }
      }
      
      override public function batchQuad(param1:§!"?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§5!X§)
         {
            §3!T§.copyRawDataTo(this.§4&§,0);
            this.§`!B§.setTo(this.§4&§[0],this.§4&§[1],this.§4&§[4],this.§4&§[5],this.§4&§[12],this.§4&§[13]);
            this.§`!B§.scale(this.§"J§,this.§7"B§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§9Z§).redMultiplier = §-G§.§7_§(_loc5_) / 255;
               _loc6_.greenMultiplier = §-G§.§9"<§(_loc5_) / 255;
               _loc6_.blueMultiplier = §-G§.§8t§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§9Z§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§ "2§.setPixel(0,0,param1.color);
               _loc7_ = this.§ "2§;
               this.§`!B§.a *= param1.§catch§;
               this.§`!B§.b *= param1.§catch§;
               this.§`!B§.c *= param1.§@"&§;
               this.§`!B§.d *= param1.§@"&§;
            }
            this.§5!X§.draw(_loc7_,this.§`!B§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§5!X§)
         {
            if(this.§5!X§.width != this.§'""§ || this.§5!X§.height != this.§`>§)
            {
               this.§5!X§.dispose();
               this.§5!X§ = null;
            }
            else
            {
               this.§5!X§.fillRect(this.§5!X§.rect,4278190080 | param2);
            }
         }
         if(this.§5!X§ == null && this.§'""§ > 0 && this.§`>§ > 0)
         {
            this.§5!X§ = new BitmapData(this.§'""§,this.§`>§,true,4278190080 | param2);
         }
         if(this.§5!X§)
         {
            this.§5!X§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§5!X§)
         {
            this.§5!X§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§'""§ = param1;
         this.§`>§ = param2;
         this.§"J§ = param3;
         this.§7"B§ = param4;
      }
   }
}
