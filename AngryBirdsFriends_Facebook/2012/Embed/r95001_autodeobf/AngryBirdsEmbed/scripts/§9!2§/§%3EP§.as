package §9!2§
{
   import §2!+§.*;
   import §<-§.Texture;
   import §<k§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §>P§
   {
      
      private static var §!8§:Array;
      
      private static var §!l§:Program3D;
      
      private static var §4§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §7=§:Matrix3D;
      
      private var §%4§:Matrix3D;
      
      private var §+1§:Matrix3D;
      
      private var §6;§:Vector.<Matrix3D>;
      
      private var §3c§:int;
      
      private var §<K§:Vector.<§<!0§>;
      
      private var §'d§:int;
      
      private var §+!A§:Context3D;
      
      private var §?1§:int = -1;
      
      public function §>P§()
      {
         super();
         this.§7=§ = new Matrix3D();
         this.§%4§ = new Matrix3D();
         this.§+1§ = new Matrix3D();
         this.§6;§ = new Vector.<Matrix3D>(0);
         this.§3c§ = 0;
         this.§'d§ = 0;
         this.§<K§ = new Vector.<§<!0§>();
         if(§!8§ == null)
         {
            §!8§ = [];
         }
         this.§0#§();
         this.§<P§(400,300);
         §7N§.§17§.addEventListener(Event.CONTEXT3D_CREATE,this.§=7§);
      }
      
      public static function §![§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         var _loc5_:Number = param2.rotation;
         var _loc6_:Number = param2.scaleX;
         var _loc7_:Number = param2.scaleY;
         var _loc8_:Number = param2.pivotX;
         var _loc9_:Number = param2.pivotY;
         if(_loc5_ == 0 && _loc6_ == 1 && _loc7_ == 1)
         {
            param1.prependTranslation(_loc3_ + _loc8_,_loc4_ + _loc9_,0);
         }
         else
         {
            if(_loc3_ != 0 || _loc4_ != 0)
            {
               param1.prependTranslation(_loc3_,_loc4_,0);
            }
            if(_loc5_ != 0)
            {
               param1.prependRotation(_loc5_ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(_loc6_ != 1 || _loc7_ != 1)
            {
               param1.prependScale(_loc6_,_loc7_,1);
            }
            if(_loc8_ != 0 || _loc9_ != 0)
            {
               param1.prependTranslation(_loc8_,_loc9_,0);
            }
         }
      }
      
      public static function §&1§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§[t§.§4!<§(param2) / 255,§[t§.§=!>§(param2) / 255,§[t§.§-g§(param2) / 255,param3);
      }
      
      protected function get §3w§() : Matrix3D
      {
         return this.§%4§;
      }
      
      protected function get §`!6§() : Matrix3D
      {
         return this.§7=§;
      }
      
      public function §@E§(param1:Context3D, param2:int) : void
      {
         this.§+!A§ = param1;
         this.§?1§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§+!A§;
      }
      
      public function get §+!3§() : int
      {
         return this.§?1§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!0§ = null;
         for each(_loc1_ in this.§<K§)
         {
            _loc1_.dispose();
         }
         if(§7N§.§17§)
         {
            §7N§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=7§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§[t§.§4!<§(param2) / 255,§[t§.§=!>§(param2) / 255,§[t§.§-g§(param2) / 255,param3);
      }
      
      private function §=7§(param1:Event) : void
      {
         this.§<K§ = new <§<!0§>[new §<!0§()];
      }
      
      public function §<P§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §4§[0] = 2 / param1;
         §4§[1] = §4§[2] = §4§[3] = §4§[4] = 0;
         §4§[5] = -2 / param2;
         §4§[6] = §4§[7] = §4§[8] = §4§[9] = 0;
         §4§[10] = -2 / (param4 - param3);
         §4§[11] = 0;
         §4§[12] = -1;
         §4§[13] = 1;
         §4§[14] = -(param4 + param3) / (param4 - param3);
         §4§[15] = 1;
         this.§7=§.copyRawDataFrom(§4§);
      }
      
      public function §0#§() : void
      {
         this.§%4§.identity();
      }
      
      public function §0;§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§%4§.prependTranslation(param1,param2,param3);
      }
      
      public function §7a§(param1:Number, param2:Vector3D = null) : void
      {
         this.§%4§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §&_§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§%4§.prependScale(param1,param2,param3);
      }
      
      public function §^f§(param1:DisplayObject) : void
      {
         §![§(this.§%4§,param1);
      }
      
      public function §>_§() : void
      {
         if(this.§6;§.length < this.§3c§ + 1)
         {
            this.§6;§.push(new Matrix3D());
         }
         this.§6;§[this.§3c§++].copyFrom(this.§%4§);
      }
      
      public function §%Q§() : void
      {
         this.§%4§.copyFrom(this.§6;§[--this.§3c§]);
      }
      
      public function §<^§() : void
      {
         this.§3c§ = 0;
         this.§0#§();
      }
      
      public function get §^P§() : Matrix3D
      {
         this.§+1§.identity();
         this.§+1§.append(this.§%4§);
         this.§+1§.append(this.§7=§);
         return this.§+1§;
      }
      
      public function batchQuad(param1:§!1§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§@!>§.§`!0§(param1,param3,param4))
         {
            this.§%!G§();
         }
         this.§@!>§.§<§(param1,param2,param3,param4,this.§%4§);
      }
      
      public function §%!G§() : void
      {
         if(this.§@!>§.§9!6§ > 0)
         {
            this.§@!>§.render(this.context,this.§7=§);
            this.§@!>§.reset();
            ++this.§'d§;
            if(this.§<K§.length <= this.§'d§)
            {
               this.§<K§.push(new §<!0§());
            }
         }
      }
      
      public function §^z§() : void
      {
         this.§<^§();
         this.§'d§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §@!>§() : §<!0§
      {
         return this.§<K§[this.§'d§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §!8§[param2])
         {
            §!8§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §!l§)
         {
            §!l§ = param2;
            param1.setProgram(param2);
         }
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
   }
}
