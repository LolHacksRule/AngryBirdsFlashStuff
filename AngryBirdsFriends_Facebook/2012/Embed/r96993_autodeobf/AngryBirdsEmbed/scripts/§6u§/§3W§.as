package §6u§
{
   import § !'§.§!!F§;
   import § !'§.§6'§;
   import §8!#§.§<n§;
   import §>u§.§'!?§;
   import §>u§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §3W§ extends EventDispatcher
   {
      
      private static const §%! §:int = 2;
      
      private static const §^4§:int = 2048;
      
      private static var §6U§:§3W§;
       
      
      private var §8P§:Dictionary;
      
      private var §?!E§:Vector.<§!!F§>;
      
      private var §'!6§:Dictionary;
      
      private var §,V§:Boolean;
      
      private var § get§:String;
      
      private var §?7§:Texture;
      
      private var §0,§:int;
      
      private var §8_§:int;
      
      public function §3W§(param1:String = null)
      {
         super();
         this.§?!E§ = new Vector.<§!!F§>();
         this.§8P§ = new Dictionary();
         this.§'!6§ = new Dictionary();
         this.§ get§ = param1;
      }
      
      public static function get §9r§() : §3W§
      {
         if(!§6U§)
         {
            §6U§ = new §3W§();
         }
         return §6U§;
      }
      
      public function get §21§() : int
      {
         return this.§0,§;
      }
      
      public function get §``§() : int
      {
         return this.§8_§;
      }
      
      public function get id() : String
      {
         return this.§ get§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!B§ = null;
         var _loc2_:§!!F§ = null;
         if(this.§8P§)
         {
            for each(_loc1_ in this.§8P§)
            {
               this.§0a§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§8P§ = null;
         }
         if(this.§?!E§)
         {
            for each(_loc2_ in this.§?!E§)
            {
               _loc2_.dispose();
            }
            this.§?!E§ = null;
         }
         if(this.§'!6§)
         {
            this.§'!6§ = null;
         }
         if(this.§?7§)
         {
            this.§?7§.dispose();
            this.§?7§ = null;
         }
         this.§?!E§ = new Vector.<§!!F§>();
         this.§8P§ = new Dictionary();
         this.§'!6§ = new Dictionary();
      }
      
      public function §<V§(param1:§!!F§) : void
      {
         if(this.§,V§)
         {
            return;
         }
         if(this.§?!E§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§?!E§.push(param1);
      }
      
      private function §=!-§(param1:Array) : Rectangle
      {
         var _loc9_:§!!F§ = null;
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
            if(_loc2_ + _loc10_.width + §%! § >= §^4§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §%! § >= §^4§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §%! §;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §%! § > _loc6_)
            {
               _loc6_ = _loc10_.height + §%! §;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §@V§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§!!F§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§>^§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§6'§ = null;
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
            if(_loc3_ + _loc9_.width + §%! § > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §%! § > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §>^§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§9U§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§?!$§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§;!B§(_loc12_)).§ C§ = null;
               _loc13_.§12§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §%! §;
            if(_loc9_.height + §%! § > _loc5_)
            {
               _loc5_ = _loc9_.height + §%! §;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §-^§() : Boolean
      {
         var _loc1_:§!!F§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§>^§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§6'§ = null;
         if(!§<n§.§+0§())
         {
            return false;
         }
         if(this.§,V§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§?!E§)
         {
            if(_loc1_.§?!$§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§=!-§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§@V§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§=_§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§9U§;
               _loc9_ = _loc1_.§?!$§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§;!B§(_loc10_);
                  this.§0n§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§?!E§)
         {
            _loc1_.dispose();
         }
         this.§?!E§ = new Vector.<§!!F§>();
         this.§,V§ = true;
         return true;
      }
      
      private function §0n§(param1:§6'§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§'!?§ = null;
         var _loc5_:§!B§;
         if(!(_loc5_ = this.§8P§[param1.mName]))
         {
            _loc6_ = param1.§12§.clone();
            _loc7_ = new §'!?§(param2,_loc6_,false);
            _loc5_ = new §!B§(_loc7_,param3,_loc6_,param1.§';§,param1.§^!=§,param4);
            this.§8P§[param1.mName] = _loc5_;
         }
      }
      
      public function §%!A§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§<n§.§>m§)
         {
            for(bd in this.§'!6§)
            {
               try
               {
                  texture = this.§'!6§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function § 8§(param1:String) : §!B§
      {
         return this.§8P§[param1];
      }
      
      public function §=_§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§'!6§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §<n§.§4T§(param1,param2);
         this.§'!6§[param1] = _loc3_;
         this.§3!1§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §3!1§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§8_§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§0,§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §9h§() : Texture
      {
         if(!this.§?7§)
         {
            this.§?7§ = this.§=_§(new BitmapData(40,40,false,16711935));
         }
         return this.§?7§;
      }
      
      public function §0a§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§'!6§)
         {
            if(this.§'!6§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§3!1§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§'!6§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §&^§(param1:String) : BitmapData
      {
         var _loc2_:§!B§ = this.§ 8§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§ 8§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§ 8§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
