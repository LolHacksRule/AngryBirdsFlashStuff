package §9+§
{
   import §&!v§.§0"s§;
   import §&!v§.§1i§;
   import §&!v§.DisplayObject;
   import §&!v§.§^"L§;
   import §,!p§.AGALMiniAssembler;
   import §-"+§.Texture;
   import §7v§.§-D§;
   import §>l§.§+!Y§;
   import §>l§.Color;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]"+§
   {
      
      public static const §&#=§:int = 0;
      
      public static const §@!v§:int = 1;
      
      public static const §%"Y§:int = 2;
      
      private static var §%!U§:Point = new Point();
      
      private static var §5#o§:Rectangle = new Rectangle();
      
      private static var §2!e§:AGALMiniAssembler = new AGALMiniAssembler();
       
      
      private var §&!T§:Matrix;
      
      private var §6#H§:Matrix;
      
      private var §[!+§:Matrix;
      
      private var mMvpMatrix3D:Matrix3D;
      
      private var §6$;§:Vector.<Matrix>;
      
      private var §1!g§:int;
      
      private var §'6§:int;
      
      private var §8!<§:int;
      
      private var §3#a§:Texture;
      
      private var §0#3§:int;
      
      private var §6!q§:int;
      
      private var §3#5§:Rectangle;
      
      private var §>$=§:Vector.<§^"L§>;
      
      private var §"!v§:int;
      
      private var §#J§:Context3D;
      
      private var §@""§:int = -1;
      
      private var §+!m§:Program3D = null;
      
      private var § "0§:Boolean = false;
      
      private var §0#n§:Boolean = false;
      
      private var §##&§:Vector.<§3!@§>;
      
      private var §6#s§:int = 0;
      
      public function §]"+§()
      {
         this.§##&§ = new Vector.<§3!@§>();
         super();
         this.§&!T§ = new Matrix();
         this.§6#H§ = new Matrix();
         this.§[!+§ = new Matrix();
         this.mMvpMatrix3D = new Matrix3D();
         this.§6$;§ = new Vector.<Matrix>(0);
         this.§1!g§ = 0;
         this.§'6§ = 0;
         this.§3#a§ = null;
         this.§8!<§ = §1i§.NORMAL;
         this.§3#5§ = new Rectangle();
         this.§"!v§ = 0;
         this.§>$=§ = new <§^"L§>[new §^"L§()];
         this.§`#R§();
         this.§>" §(0,0,400,300);
      }
      
      public static function §"#y§(param1:Matrix, param2:DisplayObject) : void
      {
         §+!Y§.§'!V§(param1,param2.§!7§);
      }
      
      public static function §0#C§(param1:Boolean) : void
      {
         setBlendFactors(param1);
      }
      
      public static function setBlendFactors(param1:Boolean, param2:int = 0) : void
      {
         var _loc3_:Array = §1i§.§[!k§(param2,param1);
         Starling.context.setBlendFactors(_loc3_[0],_loc3_[1]);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(Color.§,m§(param2) / 255,Color.§^!S§(param2) / 255,Color.§>#t§(param2) / 255,param3);
      }
      
      public static function §5!6§(param1:String, param2:String, param3:Program3D = null) : Program3D
      {
         var _loc4_:Context3D = null;
         if(param3 == null)
         {
            if((_loc4_ = Starling.context) == null)
            {
               throw new §-D§();
            }
            param3 = _loc4_.createProgram();
         }
         param3.upload(§2!e§.§+"3§(Context3DProgramType.VERTEX,param1),§2!e§.§+"3§(Context3DProgramType.FRAGMENT,param2));
         return param3;
      }
      
      public function §,7§(param1:Context3D, param2:int) : void
      {
         this.§#J§ = param1;
         this.§@""§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§#J§;
      }
      
      public function get §'!i§() : int
      {
         return this.§@""§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^"L§ = null;
         for each(_loc1_ in this.§>$=§)
         {
            _loc1_.dispose();
         }
      }
      
      public function §>" §(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§&!T§.setTo(2 / param3,0,0,-2 / param4,-(2 * param1 + param3) / param3,(2 * param2 + param4) / param4);
      }
      
      public function §`#R§() : void
      {
         this.§6#H§.identity();
      }
      
      public function §&"U§(param1:Number, param2:Number) : void
      {
         §+!Y§.§-!i§(this.§6#H§,param1,param2);
      }
      
      public function §7"s§(param1:Number) : void
      {
         §+!Y§.§6"[§(this.§6#H§,param1);
      }
      
      public function §9!_§(param1:Number, param2:Number) : void
      {
         §+!Y§.§5+§(this.§6#H§,param1,param2);
      }
      
      public function §'!V§(param1:Matrix) : void
      {
         §+!Y§.§'!V§(this.§6#H§,param1);
      }
      
      public function §3!k§(param1:DisplayObject) : void
      {
         §+!Y§.§'!V§(this.§6#H§,param1.§!7§);
      }
      
      public function §>!G§() : void
      {
         if(this.§6$;§.length < this.§1!g§ + 1)
         {
            this.§6$;§.push(new Matrix());
         }
         this.§6$;§[int(this.§1!g§++)].copyFrom(this.§6#H§);
      }
      
      public function §`!5§() : void
      {
         this.§6#H§.copyFrom(this.§6$;§[int(--this.§1!g§)]);
      }
      
      public function §^!^§() : void
      {
         this.§1!g§ = 0;
         this.§`#R§();
      }
      
      public function get §!p§() : Matrix
      {
         this.§[!+§.copyFrom(this.§6#H§);
         this.§[!+§.concat(this.§&!T§);
         return this.§[!+§;
      }
      
      public function get mvpMatrix3D() : Matrix3D
      {
         return §+!Y§.§[!o§(this.§!p§,this.mMvpMatrix3D);
      }
      
      public function get §]!l§() : Matrix
      {
         return this.§6#H§;
      }
      
      public function get §3#q§() : Matrix
      {
         return this.§&!T§;
      }
      
      public function §@q§(param1:Boolean) : void
      {
         setBlendFactors(param1,this.§8!<§);
      }
      
      public function get blendMode() : int
      {
         return this.§8!<§;
      }
      
      public function set blendMode(param1:int) : void
      {
         if(param1 != §1i§.AUTO)
         {
            this.§8!<§ = param1;
         }
      }
      
      public function get §0$9§() : Texture
      {
         return this.§3#a§;
      }
      
      public function set §0$9§(param1:Texture) : void
      {
         this.§3#a§ = param1;
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
         this.§0#3§ = param1;
         this.§6!q§ = param2;
         Starling.context.configureBackBuffer(param1,param2,param3,param4);
      }
      
      public function get §4#B§() : int
      {
         return this.§0#3§;
      }
      
      public function set §4#B§(param1:int) : void
      {
         this.§0#3§ = param1;
      }
      
      public function get §'"5§() : int
      {
         return this.§6!q§;
      }
      
      public function set §'"5§(param1:int) : void
      {
         this.§6!q§ = param1;
      }
      
      public function get §@#@§() : Rectangle
      {
         return !!this.§3#5§.isEmpty() ? null : this.§3#5§;
      }
      
      public function set §@#@§(param1:Rectangle) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1)
         {
            this.§3#5§.setTo(param1.x,param1.y,param1.width,param1.height);
            _loc2_ = !!this.§3#a§ ? int(this.§3#a§.root.nativeWidth) : int(this.§0#3§);
            _loc3_ = !!this.§3#a§ ? int(this.§3#a§.root.nativeHeight) : int(this.§6!q§);
            §+!Y§.§^t§(this.§&!T§,param1.x,param1.y,§%!U§);
            §5#o§.x = Math.max(0,(§%!U§.x + 1) / 2) * _loc2_;
            §5#o§.y = Math.max(0,(-§%!U§.y + 1) / 2) * _loc3_;
            §+!Y§.§^t§(this.§&!T§,param1.right,param1.bottom,§%!U§);
            §5#o§.right = Math.min(1,(§%!U§.x + 1) / 2) * _loc2_;
            §5#o§.bottom = Math.min(1,(-§%!U§.y + 1) / 2) * _loc3_;
            Starling.context.setScissorRectangle(§5#o§);
         }
         else
         {
            this.§3#5§.setEmpty();
            Starling.context.setScissorRectangle(null);
         }
      }
      
      public function batchQuad(param1:§0"s§, param2:Number, param3:Texture = null, param4:int = 1) : void
      {
         if(!this.§0#n§ || param1.sortValue == 0)
         {
            this.§'$=§(param1,param2,param3,param4,this.§6#H§,this.§8!<§);
         }
         else
         {
            this.§=#K§(param1,param2,param3,param4,this.§6#H§,this.§8!<§);
         }
      }
      
      private function §'$=§(param1:§0"s§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§>$=§[this.§"!v§].isStateChange(param1.tinted,param2,param3,param4,param6,param1.§="&§))
         {
            this.§&!K§();
         }
         this.§>$=§[this.§"!v§].addQuad(param1,param2,param3,param4,param5,param6);
      }
      
      private function §=#K§(param1:§0"s§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§6#s§ >= this.§##&§.length)
         {
            this.§##&§.push(new §3!@§());
         }
         var _loc7_:§3!@§;
         (_loc7_ = this.§##&§[this.§6#s§]).§`"x§(param1,param2,param3,param4,param5,param6);
         ++this.§6#s§;
      }
      
      public function set §3!0§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§3!@§ = null;
         if(this.§0#n§ && !param1)
         {
            this.§0#n§ = false;
            _loc2_ = [];
            _loc3_ = 0;
            while(_loc3_ < this.§6#s§)
            {
               _loc2_.push(this.§##&§[_loc3_]);
               _loc3_++;
            }
            _loc2_.sortOn("sortValue",Array.NUMERIC | Array.DESCENDING);
            _loc4_ = 0;
            while(_loc4_ < this.§6#s§)
            {
               _loc5_ = _loc2_[_loc4_];
               this.§'$=§(_loc5_.§1S§,_loc5_.§0Z§,_loc5_.texture,_loc5_.smoothing,_loc5_.§]!l§,_loc5_.blendMode);
               _loc4_++;
            }
            this.§6#s§ = 0;
         }
         else
         {
            this.§0#n§ = param1;
         }
      }
      
      public function §&!K§() : void
      {
         if(this.§0#n§)
         {
            this.§3!0§ = false;
         }
         var _loc1_:§^"L§ = this.§>$=§[this.§"!v§];
         if(_loc1_.§1$ § != 0)
         {
            _loc1_.§"!2§(this,this.§&!T§);
            _loc1_.reset();
            ++this.§"!v§;
            ++this.§'6§;
            if(this.§>$=§.length <= this.§"!v§)
            {
               this.§>$=§.push(new §^"L§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§^!^§();
         this.§8!<§ = §1i§.NORMAL;
         this.§"!v§ = 0;
         this.§'6§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         §]"+§.clear(param1,param2,param3);
      }
      
      public function §[a§(param1:uint = 1) : void
      {
         this.§'6§ += param1;
      }
      
      public function get §6S§() : int
      {
         return this.§'6§;
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
      
      public function set §'#,§(param1:Boolean) : void
      {
         this.§ "0§ = param1;
      }
      
      public function get §'#,§() : Boolean
      {
         return this.§ "0§;
      }
      
      public function §<$3§(param1:Program3D) : void
      {
         if(!this.§ "0§)
         {
            this.§+!m§ = param1;
            this.context.setProgram(this.§+!m§);
         }
      }
   }
}
