package §^!Y§
{
   import §!!K§.§else§;
   import §4>§.§ !C§;
   import §4>§.Texture;
   import §]o§.§%!p§;
   import §]o§.§^!9§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §'R§ extends EventDispatcher
   {
      
      private static const §?H§:int = 2;
      
      private static const §%!0§:int = 2048;
      
      private static var §'!s§:§'R§;
       
      
      private var §`K§:Dictionary;
      
      private var §<!U§:Vector.<§%!p§>;
      
      private var §;F§:Dictionary;
      
      private var §&$§:Boolean;
      
      private var §@H§:String;
      
      private var §%!B§:Texture;
      
      private var §@!w§:int;
      
      private var § !0§:int;
      
      public function §'R§(param1:String = null)
      {
         super();
         this.§<!U§ = new Vector.<§%!p§>();
         this.§`K§ = new Dictionary();
         this.§;F§ = new Dictionary();
         this.§@H§ = param1;
      }
      
      public static function get §7!j§() : §'R§
      {
         if(!§'!s§)
         {
            §'!s§ = new §'R§();
         }
         return §'!s§;
      }
      
      public function get §7<§() : int
      {
         return this.§@!w§;
      }
      
      public function get §#W§() : int
      {
         return this.§ !0§;
      }
      
      public function get id() : String
      {
         return this.§@H§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1C§ = null;
         var _loc2_:§%!p§ = null;
         if(this.§`K§)
         {
            for each(_loc1_ in this.§`K§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§`K§ = null;
         }
         if(this.§<!U§)
         {
            for each(_loc2_ in this.§<!U§)
            {
               _loc2_.dispose();
            }
            this.§<!U§ = null;
         }
         if(this.§;F§)
         {
            this.§;F§ = null;
         }
         if(this.§%!B§)
         {
            this.§%!B§.dispose();
            this.§%!B§ = null;
         }
         this.§<!U§ = new Vector.<§%!p§>();
         this.§`K§ = new Dictionary();
         this.§;F§ = new Dictionary();
      }
      
      public function §8!k§(param1:§%!p§) : void
      {
         if(this.§&$§)
         {
            return;
         }
         if(this.§<!U§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§<!U§.push(param1);
      }
      
      private function §9I§(param1:Array) : Rectangle
      {
         var _loc9_:§%!p§ = null;
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
            if(_loc2_ + _loc10_.width + §?H§ >= §%!0§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §?H§ >= §%!0§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §?H§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §?H§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §?H§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%!r§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§%!p§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§"t§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§^!9§ = null;
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
            if(_loc3_ + _loc9_.width + §?H§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §?H§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §"t§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§@h§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§[C§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§[!r§(_loc12_)).§[3§ = null;
               _loc13_.§]!1§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §?H§;
            if(_loc9_.height + §?H§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §?H§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §!>§() : Boolean
      {
         var _loc1_:§%!p§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§"t§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§^!9§ = null;
         if(!§else§.§9!i§())
         {
            return false;
         }
         if(this.§&$§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§<!U§)
         {
            if(_loc1_.§[C§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§9I§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§%!r§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§@h§;
               _loc9_ = _loc1_.§[C§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§[!r§(_loc10_);
                  this.§0C§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§<!U§)
         {
            _loc1_.dispose();
         }
         this.§<!U§ = new Vector.<§%!p§>();
         this.§&$§ = true;
         return true;
      }
      
      private function §0C§(param1:§^!9§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§ !C§ = null;
         var _loc5_:§1C§;
         if(!(_loc5_ = this.§`K§[param1.mName]))
         {
            _loc6_ = param1.§]!1§.clone();
            _loc7_ = new § !C§(param2,_loc6_,false);
            _loc5_ = new §1C§(_loc7_,param3,_loc6_,param1.§`Q§,param1.§-Z§,param4);
            this.§`K§[param1.mName] = _loc5_;
         }
      }
      
      public function § !f§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§else§.§]!-§)
         {
            for(bd in this.§;F§)
            {
               try
               {
                  texture = this.§;F§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §2+§(param1:String) : §1C§
      {
         return this.§`K§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§;F§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §else§.§]N§(param1,param2);
         this.§;F§[param1] = _loc3_;
         this.§8>§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §8>§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:int = 1;
         if(!param3)
         {
            _loc4_ = -1;
         }
         if(param2)
         {
            this.§ !0§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§@!w§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §,<§() : Texture
      {
         if(!this.§%!B§)
         {
            this.§%!B§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§%!B§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§;F§)
         {
            if(this.§;F§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§8>§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§;F§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §%!!§(param1:String) : BitmapData
      {
         var _loc2_:§1C§ = this.§2+§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§2+§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§2+§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
