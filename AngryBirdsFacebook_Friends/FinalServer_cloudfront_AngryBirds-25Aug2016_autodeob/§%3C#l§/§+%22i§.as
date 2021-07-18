package §<#l§
{
   import §'#Z§.§"!v§;
   import §'#Z§.§1#w§;
   import §1&§.Texture;
   import §4"D§.§,#@§;
   import §4"D§.§5#'§;
   import §4"D§.§^!]§;
   import §4"D§.getNextPowerOfTwo;
   import §9$§.§3f§;
   import §9$§.DisplayObject;
   import §9$§.Image;
   import §9$§.Stage;
   import §9$§.§["T§;
   import §?a§.Event;
   import §^a§.§'"1§;
   import §^a§.Starling;
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
   
   public class §+"i§
   {
      
      private static var §6#h§:Rectangle = new Rectangle();
      
      private static var §+#z§:Rectangle = new Rectangle();
      
      private static var §8!D§:Matrix = new Matrix();
       
      
      protected const §-!;§:Boolean = true;
      
      protected const §7#v§:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2      \n";
      
      protected const §`#]§:String = "tex oc, v0, fs0 <2d, clamp, linear, mipnone>";
      
      private var §4#X§:int = 0;
      
      private var § # §:int = 2;
      
      private var §?!W§:int = 0;
      
      private var §#"<§:int = 1;
      
      private var §8^§:int;
      
      private var §+!L§:Vector.<Texture>;
      
      private var §8!;§:String;
      
      private var §&#@§:Number;
      
      private var §&$2§:Number;
      
      private var §;$8§:Number;
      
      private var §""+§:Number;
      
      private var §7"=§:Number;
      
      private var §'#B§:§,#@§;
      
      private var §3!$§:VertexBuffer3D;
      
      private var §1$-§:VertexBuffer3D;
      
      private var § !w§:Vector.<uint>;
      
      private var §=t§:IndexBuffer3D;
      
      private var §+D§:Boolean;
      
      private var §<#a§:§3f§;
      
      private var §;"l§:Texture;
      
      private var §7v§:Matrix;
      
      public function §+"i§(param1:int = 1, param2:Number = 1.0)
      {
         this.§7v§ = new Matrix();
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.filters::FragmentFilter")
         {
            throw new §"!v§();
         }
         if(param1 < 1)
         {
            throw new ArgumentError("At least one pass is required.");
         }
         this.§8^§ = param1;
         this.§&$2§ = this.§;$8§ = 0;
         this.§""+§ = this.§7"=§ = 0;
         this.§&#@§ = param2;
         this.§8!;§ = § !`§.§%^§;
         this.§'#B§ = new §,#@§(4);
         this.§'#B§.setTexCoords(0,0,0);
         this.§'#B§.setTexCoords(1,1,0);
         this.§'#B§.setTexCoords(2,0,1);
         this.§'#B§.setTexCoords(3,1,1);
         this.§ !w§ = new <uint>[0,1,2,1,3,2];
         this.§ !w§.fixed = true;
         this.createPrograms();
         Starling.§<#`§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§^"W§,false,0,true);
      }
      
      public function dispose() : void
      {
         Starling.§<#`§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§^"W§);
         if(this.§3!$§)
         {
            this.§3!$§.dispose();
         }
         if(this.§1$-§)
         {
            this.§1$-§.dispose();
         }
         if(this.§=t§)
         {
            this.§=t§.dispose();
         }
         this.§'K§();
         this.§6>§();
      }
      
      private function §^"W§(param1:Object) : void
      {
         this.§3!$§ = null;
         this.§1$-§ = null;
         this.§=t§ = null;
         this.§+!L§ = null;
         this.createPrograms();
      }
      
      public function render(param1:DisplayObject, param2:§'"1§, param3:Number) : void
      {
         if(this.§!#M§ == § !`§.§47§)
         {
            param1.render(param2,param3);
         }
         if(this.§+D§)
         {
            this.§+D§ = false;
            this.§<#a§ = this.§,!9§(param1,param2,1,true);
            this.§'K§();
         }
         if(this.§<#a§)
         {
            this.§<#a§.render(param2,param3);
         }
         else
         {
            this.§,!9§(param1,param2,param3,false);
         }
         if(this.§!#M§ == § !`§.§@#p§)
         {
            param1.render(param2,param3);
         }
      }
      
      protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         this.§^#K§(param1,§6#h§);
         this.§!o§(§6#h§.width,§6#h§.height,this.§&#@§ * param2,param1);
      }
      
      protected function renderDisplayObject(param1:DisplayObject, param2:§'"1§, param3:Number) : void
      {
         var _loc4_:Context3D = param2.context;
         param2.§3Q§ = this.§+!L§[0];
         param2.clear(_loc4_);
         param2.blendMode = §["T§.NORMAL;
         param2.§`#[§(§6#h§.x,§6#h§.y,§6#h§.width,§6#h§.height);
         param1.render(param2,param3);
         param2.§^!u§();
      }
      
      protected function renderFilter(param1:DisplayObject, param2:§'"1§, param3:Boolean, param4:Number, param5:Texture) : §3f§
      {
         var _loc9_:Texture = null;
         var _loc10_:§3f§ = null;
         var _loc11_:Image = null;
         param2.§"#R§(this.§8^§);
         var _loc6_:Context3D = param2.context;
         var _loc7_:Texture = Texture.§1##§(_loc6_,§6#h§.width,§6#h§.height,this.§-!;§,true,this.§&#@§ * param4);
         §'"1§.setBlendFactors(this.§-!;§);
         param2.§?#0§();
         _loc6_.setVertexBufferAt(this.§4#X§,this.§3!$§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc6_.setVertexBufferAt(this.§ # §,this.§1$-§,0,Context3DVertexBufferFormat.FLOAT_2);
         var _loc8_:int = 0;
         while(_loc8_ < this.§8^§)
         {
            if(_loc8_ < this.§8^§ - 1)
            {
               param2.§3Q§ = this.§!!J§(_loc8_ + 1);
               param2.clear(_loc6_);
            }
            else if(param3)
            {
               param2.§3Q§ = _loc7_;
               param2.clear(_loc6_);
            }
            else
            {
               param2.§3Q§ = param5;
               param2.§##F§.copyFrom(this.§7v§);
               param2.§-!b§(this.§""+§,this.§7"=§);
               param2.blendMode = param1.blendMode;
               param2.§ "@§(this.§-!;§);
            }
            _loc9_ = this.§!!J§(_loc8_);
            _loc6_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,this.§#"<§,param2.mvpMatrix3D,true);
            _loc6_.setTextureAt(this.§?!W§,_loc9_.getBase(_loc6_));
            this.activate(_loc8_,param2,_loc9_);
            _loc6_.drawTriangles(this.§=t§,0,2);
            this.deactivate(_loc8_,param2,_loc9_);
            _loc8_++;
         }
         _loc6_.setVertexBufferAt(this.§4#X§,null);
         _loc6_.setVertexBufferAt(this.§ # §,null);
         _loc6_.setTextureAt(this.§?!W§,null);
         if(param3)
         {
            param2.§3Q§ = param5;
            param2.§##F§.copyFrom(this.§7v§);
            _loc10_ = new §3f§();
            _loc11_ = new Image(_loc7_);
            param1.stage.§"i§(param1,§8!D§);
            §^!]§.§7#H§(§8!D§,§6#h§.x + this.§""+§,§6#h§.y + this.§7"=§);
            _loc10_.§6#w§(_loc11_,1,§8!D§);
            return _loc10_;
         }
         return null;
      }
      
      private function §,!9§(param1:DisplayObject, param2:§'"1§, param3:Number, param4:Boolean = false) : §3f§
      {
         var _loc5_:Stage = param1.stage;
         var _loc6_:Context3D = param2.context;
         if(_loc5_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         if(_loc6_ == null)
         {
            throw new §1#w§();
         }
         this.calculateBounds(param1,_loc5_,!param4,§6#h§);
         if(§6#h§.isEmpty())
         {
            this.§'K§();
            return !!param4 ? new §3f§() : null;
         }
         param2.§^!u§();
         param2.§]#k§();
         var _loc7_:Number = Starling.§<#`§.§0h§;
         this.updateBuffersAndTextures(_loc6_,_loc7_);
         this.§7v§.copyFrom(param2.§##F§);
         var _loc8_:Texture;
         if(_loc8_ = param2.§3Q§)
         {
            throw new IllegalOperationError("It\'s currently not possible to stack filters! " + "This limitation will be removed in a future Stage3D version.");
         }
         this.renderDisplayObject(param1,param2,param3);
         var _loc9_:§3f§ = this.renderFilter(param1,param2,param4,_loc7_,_loc8_);
         param2.§[d§();
         return _loc9_;
      }
      
      private function §^#K§(param1:Context3D, param2:Rectangle) : void
      {
         this.§'#B§.setPosition(0,param2.x,param2.y);
         this.§'#B§.setPosition(1,param2.right,param2.y);
         this.§'#B§.setPosition(2,param2.x,param2.bottom);
         this.§'#B§.setPosition(3,param2.right,param2.bottom);
         if(this.§3!$§ == null)
         {
            this.§3!$§ = param1.createVertexBuffer(4,§,#@§.§74§);
         }
         if(this.§1$-§ == null)
         {
            this.§1$-§ = param1.createVertexBuffer(4,§,#@§.§&$-§);
         }
         if(this.§=t§ == null)
         {
            this.§=t§ = param1.createIndexBuffer(6);
            this.§=t§.uploadFromVector(this.§ !w§,0,6);
         }
         this.§3!$§.uploadFromVector(this.§'#B§.§!3§,0,4);
         this.§1$-§.uploadFromVector(this.§'#B§.§4!&§,0,4);
      }
      
      private function §!o§(param1:int, param2:int, param3:Number, param4:Context3D) : void
      {
         var _loc7_:int = 0;
         var _loc5_:int = this.§8^§ > 1 ? 2 : 1;
         if(this.§+!L§ == null || this.§+!L§.length != _loc5_ || this.§+!L§[0].width != param1 || this.§+!L§[0].height != param2)
         {
            if(this.§+!L§)
            {
               var _loc9_:int = 0;
               var _loc10_:* = this.§+!L§;
               while(§§hasnext(_loc10_,_loc9_))
               {
                  (§§nextvalue(_loc9_,_loc10_)).dispose();
               }
               this.§+!L§.length = _loc5_;
            }
            else
            {
               this.§+!L§ = new Vector.<Texture>(_loc5_);
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               this.§+!L§[_loc7_] = Texture.§1##§(param4,param1,param2,this.§-!;§,true,param3);
               _loc7_++;
            }
         }
      }
      
      private function §!!J§(param1:int) : Texture
      {
         this.§;"l§ = this.§+!L§[param1 % 2];
         return this.§;"l§;
      }
      
      protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         var _loc5_:Number = NaN;
         if(param1 == param2 || param1 == Starling.§<#`§.root)
         {
            param4.setTo(0,0,param2.stageWidth,param2.stageHeight);
         }
         else
         {
            param1.getBounds(param2,param4);
         }
         if(param3)
         {
            §+#z§.setTo(0,0,param2.stageWidth,param2.stageHeight);
            §5#'§.§1!K§(param4,§+#z§,param4);
         }
         if(!param4.isEmpty())
         {
            _loc5_ = this.§&#@§ == 1 ? Number(0) : Number(1 / this.§&#@§);
            param4.x -= this.§&$2§ + _loc5_;
            param4.y -= this.§;$8§ + _loc5_;
            param4.width += 2 * (this.§&$2§ + _loc5_);
            param4.height += 2 * (this.§;$8§ + _loc5_);
            param4.width = getNextPowerOfTwo(param4.width * this.§&#@§) / this.§&#@§;
            param4.height = getNextPowerOfTwo(param4.height * this.§&#@§) / this.§&#@§;
         }
      }
      
      private function §'K§() : void
      {
         var _loc1_:Texture = null;
         for each(_loc1_ in this.§+!L§)
         {
            _loc1_.dispose();
         }
         this.§+!L§ = null;
      }
      
      private function §6>§() : void
      {
         if(this.§<#a§)
         {
            if(this.§<#a§.texture)
            {
               this.§<#a§.texture.dispose();
            }
            this.§<#a§.dispose();
            this.§<#a§ = null;
         }
      }
      
      protected function createPrograms() : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function activate(param1:int, param2:§'"1§, param3:Texture) : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function deactivate(param1:int, param2:§'"1§, param3:Texture) : void
      {
      }
      
      protected function §%#_§(param1:String = null, param2:String = null) : Program3D
      {
         if(param1 == null)
         {
            param1 = this.§`#]§;
         }
         if(param2 == null)
         {
            param2 = this.§7#v§;
         }
         var _loc3_:Context3D = Starling.context;
         if(!_loc3_)
         {
            return null;
         }
         return §'"1§.§%#_§(param2,param1);
      }
      
      public function §3"W§() : void
      {
         this.§+D§ = true;
         this.§6>§();
      }
      
      public function §2#O§() : void
      {
         this.§+D§ = false;
         this.§6>§();
      }
      
      function §]!w§(param1:DisplayObject) : §3f§
      {
         var _loc2_:§'"1§ = null;
         var _loc3_:Stage = null;
         if(this.§<#a§)
         {
            return this.§<#a§;
         }
         _loc3_ = param1.stage;
         if(_loc3_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         _loc2_ = new §'"1§();
         param1.§"i§(_loc3_,_loc2_.§?!@§);
         return this.§,!9§(param1,_loc2_,1,true);
      }
      
      public function get §@#X§() : Boolean
      {
         return this.§<#a§ != null || this.§+D§;
      }
      
      public function get §>"=§() : Number
      {
         return this.§&#@§;
      }
      
      public function set §>"=§(param1:Number) : void
      {
         if(param1 <= 0)
         {
            throw new ArgumentError("Resolution must be > 0");
         }
         this.§&#@§ = param1;
      }
      
      public function get §!#M§() : String
      {
         return this.§8!;§;
      }
      
      public function set §!#M§(param1:String) : void
      {
         this.§8!;§ = param1;
      }
      
      public function get offsetX() : Number
      {
         return this.§""+§;
      }
      
      public function set offsetX(param1:Number) : void
      {
         this.§""+§ = param1;
      }
      
      public function get offsetY() : Number
      {
         return this.§7"=§;
      }
      
      public function set offsetY(param1:Number) : void
      {
         this.§7"=§ = param1;
      }
      
      protected function get §5#H§() : Number
      {
         return this.§&$2§;
      }
      
      protected function set §5#H§(param1:Number) : void
      {
         this.§&$2§ = param1;
      }
      
      protected function get §4#S§() : Number
      {
         return this.§;$8§;
      }
      
      protected function set §4#S§(param1:Number) : void
      {
         this.§;$8§ = param1;
      }
      
      protected function set §!"G§(param1:int) : void
      {
         this.§8^§ = param1;
      }
      
      protected function get §!"G§() : int
      {
         return this.§8^§;
      }
      
      protected final function get §+j§() : int
      {
         return this.§4#X§;
      }
      
      protected final function set §+j§(param1:int) : void
      {
         this.§4#X§ = param1;
      }
      
      protected final function get §9r§() : int
      {
         return this.§ # §;
      }
      
      protected final function set §9r§(param1:int) : void
      {
         this.§ # § = param1;
      }
      
      protected final function get §]#u§() : int
      {
         return this.§?!W§;
      }
      
      protected final function set §]#u§(param1:int) : void
      {
         this.§?!W§ = param1;
      }
      
      protected final function get §9"i§() : int
      {
         return this.§#"<§;
      }
      
      protected final function set §9"i§(param1:int) : void
      {
         this.§#"<§ = param1;
      }
      
      protected final function get §0!@§() : Texture
      {
         return this.§;"l§;
      }
   }
}
