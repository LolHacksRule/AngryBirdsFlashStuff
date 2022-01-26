package §!!!§
{
   import §3!J§.*;
   import §=!4§.Texture;
   import §^!^§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §<@§
   {
      
      private static var §7!D§:Array;
      
      private static var §>r§:Program3D;
      
      private static var §,"$§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var § !w§:Matrix3D;
      
      private var §@!W§:Matrix3D;
      
      private var §!X§:Matrix3D;
      
      private var §;§:Vector.<Matrix3D>;
      
      private var §+"&§:int;
      
      private var §]Z§:Vector.<§-!k§>;
      
      private var §58§:int;
      
      private var §?"5§:Context3D;
      
      private var §""'§:int = -1;
      
      public function §<@§()
      {
         super();
         this.§ !w§ = new Matrix3D();
         this.§@!W§ = new Matrix3D();
         this.§!X§ = new Matrix3D();
         this.§;§ = new Vector.<Matrix3D>(0);
         this.§+"&§ = 0;
         this.§58§ = 0;
         this.§]Z§ = new Vector.<§-!k§>();
         if(§7!D§ == null)
         {
            §7!D§ = [];
         }
         this.§ H§();
         this.§&!n§(400,300);
         §6!l§.§+J§.addEventListener(Event.CONTEXT3D_CREATE,this.§'"1§);
      }
      
      public static function §=`§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§3'§(param1);
      }
      
      public static function §03§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§+%§.§<#§(param2) / 255,§+%§.§4!V§(param2) / 255,§+%§.§7h§(param2) / 255,param3);
      }
      
      protected function get § !"§() : Matrix3D
      {
         return this.§@!W§;
      }
      
      protected function get §4@§() : Matrix3D
      {
         return this.§ !w§;
      }
      
      public function §"" §(param1:Context3D, param2:int) : void
      {
         this.§?"5§ = param1;
         this.§""'§ = param2;
      }
      
      public function get §!! §() : Context3D
      {
         return this.§?"5§;
      }
      
      public function get §>F§() : int
      {
         return this.§""'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-!k§ = null;
         for each(_loc1_ in this.§]Z§)
         {
            _loc1_.dispose();
         }
         if(§6!l§.§+J§)
         {
            §6!l§.§+J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'"1§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§+%§.§<#§(param2) / 255,§+%§.§4!V§(param2) / 255,§+%§.§7h§(param2) / 255,param3);
      }
      
      private function §'"1§(param1:Event) : void
      {
         this.§]Z§ = new <§-!k§>[new §-!k§()];
      }
      
      public function §&!n§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §,"$§[0] = 2 / param1;
         §,"$§[1] = §,"$§[2] = §,"$§[3] = §,"$§[4] = 0;
         §,"$§[5] = -2 / param2;
         §,"$§[6] = §,"$§[7] = §,"$§[8] = §,"$§[9] = 0;
         §,"$§[10] = -2 / (param4 - param3);
         §,"$§[11] = 0;
         §,"$§[12] = -1;
         §,"$§[13] = 1;
         §,"$§[14] = -(param4 + param3) / (param4 - param3);
         §,"$§[15] = 1;
         this.§ !w§.copyRawDataFrom(§,"$§);
      }
      
      public function § H§() : void
      {
         this.§@!W§.identity();
      }
      
      public function §&!M§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§@!W§.prependTranslation(param1,param2,param3);
      }
      
      public function §,!_§(param1:Number, param2:Vector3D = null) : void
      {
         this.§@!W§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §`K§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§@!W§.prependScale(param1,param2,param3);
      }
      
      public function §3'§(param1:DisplayObject) : void
      {
         param1.§3'§(this.§@!W§);
      }
      
      public function §%!X§() : void
      {
         if(this.§;§.length < this.§+"&§ + 1)
         {
            this.§;§.push(new Matrix3D());
         }
         this.§;§[this.§+"&§++].copyFrom(this.§@!W§);
      }
      
      public function §%!k§() : void
      {
         this.§@!W§.copyFrom(this.§;§[--this.§+"&§]);
      }
      
      public function §=$§() : void
      {
         this.§+"&§ = 0;
         this.§ H§();
      }
      
      public function get §6?§() : Matrix3D
      {
         this.§!X§.identity();
         this.§!X§.append(this.§@!W§);
         this.§!X§.append(this.§ !w§);
         return this.§!X§;
      }
      
      public function batchQuad(param1:§8!l§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§28§.§-!F§(param1,param3,param4,param2))
         {
            this.§6!s§();
         }
         this.§28§.§ !z§(param1,param2,param3,param4,this.§@!W§);
      }
      
      public function §6!s§() : void
      {
         if(this.§28§.§0=§ > 0)
         {
            this.§28§.render(this.§!! §,this.§ !w§);
            this.§28§.reset();
            ++this.§58§;
            if(this.§]Z§.length <= this.§58§)
            {
               this.§]Z§.push(new §-!k§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§=$§();
         this.§58§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §28§() : §-!k§
      {
         return this.§]Z§[this.§58§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §7!D§[param2])
         {
            §7!D§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §>r§)
         {
            §>r§ = param2;
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
