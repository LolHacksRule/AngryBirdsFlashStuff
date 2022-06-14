package §6!D§
{
   import §'6§.§"]§;
   import §0!R§.§@?§;
   import §0!R§.Texture;
   import §>i§.§]y§;
   import §>i§.§^J§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §0Y§ extends EventDispatcher
   {
      
      private static const §1"$§:int = 2;
      
      private static const §[!g§:int = 2048;
      
      private static var §@!9§:§0Y§;
       
      
      private var §"!2§:Dictionary;
      
      private var §]!Z§:Vector.<§]y§>;
      
      private var §4!r§:Dictionary;
      
      private var § !^§:Boolean;
      
      private var §;!Y§:String;
      
      private var §#!R§:Texture;
      
      private var §?!-§:int;
      
      private var §'"2§:int;
      
      public function §0Y§(param1:String = null)
      {
         super();
         this.§]!Z§ = new Vector.<§]y§>();
         this.§"!2§ = new Dictionary();
         this.§4!r§ = new Dictionary();
         this.§;!Y§ = param1;
      }
      
      public static function get §;"§() : §0Y§
      {
         if(!§@!9§)
         {
            §@!9§ = new §0Y§();
         }
         return §@!9§;
      }
      
      public function get §@=§() : int
      {
         return this.§?!-§;
      }
      
      public function get §%!U§() : int
      {
         return this.§'"2§;
      }
      
      public function get id() : String
      {
         return this.§;!Y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3!K§ = null;
         var _loc2_:§]y§ = null;
         if(this.§"!2§)
         {
            for each(_loc1_ in this.§"!2§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§"!2§ = null;
         }
         if(this.§]!Z§)
         {
            for each(_loc2_ in this.§]!Z§)
            {
               _loc2_.dispose();
            }
            this.§]!Z§ = null;
         }
         if(this.§4!r§)
         {
            this.§4!r§ = null;
         }
         if(this.§#!R§)
         {
            this.§#!R§.dispose();
            this.§#!R§ = null;
         }
         this.§]!Z§ = new Vector.<§]y§>();
         this.§"!2§ = new Dictionary();
         this.§4!r§ = new Dictionary();
      }
      
      public function §0!g§(param1:§]y§) : void
      {
         if(this.§ !^§)
         {
            return;
         }
         if(this.§]!Z§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§]!Z§.push(param1);
      }
      
      private function §[!,§(param1:Array) : Rectangle
      {
         var _loc9_:§]y§ = null;
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
            if(_loc2_ + _loc10_.width + §1"$§ >= §[!g§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §1"$§ >= §[!g§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §1"$§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §1"$§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §1"$§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §+!U§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§]y§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§3j§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§^J§ = null;
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
            if(_loc3_ + _loc9_.width + §1"$§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §1"$§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §3j§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§-"4§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§#V§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§3G§(_loc12_)).§-"'§ = null;
               _loc13_.§3!%§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §1"$§;
            if(_loc9_.height + §1"$§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §1"$§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §9!F§() : Boolean
      {
         var _loc1_:§]y§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§3j§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§^J§ = null;
         if(!§"]§.§+"E§())
         {
            return false;
         }
         if(this.§ !^§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§]!Z§)
         {
            if(_loc1_.§#V§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§[!,§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§+!U§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§-"4§;
               _loc9_ = _loc1_.§#V§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§3G§(_loc10_);
                  this.§7c§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§]!Z§)
         {
            _loc1_.dispose();
         }
         this.§]!Z§ = new Vector.<§]y§>();
         this.§ !^§ = true;
         return true;
      }
      
      private function §7c§(param1:§^J§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§@?§ = null;
         var _loc5_:§3!K§;
         if(!(_loc5_ = this.§"!2§[param1.mName]))
         {
            _loc6_ = param1.§3!%§.clone();
            _loc7_ = new §@?§(param2,_loc6_,false);
            _loc5_ = new §3!K§(_loc7_,param3,_loc6_,param1.§4!^§,param1.§'?§,param4);
            this.§"!2§[param1.mName] = _loc5_;
         }
      }
      
      public function §>l§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§"]§.§^!E§)
         {
            for(bd in this.§4!r§)
            {
               try
               {
                  texture = this.§4!r§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §>s§(param1:String) : §3!K§
      {
         return this.§"!2§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§4!r§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §"]§.§3`§(param1,param2);
         this.§4!r§[param1] = _loc3_;
         this.§!L§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §!L§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§'"2§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§?!-§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §2M§() : Texture
      {
         if(!this.§#!R§)
         {
            this.§#!R§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§#!R§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§4!r§)
         {
            if(this.§4!r§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§!L§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§4!r§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §-"8§(param1:String) : BitmapData
      {
         var _loc2_:§3!K§ = this.§>s§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§>s§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§>s§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
