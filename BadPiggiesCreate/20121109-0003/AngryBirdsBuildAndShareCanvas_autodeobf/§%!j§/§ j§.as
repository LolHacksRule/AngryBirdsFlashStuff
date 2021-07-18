package §%!j§
{
   import §+!-§.§4!O§;
   import §0!%§.Texture;
   import §`!=§.§9q§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class § j§ extends §&Y§
   {
       
      
      private var §&"!§:BitmapData;
      
      private var §+@§:int = 0;
      
      private var §&!t§:int = 0;
      
      private var §4Q§:Number = 1.0;
      
      private var §7E§:Number = 1.0;
      
      private var §;!J§:BitmapData;
      
      private var §9!@§:Vector.<Number>;
      
      private var §<!R§:Matrix;
      
      private var §6!l§:ColorTransform;
      
      public function § j§()
      {
         this.§9!@§ = new Vector.<Number>(16);
         this.§<!R§ = new Matrix();
         this.§6!l§ = new ColorTransform();
         super();
         this.§;!J§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§&"!§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§;!J§)
         {
            this.§;!J§.dispose();
            this.§;!J§ = null;
         }
      }
      
      override public function batchQuad(param1:§4!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§&"!§)
         {
            §"!Y§.copyRawDataTo(this.§9!@§,0);
            this.§<!R§.setTo(this.§9!@§[0],this.§9!@§[1],this.§9!@§[4],this.§9!@§[5],this.§9!@§[12],this.§9!@§[13]);
            this.§<!R§.scale(this.§4Q§,this.§7E§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§6!l§).redMultiplier = §9q§.§@g§(_loc5_) / 255;
               _loc6_.greenMultiplier = §9q§.§!e§(_loc5_) / 255;
               _loc6_.blueMultiplier = §9q§.§6!1§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§6!l§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§;!J§.setPixel(0,0,param1.color);
               _loc7_ = this.§;!J§;
               this.§<!R§.a *= param1.§<!W§;
               this.§<!R§.b *= param1.§<!W§;
               this.§<!R§.c *= param1.§-!+§;
               this.§<!R§.d *= param1.§-!+§;
            }
            this.§&"!§.draw(_loc7_,this.§<!R§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§&"!§)
         {
            if(this.§&"!§.width != this.§+@§ || this.§&"!§.height != this.§&!t§)
            {
               this.§&"!§.dispose();
               this.§&"!§ = null;
            }
            else
            {
               this.§&"!§.fillRect(this.§&"!§.rect,4278190080 | param2);
            }
         }
         if(this.§&"!§ == null && this.§+@§ > 0 && this.§&!t§ > 0)
         {
            this.§&"!§ = new BitmapData(this.§+@§,this.§&!t§,true,4278190080 | param2);
         }
         if(this.§&"!§)
         {
            this.§&"!§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§&"!§)
         {
            this.§&"!§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§+@§ = param1;
         this.§&!t§ = param2;
         this.§4Q§ = param3;
         this.§7E§ = param4;
      }
   }
}
