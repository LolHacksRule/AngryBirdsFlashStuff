package §<T§
{
   import §"a§.§!"J§;
   import §,"R§.§,!+§;
   import §,"R§.§2!J§;
   import §<5§.§%!P§;
   import §<5§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §`m§ extends EventDispatcher
   {
      
      private static const §7!h§:int = 2;
      
      private static const § !q§:int = 2048;
      
      private static var §-!9§:§`m§;
       
      
      private var §?^§:Dictionary;
      
      private var §8^§:Vector.<§,!+§>;
      
      private var §&,§:Dictionary;
      
      private var §="7§:Boolean;
      
      private var §&N§:String;
      
      private var §!"?§:Texture;
      
      private var §>&§:int;
      
      private var §]!&§:int;
      
      public function §`m§(param1:String = null)
      {
         super();
         this.§8^§ = new Vector.<§,!+§>();
         this.§?^§ = new Dictionary();
         this.§&,§ = new Dictionary();
         this.§&N§ = param1;
      }
      
      public static function get §&"5§() : §`m§
      {
         if(!§-!9§)
         {
            §-!9§ = new §`m§();
         }
         return §-!9§;
      }
      
      public function get §!!D§() : int
      {
         return this.§>&§;
      }
      
      public function get §7!-§() : int
      {
         return this.§]!&§;
      }
      
      public function get id() : String
      {
         return this.§&N§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^"5§ = null;
         var _loc2_:§,!+§ = null;
         if(this.§?^§)
         {
            for each(_loc1_ in this.§?^§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§?^§ = null;
         }
         if(this.§8^§)
         {
            for each(_loc2_ in this.§8^§)
            {
               _loc2_.dispose();
            }
            this.§8^§ = null;
         }
         if(this.§&,§)
         {
            this.§&,§ = null;
         }
         if(this.§!"?§)
         {
            this.§!"?§.dispose();
            this.§!"?§ = null;
         }
         this.§8^§ = new Vector.<§,!+§>();
         this.§?^§ = new Dictionary();
         this.§&,§ = new Dictionary();
      }
      
      public function §0!6§(param1:§,!+§) : void
      {
         if(this.§="7§)
         {
            return;
         }
         if(this.§8^§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§8^§.push(param1);
      }
      
      private function §=!3§(param1:Array) : Rectangle
      {
         var _loc9_:§,!+§ = null;
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
            if(_loc2_ + _loc10_.width + §7!h§ >= § !q§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §7!h§ >= § !q§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §7!h§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §7!h§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §7!h§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §?t§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§,!+§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§=!c§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§2!J§ = null;
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
            if(_loc3_ + _loc9_.width + §7!h§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §7!h§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §=!c§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§>-§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§'"'§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§ "D§(_loc12_)).§^! § = null;
               _loc13_.§-"Y§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §7!h§;
            if(_loc9_.height + §7!h§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §7!h§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §0"V§() : Boolean
      {
         var _loc1_:§,!+§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§=!c§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§2!J§ = null;
         if(!§!"J§.§+",§())
         {
            return false;
         }
         if(this.§="7§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§8^§)
         {
            if(_loc1_.§'"'§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§=!3§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§?t§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§>-§;
               _loc9_ = _loc1_.§'"'§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§ "D§(_loc10_);
                  this.§do§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§8^§)
         {
            _loc1_.dispose();
         }
         this.§8^§ = new Vector.<§,!+§>();
         this.§="7§ = true;
         return true;
      }
      
      private function §do§(param1:§2!J§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§%!P§ = null;
         var _loc5_:§^"5§;
         if(!(_loc5_ = this.§?^§[param1.mName]))
         {
            _loc6_ = param1.§-"Y§.clone();
            _loc7_ = new §%!P§(param2,_loc6_,false);
            _loc5_ = new §^"5§(_loc7_,param3,_loc6_,param1.§5'§,param1.§>K§,param4);
            this.§?^§[param1.mName] = _loc5_;
         }
      }
      
      public function §2!S§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§!"J§.§27§)
         {
            for(bd in this.§&,§)
            {
               try
               {
                  texture = this.§&,§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §#!L§(param1:String) : §^"5§
      {
         return this.§?^§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§&,§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §!"J§.§^G§(param1,param2);
         this.§&,§[param1] = _loc3_;
         this.§5m§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §5m§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§]!&§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§>&§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §]i§() : Texture
      {
         if(!this.§!"?§)
         {
            this.§!"?§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§!"?§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§&,§)
         {
            if(this.§&,§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§5m§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§&,§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §'"<§(param1:String) : BitmapData
      {
         var _loc2_:§^"5§ = this.§#!L§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§#!L§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§#!L§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
