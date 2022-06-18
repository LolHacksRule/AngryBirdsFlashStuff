package §&I§
{
   import §&!7§.Texture;
   import §->§.*;
   import §<§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §?!§
   {
      
      private static var §3!?§:Array;
      
      private static var §8b§:Program3D;
      
      private static var §#?§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §!0§:Matrix3D;
      
      private var §9X§:Matrix3D;
      
      private var §;U§:Matrix3D;
      
      private var §"C§:Vector.<Matrix3D>;
      
      private var §4!,§:int;
      
      private var §5!0§:Vector.<§8]§>;
      
      private var §,b§:int;
      
      private var §^-§:Context3D;
      
      private var §78§:int = -1;
      
      public function §?!§()
      {
         super();
         this.§!0§ = new Matrix3D();
         this.§9X§ = new Matrix3D();
         this.§;U§ = new Matrix3D();
         this.§"C§ = new Vector.<Matrix3D>(0);
         this.§4!,§ = 0;
         this.§,b§ = 0;
         this.§5!0§ = new Vector.<§8]§>();
         if(§3!?§ == null)
         {
            §3!?§ = [];
         }
         this.§ !7§();
         this.§=3§(400,300);
         §3! §.§"n§.addEventListener(Event.CONTEXT3D_CREATE,this.§<N§);
      }
      
      public static function §;o§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public static function §"!'§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§46§.§+!A§(param2) / 255,§46§.§8!-§(param2) / 255,§46§.§4-§(param2) / 255,param3);
      }
      
      protected function get §[!'§() : Matrix3D
      {
         return this.§9X§;
      }
      
      protected function get §4y§() : Matrix3D
      {
         return this.§!0§;
      }
      
      public function §`!!§(param1:Context3D, param2:int) : void
      {
         this.§^-§ = param1;
         this.§78§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§^-§;
      }
      
      public function get §'S§() : int
      {
         return this.§78§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8]§ = null;
         for each(_loc1_ in this.§5!0§)
         {
            _loc1_.dispose();
         }
         if(§3! §.§"n§)
         {
            §3! §.§"n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§<N§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§46§.§+!A§(param2) / 255,§46§.§8!-§(param2) / 255,§46§.§4-§(param2) / 255,param3);
      }
      
      private function §<N§(param1:Event) : void
      {
         this.§5!0§ = new <§8]§>[new §8]§()];
      }
      
      public function §=3§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §#?§[0] = 2 / param1;
         §#?§[1] = §#?§[2] = §#?§[3] = §#?§[4] = 0;
         §#?§[5] = -2 / param2;
         §#?§[6] = §#?§[7] = §#?§[8] = §#?§[9] = 0;
         §#?§[10] = -2 / (param4 - param3);
         §#?§[11] = 0;
         §#?§[12] = -1;
         §#?§[13] = 1;
         §#?§[14] = -(param4 + param3) / (param4 - param3);
         §#?§[15] = 1;
         this.§!0§.copyRawDataFrom(§#?§);
      }
      
      public function § !7§() : void
      {
         this.§9X§.identity();
      }
      
      public function §-$§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§9X§.prependTranslation(param1,param2,param3);
      }
      
      public function §!J§(param1:Number, param2:Vector3D = null) : void
      {
         this.§9X§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §?!B§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§9X§.prependScale(param1,param2,param3);
      }
      
      public function §0!&§(param1:DisplayObject) : void
      {
         §;o§(this.§9X§,param1);
      }
      
      public function §@q§() : void
      {
         if(this.§"C§.length < this.§4!,§ + 1)
         {
            this.§"C§.push(new Matrix3D());
         }
         this.§"C§[this.§4!,§++].copyFrom(this.§9X§);
      }
      
      public function §=%§() : void
      {
         this.§9X§.copyFrom(this.§"C§[--this.§4!,§]);
      }
      
      public function §0a§() : void
      {
         this.§4!,§ = 0;
         this.§ !7§();
      }
      
      public function get §&U§() : Matrix3D
      {
         this.§;U§.identity();
         this.§;U§.append(this.§9X§);
         this.§;U§.append(this.§!0§);
         return this.§;U§;
      }
      
      public function batchQuad(param1:§7d§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§]p§.§ !E§(param1,param3,param4))
         {
            this.§3!&§();
         }
         this.§]p§.§?d§(param1,param2,param3,param4,this.§9X§);
      }
      
      public function §3!&§() : void
      {
         if(this.§]p§.§ x§ > 0)
         {
            this.§]p§.render(this.context,this.§!0§);
            this.§]p§.reset();
            ++this.§,b§;
            if(this.§5!0§.length <= this.§,b§)
            {
               this.§5!0§.push(new §8]§());
            }
         }
      }
      
      public function §<A§() : void
      {
         this.§0a§();
         this.§,b§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §]p§() : §8]§
      {
         return this.§5!0§[this.§,b§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §3!?§[param2])
         {
            §3!?§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §8b§)
         {
            §8b§ = param2;
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
