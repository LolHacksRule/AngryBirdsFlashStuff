package §"k§
{
   import §-!§.§-§;
   import §6-§.§,2§;
   import §6-§.§;J§;
   import §]p§.§7!C§;
   import §]p§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §02§ extends EventDispatcher
   {
      
      private static const §8K§:int = 2;
      
      private static const §+A§:int = 2048;
      
      private static var §0$§:§02§;
       
      
      private var §=f§:Dictionary;
      
      private var §+!Q§:Vector.<§;J§>;
      
      private var §[V§:Dictionary;
      
      private var § set§:Boolean;
      
      private var §0!F§:String;
      
      private var §@O§:Texture;
      
      private var §9!N§:int;
      
      private var §8E§:int;
      
      public function §02§(param1:String = null)
      {
         super();
         this.§+!Q§ = new Vector.<§;J§>();
         this.§=f§ = new Dictionary();
         this.§[V§ = new Dictionary();
         this.§0!F§ = param1;
      }
      
      public static function get §!!8§() : §02§
      {
         if(!§0$§)
         {
            §0$§ = new §02§();
         }
         return §0$§;
      }
      
      public function get §1_§() : int
      {
         return this.§9!N§;
      }
      
      public function get §4!2§() : int
      {
         return this.§8E§;
      }
      
      public function get id() : String
      {
         return this.§0!F§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§5!7§ = null;
         var _loc2_:§;J§ = null;
         if(this.§=f§)
         {
            for each(_loc1_ in this.§=f§)
            {
               this.§]!>§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§=f§ = null;
         }
         if(this.§+!Q§)
         {
            for each(_loc2_ in this.§+!Q§)
            {
               _loc2_.dispose();
            }
            this.§+!Q§ = null;
         }
         if(this.§[V§)
         {
            this.§[V§ = null;
         }
         if(this.§@O§)
         {
            this.§@O§.dispose();
            this.§@O§ = null;
         }
         this.§+!Q§ = new Vector.<§;J§>();
         this.§=f§ = new Dictionary();
         this.§[V§ = new Dictionary();
      }
      
      public function §3$§(param1:§;J§) : void
      {
         if(this.§ set§)
         {
            return;
         }
         if(this.§+!Q§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§+!Q§.push(param1);
      }
      
      private function §-!9§(param1:Array) : Rectangle
      {
         var _loc9_:§;J§ = null;
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
            if(_loc2_ + _loc10_.width + §8K§ >= §+A§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §8K§ >= §+A§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §8K§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §8K§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §8K§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §`!,§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§;J§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§0r§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§,2§ = null;
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
            if(_loc3_ + _loc9_.width + §8K§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §8K§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §0r§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§?=§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§4H§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§8?§(_loc12_)).§^t§ = null;
               _loc13_.§^!3§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §8K§;
            if(_loc9_.height + §8K§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §8K§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §!2§() : Boolean
      {
         var _loc1_:§;J§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§0r§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§,2§ = null;
         if(!§-§.§@a§())
         {
            return false;
         }
         if(this.§ set§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§+!Q§)
         {
            if(_loc1_.§4H§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§-!9§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§`!,§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§2!;§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§?=§;
               _loc9_ = _loc1_.§4H§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§8?§(_loc10_);
                  this.§-!"§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§+!Q§)
         {
            _loc1_.dispose();
         }
         this.§+!Q§ = new Vector.<§;J§>();
         this.§ set§ = true;
         return true;
      }
      
      private function §-!"§(param1:§,2§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§7!C§ = null;
         var _loc5_:§5!7§;
         if(!(_loc5_ = this.§=f§[param1.mName]))
         {
            _loc6_ = param1.§^!3§.clone();
            _loc7_ = new §7!C§(param2,_loc6_,false);
            _loc5_ = new §5!7§(_loc7_,param3,_loc6_,param1.§1!H§,param1.§+!`§,param4);
            this.§=f§[param1.mName] = _loc5_;
         }
      }
      
      public function §!t§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§-§.§'g§)
         {
            for(bd in this.§[V§)
            {
               try
               {
                  texture = this.§[V§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §'!R§(param1:String) : §5!7§
      {
         return this.§=f§[param1];
      }
      
      public function §2!;§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§[V§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §-§.§;! §(param1,param2);
         this.§[V§[param1] = _loc3_;
         this.§8!+§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §8!+§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§8E§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§9!N§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §7!&§() : Texture
      {
         if(!this.§@O§)
         {
            this.§@O§ = this.§2!;§(new BitmapData(40,40,false,16711935));
         }
         return this.§@O§;
      }
      
      public function §]!>§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§[V§)
         {
            if(this.§[V§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§8!+§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§[V§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §3J§(param1:String) : BitmapData
      {
         var _loc2_:§5!7§ = this.§'!R§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§'!R§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§'!R§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
