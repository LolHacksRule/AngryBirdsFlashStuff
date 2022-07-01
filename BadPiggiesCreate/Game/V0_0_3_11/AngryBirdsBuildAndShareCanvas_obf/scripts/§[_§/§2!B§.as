package §[_§
{
   import §0P§.§!!l§;
   import §4%§.§+k§;
   import §4%§.§`"3§;
   import §^i§.§@d§;
   import §^i§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §2!B§ extends EventDispatcher
   {
      
      private static const § !_§:int = 2;
      
      private static const §3!I§:int = 2048;
      
      private static var §4!U§:§2!B§;
       
      
      private var §+!"§:Dictionary;
      
      private var §;!B§:Vector.<§`"3§>;
      
      private var §"u§:Dictionary;
      
      private var §1!u§:Boolean;
      
      private var §52§:String;
      
      private var §5n§:Texture;
      
      private var §-"3§:int;
      
      private var §1F§:int;
      
      public function §2!B§(param1:String = null)
      {
         super();
         this.§;!B§ = new Vector.<§`"3§>();
         this.§+!"§ = new Dictionary();
         this.§"u§ = new Dictionary();
         this.§52§ = param1;
      }
      
      public static function get §if §() : §2!B§
      {
         if(!§4!U§)
         {
            §4!U§ = new §2!B§();
         }
         return §4!U§;
      }
      
      public function get §+n§() : int
      {
         return this.§-"3§;
      }
      
      public function get §!!o§() : int
      {
         return this.§1F§;
      }
      
      public function get id() : String
      {
         return this.§52§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!N§ = null;
         var _loc2_:§`"3§ = null;
         if(this.§+!"§)
         {
            for each(_loc1_ in this.§+!"§)
            {
               this.§#!7§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§+!"§ = null;
         }
         if(this.§;!B§)
         {
            for each(_loc2_ in this.§;!B§)
            {
               _loc2_.dispose();
            }
            this.§;!B§ = null;
         }
         if(this.§"u§)
         {
            this.§"u§ = null;
         }
         if(this.§5n§)
         {
            this.§5n§.dispose();
            this.§5n§ = null;
         }
         this.§;!B§ = new Vector.<§`"3§>();
         this.§+!"§ = new Dictionary();
         this.§"u§ = new Dictionary();
      }
      
      public function §-3§(param1:§`"3§) : void
      {
         if(this.§1!u§)
         {
            return;
         }
         if(this.§;!B§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§;!B§.push(param1);
      }
      
      private function §,P§(param1:Array) : Rectangle
      {
         var _loc9_:§`"3§ = null;
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
            if(_loc2_ + _loc10_.width + § !_§ >= §3!I§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + § !_§ >= §3!I§)
            {
               break;
            }
            _loc2_ += _loc10_.width + § !_§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + § !_§ > _loc6_)
            {
               _loc6_ = _loc10_.height + § !_§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §9!#§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§`"3§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§#!T§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§+k§ = null;
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
            if(_loc3_ + _loc9_.width + § !_§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + § !_§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §#!T§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§+!J§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§!G§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§7!@§(_loc12_)).§!!i§ = null;
               _loc13_.§`G§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + § !_§;
            if(_loc9_.height + § !_§ > _loc5_)
            {
               _loc5_ = _loc9_.height + § !_§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §!9§() : Boolean
      {
         var _loc1_:§`"3§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§#!T§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§+k§ = null;
         if(!§!!l§.§2"9§())
         {
            return false;
         }
         if(this.§1!u§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§;!B§)
         {
            if(_loc1_.§!G§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§,P§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§9!#§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§[!$§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§+!J§;
               _loc9_ = _loc1_.§!G§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§7!@§(_loc10_);
                  this.§0a§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§;!B§)
         {
            _loc1_.dispose();
         }
         this.§;!B§ = new Vector.<§`"3§>();
         this.§1!u§ = true;
         return true;
      }
      
      private function §0a§(param1:§+k§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§@d§ = null;
         var _loc5_:§'!N§;
         if(!(_loc5_ = this.§+!"§[param1.mName]))
         {
            _loc6_ = param1.§`G§.clone();
            _loc7_ = new §@d§(param2,_loc6_,false);
            _loc5_ = new §'!N§(_loc7_,param3,_loc6_,param1.§3" §,param1.§"!Z§,param4);
            this.§+!"§[param1.mName] = _loc5_;
         }
      }
      
      public function §4U§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§!!l§.§2!-§)
         {
            for(bd in this.§"u§)
            {
               try
               {
                  texture = this.§"u§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §+!p§(param1:String) : §'!N§
      {
         return this.§+!"§[param1];
      }
      
      public function §[!$§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§"u§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §!!l§.§[i§(param1,param2);
         this.§"u§[param1] = _loc3_;
         this.§;J§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §;J§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§1F§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§-"3§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §?!4§() : Texture
      {
         if(!this.§5n§)
         {
            this.§5n§ = this.§[!$§(new BitmapData(40,40,false,16711935));
         }
         return this.§5n§;
      }
      
      public function §#!7§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§"u§)
         {
            if(this.§"u§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§;J§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§"u§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §#"6§(param1:String) : BitmapData
      {
         var _loc2_:§'!N§ = this.§+!p§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§+!p§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§+!p§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
