package §?"e§
{
   import §!!1§.AGALMiniAssembler;
   import §+#B§.§;$%§;
   import §5!D§.Color;
   import §5!D§.§[!b§;
   import §9$;§.Texture;
   import §^"S§.§'#E§;
   import §^"S§.§9$=§;
   import §^"S§.§>$7§;
   import §^"S§.DisplayObject;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!Z§
   {
      
      public static const §^"9§:int = 0;
      
      public static const §'#y§:int = 1;
      
      public static const §%!%§:int = 2;
      
      private static var §[a§:Point = new Point();
      
      private static var §^$§:Rectangle = new Rectangle();
      
      private static var §3!_§:AGALMiniAssembler = new AGALMiniAssembler();
       
      
      private var §+"b§:Matrix;
      
      private var §%# §:Matrix;
      
      private var §#"d§:Matrix;
      
      private var mMvpMatrix3D:Matrix3D;
      
      private var §="P§:Vector.<Matrix>;
      
      private var §'"y§:int;
      
      private var §6#M§:int;
      
      private var §"$7§:int;
      
      private var §+"o§:Texture;
      
      private var §5$6§:int;
      
      private var §8"w§:int;
      
      private var §9$#§:Rectangle;
      
      private var §,#s§:Vector.<§9$=§>;
      
      private var §;!I§:int;
      
      private var §=#1§:Context3D;
      
      private var §"$B§:int = -1;
      
      private var §@#o§:Program3D = null;
      
      private var §`!K§:Boolean = false;
      
      private var §!"v§:Boolean = false;
      
      private var §%";§:Vector.<§3#`§>;
      
      private var § 5§:int = 0;
      
      public function §[!Z§()
      {
         this.§%";§ = new Vector.<§3#`§>();
         super();
         this.§+"b§ = new Matrix();
         this.§%# § = new Matrix();
         this.§#"d§ = new Matrix();
         this.mMvpMatrix3D = new Matrix3D();
         this.§="P§ = new Vector.<Matrix>(0);
         this.§'"y§ = 0;
         this.§6#M§ = 0;
         this.§+"o§ = null;
         this.§"$7§ = §>$7§.NORMAL;
         this.§9$#§ = new Rectangle();
         this.§;!I§ = 0;
         this.§,#s§ = new <§9$=§>[new §9$=§()];
         this.§2"o§();
         this.§3";§(0,0,400,300);
      }
      
      public static function §2"l§(param1:Matrix, param2:DisplayObject) : void
      {
         §[!b§.§!+§(param1,param2.§!C§);
      }
      
      public static function §>#d§(param1:Boolean) : void
      {
         setBlendFactors(param1);
      }
      
      public static function setBlendFactors(param1:Boolean, param2:int = 0) : void
      {
         var _loc3_:Array = §>$7§.§=y§(param2,param1);
         Starling.context.setBlendFactors(_loc3_[0],_loc3_[1]);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(Color.§["=§(param2) / 255,Color.§>#U§(param2) / 255,Color.§9$%§(param2) / 255,param3);
      }
      
      public static function §?"r§(param1:String, param2:String, param3:Program3D = null) : Program3D
      {
         var _loc4_:Context3D = null;
         if(param3 == null)
         {
            if((_loc4_ = Starling.context) == null)
            {
               throw new §;$%§();
            }
            param3 = _loc4_.createProgram();
         }
         param3.upload(§3!_§.§2#1§(Context3DProgramType.VERTEX,param1),§3!_§.§2#1§(Context3DProgramType.FRAGMENT,param2));
         return param3;
      }
      
      public function §^p§(param1:Context3D, param2:int) : void
      {
         this.§=#1§ = param1;
         this.§"$B§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§=#1§;
      }
      
      public function get §!!N§() : int
      {
         return this.§"$B§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9$=§ = null;
         for each(_loc1_ in this.§,#s§)
         {
            _loc1_.dispose();
         }
      }
      
      public function §3";§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§+"b§.setTo(2 / param3,0,0,-2 / param4,-(2 * param1 + param3) / param3,(2 * param2 + param4) / param4);
      }
      
      public function §2"o§() : void
      {
         this.§%# §.identity();
      }
      
      public function §]!G§(param1:Number, param2:Number) : void
      {
         §[!b§.§<t§(this.§%# §,param1,param2);
      }
      
      public function §"#!§(param1:Number) : void
      {
         §[!b§.§@">§(this.§%# §,param1);
      }
      
      public function §2#!§(param1:Number, param2:Number) : void
      {
         §[!b§.§%&§(this.§%# §,param1,param2);
      }
      
      public function §!+§(param1:Matrix) : void
      {
         §[!b§.§!+§(this.§%# §,param1);
      }
      
      public function §7$5§(param1:DisplayObject) : void
      {
         §[!b§.§!+§(this.§%# §,param1.§!C§);
      }
      
      public function §super§() : void
      {
         if(this.§="P§.length < this.§'"y§ + 1)
         {
            this.§="P§.push(new Matrix());
         }
         this.§="P§[int(this.§'"y§++)].copyFrom(this.§%# §);
      }
      
      public function §-"k§() : void
      {
         this.§%# §.copyFrom(this.§="P§[int(--this.§'"y§)]);
      }
      
      public function §<"'§() : void
      {
         this.§'"y§ = 0;
         this.§2"o§();
      }
      
      public function get §4$,§() : Matrix
      {
         this.§#"d§.copyFrom(this.§%# §);
         this.§#"d§.concat(this.§+"b§);
         return this.§#"d§;
      }
      
      public function get mvpMatrix3D() : Matrix3D
      {
         return §[!b§.§do§(this.§4$,§,this.mMvpMatrix3D);
      }
      
      public function get §9!$§() : Matrix
      {
         return this.§%# §;
      }
      
      public function get §]#N§() : Matrix
      {
         return this.§+"b§;
      }
      
      public function §^$!§(param1:Boolean) : void
      {
         setBlendFactors(param1,this.§"$7§);
      }
      
      public function get blendMode() : int
      {
         return this.§"$7§;
      }
      
      public function set blendMode(param1:int) : void
      {
         if(param1 != §>$7§.AUTO)
         {
            this.§"$7§ = param1;
         }
      }
      
      public function get §5<§() : Texture
      {
         return this.§+"o§;
      }
      
      public function set §5<§(param1:Texture) : void
      {
         this.§+"o§ = param1;
         if(param1)
         {
            Starling.context.setRenderToTexture(param1.getBase(this.context));
         }
         else
         {
            Starling.context.setRenderToBackBuffer();
         }
      }
      
      public function configureBackBuffer(param1:int, param2:int, param3:int, param4:Boolean) : void
      {
         if(Starling.context == null)
         {
            return;
         }
         if(Starling.context.driverInfo == "Disposed")
         {
            return;
         }
         this.§5$6§ = param1;
         this.§8"w§ = param2;
         Starling.context.configureBackBuffer(param1,param2,param3,param4);
      }
      
      public function get §?D§() : int
      {
         return this.§5$6§;
      }
      
      public function set §?D§(param1:int) : void
      {
         this.§5$6§ = param1;
      }
      
      public function get §<"M§() : int
      {
         return this.§8"w§;
      }
      
      public function set §<"M§(param1:int) : void
      {
         this.§8"w§ = param1;
      }
      
      public function get §+$5§() : Rectangle
      {
         return !!this.§9$#§.isEmpty() ? null : this.§9$#§;
      }
      
      public function set §+$5§(param1:Rectangle) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1)
         {
            this.§9$#§.setTo(param1.x,param1.y,param1.width,param1.height);
            _loc2_ = !!this.§+"o§ ? int(this.§+"o§.root.nativeWidth) : int(this.§5$6§);
            _loc3_ = !!this.§+"o§ ? int(this.§+"o§.root.nativeHeight) : int(this.§8"w§);
            §[!b§.§<§(this.§+"b§,param1.x,param1.y,§[a§);
            §^$§.x = Math.max(0,(§[a§.x + 1) / 2) * _loc2_;
            §^$§.y = Math.max(0,(-§[a§.y + 1) / 2) * _loc3_;
            §[!b§.§<§(this.§+"b§,param1.right,param1.bottom,§[a§);
            §^$§.right = Math.min(1,(§[a§.x + 1) / 2) * _loc2_;
            §^$§.bottom = Math.min(1,(-§[a§.y + 1) / 2) * _loc3_;
            Starling.context.setScissorRectangle(§^$§);
         }
         else
         {
            this.§9$#§.setEmpty();
            Starling.context.setScissorRectangle(null);
         }
      }
      
      public function batchQuad(param1:§'#E§, param2:Number, param3:Texture = null, param4:int = 1) : void
      {
         if(!this.§!"v§ || param1.sortValue == 0)
         {
            this.§-"l§(param1,param2,param3,param4,this.§%# §,this.§"$7§);
         }
         else
         {
            this.§?$4§(param1,param2,param3,param4,this.§%# §,this.§"$7§);
         }
      }
      
      private function §-"l§(param1:§'#E§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§,#s§[this.§;!I§].isStateChange(param1.tinted,param2,param3,param4,param6,param1.§,!Y§))
         {
            this.§>#s§();
         }
         this.§,#s§[this.§;!I§].addQuad(param1,param2,param3,param4,param5,param6);
      }
      
      private function §?$4§(param1:§'#E§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§ 5§ >= this.§%";§.length)
         {
            this.§%";§.push(new §3#`§());
         }
         var _loc7_:§3#`§;
         (_loc7_ = this.§%";§[this.§ 5§]).§ $;§(param1,param2,param3,param4,param5,param6);
         ++this.§ 5§;
      }
      
      public function set §?!L§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§3#`§ = null;
         if(this.§!"v§ && !param1)
         {
            this.§!"v§ = false;
            _loc2_ = [];
            _loc3_ = 0;
            while(_loc3_ < this.§ 5§)
            {
               _loc2_.push(this.§%";§[_loc3_]);
               _loc3_++;
            }
            _loc2_.sortOn("sortValue",Array.NUMERIC | Array.DESCENDING);
            _loc4_ = 0;
            while(_loc4_ < this.§ 5§)
            {
               _loc5_ = _loc2_[_loc4_];
               this.§-"l§(_loc5_.§%!]§,_loc5_.§=#y§,_loc5_.texture,_loc5_.smoothing,_loc5_.§9!$§,_loc5_.blendMode);
               _loc4_++;
            }
            this.§ 5§ = 0;
         }
         else
         {
            this.§!"v§ = param1;
         }
      }
      
      public function §>#s§() : void
      {
         if(this.§!"v§)
         {
            this.§?!L§ = false;
         }
         var _loc1_:§9$=§ = this.§,#s§[this.§;!I§];
         if(_loc1_.§"L§ != 0)
         {
            _loc1_.§[!h§(this,this.§+"b§);
            _loc1_.reset();
            ++this.§;!I§;
            ++this.§6#M§;
            if(this.§,#s§.length <= this.§;!I§)
            {
               this.§,#s§.push(new §9$=§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§<"'§();
         this.§"$7§ = §>$7§.NORMAL;
         this.§;!I§ = 0;
         this.§6#M§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         §[!Z§.clear(param1,param2,param3);
      }
      
      public function §>"b§(param1:uint = 1) : void
      {
         this.§6#M§ += param1;
      }
      
      public function get §<D§() : int
      {
         return this.§6#M§;
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
      
      public function set §%"I§(param1:Boolean) : void
      {
         this.§`!K§ = param1;
      }
      
      public function get §%"I§() : Boolean
      {
         return this.§`!K§;
      }
      
      public function §5U§(param1:Program3D) : void
      {
         if(!this.§`!K§)
         {
            this.§@#o§ = param1;
            this.context.setProgram(this.§@#o§);
         }
      }
   }
}
