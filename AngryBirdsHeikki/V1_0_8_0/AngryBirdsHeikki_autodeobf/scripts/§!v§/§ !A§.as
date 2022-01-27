package §!v§
{
   import §#!6§.Texture;
   import §6K§.§+!d§;
   import §=!E§.§,!@§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class § !A§ extends §16§
   {
       
      
      private var §1!]§:BitmapData;
      
      private var §=q§:int = 0;
      
      private var §!c§:int = 0;
      
      private var §4Y§:Number = 1.0;
      
      private var §#j§:Number = 1.0;
      
      private var §+P§:BitmapData;
      
      private var §^!?§:Vector.<Number>;
      
      private var §1n§:Matrix;
      
      private var §>9§:ColorTransform;
      
      public function § !A§()
      {
         this.§^!?§ = new Vector.<Number>(16);
         this.§1n§ = new Matrix();
         this.§>9§ = new ColorTransform();
         super();
         this.§+P§ = new BitmapData(1,1,false);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§1!]§;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.§+P§)
         {
            this.§+P§.dispose();
            this.§+P§ = null;
         }
      }
      
      override public function batchQuad(param1:§,!@§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(this.§1!]§)
         {
            §%q§.copyRawDataTo(this.§^!?§,0);
            this.§1n§.setTo(this.§^!?§[0],this.§^!?§[1],this.§^!?§[4],this.§^!?§[5],this.§^!?§[12],this.§^!?§[13]);
            this.§1n§.scale(this.§4Y§,this.§#j§);
            _loc5_ = param1.color;
            param2 *= param1.alpha;
            _loc6_ = null;
            if(param3 && _loc5_ != 16777215)
            {
               (_loc6_ = this.§>9§).redMultiplier = §+!d§.§`K§(_loc5_) / 255;
               _loc6_.greenMultiplier = §+!d§.§8!,§(_loc5_) / 255;
               _loc6_.blueMultiplier = §+!d§.§;!T§(_loc5_) / 255;
               _loc6_.alphaMultiplier = 1;
            }
            if(param2 != 1)
            {
               (_loc6_ = this.§>9§).alphaMultiplier = param2;
            }
            if((_loc7_ = param1.clippedBitmapData) == null)
            {
               this.§+P§.setPixel(0,0,param1.color);
               _loc7_ = this.§+P§;
               this.§1n§.a *= param1.§^!_§;
               this.§1n§.b *= param1.§^!_§;
               this.§1n§.c *= param1.§!k§;
               this.§1n§.d *= param1.§!k§;
            }
            this.§1!]§.draw(_loc7_,this.§1n§,_loc6_,null,null,param1.highQuality);
         }
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         if(this.§1!]§)
         {
            if(this.§1!]§.width != this.§=q§ || this.§1!]§.height != this.§!c§)
            {
               this.§1!]§.dispose();
               this.§1!]§ = null;
            }
            else
            {
               this.§1!]§.fillRect(this.§1!]§.rect,4278190080 | param2);
            }
         }
         if(this.§1!]§ == null && this.§=q§ > 0 && this.§!c§ > 0)
         {
            this.§1!]§ = new BitmapData(this.§=q§,this.§!c§,true,4278190080 | param2);
         }
         if(this.§1!]§)
         {
            this.§1!]§.lock();
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         if(this.§1!]§)
         {
            this.§1!]§.unlock();
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         this.§=q§ = param1;
         this.§!c§ = param2;
         this.§4Y§ = param3;
         this.§#j§ = param4;
      }
   }
}
