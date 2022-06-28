package §_-0Ea§
{
   import §_-UD§.*;
   import §_-uY§.*;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §_-zM§
   {
      
      private static var §_-TO§:Array;
      
      private static var §_-n1§:Program3D;
      
      private static var §_-J3§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §_-0Aw§:Matrix3D;
      
      private var §_-KC§:Matrix3D;
      
      private var §_-Uy§:Matrix3D;
      
      private var §_-rW§:Vector.<Matrix3D>;
      
      private var §_-0Cf§:int;
      
      private var §_-02J§:Vector.<§_-XW§>;
      
      private var §_-iU§:int;
      
      private var §_-cM§:Context3D;
      
      private var §_-Wy§:int = -1;
      
      public function §_-zM§()
      {
         super();
         this.§_-0Aw§ = new Matrix3D();
         this.§_-KC§ = new Matrix3D();
         this.§_-Uy§ = new Matrix3D();
         this.§_-rW§ = new Vector.<Matrix3D>(0);
         this.§_-0Cf§ = 0;
         this.§_-iU§ = 0;
         this.§_-02J§ = new Vector.<§_-XW§>();
         if(§_-TO§ == null)
         {
            §_-TO§ = [];
         }
         this.§_-iZ§();
         this.§_-hh§(400,300);
         §_-AY§.§_-un§.addEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§);
      }
      
      public static function §_-003§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§_-cb§(param1);
      }
      
      public static function §_-jw§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§_-Jy§.§throw§(param2) / 255,§_-Jy§.§_-OU§(param2) / 255,§_-Jy§.§_-Gv§(param2) / 255,param3);
      }
      
      protected function get §_-Sd§() : Matrix3D
      {
         return this.§_-KC§;
      }
      
      protected function get §_-Kg§() : Matrix3D
      {
         return this.§_-0Aw§;
      }
      
      public function §_-l7§(param1:Context3D, param2:int) : void
      {
         this.§_-cM§ = param1;
         this.§_-Wy§ = param2;
      }
      
      public function get §_-FC§() : Context3D
      {
         return this.§_-cM§;
      }
      
      public function get §_-dH§() : int
      {
         return this.§_-Wy§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-XW§ = null;
         for each(_loc1_ in this.§_-02J§)
         {
            _loc1_.dispose();
         }
         if(§_-AY§.§_-un§)
         {
            §_-AY§.§_-un§.removeEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§_-Jy§.§throw§(param2) / 255,§_-Jy§.§_-OU§(param2) / 255,§_-Jy§.§_-Gv§(param2) / 255,param3);
      }
      
      private function §_-Hs§(param1:Event) : void
      {
         this.§_-02J§ = new <§_-XW§>[new §_-XW§()];
      }
      
      public function §_-hh§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §_-J3§[0] = 2 / param1;
         §_-J3§[1] = §_-J3§[2] = §_-J3§[3] = §_-J3§[4] = 0;
         §_-J3§[5] = -2 / param2;
         §_-J3§[6] = §_-J3§[7] = §_-J3§[8] = §_-J3§[9] = 0;
         §_-J3§[10] = -2 / (param4 - param3);
         §_-J3§[11] = 0;
         §_-J3§[12] = -1;
         §_-J3§[13] = 1;
         §_-J3§[14] = -(param4 + param3) / (param4 - param3);
         §_-J3§[15] = 1;
         this.§_-0Aw§.copyRawDataFrom(§_-J3§);
      }
      
      public function §_-iZ§() : void
      {
         this.§_-KC§.identity();
      }
      
      public function §_-0C-§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-KC§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-dV§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-KC§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-4e§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-KC§.prependScale(param1,param2,param3);
      }
      
      public function §_-cb§(param1:DisplayObject) : void
      {
         param1.§_-cb§(this.§_-KC§);
      }
      
      public function §_-1d§() : void
      {
         if(this.§_-rW§.length < this.§_-0Cf§ + 1)
         {
            this.§_-rW§.push(new Matrix3D());
         }
         this.§_-rW§[this.§_-0Cf§++].copyFrom(this.§_-KC§);
      }
      
      public function §_-OE§() : void
      {
         this.§_-KC§.copyFrom(this.§_-rW§[--this.§_-0Cf§]);
      }
      
      public function §_-h§() : void
      {
         this.§_-0Cf§ = 0;
         this.§_-iZ§();
      }
      
      public function get §_-bc§() : Matrix3D
      {
         this.§_-Uy§.identity();
         this.§_-Uy§.append(this.§_-KC§);
         this.§_-Uy§.append(this.§_-0Aw§);
         return this.§_-Uy§;
      }
      
      public function batchQuad(param1:§_-2p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§_-0EC§.§_-P0§(param1,param3,param4))
         {
            this.§_-oR§();
         }
         this.§_-0EC§.§_-ED§(param1,param2,param3,param4,this.§_-KC§);
      }
      
      public function §_-oR§() : void
      {
         if(this.§_-0EC§.dynamic > 0)
         {
            this.§_-0EC§.render(this.§_-FC§,this.§_-0Aw§);
            this.§_-0EC§.reset();
            ++this.§_-iU§;
            if(this.§_-02J§.length <= this.§_-iU§)
            {
               this.§_-02J§.push(new §_-XW§());
            }
         }
      }
      
      public function §_-zz§() : void
      {
         this.§_-h§();
         this.§_-iU§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §_-0EC§() : §_-XW§
      {
         return this.§_-02J§[this.§_-iU§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §_-TO§[param2])
         {
            §_-TO§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §_-n1§)
         {
            §_-n1§ = param2;
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
