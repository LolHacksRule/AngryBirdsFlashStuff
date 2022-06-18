package §=!K§
{
   import §"X§.§#!L§;
   import §"X§.Texture;
   import §3;§.§"#§;
   import §3;§.§6!J§;
   import §??§.§5!@§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §^Q§ extends EventDispatcher
   {
      
      private static const §9Q§:int = 2;
      
      private static const §`! §:int = 2048;
      
      private static var §2<§:§^Q§;
       
      
      private var §=!%§:Dictionary;
      
      private var §>!8§:Vector.<§"#§>;
      
      private var §?v§:Dictionary;
      
      private var §5!'§:Boolean;
      
      private var §'!3§:String;
      
      private var §=y§:Texture;
      
      private var §<e§:int;
      
      private var §`!>§:int;
      
      public function §^Q§(param1:String = null)
      {
         super();
         this.§>!8§ = new Vector.<§"#§>();
         this.§=!%§ = new Dictionary();
         this.§?v§ = new Dictionary();
         this.§'!3§ = param1;
      }
      
      public static function get §&e§() : §^Q§
      {
         if(!§2<§)
         {
            §2<§ = new §^Q§();
         }
         return §2<§;
      }
      
      public function get §5!L§() : int
      {
         return this.§<e§;
      }
      
      public function get §5E§() : int
      {
         return this.§`!>§;
      }
      
      public function get id() : String
      {
         return this.§'!3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@p§ = null;
         var _loc2_:§"#§ = null;
         if(this.§=!%§)
         {
            for each(_loc1_ in this.§=!%§)
            {
               this.§1!5§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§=!%§ = null;
         }
         if(this.§>!8§)
         {
            for each(_loc2_ in this.§>!8§)
            {
               _loc2_.dispose();
            }
            this.§>!8§ = null;
         }
         if(this.§?v§)
         {
            this.§?v§ = null;
         }
         if(this.§=y§)
         {
            this.§=y§.dispose();
            this.§=y§ = null;
         }
         this.§>!8§ = new Vector.<§"#§>();
         this.§=!%§ = new Dictionary();
         this.§?v§ = new Dictionary();
      }
      
      public function §%p§(param1:§"#§) : void
      {
         if(this.§5!'§)
         {
            return;
         }
         if(this.§>!8§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§>!8§.push(param1);
      }
      
      private function §+^§(param1:Array) : Rectangle
      {
         var _loc9_:§"#§ = null;
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
            if(_loc2_ + _loc10_.width + §9Q§ >= §`! §)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §9Q§ >= §`! §)
            {
               break;
            }
            _loc2_ += _loc10_.width + §9Q§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §9Q§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §9Q§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §-b§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§"#§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§9]§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§6!J§ = null;
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
            if(_loc3_ + _loc9_.width + §9Q§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §9Q§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §9]§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§'!>§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§@U§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§-]§(_loc12_)).§8[§ = null;
               _loc13_.§&f§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §9Q§;
            if(_loc9_.height + §9Q§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §9Q§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §[!D§() : Boolean
      {
         var _loc1_:§"#§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§9]§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§6!J§ = null;
         if(!§5!@§.§;_§())
         {
            return false;
         }
         if(this.§5!'§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§>!8§)
         {
            if(_loc1_.§@U§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§+^§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§-b§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§8!H§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§'!>§;
               _loc9_ = _loc1_.§@U§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§-]§(_loc10_);
                  this.§4!"§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§>!8§)
         {
            _loc1_.dispose();
         }
         this.§>!8§ = new Vector.<§"#§>();
         this.§5!'§ = true;
         return true;
      }
      
      private function §4!"§(param1:§6!J§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§#!L§ = null;
         var _loc5_:§@p§;
         if(!(_loc5_ = this.§=!%§[param1.mName]))
         {
            _loc6_ = param1.§&f§.clone();
            _loc7_ = new §#!L§(param2,_loc6_,false);
            _loc5_ = new §@p§(_loc7_,param3,_loc6_,param1.§9!9§,param1.§]"§,param4);
            this.§=!%§[param1.mName] = _loc5_;
         }
      }
      
      public function §-T§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§5!@§.§%!;§)
         {
            for(bd in this.§?v§)
            {
               try
               {
                  texture = this.§?v§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §=!B§(param1:String) : §@p§
      {
         return this.§=!%§[param1];
      }
      
      public function §8!H§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§?v§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §5!@§.§-F§(param1,param2);
         this.§?v§[param1] = _loc3_;
         this.§'$§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §'$§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§`!>§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§<e§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §4!M§() : Texture
      {
         if(!this.§=y§)
         {
            this.§=y§ = this.§8!H§(new BitmapData(40,40,false,16711935));
         }
         return this.§=y§;
      }
      
      public function §1!5§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§?v§)
         {
            if(this.§?v§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§'$§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§?v§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §'q§(param1:String) : BitmapData
      {
         var _loc2_:§@p§ = this.§=!B§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§=!B§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§=!B§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
