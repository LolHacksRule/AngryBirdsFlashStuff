package §4!$§
{
   import §",§.Texture;
   import §5x§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §]!f§
   {
      
      private static var §!!k§:Array;
      
      private static var §;!b§:Program3D;
      
      private static var §'0§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §=w§:Matrix3D;
      
      private var §3H§:Matrix3D;
      
      private var §8n§:Matrix3D;
      
      private var §`!i§:Vector.<Matrix3D>;
      
      private var §=X§:int;
      
      private var §;B§:Vector.<§"P§>;
      
      private var §,"§:int;
      
      private var §"N§:Context3D;
      
      private var §`!g§:int = -1;
      
      public function §]!f§()
      {
         super();
         this.§=w§ = new Matrix3D();
         this.§3H§ = new Matrix3D();
         this.§8n§ = new Matrix3D();
         this.§`!i§ = new Vector.<Matrix3D>(0);
         this.§=X§ = 0;
         this.§,"§ = 0;
         this.§;B§ = new Vector.<§"P§>();
         if(§!!k§ == null)
         {
            §!!k§ = [];
         }
         this.§-!L§();
         this.§!U§(400,300);
         §<!2§.§[!]§.addEventListener(Event.CONTEXT3D_CREATE,this.§&>§);
      }
      
      public static function §4q§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§6m§(param1);
      }
      
      public static function §;9§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§'N§.§!!U§(param2) / 255,§'N§.§8!?§(param2) / 255,§'N§.§1d§(param2) / 255,param3);
      }
      
      protected function get §8h§() : Matrix3D
      {
         return this.§3H§;
      }
      
      protected function get §0;§() : Matrix3D
      {
         return this.§=w§;
      }
      
      public function §75§(param1:Context3D, param2:int) : void
      {
         this.§"N§ = param1;
         this.§`!g§ = param2;
      }
      
      public function get §8!o§() : Context3D
      {
         return this.§"N§;
      }
      
      public function get §`!;§() : int
      {
         return this.§`!g§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"P§ = null;
         for each(_loc1_ in this.§;B§)
         {
            _loc1_.dispose();
         }
         if(§<!2§.§[!]§)
         {
            §<!2§.§[!]§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&>§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§'N§.§!!U§(param2) / 255,§'N§.§8!?§(param2) / 255,§'N§.§1d§(param2) / 255,param3);
      }
      
      private function §&>§(param1:Event) : void
      {
         this.§;B§ = new <§"P§>[new §"P§()];
      }
      
      public function §!U§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §'0§[0] = 2 / param1;
         §'0§[1] = §'0§[2] = §'0§[3] = §'0§[4] = 0;
         §'0§[5] = -2 / param2;
         §'0§[6] = §'0§[7] = §'0§[8] = §'0§[9] = 0;
         §'0§[10] = -2 / (param4 - param3);
         §'0§[11] = 0;
         §'0§[12] = -1;
         §'0§[13] = 1;
         §'0§[14] = -(param4 + param3) / (param4 - param3);
         §'0§[15] = 1;
         this.§=w§.copyRawDataFrom(§'0§);
      }
      
      public function §-!L§() : void
      {
         this.§3H§.identity();
      }
      
      public function §!§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§3H§.prependTranslation(param1,param2,param3);
      }
      
      public function §-7§(param1:Number, param2:Vector3D = null) : void
      {
         this.§3H§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §+R§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§3H§.prependScale(param1,param2,param3);
      }
      
      public function §6m§(param1:DisplayObject) : void
      {
         param1.§6m§(this.§3H§);
      }
      
      public function §'!V§() : void
      {
         if(this.§`!i§.length < this.§=X§ + 1)
         {
            this.§`!i§.push(new Matrix3D());
         }
         this.§`!i§[this.§=X§++].copyFrom(this.§3H§);
      }
      
      public function §%l§() : void
      {
         this.§3H§.copyFrom(this.§`!i§[--this.§=X§]);
      }
      
      public function §;!X§() : void
      {
         this.§=X§ = 0;
         this.§-!L§();
      }
      
      public function get §%!H§() : Matrix3D
      {
         this.§8n§.identity();
         this.§8n§.append(this.§3H§);
         this.§8n§.append(this.§=w§);
         return this.§8n§;
      }
      
      public function batchQuad(param1:§3"§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§-!Z§.§[c§(param1,param3,param4))
         {
            this.§#D§();
         }
         this.§-!Z§.§<!F§(param1,param2,param3,param4,this.§3H§);
      }
      
      public function §#D§() : void
      {
         if(this.§-!Z§.§!b§ > 0)
         {
            this.§-!Z§.render(this.§8!o§,this.§=w§);
            this.§-!Z§.reset();
            ++this.§,"§;
            if(this.§;B§.length <= this.§,"§)
            {
               this.§;B§.push(new §"P§());
            }
         }
      }
      
      public function §^!%§() : void
      {
         this.§;!X§();
         this.§,"§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §-!Z§() : §"P§
      {
         return this.§;B§[this.§,"§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §!!k§[param2])
         {
            §!!k§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §;!b§)
         {
            §;!b§ = param2;
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
