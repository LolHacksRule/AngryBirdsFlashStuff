package §^a§
{
   import §'#Z§.§1#w§;
   import §1&§.Texture;
   import §4"D§.Color;
   import §4"D§.§^!]§;
   import §9#U§.AGALMiniAssembler;
   import §9$§.§3f§;
   import §9$§.DisplayObject;
   import §9$§.§["T§;
   import §9$§.§],§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'"1§
   {
      
      public static const §="8§:int = 0;
      
      public static const §>!U§:int = 1;
      
      public static const §-#`§:int = 2;
      
      private static var § "b§:Point = new Point();
      
      private static var §"#Q§:Rectangle = new Rectangle();
      
      private static var §>`§:AGALMiniAssembler = new AGALMiniAssembler();
       
      
      private var §@!0§:Matrix;
      
      private var §%#W§:Matrix;
      
      private var §0@§:Matrix;
      
      private var mMvpMatrix3D:Matrix3D;
      
      private var §+"<§:Vector.<Matrix>;
      
      private var §["d§:int;
      
      private var §#$&§:int;
      
      private var §+"K§:int;
      
      private var §+#G§:Texture;
      
      private var §0#-§:int;
      
      private var § $3§:int;
      
      private var §-!D§:Rectangle;
      
      private var §@#Z§:Vector.<§3f§>;
      
      private var § $!§:int;
      
      private var §+"&§:Context3D;
      
      private var §8!w§:int = -1;
      
      private var §"f§:Program3D = null;
      
      private var §[!l§:Boolean = false;
      
      private var §%!b§:Boolean = false;
      
      private var §?#2§:Vector.<§?" §>;
      
      private var §0!Q§:int = 0;
      
      public function §'"1§()
      {
         this.§?#2§ = new Vector.<§?" §>();
         super();
         this.§@!0§ = new Matrix();
         this.§%#W§ = new Matrix();
         this.§0@§ = new Matrix();
         this.mMvpMatrix3D = new Matrix3D();
         this.§+"<§ = new Vector.<Matrix>(0);
         this.§["d§ = 0;
         this.§#$&§ = 0;
         this.§+#G§ = null;
         this.§+"K§ = §["T§.NORMAL;
         this.§-!D§ = new Rectangle();
         this.§ $!§ = 0;
         this.§@#Z§ = new <§3f§>[new §3f§()];
         this.§?#0§();
         this.§`#[§(0,0,400,300);
      }
      
      public static function §>0§(param1:Matrix, param2:DisplayObject) : void
      {
         §^!]§.§'e§(param1,param2.§[#q§);
      }
      
      public static function §[#?§(param1:Boolean) : void
      {
         setBlendFactors(param1);
      }
      
      public static function setBlendFactors(param1:Boolean, param2:int = 0) : void
      {
         var _loc3_:Array = §["T§.§ !v§(param2,param1);
         Starling.context.setBlendFactors(_loc3_[0],_loc3_[1]);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(Color.§<!D§(param2) / 255,Color.§"!8§(param2) / 255,Color.§7!i§(param2) / 255,param3);
      }
      
      public static function §%#_§(param1:String, param2:String, param3:Program3D = null) : Program3D
      {
         var _loc4_:Context3D = null;
         if(param3 == null)
         {
            if((_loc4_ = Starling.context) == null)
            {
               throw new §1#w§();
            }
            param3 = _loc4_.createProgram();
         }
         param3.upload(§>`§.§@_§(Context3DProgramType.VERTEX,param1),§>`§.§@_§(Context3DProgramType.FRAGMENT,param2));
         return param3;
      }
      
      public function §7"&§(param1:Context3D, param2:int) : void
      {
         this.§+"&§ = param1;
         this.§8!w§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§+"&§;
      }
      
      public function get §-#L§() : int
      {
         return this.§8!w§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3f§ = null;
         for each(_loc1_ in this.§@#Z§)
         {
            _loc1_.dispose();
         }
      }
      
      public function §`#[§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§@!0§.setTo(2 / param3,0,0,-2 / param4,-(2 * param1 + param3) / param3,(2 * param2 + param4) / param4);
      }
      
      public function §?#0§() : void
      {
         this.§%#W§.identity();
      }
      
      public function §-!b§(param1:Number, param2:Number) : void
      {
         §^!]§.§7#H§(this.§%#W§,param1,param2);
      }
      
      public function §0!E§(param1:Number) : void
      {
         §^!]§.§]";§(this.§%#W§,param1);
      }
      
      public function §&#?§(param1:Number, param2:Number) : void
      {
         §^!]§.§-#'§(this.§%#W§,param1,param2);
      }
      
      public function §'e§(param1:Matrix) : void
      {
         §^!]§.§'e§(this.§%#W§,param1);
      }
      
      public function §!"D§(param1:DisplayObject) : void
      {
         §^!]§.§'e§(this.§%#W§,param1.§[#q§);
      }
      
      public function §]#k§() : void
      {
         if(this.§+"<§.length < this.§["d§ + 1)
         {
            this.§+"<§.push(new Matrix());
         }
         this.§+"<§[int(this.§["d§++)].copyFrom(this.§%#W§);
      }
      
      public function §[d§() : void
      {
         this.§%#W§.copyFrom(this.§+"<§[int(--this.§["d§)]);
      }
      
      public function §0F§() : void
      {
         this.§["d§ = 0;
         this.§?#0§();
      }
      
      public function get §?9§() : Matrix
      {
         this.§0@§.copyFrom(this.§%#W§);
         this.§0@§.concat(this.§@!0§);
         return this.§0@§;
      }
      
      public function get mvpMatrix3D() : Matrix3D
      {
         return §^!]§.§6! §(this.§?9§,this.mMvpMatrix3D);
      }
      
      public function get §?!@§() : Matrix
      {
         return this.§%#W§;
      }
      
      public function get §##F§() : Matrix
      {
         return this.§@!0§;
      }
      
      public function § "@§(param1:Boolean) : void
      {
         setBlendFactors(param1,this.§+"K§);
      }
      
      public function get blendMode() : int
      {
         return this.§+"K§;
      }
      
      public function set blendMode(param1:int) : void
      {
         if(param1 != §["T§.AUTO)
         {
            this.§+"K§ = param1;
         }
      }
      
      public function get §3Q§() : Texture
      {
         return this.§+#G§;
      }
      
      public function set §3Q§(param1:Texture) : void
      {
         this.§+#G§ = param1;
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
         this.§0#-§ = param1;
         this.§ $3§ = param2;
         Starling.context.configureBackBuffer(param1,param2,param3,param4);
      }
      
      public function get §!#'§() : int
      {
         return this.§0#-§;
      }
      
      public function set §!#'§(param1:int) : void
      {
         this.§0#-§ = param1;
      }
      
      public function get §?"W§() : int
      {
         return this.§ $3§;
      }
      
      public function set §?"W§(param1:int) : void
      {
         this.§ $3§ = param1;
      }
      
      public function get §finally§() : Rectangle
      {
         return !!this.§-!D§.isEmpty() ? null : this.§-!D§;
      }
      
      public function set §finally§(param1:Rectangle) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1)
         {
            this.§-!D§.setTo(param1.x,param1.y,param1.width,param1.height);
            _loc2_ = !!this.§+#G§ ? int(this.§+#G§.root.nativeWidth) : int(this.§0#-§);
            _loc3_ = !!this.§+#G§ ? int(this.§+#G§.root.nativeHeight) : int(this.§ $3§);
            §^!]§.§>-§(this.§@!0§,param1.x,param1.y,§ "b§);
            §"#Q§.x = Math.max(0,(§ "b§.x + 1) / 2) * _loc2_;
            §"#Q§.y = Math.max(0,(-§ "b§.y + 1) / 2) * _loc3_;
            §^!]§.§>-§(this.§@!0§,param1.right,param1.bottom,§ "b§);
            §"#Q§.right = Math.min(1,(§ "b§.x + 1) / 2) * _loc2_;
            §"#Q§.bottom = Math.min(1,(-§ "b§.y + 1) / 2) * _loc3_;
            Starling.context.setScissorRectangle(§"#Q§);
         }
         else
         {
            this.§-!D§.setEmpty();
            Starling.context.setScissorRectangle(null);
         }
      }
      
      public function batchQuad(param1:§],§, param2:Number, param3:Texture = null, param4:int = 1) : void
      {
         if(!this.§%!b§ || param1.sortValue == 0)
         {
            this.§2!h§(param1,param2,param3,param4,this.§%#W§,this.§+"K§);
         }
         else
         {
            this.§%"V§(param1,param2,param3,param4,this.§%#W§,this.§+"K§);
         }
      }
      
      private function §2!h§(param1:§],§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§@#Z§[this.§ $!§].isStateChange(param1.tinted,param2,param3,param4,param6,param1.§=v§))
         {
            this.§^!u§();
         }
         this.§@#Z§[this.§ $!§].addQuad(param1,param2,param3,param4,param5,param6);
      }
      
      private function §%"V§(param1:§],§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§0!Q§ >= this.§?#2§.length)
         {
            this.§?#2§.push(new §?" §());
         }
         this.§?#2§[this.§0!Q§].§,$-§(param1,param2,param3,param4,param5,param6);
         ++this.§0!Q§;
      }
      
      public function set §&"q§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§?" § = null;
         if(this.§%!b§ && !param1)
         {
            this.§%!b§ = false;
            _loc2_ = [];
            _loc3_ = 0;
            while(_loc3_ < this.§0!Q§)
            {
               _loc2_.push(this.§?#2§[_loc3_]);
               _loc3_++;
            }
            _loc2_.sortOn("sortValue",Array.NUMERIC | Array.DESCENDING);
            _loc4_ = 0;
            while(_loc4_ < this.§0!Q§)
            {
               _loc5_ = _loc2_[_loc4_];
               this.§2!h§(_loc5_.§9#"§,_loc5_.§@"h§,_loc5_.texture,_loc5_.smoothing,_loc5_.§?!@§,_loc5_.blendMode);
               _loc4_++;
            }
            this.§0!Q§ = 0;
         }
         else
         {
            this.§%!b§ = param1;
         }
      }
      
      public function §^!u§() : void
      {
         if(this.§%!b§)
         {
            this.§&"q§ = false;
         }
         var _loc1_:§3f§ = this.§@#Z§[this.§ $!§];
         if(_loc1_.§,!O§ != 0)
         {
            _loc1_.§function§(this,this.§@!0§);
            _loc1_.reset();
            ++this.§ $!§;
            ++this.§#$&§;
            if(this.§@#Z§.length <= this.§ $!§)
            {
               this.§@#Z§.push(new §3f§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§0F§();
         this.§+"K§ = §["T§.NORMAL;
         this.§ $!§ = 0;
         this.§#$&§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         §'"1§.clear(param1,param2,param3);
      }
      
      public function §"#R§(param1:uint = 1) : void
      {
         this.§#$&§ += param1;
      }
      
      public function get §^#d§() : int
      {
         return this.§#$&§;
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
      
      public function set §5#m§(param1:Boolean) : void
      {
         this.§[!l§ = param1;
      }
      
      public function get §5#m§() : Boolean
      {
         return this.§[!l§;
      }
      
      public function §0#0§(param1:Program3D) : void
      {
         if(!this.§[!l§)
         {
            this.§"f§ = param1;
            this.context.setProgram(this.§"f§);
         }
      }
   }
}
