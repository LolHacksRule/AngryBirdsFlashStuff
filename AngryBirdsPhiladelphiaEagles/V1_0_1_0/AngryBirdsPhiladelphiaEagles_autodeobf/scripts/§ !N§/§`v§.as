package § !N§
{
   import §+!0§.§#N§;
   import §+!0§.§=j§;
   import §0l§.Texture;
   import §0l§.§`j§;
   import §5J§.§>$§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §`v§ extends EventDispatcher
   {
      
      private static const §5X§:int = 2;
      
      private static const §4p§:int = 2048;
      
      private static var §8S§:§`v§;
       
      
      private var §=!C§:Dictionary;
      
      private var §0!N§:Vector.<§=j§>;
      
      private var §%=§:Dictionary;
      
      private var §6S§:Boolean;
      
      private var §?!7§:String;
      
      private var §9!7§:Texture;
      
      private var §=!6§:int;
      
      private var §&i§:int;
      
      public function §`v§(param1:String = null)
      {
         super();
         this.§0!N§ = new Vector.<§=j§>();
         this.§=!C§ = new Dictionary();
         this.§%=§ = new Dictionary();
         this.§?!7§ = param1;
      }
      
      public static function get §4J§() : §`v§
      {
         if(!§8S§)
         {
            §8S§ = new §`v§();
         }
         return §8S§;
      }
      
      public function get §;1§() : int
      {
         return this.§=!6§;
      }
      
      public function get §3C§() : int
      {
         return this.§&i§;
      }
      
      public function get id() : String
      {
         return this.§?!7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!§ = null;
         var _loc2_:§=j§ = null;
         if(this.§=!C§)
         {
            for each(_loc1_ in this.§=!C§)
            {
               this.§0^§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§=!C§ = null;
         }
         if(this.§0!N§)
         {
            for each(_loc2_ in this.§0!N§)
            {
               _loc2_.dispose();
            }
            this.§0!N§ = null;
         }
         if(this.§%=§)
         {
            this.§%=§ = null;
         }
         if(this.§9!7§)
         {
            this.§9!7§.dispose();
            this.§9!7§ = null;
         }
         this.§0!N§ = new Vector.<§=j§>();
         this.§=!C§ = new Dictionary();
         this.§%=§ = new Dictionary();
      }
      
      public function §#p§(param1:§=j§) : void
      {
         if(this.§6S§)
         {
            return;
         }
         if(this.§0!N§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§0!N§.push(param1);
      }
      
      private function §4k§(param1:Array) : Rectangle
      {
         var _loc9_:§=j§ = null;
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
            if(_loc2_ + _loc10_.width + §5X§ >= §4p§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §5X§ >= §4p§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §5X§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §5X§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §5X§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §5i§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§=j§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§93§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§#N§ = null;
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
            if(_loc3_ + _loc9_.width + §5X§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §5X§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §93§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§%m§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§'!D§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§ 5§(_loc12_)).§>N§ = null;
               _loc13_.§'!3§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §5X§;
            if(_loc9_.height + §5X§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §5X§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §=U§() : Boolean
      {
         var _loc1_:§=j§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§93§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§#N§ = null;
         if(!§>$§.§[i§())
         {
            return false;
         }
         if(this.§6S§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§0!N§)
         {
            if(_loc1_.§'!D§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§4k§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§5i§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§>!6§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§%m§;
               _loc9_ = _loc1_.§'!D§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§ 5§(_loc10_);
                  this.§97§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§0!N§)
         {
            _loc1_.dispose();
         }
         this.§0!N§ = new Vector.<§=j§>();
         this.§6S§ = true;
         return true;
      }
      
      private function §97§(param1:§#N§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§`j§ = null;
         var _loc5_:§6!§;
         if(!(_loc5_ = this.§=!C§[param1.mName]))
         {
            _loc6_ = param1.§'!3§.clone();
            _loc7_ = new §`j§(param2,_loc6_,false);
            _loc5_ = new §6!§(_loc7_,param3,_loc6_,param1.§!p§,param1.§"b§,param4);
            this.§=!C§[param1.mName] = _loc5_;
         }
      }
      
      public function § !1§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§>$§.§9!B§)
         {
            for(bd in this.§%=§)
            {
               try
               {
                  texture = this.§%=§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §?2§(param1:String) : §6!§
      {
         return this.§=!C§[param1];
      }
      
      public function §>!6§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§%=§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §>$§.§7$§(param1,param2);
         this.§%=§[param1] = _loc3_;
         this.§`!,§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §`!,§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§&i§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§=!6§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §5!0§() : Texture
      {
         if(!this.§9!7§)
         {
            this.§9!7§ = this.§>!6§(new BitmapData(40,40,false,16711935));
         }
         return this.§9!7§;
      }
      
      public function §0^§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§%=§)
         {
            if(this.§%=§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§`!,§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§%=§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §#!>§(param1:String) : BitmapData
      {
         var _loc2_:§6!§ = this.§?2§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§?2§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§?2§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
