package § !%§
{
   import § %§.§`M§;
   import §!U§.§ else§;
   import §!U§.§?!A§;
   import §&Y§.§>e§;
   import §&Y§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §7!>§ extends EventDispatcher
   {
      
      private static const §=!"§:int = 2;
      
      private static const §2!Q§:int = 2048;
      
      private static var §<!L§:§7!>§;
       
      
      private var §^k§:Dictionary;
      
      private var §^_§:Vector.<§?!A§>;
      
      private var §!f§:Dictionary;
      
      private var §;q§:Boolean;
      
      private var §,[§:String;
      
      private var §8!@§:Texture;
      
      private var §4!!§:int;
      
      private var §0!a§:int;
      
      public function §7!>§(param1:String = null)
      {
         super();
         this.§^_§ = new Vector.<§?!A§>();
         this.§^k§ = new Dictionary();
         this.§!f§ = new Dictionary();
         this.§,[§ = param1;
      }
      
      public static function get §@!7§() : §7!>§
      {
         if(!§<!L§)
         {
            §<!L§ = new §7!>§();
         }
         return §<!L§;
      }
      
      public function get §`!V§() : int
      {
         return this.§4!!§;
      }
      
      public function get §,Z§() : int
      {
         return this.§0!a§;
      }
      
      public function get id() : String
      {
         return this.§,[§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!U§ = null;
         var _loc2_:§?!A§ = null;
         if(this.§^k§)
         {
            for each(_loc1_ in this.§^k§)
            {
               this.§!Z§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§^k§ = null;
         }
         if(this.§^_§)
         {
            for each(_loc2_ in this.§^_§)
            {
               _loc2_.dispose();
            }
            this.§^_§ = null;
         }
         if(this.§!f§)
         {
            this.§!f§ = null;
         }
         if(this.§8!@§)
         {
            this.§8!@§.dispose();
            this.§8!@§ = null;
         }
         this.§^_§ = new Vector.<§?!A§>();
         this.§^k§ = new Dictionary();
         this.§!f§ = new Dictionary();
      }
      
      public function §8R§(param1:§?!A§) : void
      {
         if(this.§;q§)
         {
            return;
         }
         if(this.§^_§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§^_§.push(param1);
      }
      
      private function § x§(param1:Array) : Rectangle
      {
         var _loc9_:§?!A§ = null;
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
            if(_loc2_ + _loc10_.width + §=!"§ >= §2!Q§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §=!"§ >= §2!Q§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §=!"§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §=!"§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §=!"§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §,R§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§?!A§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§,§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§ else§ = null;
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
            if(_loc3_ + _loc9_.width + §=!"§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §=!"§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §,§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§5;§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§#!o§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§-a§(_loc12_)).§"!k§ = null;
               _loc13_.§5!4§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §=!"§;
            if(_loc9_.height + §=!"§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §=!"§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §0%§() : Boolean
      {
         var _loc1_:§?!A§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§,§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§ else§ = null;
         if(!§`M§.§2!8§())
         {
            return false;
         }
         if(this.§;q§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§^_§)
         {
            if(_loc1_.§#!o§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§ x§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§,R§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§5;§;
               _loc9_ = _loc1_.§#!o§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§-a§(_loc10_);
                  this.§^!9§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§^_§)
         {
            _loc1_.dispose();
         }
         this.§^_§ = new Vector.<§?!A§>();
         this.§;q§ = true;
         return true;
      }
      
      private function §^!9§(param1:§ else§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§>e§ = null;
         var _loc5_:§0!U§;
         if(!(_loc5_ = this.§^k§[param1.mName]))
         {
            _loc6_ = param1.§5!4§.clone();
            _loc7_ = new §>e§(param2,_loc6_,false);
            _loc5_ = new §0!U§(_loc7_,param3,_loc6_,param1.§[3§,param1.§75§,param4);
            this.§^k§[param1.mName] = _loc5_;
         }
      }
      
      public function §5C§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§`M§.§]!b§)
         {
            for(bd in this.§!f§)
            {
               try
               {
                  texture = this.§!f§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §1m§(param1:String) : §0!U§
      {
         return this.§^k§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§!f§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §`M§.§]?§(param1,param2);
         this.§!f§[param1] = _loc3_;
         this.§+!P§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §+!P§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§0!a§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§4!!§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §[=§() : Texture
      {
         if(!this.§8!@§)
         {
            this.§8!@§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§8!@§;
      }
      
      public function §!Z§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§!f§)
         {
            if(this.§!f§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§+!P§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§!f§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §<!0§(param1:String) : BitmapData
      {
         var _loc2_:§0!U§ = this.§1m§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§1m§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§1m§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
