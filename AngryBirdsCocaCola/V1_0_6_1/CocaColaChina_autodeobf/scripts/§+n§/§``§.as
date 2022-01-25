package §+N§
{
   import §9]§.§9J§;
   import §@'§.§ D§;
   import §@'§.Texture;
   import §[U§.§%&§;
   import §[U§.§8f§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §``§ extends EventDispatcher
   {
      
      private static const §[!B§:int = 2;
      
      private static const §0o§:int = 2048;
      
      private static var §7L§:§``§;
       
      
      private var §5W§:Dictionary;
      
      private var §@d§:Vector.<§8f§>;
      
      private var §?P§:Dictionary;
      
      private var §0Z§:Boolean;
      
      private var §-!+§:String;
      
      private var §6!3§:Texture;
      
      private var §1!<§:int;
      
      private var §6N§:int;
      
      public function §``§(param1:String = null)
      {
         super();
         this.§@d§ = new Vector.<§8f§>();
         this.§5W§ = new Dictionary();
         this.§?P§ = new Dictionary();
         this.§-!+§ = param1;
      }
      
      public static function get §0%§() : §``§
      {
         if(!§7L§)
         {
            §7L§ = new §``§();
         }
         return §7L§;
      }
      
      public function get §2_§() : int
      {
         return this.§1!<§;
      }
      
      public function get §`U§() : int
      {
         return this.§6N§;
      }
      
      public function get id() : String
      {
         return this.§-!+§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!+§ = null;
         var _loc2_:§8f§ = null;
         if(this.§5W§)
         {
            for each(_loc1_ in this.§5W§)
            {
               this.§@!;§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§5W§ = null;
         }
         if(this.§@d§)
         {
            for each(_loc2_ in this.§@d§)
            {
               _loc2_.dispose();
            }
            this.§@d§ = null;
         }
         if(this.§?P§)
         {
            this.§?P§ = null;
         }
         if(this.§6!3§)
         {
            this.§6!3§.dispose();
            this.§6!3§ = null;
         }
         this.§@d§ = new Vector.<§8f§>();
         this.§5W§ = new Dictionary();
         this.§?P§ = new Dictionary();
      }
      
      public function §]!a§(param1:§8f§) : void
      {
         if(this.§0Z§)
         {
            return;
         }
         if(this.§@d§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§@d§.push(param1);
      }
      
      private function §3!0§(param1:Array) : Rectangle
      {
         var _loc9_:§8f§ = null;
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
            if(_loc2_ + _loc10_.width + §[!B§ >= §0o§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §[!B§ >= §0o§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §[!B§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §[!B§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §[!B§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §&Z§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§8f§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§"x§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§%&§ = null;
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
            if(_loc3_ + _loc9_.width + §[!B§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §[!B§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §"x§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§5V§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§']§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§@I§(_loc12_)).§;!<§ = null;
               _loc13_.§^?§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §[!B§;
            if(_loc9_.height + §[!B§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §[!B§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §-!?§() : Boolean
      {
         var _loc1_:§8f§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§"x§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§%&§ = null;
         if(!§9J§.§[!7§())
         {
            return false;
         }
         if(this.§0Z§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§@d§)
         {
            if(_loc1_.§']§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§3!0§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§&Z§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§&!`§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§5V§;
               _loc9_ = _loc1_.§']§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§@I§(_loc10_);
                  this.§<!9§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§@d§)
         {
            _loc1_.dispose();
         }
         this.§@d§ = new Vector.<§8f§>();
         this.§0Z§ = true;
         return true;
      }
      
      private function §<!9§(param1:§%&§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§ D§ = null;
         var _loc5_:§=!+§;
         if(!(_loc5_ = this.§5W§[param1.mName]))
         {
            _loc6_ = param1.§^?§.clone();
            _loc7_ = new § D§(param2,_loc6_,false);
            _loc5_ = new §=!+§(_loc7_,param3,_loc6_,param1.§[D§,param1.§+?§,param4);
            this.§5W§[param1.mName] = _loc5_;
         }
      }
      
      public function §;8§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§9J§.§=!7§)
         {
            for(bd in this.§?P§)
            {
               try
               {
                  texture = this.§?P§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §-!V§(param1:String) : §=!+§
      {
         return this.§5W§[param1];
      }
      
      public function §&!`§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§?P§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §9J§.§"'§(param1,param2);
         this.§?P§[param1] = _loc3_;
         this.§6!B§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §6!B§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§6N§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§1!<§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §-M§() : Texture
      {
         if(!this.§6!3§)
         {
            this.§6!3§ = this.§&!`§(new BitmapData(40,40,false,16711935));
         }
         return this.§6!3§;
      }
      
      public function §@!;§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§?P§)
         {
            if(this.§?P§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§6!B§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§?P§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §!!#§(param1:String) : BitmapData
      {
         var _loc2_:§=!+§ = this.§-!V§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§-!V§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§-!V§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
