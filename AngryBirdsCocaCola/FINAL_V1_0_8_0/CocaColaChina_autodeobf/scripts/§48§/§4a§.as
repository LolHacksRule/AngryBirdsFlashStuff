package §48§
{
   import §+&§.§?y§;
   import §5!5§.§4!E§;
   import §5!5§.§]u§;
   import §6!4§.§6!7§;
   import §6!4§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §4a§ extends EventDispatcher
   {
      
      private static const §4D§:int = 2;
      
      private static const §0![§:int = 2048;
      
      private static var §^H§:§4a§;
       
      
      private var §^!,§:Dictionary;
      
      private var §>w§:Vector.<§]u§>;
      
      private var §5!&§:Dictionary;
      
      private var §-N§:Boolean;
      
      private var §9!'§:String;
      
      private var §0!V§:Texture;
      
      private var §"!B§:int;
      
      private var §%w§:int;
      
      public function §4a§(param1:String = null)
      {
         super();
         this.§>w§ = new Vector.<§]u§>();
         this.§^!,§ = new Dictionary();
         this.§5!&§ = new Dictionary();
         this.§9!'§ = param1;
      }
      
      public static function get §]!D§() : §4a§
      {
         if(!§^H§)
         {
            §^H§ = new §4a§();
         }
         return §^H§;
      }
      
      public function get §<6§() : int
      {
         return this.§"!B§;
      }
      
      public function get §-I§() : int
      {
         return this.§%w§;
      }
      
      public function get id() : String
      {
         return this.§9!'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!Z§ = null;
         var _loc2_:§]u§ = null;
         if(this.§^!,§)
         {
            for each(_loc1_ in this.§^!,§)
            {
               this.§+-§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§^!,§ = null;
         }
         if(this.§>w§)
         {
            for each(_loc2_ in this.§>w§)
            {
               _loc2_.dispose();
            }
            this.§>w§ = null;
         }
         if(this.§5!&§)
         {
            this.§5!&§ = null;
         }
         if(this.§0!V§)
         {
            this.§0!V§.dispose();
            this.§0!V§ = null;
         }
         this.§>w§ = new Vector.<§]u§>();
         this.§^!,§ = new Dictionary();
         this.§5!&§ = new Dictionary();
      }
      
      public function §&!Z§(param1:§]u§) : void
      {
         if(this.§-N§)
         {
            return;
         }
         if(this.§>w§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§>w§.push(param1);
      }
      
      private function §"!M§(param1:Array) : Rectangle
      {
         var _loc9_:§]u§ = null;
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
            if(_loc2_ + _loc10_.width + §4D§ >= §0![§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §4D§ >= §0![§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §4D§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §4D§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §4D§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §>!c§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§]u§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§8%§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§4!E§ = null;
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
            if(_loc3_ + _loc9_.width + §4D§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §4D§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §8%§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§85§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§]y§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§!!J§(_loc12_)).§<!&§ = null;
               _loc13_.§'+§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §4D§;
            if(_loc9_.height + §4D§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §4D§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §;C§() : Boolean
      {
         var _loc1_:§]u§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§8%§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§4!E§ = null;
         if(!§?y§.§1L§())
         {
            return false;
         }
         if(this.§-N§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§>w§)
         {
            if(_loc1_.§]y§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§"!M§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§>!c§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§@p§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§85§;
               _loc9_ = _loc1_.§]y§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§!!J§(_loc10_);
                  this.§%u§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§>w§)
         {
            _loc1_.dispose();
         }
         this.§>w§ = new Vector.<§]u§>();
         this.§-N§ = true;
         return true;
      }
      
      private function §%u§(param1:§4!E§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§6!7§ = null;
         var _loc5_:§6!Z§;
         if(!(_loc5_ = this.§^!,§[param1.mName]))
         {
            _loc6_ = param1.§'+§.clone();
            _loc7_ = new §6!7§(param2,_loc6_,false);
            _loc5_ = new §6!Z§(_loc7_,param3,_loc6_,param1.§4!@§,param1.§0U§,param4);
            this.§^!,§[param1.mName] = _loc5_;
         }
      }
      
      public function §4!=§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§?y§.§12§)
         {
            for(bd in this.§5!&§)
            {
               try
               {
                  texture = this.§5!&§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §-o§(param1:String) : §6!Z§
      {
         return this.§^!,§[param1];
      }
      
      public function §@p§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§5!&§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §?y§.§,!]§(param1,param2);
         this.§5!&§[param1] = _loc3_;
         this.§[!7§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §[!7§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§%w§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§"!B§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §9!X§() : Texture
      {
         if(!this.§0!V§)
         {
            this.§0!V§ = this.§@p§(new BitmapData(40,40,false,16711935));
         }
         return this.§0!V§;
      }
      
      public function §+-§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§5!&§)
         {
            if(this.§5!&§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§[!7§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§5!&§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §`S§(param1:String) : BitmapData
      {
         var _loc2_:§6!Z§ = this.§-o§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§-o§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§-o§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
