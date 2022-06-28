package §'k§
{
   import §#!;§.§;T§;
   import §0!5§.§#!8§;
   import §0!5§.§5!D§;
   import §5!@§.§4`§;
   import §5!@§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class § >§ extends EventDispatcher
   {
      
      private static const §>!#§:int = 2;
      
      private static const static:int = 2048;
      
      private static var §74§:§ >§;
       
      
      private var §&+§:Dictionary;
      
      private var §+9§:Vector.<§#!8§>;
      
      private var §^4§:Dictionary;
      
      private var §]!<§:Boolean;
      
      private var §'A§:String;
      
      private var §!p§:Texture;
      
      private var § N§:int;
      
      private var §'a§:int;
      
      public function § >§(param1:String = null)
      {
         super();
         this.§+9§ = new Vector.<§#!8§>();
         this.§&+§ = new Dictionary();
         this.§^4§ = new Dictionary();
         this.§'A§ = param1;
      }
      
      public static function get §^n§() : § >§
      {
         if(!§74§)
         {
            §74§ = new § >§();
         }
         return §74§;
      }
      
      public function get §!!+§() : int
      {
         return this.§ N§;
      }
      
      public function get §??§() : int
      {
         return this.§'a§;
      }
      
      public function get id() : String
      {
         return this.§'A§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2v§ = null;
         var _loc2_:§#!8§ = null;
         if(this.§&+§)
         {
            for each(_loc1_ in this.§&+§)
            {
               this.§1c§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§&+§ = null;
         }
         if(this.§+9§)
         {
            for each(_loc2_ in this.§+9§)
            {
               _loc2_.dispose();
            }
            this.§+9§ = null;
         }
         if(this.§^4§)
         {
            this.§^4§ = null;
         }
         if(this.§!p§)
         {
            this.§!p§.dispose();
            this.§!p§ = null;
         }
         this.§+9§ = new Vector.<§#!8§>();
         this.§&+§ = new Dictionary();
         this.§^4§ = new Dictionary();
      }
      
      public function §3q§(param1:§#!8§) : void
      {
         if(this.§]!<§)
         {
            return;
         }
         if(this.§+9§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§+9§.push(param1);
      }
      
      private function §%o§(param1:Array) : Rectangle
      {
         var _loc9_:§#!8§ = null;
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
            if(_loc2_ + _loc10_.width + §>!#§ >= static)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §>!#§ >= static)
            {
               break;
            }
            _loc2_ += _loc10_.width + §>!#§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §>!#§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §>!#§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §-,§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§#!8§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§%[§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§5!D§ = null;
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
            if(_loc3_ + _loc9_.width + §>!#§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §>!#§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §%[§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§8!§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§2>§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§!H§(_loc12_)).§+Z§ = null;
               _loc13_.§7!G§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §>!#§;
            if(_loc9_.height + §>!#§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §>!#§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §]!A§() : Boolean
      {
         var _loc1_:§#!8§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§%[§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§5!D§ = null;
         if(!§;T§.§>!@§())
         {
            return false;
         }
         if(this.§]!<§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§+9§)
         {
            if(_loc1_.§2>§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§%o§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§-,§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§3B§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§8!§;
               _loc9_ = _loc1_.§2>§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§!H§(_loc10_);
                  this.§^B§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§+9§)
         {
            _loc1_.dispose();
         }
         this.§+9§ = new Vector.<§#!8§>();
         this.§]!<§ = true;
         return true;
      }
      
      private function §^B§(param1:§5!D§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§4`§ = null;
         var _loc5_:§2v§;
         if(!(_loc5_ = this.§&+§[param1.mName]))
         {
            _loc6_ = param1.§7!G§.clone();
            _loc7_ = new §4`§(param2,_loc6_,false);
            _loc5_ = new §2v§(_loc7_,param3,_loc6_,param1.§3O§,param1.§=A§,param4);
            this.§&+§[param1.mName] = _loc5_;
         }
      }
      
      public function §!! §() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§;T§.§&H§)
         {
            for(bd in this.§^4§)
            {
               try
               {
                  texture = this.§^4§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §8!<§(param1:String) : §2v§
      {
         return this.§&+§[param1];
      }
      
      public function §3B§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§^4§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §;T§.§2!0§(param1,param2);
         this.§^4§[param1] = _loc3_;
         this.§[a§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §[a§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§'a§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§ N§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §"h§() : Texture
      {
         if(!this.§!p§)
         {
            this.§!p§ = this.§3B§(new BitmapData(40,40,false,16711935));
         }
         return this.§!p§;
      }
      
      public function §1c§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§^4§)
         {
            if(this.§^4§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§[a§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§^4§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §=U§(param1:String) : BitmapData
      {
         var _loc2_:§2v§ = this.§8!<§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§8!<§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§8!<§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
