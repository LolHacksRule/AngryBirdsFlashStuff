package §3!§
{
   import § 0§.§0!§;
   import § 0§.Texture;
   import §1y§.§&!B§;
   import §>0§.§7"§;
   import §>0§.§[!W§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §-e§ extends EventDispatcher
   {
      
      private static const §'E§:int = 2;
      
      private static const §9!T§:int = 2048;
      
      private static var §9Q§:§-e§;
       
      
      private var §%l§:Dictionary;
      
      private var §?!"§:Vector.<§[!W§>;
      
      private var §`c§:Dictionary;
      
      private var §,!L§:Boolean;
      
      private var §switch§:String;
      
      private var §`!<§:Texture;
      
      private var §"!2§:int;
      
      private var §4!]§:int;
      
      public function §-e§(param1:String = null)
      {
         super();
         this.§?!"§ = new Vector.<§[!W§>();
         this.§%l§ = new Dictionary();
         this.§`c§ = new Dictionary();
         this.§switch§ = param1;
      }
      
      public static function get §,!U§() : §-e§
      {
         if(!§9Q§)
         {
            §9Q§ = new §-e§();
         }
         return §9Q§;
      }
      
      public function get §[!#§() : int
      {
         return this.§"!2§;
      }
      
      public function get §>S§() : int
      {
         return this.§4!]§;
      }
      
      public function get id() : String
      {
         return this.§switch§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2!$§ = null;
         var _loc2_:§[!W§ = null;
         if(this.§%l§)
         {
            for each(_loc1_ in this.§%l§)
            {
               this.§%!d§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§%l§ = null;
         }
         if(this.§?!"§)
         {
            for each(_loc2_ in this.§?!"§)
            {
               _loc2_.dispose();
            }
            this.§?!"§ = null;
         }
         if(this.§`c§)
         {
            this.§`c§ = null;
         }
         if(this.§`!<§)
         {
            this.§`!<§.dispose();
            this.§`!<§ = null;
         }
         this.§?!"§ = new Vector.<§[!W§>();
         this.§%l§ = new Dictionary();
         this.§`c§ = new Dictionary();
      }
      
      public function §>A§(param1:§[!W§) : void
      {
         if(this.§,!L§)
         {
            return;
         }
         if(this.§?!"§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§?!"§.push(param1);
      }
      
      private function § 1§(param1:Array) : Rectangle
      {
         var _loc9_:§[!W§ = null;
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
            if(_loc2_ + _loc10_.width + §'E§ >= §9!T§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §'E§ >= §9!T§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §'E§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §'E§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §'E§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §3+§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§[!W§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§ T§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§7"§ = null;
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
            if(_loc3_ + _loc9_.width + §'E§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §'E§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new § T§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§[!V§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§;5§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§;!,§(_loc12_)).§#[§ = null;
               _loc13_.§#!_§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §'E§;
            if(_loc9_.height + §'E§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §'E§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §?P§() : Boolean
      {
         var _loc1_:§[!W§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§ T§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§7"§ = null;
         if(!§&!B§.§`Y§())
         {
            return false;
         }
         if(this.§,!L§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§?!"§)
         {
            if(_loc1_.§;5§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§ 1§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§3+§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§-Z§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§[!V§;
               _loc9_ = _loc1_.§;5§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§;!,§(_loc10_);
                  this.§in§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§?!"§)
         {
            _loc1_.dispose();
         }
         this.§?!"§ = new Vector.<§[!W§>();
         this.§,!L§ = true;
         return true;
      }
      
      private function §in§(param1:§7"§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§0!§ = null;
         var _loc5_:§2!$§;
         if(!(_loc5_ = this.§%l§[param1.mName]))
         {
            _loc6_ = param1.§#!_§.clone();
            _loc7_ = new §0!§(param2,_loc6_,false);
            _loc5_ = new §2!$§(_loc7_,param3,_loc6_,param1.§"Q§,param1.§]!+§,param4);
            this.§%l§[param1.mName] = _loc5_;
         }
      }
      
      public function §-!D§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§&!B§.§1!>§)
         {
            for(bd in this.§`c§)
            {
               try
               {
                  texture = this.§`c§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §1%§(param1:String) : §2!$§
      {
         return this.§%l§[param1];
      }
      
      public function §-Z§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§`c§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §&!B§.§]>§(param1,param2);
         this.§`c§[param1] = _loc3_;
         this.§7>§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §7>§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§4!]§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§"!2§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §'!V§() : Texture
      {
         if(!this.§`!<§)
         {
            this.§`!<§ = this.§-Z§(new BitmapData(40,40,false,16711935));
         }
         return this.§`!<§;
      }
      
      public function §%!d§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§`c§)
         {
            if(this.§`c§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§7>§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§`c§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §6w§(param1:String) : BitmapData
      {
         var _loc2_:§2!$§ = this.§1%§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§1%§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§1%§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
