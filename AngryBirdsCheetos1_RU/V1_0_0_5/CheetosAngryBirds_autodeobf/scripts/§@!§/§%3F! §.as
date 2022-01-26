package §@!§
{
   import §-A§.Texture;
   import §-A§.§[!F§;
   import §>V§.§"!L§;
   import §>V§.§6!T§;
   import §]_§.§!F§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §?! § extends EventDispatcher
   {
      
      private static const §8!Y§:int = 2;
      
      private static const §>!D§:int = 2048;
      
      private static var § m§:§?! §;
       
      
      private var §[n§:Dictionary;
      
      private var §7!K§:Vector.<§"!L§>;
      
      private var §=Z§:Dictionary;
      
      private var §3!7§:Boolean;
      
      private var §;[§:String;
      
      private var §^l§:Texture;
      
      private var §`J§:int;
      
      private var §;!"§:int;
      
      public function §?! §(param1:String = null)
      {
         super();
         this.§7!K§ = new Vector.<§"!L§>();
         this.§[n§ = new Dictionary();
         this.§=Z§ = new Dictionary();
         this.§;[§ = param1;
      }
      
      public static function get §,§() : §?! §
      {
         if(!§ m§)
         {
            § m§ = new §?! §();
         }
         return § m§;
      }
      
      public function get § g§() : int
      {
         return this.§`J§;
      }
      
      public function get §<1§() : int
      {
         return this.§;!"§;
      }
      
      public function get id() : String
      {
         return this.§;[§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ !N§ = null;
         var _loc2_:§"!L§ = null;
         if(this.§[n§)
         {
            for each(_loc1_ in this.§[n§)
            {
               this.§]F§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§[n§ = null;
         }
         if(this.§7!K§)
         {
            for each(_loc2_ in this.§7!K§)
            {
               _loc2_.dispose();
            }
            this.§7!K§ = null;
         }
         if(this.§=Z§)
         {
            this.§=Z§ = null;
         }
         if(this.§^l§)
         {
            this.§^l§.dispose();
            this.§^l§ = null;
         }
         this.§7!K§ = new Vector.<§"!L§>();
         this.§[n§ = new Dictionary();
         this.§=Z§ = new Dictionary();
      }
      
      public function §4T§(param1:§"!L§) : void
      {
         if(this.§3!7§)
         {
            return;
         }
         if(this.§7!K§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§7!K§.push(param1);
      }
      
      private function §[!T§(param1:Array) : Rectangle
      {
         var _loc9_:§"!L§ = null;
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
            if(_loc2_ + _loc10_.width + §8!Y§ >= §>!D§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §8!Y§ >= §>!D§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §8!Y§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §8!Y§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §8!Y§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §@!-§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§"!L§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§^H§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§6!T§ = null;
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
            if(_loc3_ + _loc9_.width + §8!Y§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §8!Y§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §^H§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§9!B§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§2!5§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§5!5§(_loc12_)).§@!F§ = null;
               _loc13_.§=8§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §8!Y§;
            if(_loc9_.height + §8!Y§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §8!Y§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §8X§() : Boolean
      {
         var _loc1_:§"!L§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§^H§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§6!T§ = null;
         if(!§!F§.§]!C§())
         {
            return false;
         }
         if(this.§3!7§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§7!K§)
         {
            if(_loc1_.§2!5§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§[!T§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§@!-§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§9!1§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§9!B§;
               _loc9_ = _loc1_.§2!5§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§5!5§(_loc10_);
                  this.§!l§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§7!K§)
         {
            _loc1_.dispose();
         }
         this.§7!K§ = new Vector.<§"!L§>();
         this.§3!7§ = true;
         return true;
      }
      
      private function §!l§(param1:§6!T§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§[!F§ = null;
         var _loc5_:§ !N§;
         if(!(_loc5_ = this.§[n§[param1.mName]))
         {
            _loc6_ = param1.§=8§.clone();
            _loc7_ = new §[!F§(param2,_loc6_,false);
            _loc5_ = new § !N§(_loc7_,param3,_loc6_,param1.§?!J§,param1.§#!!§,param4);
            this.§[n§[param1.mName] = _loc5_;
         }
      }
      
      public function §59§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§!F§.§^!J§)
         {
            for(bd in this.§=Z§)
            {
               try
               {
                  texture = this.§=Z§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §-J§(param1:String) : § !N§
      {
         return this.§[n§[param1];
      }
      
      public function §9!1§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§=Z§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §!F§.§'G§(param1,param2);
         this.§=Z§[param1] = _loc3_;
         this.§`Q§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §`Q§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§;!"§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§`J§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §4! §() : Texture
      {
         if(!this.§^l§)
         {
            this.§^l§ = this.§9!1§(new BitmapData(40,40,false,16711935));
         }
         return this.§^l§;
      }
      
      public function §]F§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§=Z§)
         {
            if(this.§=Z§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§`Q§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§=Z§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §`#§(param1:String) : BitmapData
      {
         var _loc2_:§ !N§ = this.§-J§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§-J§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§-J§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
