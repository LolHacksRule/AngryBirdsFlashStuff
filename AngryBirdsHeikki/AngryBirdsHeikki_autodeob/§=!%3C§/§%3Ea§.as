package §=!<§
{
   import §"^§.§+!'§;
   import §,-§.§!>§;
   import §,-§.§]M§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §>a§ extends EventDispatcher
   {
      
      private static const § 0§:int = 2;
      
      private static const §@!9§:int = 2048;
      
      private static var §]!'§:§>a§;
       
      
      private var §<!a§:Dictionary;
      
      private var §4!a§:Vector.<§]M§>;
      
      private var §^5§:Dictionary;
      
      private var §+!9§:Boolean;
      
      private var §[M§:String;
      
      private var §-d§:Texture;
      
      private var §5m§:int;
      
      private var §!t§:int;
      
      public function §>a§(param1:String = null)
      {
         super();
         this.§4!a§ = new Vector.<§]M§>();
         this.§<!a§ = new Dictionary();
         this.§^5§ = new Dictionary();
         this.§[M§ = param1;
      }
      
      public static function get § s§() : §>a§
      {
         if(!§]!'§)
         {
            §]!'§ = new §>a§();
         }
         return §]!'§;
      }
      
      public function get §^j§() : int
      {
         return this.§5m§;
      }
      
      public function get §4!J§() : int
      {
         return this.§!t§;
      }
      
      public function get id() : String
      {
         return this.§[M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8!!§ = null;
         var _loc2_:§]M§ = null;
         if(this.§<!a§)
         {
            for each(_loc1_ in this.§<!a§)
            {
               this.§=@§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§<!a§ = null;
         }
         if(this.§4!a§)
         {
            for each(_loc2_ in this.§4!a§)
            {
               _loc2_.dispose();
            }
            this.§4!a§ = null;
         }
         if(this.§^5§)
         {
            this.§^5§ = null;
         }
         if(this.§-d§)
         {
            this.§-d§.dispose();
            this.§-d§ = null;
         }
         this.§4!a§ = new Vector.<§]M§>();
         this.§<!a§ = new Dictionary();
         this.§^5§ = new Dictionary();
      }
      
      public function §?h§(param1:§]M§) : void
      {
         if(this.§+!9§)
         {
            return;
         }
         if(this.§4!a§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§4!a§.push(param1);
      }
      
      private function §!1§(param1:Array) : Rectangle
      {
         var _loc9_:§]M§ = null;
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
            if(_loc2_ + _loc10_.width + § 0§ >= §@!9§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + § 0§ >= §@!9§)
            {
               break;
            }
            _loc2_ += _loc10_.width + § 0§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + § 0§ > _loc6_)
            {
               _loc6_ = _loc10_.height + § 0§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%>§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§]M§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§,f§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§!>§ = null;
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
            if(_loc3_ + _loc9_.width + § 0§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + § 0§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §,f§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§%A§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§]m§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§'!B§(_loc12_)).§?7§ = null;
               _loc13_.§1!f§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + § 0§;
            if(_loc9_.height + § 0§ > _loc5_)
            {
               _loc5_ = _loc9_.height + § 0§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §28§() : Boolean
      {
         var _loc1_:§]M§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§,f§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§!>§ = null;
         if(!§+!'§.§`4§())
         {
            return false;
         }
         if(this.§+!9§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§4!a§)
         {
            if(_loc1_.§]m§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§!1§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§%>§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§=!Z§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§%A§;
               _loc9_ = _loc1_.§]m§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§'!B§(_loc10_);
                  this.§4z§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§4!a§)
         {
            _loc1_.dispose();
         }
         this.§4!a§ = new Vector.<§]M§>();
         this.§+!9§ = true;
         return true;
      }
      
      private function §4z§(param1:§!>§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§[!_§ = null;
         var _loc5_:§8!!§;
         if(!(_loc5_ = this.§<!a§[param1.mName]))
         {
            _loc6_ = param1.§1!f§.clone();
            _loc7_ = new §[!_§(param2,_loc6_,false);
            _loc5_ = new §8!!§(_loc7_,param3,_loc6_,param1.§var §,param1.§9!K§,param4);
            this.§<!a§[param1.mName] = _loc5_;
         }
      }
      
      public function §-!#§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§+!'§.§@N§)
         {
            for(bd in this.§^5§)
            {
               try
               {
                  texture = this.§^5§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §8t§(param1:String) : §8!!§
      {
         return this.§<!a§[param1];
      }
      
      public function §=!Z§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§^5§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §+!'§.§!a§(param1,param2);
         this.§^5§[param1] = _loc3_;
         this.§3!e§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §3!e§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§!t§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§5m§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §,!A§() : Texture
      {
         if(!this.§-d§)
         {
            this.§-d§ = this.§=!Z§(new BitmapData(40,40,false,16711935));
         }
         return this.§-d§;
      }
      
      public function §=@§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§^5§)
         {
            if(this.§^5§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§3!e§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§^5§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §%'§(param1:String) : BitmapData
      {
         var _loc2_:§8!!§ = this.§8t§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§8t§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§8t§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
