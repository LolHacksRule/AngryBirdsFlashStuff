package §]"P§
{
   import §!6§.§4";§;
   import §!6§.§9§;
   import §!6§.§9$'§;
   import §!6§.DisplayObject;
   import §""'§.Texture;
   import §#"l§.§<#^§;
   import §#"l§.Color;
   import §'!I§.AGALMiniAssembler;
   import §3!z§.§^!g§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!9§
   {
      
      public static const §;!,§:int = 0;
      
      public static const §'#w§:int = 1;
      
      public static const §65§:int = 2;
      
      private static var §+#V§:Point = new Point();
      
      private static var §1#C§:Rectangle = new Rectangle();
      
      private static var §8$;§:AGALMiniAssembler = new AGALMiniAssembler();
       
      
      private var §8#e§:Matrix;
      
      private var §"$$§:Matrix;
      
      private var §,#X§:Matrix;
      
      private var mMvpMatrix3D:Matrix3D;
      
      private var §9#7§:Vector.<Matrix>;
      
      private var §7! §:int;
      
      private var §#"7§:int;
      
      private var §]#i§:int;
      
      private var §8"R§:Texture;
      
      private var §`"x§:int;
      
      private var §&#W§:int;
      
      private var §%#?§:Rectangle;
      
      private var § h§:Vector.<§9$'§>;
      
      private var §0$&§:int;
      
      private var §1!;§:Context3D;
      
      private var §1D§:int = -1;
      
      private var §;§:Program3D = null;
      
      private var §>!z§:Boolean = false;
      
      private var §3"s§:Boolean = false;
      
      private var §+"+§:Vector.<§5#o§>;
      
      private var § $D§:int = 0;
      
      public function §4!9§()
      {
         this.§+"+§ = new Vector.<§5#o§>();
         super();
         this.§8#e§ = new Matrix();
         this.§"$$§ = new Matrix();
         this.§,#X§ = new Matrix();
         this.mMvpMatrix3D = new Matrix3D();
         this.§9#7§ = new Vector.<Matrix>(0);
         this.§7! § = 0;
         this.§#"7§ = 0;
         this.§8"R§ = null;
         this.§]#i§ = §9#6§.NORMAL;
         this.§%#?§ = new Rectangle();
         this.§0$&§ = 0;
         this.§ h§ = new <§9$'§>[new §9$'§()];
         this.§6#d§();
         this.§["l§(0,0,400,300);
      }
      
      public static function §0!C§(param1:Matrix, param2:DisplayObject) : void
      {
         §<#^§.§0$'§(param1,param2.§5!F§);
      }
      
      public static function §3"k§(param1:Boolean) : void
      {
         setBlendFactors(param1);
      }
      
      public static function setBlendFactors(param1:Boolean, param2:int = 0) : void
      {
         var _loc3_:Array = §9#6§.§'"e§(param2,param1);
         Starling.context.setBlendFactors(_loc3_[0],_loc3_[1]);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(Color.§1"M§(param2) / 255,Color.§%"i§(param2) / 255,Color.§ !Y§(param2) / 255,param3);
      }
      
      public static function §`!Z§(param1:String, param2:String, param3:Program3D = null) : Program3D
      {
         var _loc4_:Context3D = null;
         if(param3 == null)
         {
            if((_loc4_ = Starling.context) == null)
            {
               throw new §^!g§();
            }
            param3 = _loc4_.createProgram();
         }
         param3.upload(§8$;§.§-l§(Context3DProgramType.VERTEX,param1),§8$;§.§-l§(Context3DProgramType.FRAGMENT,param2));
         return param3;
      }
      
      public function §&8§(param1:Context3D, param2:int) : void
      {
         this.§1!;§ = param1;
         this.§1D§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§1!;§;
      }
      
      public function get §'y§() : int
      {
         return this.§1D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9$'§ = null;
         for each(_loc1_ in this.§ h§)
         {
            _loc1_.dispose();
         }
      }
      
      public function §["l§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§8#e§.setTo(2 / param3,0,0,-2 / param4,-(2 * param1 + param3) / param3,(2 * param2 + param4) / param4);
      }
      
      public function §6#d§() : void
      {
         this.§"$$§.identity();
      }
      
      public function §5D§(param1:Number, param2:Number) : void
      {
         §<#^§.§>"o§(this.§"$$§,param1,param2);
      }
      
      public function §-#'§(param1:Number) : void
      {
         §<#^§.§!1§(this.§"$$§,param1);
      }
      
      public function §'"5§(param1:Number, param2:Number) : void
      {
         §<#^§.§,e§(this.§"$$§,param1,param2);
      }
      
      public function §0$'§(param1:Matrix) : void
      {
         §<#^§.§0$'§(this.§"$$§,param1);
      }
      
      public function §]#]§(param1:DisplayObject) : void
      {
         §<#^§.§0$'§(this.§"$$§,param1.§5!F§);
      }
      
      public function §33§() : void
      {
         if(this.§9#7§.length < this.§7! § + 1)
         {
            this.§9#7§.push(new Matrix());
         }
         this.§9#7§[int(this.§7! §++)].copyFrom(this.§"$$§);
      }
      
      public function §5"f§() : void
      {
         this.§"$$§.copyFrom(this.§9#7§[int(--this.§7! §)]);
      }
      
      public function §0$4§() : void
      {
         this.§7! § = 0;
         this.§6#d§();
      }
      
      public function get §!!M§() : Matrix
      {
         this.§,#X§.copyFrom(this.§"$$§);
         this.§,#X§.concat(this.§8#e§);
         return this.§,#X§;
      }
      
      public function get mvpMatrix3D() : Matrix3D
      {
         return §<#^§.§+!h§(this.§!!M§,this.mMvpMatrix3D);
      }
      
      public function get §'"[§() : Matrix
      {
         return this.§"$$§;
      }
      
      public function get §0"l§() : Matrix
      {
         return this.§8#e§;
      }
      
      public function §2$8§(param1:Boolean) : void
      {
         setBlendFactors(param1,this.§]#i§);
      }
      
      public function get blendMode() : int
      {
         return this.§]#i§;
      }
      
      public function set blendMode(param1:int) : void
      {
         if(param1 != §9#6§.AUTO)
         {
            this.§]#i§ = param1;
         }
      }
      
      public function get §@!9§() : Texture
      {
         return this.§8"R§;
      }
      
      public function set §@!9§(param1:Texture) : void
      {
         this.§8"R§ = param1;
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
         this.§`"x§ = param1;
         this.§&#W§ = param2;
         Starling.context.configureBackBuffer(param1,param2,param3,param4);
      }
      
      public function get §&"7§() : int
      {
         return this.§`"x§;
      }
      
      public function set §&"7§(param1:int) : void
      {
         this.§`"x§ = param1;
      }
      
      public function get §?J§() : int
      {
         return this.§&#W§;
      }
      
      public function set §?J§(param1:int) : void
      {
         this.§&#W§ = param1;
      }
      
      public function get §&$=§() : Rectangle
      {
         return !!this.§%#?§.isEmpty() ? null : this.§%#?§;
      }
      
      public function set §&$=§(param1:Rectangle) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1)
         {
            this.§%#?§.setTo(param1.x,param1.y,param1.width,param1.height);
            _loc2_ = !!this.§8"R§ ? int(this.§8"R§.root.nativeWidth) : int(this.§`"x§);
            _loc3_ = !!this.§8"R§ ? int(this.§8"R§.root.nativeHeight) : int(this.§&#W§);
            §<#^§.§-!>§(this.§8#e§,param1.x,param1.y,§+#V§);
            §1#C§.x = Math.max(0,(§+#V§.x + 1) / 2) * _loc2_;
            §1#C§.y = Math.max(0,(-§+#V§.y + 1) / 2) * _loc3_;
            §<#^§.§-!>§(this.§8#e§,param1.right,param1.bottom,§+#V§);
            §1#C§.right = Math.min(1,(§+#V§.x + 1) / 2) * _loc2_;
            §1#C§.bottom = Math.min(1,(-§+#V§.y + 1) / 2) * _loc3_;
            Starling.context.setScissorRectangle(§1#C§);
         }
         else
         {
            this.§%#?§.setEmpty();
            Starling.context.setScissorRectangle(null);
         }
      }
      
      public function batchQuad(param1:§4";§, param2:Number, param3:Texture = null, param4:int = 1) : void
      {
         if(!this.§3"s§ || param1.sortValue == 0)
         {
            this.§1"0§(param1,param2,param3,param4,this.§"$$§,this.§]#i§);
         }
         else
         {
            this.§'[§(param1,param2,param3,param4,this.§"$$§,this.§]#i§);
         }
      }
      
      private function §1"0§(param1:§4";§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§ h§[this.§0$&§].isStateChange(param1.tinted,param2,param3,param4,param6,param1.§""#§))
         {
            this.§%"6§();
         }
         this.§ h§[this.§0$&§].addQuad(param1,param2,param3,param4,param5,param6);
      }
      
      private function §'[§(param1:§4";§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§ $D§ >= this.§+"+§.length)
         {
            this.§+"+§.push(new §5#o§());
         }
         this.§+"+§[this.§ $D§].§<!Q§(param1,param2,param3,param4,param5,param6);
         ++this.§ $D§;
      }
      
      public function set §]#c§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§5#o§ = null;
         if(this.§3"s§ && !param1)
         {
            this.§3"s§ = false;
            _loc2_ = [];
            _loc3_ = 0;
            while(_loc3_ < this.§ $D§)
            {
               _loc2_.push(this.§+"+§[_loc3_]);
               _loc3_++;
            }
            _loc2_.sortOn("sortValue",Array.NUMERIC | Array.DESCENDING);
            _loc4_ = 0;
            while(_loc4_ < this.§ $D§)
            {
               _loc5_ = _loc2_[_loc4_];
               this.§1"0§(_loc5_.§8$<§,_loc5_.§1" §,_loc5_.texture,_loc5_.smoothing,_loc5_.§'"[§,_loc5_.blendMode);
               _loc4_++;
            }
            this.§ $D§ = 0;
         }
         else
         {
            this.§3"s§ = param1;
         }
      }
      
      public function §%"6§() : void
      {
         if(this.§3"s§)
         {
            this.§]#c§ = false;
         }
         var _loc1_:§9$'§ = this.§ h§[this.§0$&§];
         if(_loc1_.§[r§ != 0)
         {
            if(this.context == null)
            {
               return;
            }
            if(this.context.driverInfo == "Disposed")
            {
               return;
            }
            _loc1_.§`#Z§(this,this.§8#e§);
            _loc1_.reset();
            ++this.§0$&§;
            ++this.§#"7§;
            if(this.§ h§.length <= this.§0$&§)
            {
               this.§ h§.push(new §9$'§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§0$4§();
         this.§]#i§ = §9#6§.NORMAL;
         this.§0$&§ = 0;
         this.§#"7§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         §4!9§.clear(param1,param2,param3);
      }
      
      public function §&!f§(param1:uint = 1) : void
      {
         this.§#"7§ += param1;
      }
      
      public function get §<#!§() : int
      {
         return this.§#"7§;
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
      
      public function set §,"g§(param1:Boolean) : void
      {
         this.§>!z§ = param1;
      }
      
      public function get §,"g§() : Boolean
      {
         return this.§>!z§;
      }
      
      public function §=h§(param1:Program3D) : void
      {
         if(!this.§>!z§)
         {
            this.§;§ = param1;
            this.context.setProgram(this.§;§);
         }
      }
   }
}
