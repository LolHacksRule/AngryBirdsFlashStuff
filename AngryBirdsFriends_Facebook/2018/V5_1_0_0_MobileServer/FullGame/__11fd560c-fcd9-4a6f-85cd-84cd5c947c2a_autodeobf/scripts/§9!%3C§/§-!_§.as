package §9!<§
{
   import §+#B§.§'"V§;
   import §+#B§.§;$%§;
   import §5!D§.§[!b§;
   import §5!D§.§]"L§;
   import §5!D§.§`e§;
   import §5!D§.getNextPowerOfTwo;
   import §5#m§.Event;
   import §9$;§.Texture;
   import §?"e§.Starling;
   import §?"e§.§[!Z§;
   import §^"S§.§9$=§;
   import §^"S§.§>$7§;
   import §^"S§.DisplayObject;
   import §^"S§.Image;
   import §^"S§.Stage;
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
   
   public class §-!_§
   {
      
      private static var §6"M§:Rectangle = new Rectangle();
      
      private static var §;#@§:Rectangle = new Rectangle();
      
      private static var §4J§:Matrix = new Matrix();
       
      
      protected const §;$1§:Boolean = true;
      
      protected const §@!D§:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2      \n";
      
      protected const §`$A§:String = "tex oc, v0, fs0 <2d, clamp, linear, mipnone>";
      
      private var §8#w§:int = 0;
      
      private var §!"w§:int = 2;
      
      private var §+!E§:int = 0;
      
      private var §8"m§:int = 1;
      
      private var §7q§:int;
      
      private var §9![§:Vector.<Texture>;
      
      private var §7"V§:String;
      
      private var §`$8§:Number;
      
      private var §1#J§:Number;
      
      private var §;!?§:Number;
      
      private var §>!M§:Number;
      
      private var §^!W§:Number;
      
      private var §3!n§:§`e§;
      
      private var § #4§:VertexBuffer3D;
      
      private var §[b§:VertexBuffer3D;
      
      private var §[!`§:Vector.<uint>;
      
      private var §#"?§:IndexBuffer3D;
      
      private var §-#N§:Boolean;
      
      private var §%s§:§9$=§;
      
      private var §1!$§:Texture;
      
      private var §#[§:Matrix;
      
      public function §-!_§(param1:int = 1, param2:Number = 1.0)
      {
         this.§#[§ = new Matrix();
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.filters::FragmentFilter")
         {
            throw new §'"V§();
         }
         if(param1 < 1)
         {
            throw new ArgumentError("At least one pass is required.");
         }
         this.§7q§ = param1;
         this.§1#J§ = this.§;!?§ = 0;
         this.§>!M§ = this.§^!W§ = 0;
         this.§`$8§ = param2;
         this.§7"V§ = §+#q§.§""H§;
         this.§3!n§ = new §`e§(4);
         this.§3!n§.setTexCoords(0,0,0);
         this.§3!n§.setTexCoords(1,1,0);
         this.§3!n§.setTexCoords(2,0,1);
         this.§3!n§.setTexCoords(3,1,1);
         this.§[!`§ = new <uint>[0,1,2,1,3,2];
         this.§[!`§.fixed = true;
         this.createPrograms();
         Starling.§@#K§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§!G§,false,0,true);
      }
      
      public function dispose() : void
      {
         Starling.§@#K§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
         if(this.§ #4§)
         {
            this.§ #4§.dispose();
         }
         if(this.§[b§)
         {
            this.§[b§.dispose();
         }
         if(this.§#"?§)
         {
            this.§#"?§.dispose();
         }
         this.§1=§();
         this.§6!-§();
      }
      
      private function §!G§(param1:Object) : void
      {
         this.§ #4§ = null;
         this.§[b§ = null;
         this.§#"?§ = null;
         this.§9![§ = null;
         this.createPrograms();
      }
      
      public function render(param1:DisplayObject, param2:§[!Z§, param3:Number) : void
      {
         if(this.§!!v§ == §+#q§.§[#f§)
         {
            param1.render(param2,param3);
         }
         if(this.§-#N§)
         {
            this.§-#N§ = false;
            this.§%s§ = this.§8#1§(param1,param2,1,true);
            this.§1=§();
         }
         if(this.§%s§)
         {
            this.§%s§.render(param2,param3);
         }
         else
         {
            this.§8#1§(param1,param2,param3,false);
         }
         if(this.§!!v§ == §+#q§.§[!-§)
         {
            param1.render(param2,param3);
         }
      }
      
      protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         this.§4#§(param1,§6"M§);
         this.§9!^§(§6"M§.width,§6"M§.height,this.§`$8§ * param2,param1);
      }
      
      protected function renderDisplayObject(param1:DisplayObject, param2:§[!Z§, param3:Number) : void
      {
         var _loc4_:Context3D = param2.context;
         param2.§5<§ = this.§9![§[0];
         param2.clear(_loc4_);
         param2.blendMode = §>$7§.NORMAL;
         param2.§3";§(§6"M§.x,§6"M§.y,§6"M§.width,§6"M§.height);
         param1.render(param2,param3);
         param2.§>#s§();
      }
      
      protected function renderFilter(param1:DisplayObject, param2:§[!Z§, param3:Boolean, param4:Number, param5:Texture) : §9$=§
      {
         var _loc9_:Texture = null;
         var _loc10_:§9$=§ = null;
         var _loc11_:Image = null;
         var _loc12_:Stage = null;
         param2.§>"b§(this.§7q§);
         var _loc6_:Context3D = param2.context;
         var _loc7_:Texture = Texture.§""t§(_loc6_,§6"M§.width,§6"M§.height,this.§;$1§,true,this.§`$8§ * param4);
         §[!Z§.setBlendFactors(this.§;$1§);
         param2.§2"o§();
         _loc6_.setVertexBufferAt(this.§8#w§,this.§ #4§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc6_.setVertexBufferAt(this.§!"w§,this.§[b§,0,Context3DVertexBufferFormat.FLOAT_2);
         var _loc8_:int = 0;
         while(_loc8_ < this.§7q§)
         {
            if(_loc8_ < this.§7q§ - 1)
            {
               param2.§5<§ = this.§!"t§(_loc8_ + 1);
               param2.clear(_loc6_);
            }
            else if(param3)
            {
               param2.§5<§ = _loc7_;
               param2.clear(_loc6_);
            }
            else
            {
               param2.§5<§ = param5;
               param2.§]#N§.copyFrom(this.§#[§);
               param2.§]!G§(this.§>!M§,this.§^!W§);
               param2.blendMode = param1.blendMode;
               param2.§^$!§(this.§;$1§);
            }
            _loc9_ = this.§!"t§(_loc8_);
            _loc6_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,this.§8"m§,param2.mvpMatrix3D,true);
            _loc6_.setTextureAt(this.§+!E§,_loc9_.getBase(_loc6_));
            this.activate(_loc8_,param2,_loc9_);
            _loc6_.drawTriangles(this.§#"?§,0,2);
            this.deactivate(_loc8_,param2,_loc9_);
            _loc8_++;
         }
         _loc6_.setVertexBufferAt(this.§8#w§,null);
         _loc6_.setVertexBufferAt(this.§!"w§,null);
         _loc6_.setTextureAt(this.§+!E§,null);
         if(param3)
         {
            param2.§5<§ = param5;
            param2.§]#N§.copyFrom(this.§#[§);
            _loc10_ = new §9$=§();
            _loc11_ = new Image(_loc7_);
            (_loc12_ = param1.stage).§3[§(param1,§4J§);
            §[!b§.§<t§(§4J§,§6"M§.x + this.§>!M§,§6"M§.y + this.§^!W§);
            _loc10_.§2#4§(_loc11_,1,§4J§);
            return _loc10_;
         }
         return null;
      }
      
      private function §8#1§(param1:DisplayObject, param2:§[!Z§, param3:Number, param4:Boolean = false) : §9$=§
      {
         var _loc5_:Stage = param1.stage;
         var _loc6_:Context3D = param2.context;
         if(_loc5_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         if(_loc6_ == null)
         {
            throw new §;$%§();
         }
         this.calculateBounds(param1,_loc5_,!param4,§6"M§);
         if(§6"M§.isEmpty())
         {
            this.§1=§();
            return !!param4 ? new §9$=§() : null;
         }
         param2.§>#s§();
         param2.§super§();
         var _loc7_:Number = Starling.§@#K§.§8#i§;
         this.updateBuffersAndTextures(_loc6_,_loc7_);
         this.§#[§.copyFrom(param2.§]#N§);
         var _loc8_:Texture;
         if(_loc8_ = param2.§5<§)
         {
            throw new IllegalOperationError("It\'s currently not possible to stack filters! " + "This limitation will be removed in a future Stage3D version.");
         }
         this.renderDisplayObject(param1,param2,param3);
         var _loc9_:§9$=§ = this.renderFilter(param1,param2,param4,_loc7_,_loc8_);
         param2.§-"k§();
         return _loc9_;
      }
      
      private function §4#§(param1:Context3D, param2:Rectangle) : void
      {
         this.§3!n§.setPosition(0,param2.x,param2.y);
         this.§3!n§.setPosition(1,param2.right,param2.y);
         this.§3!n§.setPosition(2,param2.x,param2.bottom);
         this.§3!n§.setPosition(3,param2.right,param2.bottom);
         if(this.§ #4§ == null)
         {
            this.§ #4§ = param1.createVertexBuffer(4,§`e§.§9$3§);
         }
         if(this.§[b§ == null)
         {
            this.§[b§ = param1.createVertexBuffer(4,§`e§.§,$9§);
         }
         if(this.§#"?§ == null)
         {
            this.§#"?§ = param1.createIndexBuffer(6);
            this.§#"?§.uploadFromVector(this.§[!`§,0,6);
         }
         this.§ #4§.uploadFromVector(this.§3!n§.§;!M§,0,4);
         this.§[b§.uploadFromVector(this.§3!n§.§7""§,0,4);
      }
      
      private function §9!^§(param1:int, param2:int, param3:Number, param4:Context3D) : void
      {
         var _loc7_:int = 0;
         var _loc8_:Texture = null;
         var _loc5_:int = this.§7q§ > 1 ? 2 : 1;
         var _loc6_:Boolean;
         if(_loc6_ = this.§9![§ == null || this.§9![§.length != _loc5_ || this.§9![§[0].width != param1 || this.§9![§[0].height != param2)
         {
            if(this.§9![§)
            {
               for each(_loc8_ in this.§9![§)
               {
                  _loc8_.dispose();
               }
               this.§9![§.length = _loc5_;
            }
            else
            {
               this.§9![§ = new Vector.<Texture>(_loc5_);
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               this.§9![§[_loc7_] = Texture.§""t§(param4,param1,param2,this.§;$1§,true,param3);
               _loc7_++;
            }
         }
      }
      
      private function §!"t§(param1:int) : Texture
      {
         this.§1!$§ = this.§9![§[param1 % 2];
         return this.§1!$§;
      }
      
      protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         var _loc5_:Number = NaN;
         if(param1 == param2 || param1 == Starling.§@#K§.root)
         {
            param4.setTo(0,0,param2.stageWidth,param2.stageHeight);
         }
         else
         {
            param1.getBounds(param2,param4);
         }
         if(param3)
         {
            §;#@§.setTo(0,0,param2.stageWidth,param2.stageHeight);
            §]"L§.§5M§(param4,§;#@§,param4);
         }
         if(!param4.isEmpty())
         {
            _loc5_ = this.§`$8§ == 1 ? Number(0) : Number(1 / this.§`$8§);
            param4.x -= this.§1#J§ + _loc5_;
            param4.y -= this.§;!?§ + _loc5_;
            param4.width += 2 * (this.§1#J§ + _loc5_);
            param4.height += 2 * (this.§;!?§ + _loc5_);
            param4.width = getNextPowerOfTwo(param4.width * this.§`$8§) / this.§`$8§;
            param4.height = getNextPowerOfTwo(param4.height * this.§`$8§) / this.§`$8§;
         }
      }
      
      private function §1=§() : void
      {
         var _loc1_:Texture = null;
         for each(_loc1_ in this.§9![§)
         {
            _loc1_.dispose();
         }
         this.§9![§ = null;
      }
      
      private function §6!-§() : void
      {
         if(this.§%s§)
         {
            if(this.§%s§.texture)
            {
               this.§%s§.texture.dispose();
            }
            this.§%s§.dispose();
            this.§%s§ = null;
         }
      }
      
      protected function createPrograms() : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function activate(param1:int, param2:§[!Z§, param3:Texture) : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function deactivate(param1:int, param2:§[!Z§, param3:Texture) : void
      {
      }
      
      protected function §?"r§(param1:String = null, param2:String = null) : Program3D
      {
         if(param1 == null)
         {
            param1 = this.§`$A§;
         }
         if(param2 == null)
         {
            param2 = this.§@!D§;
         }
         var _loc3_:Context3D = Starling.context;
         if(!_loc3_)
         {
            return null;
         }
         return §[!Z§.§?"r§(param2,param1);
      }
      
      public function §^!R§() : void
      {
         this.§-#N§ = true;
         this.§6!-§();
      }
      
      public function §-D§() : void
      {
         this.§-#N§ = false;
         this.§6!-§();
      }
      
      function §'!%§(param1:DisplayObject) : §9$=§
      {
         var _loc2_:§[!Z§ = null;
         var _loc3_:Stage = null;
         if(this.§%s§)
         {
            return this.§%s§;
         }
         _loc3_ = param1.stage;
         if(_loc3_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         _loc2_ = new §[!Z§();
         param1.§3[§(_loc3_,_loc2_.§9!$§);
         return this.§8#1§(param1,_loc2_,1,true);
      }
      
      public function get §4#1§() : Boolean
      {
         return this.§%s§ != null || this.§-#N§;
      }
      
      public function get §+#C§() : Number
      {
         return this.§`$8§;
      }
      
      public function set §+#C§(param1:Number) : void
      {
         if(param1 <= 0)
         {
            throw new ArgumentError("Resolution must be > 0");
         }
         this.§`$8§ = param1;
      }
      
      public function get §!!v§() : String
      {
         return this.§7"V§;
      }
      
      public function set §!!v§(param1:String) : void
      {
         this.§7"V§ = param1;
      }
      
      public function get offsetX() : Number
      {
         return this.§>!M§;
      }
      
      public function set offsetX(param1:Number) : void
      {
         this.§>!M§ = param1;
      }
      
      public function get offsetY() : Number
      {
         return this.§^!W§;
      }
      
      public function set offsetY(param1:Number) : void
      {
         this.§^!W§ = param1;
      }
      
      protected function get §#!j§() : Number
      {
         return this.§1#J§;
      }
      
      protected function set §#!j§(param1:Number) : void
      {
         this.§1#J§ = param1;
      }
      
      protected function get §+!$§() : Number
      {
         return this.§;!?§;
      }
      
      protected function set §+!$§(param1:Number) : void
      {
         this.§;!?§ = param1;
      }
      
      protected function set §^"x§(param1:int) : void
      {
         this.§7q§ = param1;
      }
      
      protected function get §^"x§() : int
      {
         return this.§7q§;
      }
      
      protected final function get §["R§() : int
      {
         return this.§8#w§;
      }
      
      protected final function set §["R§(param1:int) : void
      {
         this.§8#w§ = param1;
      }
      
      protected final function get §-#o§() : int
      {
         return this.§!"w§;
      }
      
      protected final function set §-#o§(param1:int) : void
      {
         this.§!"w§ = param1;
      }
      
      protected final function get §@!z§() : int
      {
         return this.§+!E§;
      }
      
      protected final function set §@!z§(param1:int) : void
      {
         this.§+!E§ = param1;
      }
      
      protected final function get §=$<§() : int
      {
         return this.§8"m§;
      }
      
      protected final function set §=$<§(param1:int) : void
      {
         this.§8"m§ = param1;
      }
      
      protected final function get §;"Q§() : Texture
      {
         return this.§1!$§;
      }
   }
}
