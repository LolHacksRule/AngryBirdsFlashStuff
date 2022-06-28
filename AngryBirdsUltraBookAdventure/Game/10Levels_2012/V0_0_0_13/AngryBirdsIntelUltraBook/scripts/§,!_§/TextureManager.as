package §,!_§
{
   import §0P§.Starling;
   import §7i§.§ %§;
   import §7i§.Texture;
   import §`u§.§#!7§;
   import §`u§.SpriteSheetBase;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class TextureManager extends EventDispatcher
   {
      
      private static const §%u§:int = 2;
      
      private static const §+!&§:int = 2048;
      
      private static var §1E§:TextureManager;
       
      
      private var §@J§:Dictionary;
      
      private var §1m§:Vector.<SpriteSheetBase>;
      
      private var §-!h§:Dictionary;
      
      private var §]Z§:Boolean;
      
      private var §<!B§:String;
      
      private var §<8§:Texture;
      
      private var §,f§:int;
      
      private var §2Y§:int;
      
      public function TextureManager(param1:String = null)
      {
         super();
         this.§1m§ = new Vector.<SpriteSheetBase>();
         this.§@J§ = new Dictionary();
         this.§-!h§ = new Dictionary();
         this.§<!B§ = param1;
      }
      
      public static function get §8!X§() : TextureManager
      {
         if(!§1E§)
         {
            §1E§ = new TextureManager();
         }
         return §1E§;
      }
      
      public function get §3!-§() : int
      {
         return this.§,f§;
      }
      
      public function get §+I§() : int
      {
         return this.§2Y§;
      }
      
      public function get id() : String
      {
         return this.§<!B§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;K§ = null;
         var _loc2_:SpriteSheetBase = null;
         if(this.§@J§)
         {
            for each(_loc1_ in this.§@J§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§@J§ = null;
         }
         if(this.§1m§)
         {
            for each(_loc2_ in this.§1m§)
            {
               _loc2_.dispose();
            }
            this.§1m§ = null;
         }
         if(this.§-!h§)
         {
            this.§-!h§ = null;
         }
         if(this.§<8§)
         {
            this.§<8§.dispose();
            this.§<8§ = null;
         }
         this.§1m§ = new Vector.<SpriteSheetBase>();
         this.§@J§ = new Dictionary();
         this.§-!h§ = new Dictionary();
      }
      
      public function §,!j§(param1:SpriteSheetBase) : void
      {
         if(this.§]Z§)
         {
            return;
         }
         if(this.§1m§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§1m§.push(param1);
      }
      
      private function §3!Y§(param1:Array) : Rectangle
      {
         var _loc9_:SpriteSheetBase = null;
         var _loc10_:BitmapData = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = 1;
         var _loc8_:int = 0;
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(_loc8_ == 0)
            {
               _loc7_ = _loc9_.scale;
            }
            else if(_loc9_.scale != _loc7_)
            {
               break;
            }
            _loc10_ = _loc9_.bitmapData;
            if(_loc2_ + _loc10_.width + §%u§ >= §+!&§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §%u§ >= §+!&§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §%u§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §%u§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §%u§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §=!W§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:SpriteSheetBase = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§+2§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§#!7§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         var _loc7_:Number = NaN;
         while(param1.length > 0)
         {
            _loc8_ = param1[0];
            if(!isNaN(_loc7_) && _loc7_ != _loc8_.scale)
            {
               break;
            }
            _loc7_ = _loc8_.scale;
            _loc9_ = _loc8_.bitmapData;
            if(_loc3_ + _loc9_.width + §%u§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §%u§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            _loc10_ = new §+2§();
            _loc10_.offset = new Point(_loc3_,_loc4_);
            _loc10_.§]!b§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§^h§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               _loc13_ = _loc8_.§-!k§(_loc12_);
               _loc13_.§4!P§ = null;
               _loc13_.§4!E§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §%u§;
            if(_loc9_.height + §%u§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §%u§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §0k§() : Boolean
      {
         var _loc1_:SpriteSheetBase = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§+2§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§#!7§ = null;
         if(!Starling.§84§())
         {
            return false;
         }
         if(this.§]Z§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§1m§)
         {
            if(_loc1_.§^h§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§3!Y§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            _loc5_ = this.§=!W§(_loc2_,_loc4_);
            if(_loc5_.length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc8_ = _loc5_[_loc7_];
               _loc1_ = _loc8_.§]!b§;
               _loc9_ = _loc1_.§^h§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§-!k§(_loc10_);
                  this.§^Z§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§1m§)
         {
            _loc1_.dispose();
         }
         this.§1m§ = new Vector.<SpriteSheetBase>();
         this.§]Z§ = true;
         return true;
      }
      
      private function §^Z§(param1:§#!7§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§ %§ = null;
         var _loc5_:§;K§ = this.§@J§[param1.mName];
         if(!_loc5_)
         {
            _loc6_ = param1.§4!E§.clone();
            _loc7_ = new § %§(param2,_loc6_,false);
            _loc5_ = new §;K§(_loc7_,param3,_loc6_,param1.§0!>§,param1.§+<§,param4);
            this.§@J§[param1.mName] = _loc5_;
         }
      }
      
      public function §'!<§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§>!f§)
         {
            for(bd in this.§-!h§)
            {
               try
               {
                  texture = this.§-!h§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §]&§(param1:String) : §;K§
      {
         return this.§@J§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§-!h§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = Starling.§0!2§(param1,param2);
         this.§-!h§[param1] = _loc3_;
         this.§<!7§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §<!7§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:int = 1;
         if(!param3)
         {
            _loc4_ = -1;
         }
         if(param2)
         {
            this.§2Y§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = param1.width;
            _loc6_ = param1.height;
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§,f§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §;?§() : Texture
      {
         if(!this.§<8§)
         {
            this.§<8§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§<8§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§-!h§)
         {
            if(this.§-!h§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§<!7§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§-!h§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §]!d§(param1:String) : BitmapData
      {
         var _loc2_:§;K§ = this.§]&§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§]&§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§]&§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
