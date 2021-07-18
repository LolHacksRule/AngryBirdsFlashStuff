package §#e§
{
   import §5Z§.§[Z§;
   import §8z§.§>6§;
   import §8z§.Texture;
   import §=I§.§-§;
   import §=I§.§5!B§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §'?§ extends EventDispatcher
   {
      
      private static const §^0§:int = 2;
      
      private static const §8!C§:int = 2048;
      
      private static var §,z§:§'?§;
       
      
      private var § !#§:Dictionary;
      
      private var §7S§:Vector.<§-§>;
      
      private var §%B§:Dictionary;
      
      private var §8i§:Boolean;
      
      private var §[!&§:String;
      
      private var §]!P§:Texture;
      
      private var §]!C§:int;
      
      private var §&>§:int;
      
      public function §'?§(param1:String = null)
      {
         super();
         this.§7S§ = new Vector.<§-§>();
         this.§ !#§ = new Dictionary();
         this.§%B§ = new Dictionary();
         this.§[!&§ = param1;
      }
      
      public static function get §>o§() : §'?§
      {
         if(!§,z§)
         {
            §,z§ = new §'?§();
         }
         return §,z§;
      }
      
      public function get §,!K§() : int
      {
         return this.§]!C§;
      }
      
      public function get §1z§() : int
      {
         return this.§&>§;
      }
      
      public function get id() : String
      {
         return this.§[!&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`!9§ = null;
         var _loc2_:§-§ = null;
         if(this.§ !#§)
         {
            for each(_loc1_ in this.§ !#§)
            {
               this.§@C§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§ !#§ = null;
         }
         if(this.§7S§)
         {
            for each(_loc2_ in this.§7S§)
            {
               _loc2_.dispose();
            }
            this.§7S§ = null;
         }
         if(this.§%B§)
         {
            this.§%B§ = null;
         }
         if(this.§]!P§)
         {
            this.§]!P§.dispose();
            this.§]!P§ = null;
         }
         this.§7S§ = new Vector.<§-§>();
         this.§ !#§ = new Dictionary();
         this.§%B§ = new Dictionary();
      }
      
      public function §!=§(param1:§-§) : void
      {
         if(this.§8i§)
         {
            return;
         }
         if(this.§7S§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§7S§.push(param1);
      }
      
      private function §&!+§(param1:Array) : Rectangle
      {
         var _loc9_:§-§ = null;
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
            if(_loc2_ + _loc10_.width + §^0§ >= §8!C§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §^0§ >= §8!C§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §^0§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §^0§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §^0§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%!M§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§-§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§2!F§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§5!B§ = null;
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
            if(_loc3_ + _loc9_.width + §^0§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §^0§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §2!F§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§`l§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§5]§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§`T§(_loc12_)).§;S§ = null;
               _loc13_.§7!N§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §^0§;
            if(_loc9_.height + §^0§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §^0§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §7E§() : Boolean
      {
         var _loc1_:§-§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§2!F§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§5!B§ = null;
         if(!§[Z§.§?4§())
         {
            return false;
         }
         if(this.§8i§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§7S§)
         {
            if(_loc1_.§5]§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§&!+§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§%!M§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§'b§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§`l§;
               _loc9_ = _loc1_.§5]§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§`T§(_loc10_);
                  this.§@7§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§7S§)
         {
            _loc1_.dispose();
         }
         this.§7S§ = new Vector.<§-§>();
         this.§8i§ = true;
         return true;
      }
      
      private function §@7§(param1:§5!B§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§>6§ = null;
         var _loc5_:§`!9§;
         if(!(_loc5_ = this.§ !#§[param1.mName]))
         {
            _loc6_ = param1.§7!N§.clone();
            _loc7_ = new §>6§(param2,_loc6_,false);
            _loc5_ = new §`!9§(_loc7_,param3,_loc6_,param1.§%O§,param1.§&!I§,param4);
            this.§ !#§[param1.mName] = _loc5_;
         }
      }
      
      public function §&I§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§[Z§.§1'§)
         {
            for(bd in this.§%B§)
            {
               try
               {
                  texture = this.§%B§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §&! §(param1:String) : §`!9§
      {
         return this.§ !#§[param1];
      }
      
      public function §'b§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§%B§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §[Z§.§3v§(param1,param2);
         this.§%B§[param1] = _loc3_;
         this.§1f§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §1f§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§&>§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§]!C§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §6K§() : Texture
      {
         if(!this.§]!P§)
         {
            this.§]!P§ = this.§'b§(new BitmapData(40,40,false,16711935));
         }
         return this.§]!P§;
      }
      
      public function §@C§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§%B§)
         {
            if(this.§%B§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§1f§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§%B§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §?8§(param1:String) : BitmapData
      {
         var _loc2_:§`!9§ = this.§&! §(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§&! §(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§&! §(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
