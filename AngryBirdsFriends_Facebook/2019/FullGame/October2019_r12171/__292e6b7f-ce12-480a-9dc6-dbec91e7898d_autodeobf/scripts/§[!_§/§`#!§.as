package §[!_§
{
   import §"#k§.§79§;
   import §"#k§.Starling;
   import §'"T§.§^G§;
   import §'"T§.§`#y§;
   import §,#e§.§4!_§;
   import §,#e§.DisplayObject;
   import §,#e§.Image;
   import §,#e§.Stage;
   import §,#e§.§^n§;
   import §,$&§.Event;
   import §-#]§.Texture;
   import §8#p§.§"_§;
   import §8#p§.§="K§;
   import §8#p§.§>!B§;
   import §8#p§.getNextPowerOfTwo;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.Program3D;
   import flash.display3D.VertexBuffer3D;
   import flash.errors.IllegalOperationError;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.utils.getQualifiedClassName;
   
   public class §`#!§
   {
      
      private static var §<#_§:Rectangle = new Rectangle();
      
      private static var §?l§:Rectangle = new Rectangle();
      
      private static var §6b§:Matrix = new Matrix();
       
      
      protected const §6$6§:Boolean = true;
      
      protected const §>"s§:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2      \n";
      
      protected const §,G§:String = "tex oc, v0, fs0 <2d, clamp, linear, mipnone>";
      
      private var §<"8§:int = 0;
      
      private var §"a§:int = 2;
      
      private var §`"1§:int = 0;
      
      private var §0"?§:int = 1;
      
      private var §44§:int;
      
      private var §2!`§:Vector.<Texture>;
      
      private var §4"C§:String;
      
      private var §^!K§:Number;
      
      private var §,"L§:Number;
      
      private var §2#M§:Number;
      
      private var §&!l§:Number;
      
      private var §?"=§:Number;
      
      private var §?#9§:§>!B§;
      
      private var §2!R§:VertexBuffer3D;
      
      private var §'c§:VertexBuffer3D;
      
      private var §0"o§:Vector.<uint>;
      
      private var §3!S§:IndexBuffer3D;
      
      private var §-"?§:Boolean;
      
      private var §[#v§:§^n§;
      
      private var §^#j§:Texture;
      
      private var §]U§:Matrix;
      
      public function §`#!§(param1:int = 1, param2:Number = 1.0)
      {
         this.§]U§ = new Matrix();
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.filters::FragmentFilter")
         {
            throw new §`#y§();
         }
         if(param1 < 1)
         {
            throw new ArgumentError("At least one pass is required.");
         }
         this.§44§ = param1;
         this.§,"L§ = this.§2#M§ = 0;
         this.§&!l§ = this.§?"=§ = 0;
         this.§^!K§ = param2;
         this.§4"C§ = §,"I§.§7$$§;
         this.§?#9§ = new §>!B§(4);
         this.§?#9§.setTexCoords(0,0,0);
         this.§?#9§.setTexCoords(1,1,0);
         this.§?#9§.setTexCoords(2,0,1);
         this.§?#9§.setTexCoords(3,1,1);
         this.§0"o§ = new <uint>[0,1,2,1,3,2];
         this.§0"o§.fixed = true;
         this.createPrograms();
         Starling.§4$#§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§>E§,false,0,true);
      }
      
      public function dispose() : void
      {
         Starling.§4$#§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§>E§);
         if(this.§2!R§)
         {
            this.§2!R§.dispose();
         }
         if(this.§'c§)
         {
            this.§'c§.dispose();
         }
         if(this.§3!S§)
         {
            this.§3!S§.dispose();
         }
         this.§'$D§();
         this.§!"_§();
      }
      
      private function §>E§(param1:Object) : void
      {
         this.§2!R§ = null;
         this.§'c§ = null;
         this.§3!S§ = null;
         this.§2!`§ = null;
         this.createPrograms();
      }
      
      public function render(param1:DisplayObject, param2:§79§, param3:Number) : void
      {
         if(this.§-!N§ == §,"I§.§`#T§)
         {
            param1.render(param2,param3);
         }
         if(this.§-"?§)
         {
            this.§-"?§ = false;
            this.§[#v§ = this.§^!]§(param1,param2,1,true);
            this.§'$D§();
         }
         if(this.§[#v§)
         {
            this.§[#v§.render(param2,param3);
         }
         else
         {
            this.§^!]§(param1,param2,param3,false);
         }
         if(this.§-!N§ == §,"I§.§##S§)
         {
            param1.render(param2,param3);
         }
      }
      
      protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         this.§%#Q§(param1,§<#_§);
         this.§%"x§(§<#_§.width,§<#_§.height,this.§^!K§ * param2,param1);
      }
      
      protected function renderDisplayObject(param1:DisplayObject, param2:§79§, param3:Number) : void
      {
         var _loc4_:Context3D = param2.context;
         param2.§5L§ = this.§2!`§[0];
         param2.clear(_loc4_);
         param2.blendMode = §4!_§.NORMAL;
         param2.§0c§(§<#_§.x,§<#_§.y,§<#_§.width,§<#_§.height);
         param1.render(param2,param3);
         param2.§6@§();
      }
      
      protected function renderFilter(param1:DisplayObject, param2:§79§, param3:Boolean, param4:Number, param5:Texture) : §^n§
      {
         var _loc9_:Texture = null;
         var _loc10_:§^n§ = null;
         var _loc11_:Image = null;
         var _loc12_:Stage = null;
         param2.§ "4§(this.§44§);
         var _loc6_:Context3D = param2.context;
         var _loc7_:Texture = Texture.§1!_§(_loc6_,§<#_§.width,§<#_§.height,this.§6$6§,true,this.§^!K§ * param4);
         §79§.setBlendFactors(this.§6$6§);
         param2.§?!m§();
         _loc6_.setVertexBufferAt(this.§<"8§,this.§2!R§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc6_.setVertexBufferAt(this.§"a§,this.§'c§,0,Context3DVertexBufferFormat.FLOAT_2);
         var _loc8_:int = 0;
         while(_loc8_ < this.§44§)
         {
            if(_loc8_ < this.§44§ - 1)
            {
               param2.§5L§ = this.§!!Z§(_loc8_ + 1);
               param2.clear(_loc6_);
            }
            else if(param3)
            {
               param2.§5L§ = _loc7_;
               param2.clear(_loc6_);
            }
            else
            {
               param2.§5L§ = param5;
               param2.§[8§.copyFrom(this.§]U§);
               param2.§8""§(this.§&!l§,this.§?"=§);
               param2.blendMode = param1.blendMode;
               param2.§%#a§(this.§6$6§);
            }
            _loc9_ = this.§!!Z§(_loc8_);
            _loc6_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,this.§0"?§,param2.mvpMatrix3D,true);
            _loc6_.setTextureAt(this.§`"1§,_loc9_.getBase(_loc6_));
            this.activate(_loc8_,param2,_loc9_);
            _loc6_.drawTriangles(this.§3!S§,0,2);
            this.deactivate(_loc8_,param2,_loc9_);
            _loc8_++;
         }
         _loc6_.setVertexBufferAt(this.§<"8§,null);
         _loc6_.setVertexBufferAt(this.§"a§,null);
         _loc6_.setTextureAt(this.§`"1§,null);
         if(param3)
         {
            param2.§5L§ = param5;
            param2.§[8§.copyFrom(this.§]U§);
            _loc10_ = new §^n§();
            _loc11_ = new Image(_loc7_);
            (_loc12_ = param1.stage).§0#n§(param1,§6b§);
            §"_§.§3Q§(§6b§,§<#_§.x + this.§&!l§,§<#_§.y + this.§?"=§);
            _loc10_.§5!S§(_loc11_,1,§6b§);
            return _loc10_;
         }
         return null;
      }
      
      private function §^!]§(param1:DisplayObject, param2:§79§, param3:Number, param4:Boolean = false) : §^n§
      {
         var _loc5_:Stage = param1.stage;
         var _loc6_:Context3D = param2.context;
         if(_loc5_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         if(_loc6_ == null)
         {
            throw new §^G§();
         }
         this.calculateBounds(param1,_loc5_,!param4,§<#_§);
         if(§<#_§.isEmpty())
         {
            this.§'$D§();
            return !!param4 ? new §^n§() : null;
         }
         param2.§6@§();
         param2.§!!&§();
         var _loc7_:Number = Starling.§4$#§.§3!F§;
         this.updateBuffersAndTextures(_loc6_,_loc7_);
         this.§]U§.copyFrom(param2.§[8§);
         var _loc8_:Texture;
         if(_loc8_ = param2.§5L§)
         {
            throw new IllegalOperationError("It\'s currently not possible to stack filters! " + "This limitation will be removed in a future Stage3D version.");
         }
         this.renderDisplayObject(param1,param2,param3);
         var _loc9_:§^n§ = this.renderFilter(param1,param2,param4,_loc7_,_loc8_);
         param2.§&M§();
         return _loc9_;
      }
      
      private function §%#Q§(param1:Context3D, param2:Rectangle) : void
      {
         this.§?#9§.setPosition(0,param2.x,param2.y);
         this.§?#9§.setPosition(1,param2.right,param2.y);
         this.§?#9§.setPosition(2,param2.x,param2.bottom);
         this.§?#9§.setPosition(3,param2.right,param2.bottom);
         if(this.§2!R§ == null)
         {
            this.§2!R§ = param1.createVertexBuffer(4,§>!B§.§'p§);
         }
         if(this.§'c§ == null)
         {
            this.§'c§ = param1.createVertexBuffer(4,§>!B§.§^!c§);
         }
         if(this.§3!S§ == null)
         {
            this.§3!S§ = param1.createIndexBuffer(6);
            this.§3!S§.uploadFromVector(this.§0"o§,0,6);
         }
         this.§2!R§.uploadFromVector(this.§?#9§.§@1§,0,4);
         this.§'c§.uploadFromVector(this.§?#9§.§,#%§,0,4);
      }
      
      private function §%"x§(param1:int, param2:int, param3:Number, param4:Context3D) : void
      {
         var _loc7_:int = 0;
         var _loc8_:Texture = null;
         var _loc5_:int = this.§44§ > 1 ? 2 : 1;
         var _loc6_:Boolean;
         if(_loc6_ = this.§2!`§ == null || this.§2!`§.length != _loc5_ || this.§2!`§[0].width != param1 || this.§2!`§[0].height != param2)
         {
            if(this.§2!`§)
            {
               for each(_loc8_ in this.§2!`§)
               {
                  _loc8_.dispose();
               }
               this.§2!`§.length = _loc5_;
            }
            else
            {
               this.§2!`§ = new Vector.<Texture>(_loc5_);
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               this.§2!`§[_loc7_] = Texture.§1!_§(param4,param1,param2,this.§6$6§,true,param3);
               _loc7_++;
            }
         }
      }
      
      private function §!!Z§(param1:int) : Texture
      {
         this.§^#j§ = this.§2!`§[param1 % 2];
         return this.§^#j§;
      }
      
      protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         var _loc5_:Number = NaN;
         if(param1 == param2 || param1 == Starling.§4$#§.root)
         {
            param4.setTo(0,0,param2.stageWidth,param2.stageHeight);
         }
         else
         {
            param1.getBounds(param2,param4);
         }
         if(param3)
         {
            §?l§.setTo(0,0,param2.stageWidth,param2.stageHeight);
            §="K§.§&"s§(param4,§?l§,param4);
         }
         if(!param4.isEmpty())
         {
            _loc5_ = this.§^!K§ == 1 ? Number(0) : Number(1 / this.§^!K§);
            param4.x -= this.§,"L§ + _loc5_;
            param4.y -= this.§2#M§ + _loc5_;
            param4.width += 2 * (this.§,"L§ + _loc5_);
            param4.height += 2 * (this.§2#M§ + _loc5_);
            param4.width = getNextPowerOfTwo(param4.width * this.§^!K§) / this.§^!K§;
            param4.height = getNextPowerOfTwo(param4.height * this.§^!K§) / this.§^!K§;
         }
      }
      
      private function §'$D§() : void
      {
         var _loc1_:Texture = null;
         for each(_loc1_ in this.§2!`§)
         {
            _loc1_.dispose();
         }
         this.§2!`§ = null;
      }
      
      private function §!"_§() : void
      {
         if(this.§[#v§)
         {
            if(this.§[#v§.texture)
            {
               this.§[#v§.texture.dispose();
            }
            this.§[#v§.dispose();
            this.§[#v§ = null;
         }
      }
      
      protected function createPrograms() : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function activate(param1:int, param2:§79§, param3:Texture) : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function deactivate(param1:int, param2:§79§, param3:Texture) : void
      {
      }
      
      protected function §[!U§(param1:String = null, param2:String = null) : Program3D
      {
         if(param1 == null)
         {
            param1 = this.§,G§;
         }
         if(param2 == null)
         {
            param2 = this.§>"s§;
         }
         var _loc3_:Context3D = Starling.context;
         if(!_loc3_)
         {
            return null;
         }
         return §79§.§[!U§(param2,param1);
      }
      
      public function §5!_§() : void
      {
         this.§-"?§ = true;
         this.§!"_§();
      }
      
      public function §!"]§() : void
      {
         this.§-"?§ = false;
         this.§!"_§();
      }
      
      function §[!d§(param1:DisplayObject) : §^n§
      {
         var _loc2_:§79§ = null;
         var _loc3_:Stage = null;
         if(this.§[#v§)
         {
            return this.§[#v§;
         }
         _loc3_ = param1.stage;
         if(_loc3_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         _loc2_ = new §79§();
         param1.§0#n§(_loc3_,_loc2_.§4"b§);
         return this.§^!]§(param1,_loc2_,1,true);
      }
      
      public function get §>#X§() : Boolean
      {
         return this.§[#v§ != null || this.§-"?§;
      }
      
      public function get §7"I§() : Number
      {
         return this.§^!K§;
      }
      
      public function set §7"I§(param1:Number) : void
      {
         if(param1 <= 0)
         {
            throw new ArgumentError("Resolution must be > 0");
         }
         this.§^!K§ = param1;
      }
      
      public function get §-!N§() : String
      {
         return this.§4"C§;
      }
      
      public function set §-!N§(param1:String) : void
      {
         this.§4"C§ = param1;
      }
      
      public function get offsetX() : Number
      {
         return this.§&!l§;
      }
      
      public function set offsetX(param1:Number) : void
      {
         this.§&!l§ = param1;
      }
      
      public function get offsetY() : Number
      {
         return this.§?"=§;
      }
      
      public function set offsetY(param1:Number) : void
      {
         this.§?"=§ = param1;
      }
      
      protected function get § h§() : Number
      {
         return this.§,"L§;
      }
      
      protected function set § h§(param1:Number) : void
      {
         this.§,"L§ = param1;
      }
      
      protected function get §]#]§() : Number
      {
         return this.§2#M§;
      }
      
      protected function set §]#]§(param1:Number) : void
      {
         this.§2#M§ = param1;
      }
      
      protected function set override(param1:int) : void
      {
         this.§44§ = param1;
      }
      
      protected function get override() : int
      {
         return this.§44§;
      }
      
      protected final function get §[#>§() : int
      {
         return this.§<"8§;
      }
      
      protected final function set §[#>§(param1:int) : void
      {
         this.§<"8§ = param1;
      }
      
      protected final function get §'#A§() : int
      {
         return this.§"a§;
      }
      
      protected final function set §'#A§(param1:int) : void
      {
         this.§"a§ = param1;
      }
      
      protected final function get §&!L§() : int
      {
         return this.§`"1§;
      }
      
      protected final function set §&!L§(param1:int) : void
      {
         this.§`"1§ = param1;
      }
      
      protected final function get §&!N§() : int
      {
         return this.§0"?§;
      }
      
      protected final function set §&!N§(param1:int) : void
      {
         this.§0"?§ = param1;
      }
      
      protected final function get §&#U§() : Texture
      {
         return this.§^#j§;
      }
   }
}
