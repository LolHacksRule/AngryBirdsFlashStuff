package §`!B§
{
   import §#!`§.§0`§;
   import §#!`§.Texture;
   import §'!S§.§,!%§;
   import §'b§.§"2§;
   import §'b§.§]!L§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §=m§ extends EventDispatcher
   {
      
      private static const §`!O§:int = 2;
      
      private static const §7Y§:int = 2048;
      
      private static var §4K§:§=m§;
       
      
      private var §9d§:Dictionary;
      
      private var §&l§:Vector.<§]!L§>;
      
      private var §,!X§:Dictionary;
      
      private var §4M§:Boolean;
      
      private var §>^§:String;
      
      private var §>!^§:Texture;
      
      private var §9`§:int;
      
      private var §9!A§:int;
      
      public function §=m§(param1:String = null)
      {
         super();
         this.§&l§ = new Vector.<§]!L§>();
         this.§9d§ = new Dictionary();
         this.§,!X§ = new Dictionary();
         this.§>^§ = param1;
      }
      
      public static function get §!5§() : §=m§
      {
         if(!§4K§)
         {
            §4K§ = new §=m§();
         }
         return §4K§;
      }
      
      public function get §`!T§() : int
      {
         return this.§9`§;
      }
      
      public function get §=p§() : int
      {
         return this.§9!A§;
      }
      
      public function get id() : String
      {
         return this.§>^§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4!I§ = null;
         var _loc2_:§]!L§ = null;
         if(this.§9d§)
         {
            for each(_loc1_ in this.§9d§)
            {
               this.§7n§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§9d§ = null;
         }
         if(this.§&l§)
         {
            for each(_loc2_ in this.§&l§)
            {
               _loc2_.dispose();
            }
            this.§&l§ = null;
         }
         if(this.§,!X§)
         {
            this.§,!X§ = null;
         }
         if(this.§>!^§)
         {
            this.§>!^§.dispose();
            this.§>!^§ = null;
         }
         this.§&l§ = new Vector.<§]!L§>();
         this.§9d§ = new Dictionary();
         this.§,!X§ = new Dictionary();
      }
      
      public function §"![§(param1:§]!L§) : void
      {
         if(this.§4M§)
         {
            return;
         }
         if(this.§&l§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§&l§.push(param1);
      }
      
      private function § e§(param1:Array) : Rectangle
      {
         var _loc9_:§]!L§ = null;
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
            if(_loc2_ + _loc10_.width + §`!O§ >= §7Y§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §`!O§ >= §7Y§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §`!O§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §`!O§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §`!O§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §@s§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§]!L§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§^!A§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§"2§ = null;
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
            if(_loc3_ + _loc9_.width + §`!O§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §`!O§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §^!A§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§9n§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§,Q§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§`Y§(_loc12_)).§%"§ = null;
               _loc13_.§4Y§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §`!O§;
            if(_loc9_.height + §`!O§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §`!O§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §7d§() : Boolean
      {
         var _loc1_:§]!L§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§^!A§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§"2§ = null;
         if(!§,!%§.§2!V§())
         {
            return false;
         }
         if(this.§4M§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§&l§)
         {
            if(_loc1_.§,Q§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§ e§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§@s§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§+t§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§9n§;
               _loc9_ = _loc1_.§,Q§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§`Y§(_loc10_);
                  this.§,U§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§&l§)
         {
            _loc1_.dispose();
         }
         this.§&l§ = new Vector.<§]!L§>();
         this.§4M§ = true;
         return true;
      }
      
      private function §,U§(param1:§"2§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§0`§ = null;
         var _loc5_:§4!I§;
         if(!(_loc5_ = this.§9d§[param1.mName]))
         {
            _loc6_ = param1.§4Y§.clone();
            _loc7_ = new §0`§(param2,_loc6_,false);
            _loc5_ = new §4!I§(_loc7_,param3,_loc6_,param1.§`!G§,param1.§2F§,param4);
            this.§9d§[param1.mName] = _loc5_;
         }
      }
      
      public function §-M§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§,!%§.§?D§)
         {
            for(bd in this.§,!X§)
            {
               try
               {
                  texture = this.§,!X§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §@d§(param1:String) : §4!I§
      {
         return this.§9d§[param1];
      }
      
      public function §+t§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§,!X§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §,!%§.§!f§(param1,param2);
         this.§,!X§[param1] = _loc3_;
         this.§<c§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §<c§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§9!A§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§9`§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §2t§() : Texture
      {
         if(!this.§>!^§)
         {
            this.§>!^§ = this.§+t§(new BitmapData(40,40,false,16711935));
         }
         return this.§>!^§;
      }
      
      public function §7n§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§,!X§)
         {
            if(this.§,!X§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§<c§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§,!X§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §+r§(param1:String) : BitmapData
      {
         var _loc2_:§4!I§ = this.§@d§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§@d§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§@d§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
