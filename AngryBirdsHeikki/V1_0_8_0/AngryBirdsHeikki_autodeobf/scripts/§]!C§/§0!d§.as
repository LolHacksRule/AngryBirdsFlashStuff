package §]!C§
{
   import §!v§.§7[§;
   import §#!6§.§3R§;
   import §#!6§.Texture;
   import §`!L§.§"%§;
   import §`!L§.§+!M§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §0!d§ extends EventDispatcher
   {
      
      private static const §6!B§:int = 2;
      
      private static const §2!,§:int = 2048;
      
      private static var §2!Q§:§0!d§;
       
      
      private var § E§:Dictionary;
      
      private var §-!Y§:Vector.<§"%§>;
      
      private var §31§:Dictionary;
      
      private var §6!3§:Boolean;
      
      private var §!1§:String;
      
      private var §<!J§:Texture;
      
      private var §>c§:int;
      
      private var §;S§:int;
      
      public function §0!d§(param1:String = null)
      {
         super();
         this.§-!Y§ = new Vector.<§"%§>();
         this.§ E§ = new Dictionary();
         this.§31§ = new Dictionary();
         this.§!1§ = param1;
      }
      
      public static function get §=,§() : §0!d§
      {
         if(!§2!Q§)
         {
            §2!Q§ = new §0!d§();
         }
         return §2!Q§;
      }
      
      public function get §,]§() : int
      {
         return this.§>c§;
      }
      
      public function get §]!J§() : int
      {
         return this.§;S§;
      }
      
      public function get id() : String
      {
         return this.§!1§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!!§ = null;
         var _loc2_:§"%§ = null;
         if(this.§ E§)
         {
            for each(_loc1_ in this.§ E§)
            {
               this.§5l§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§ E§ = null;
         }
         if(this.§-!Y§)
         {
            for each(_loc2_ in this.§-!Y§)
            {
               _loc2_.dispose();
            }
            this.§-!Y§ = null;
         }
         if(this.§31§)
         {
            this.§31§ = null;
         }
         if(this.§<!J§)
         {
            this.§<!J§.dispose();
            this.§<!J§ = null;
         }
         this.§-!Y§ = new Vector.<§"%§>();
         this.§ E§ = new Dictionary();
         this.§31§ = new Dictionary();
      }
      
      public function §#!Q§(param1:§"%§) : void
      {
         if(this.§6!3§)
         {
            return;
         }
         if(this.§-!Y§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§-!Y§.push(param1);
      }
      
      private function §6m§(param1:Array) : Rectangle
      {
         var _loc9_:§"%§ = null;
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
            if(_loc2_ + _loc10_.width + §6!B§ >= §2!,§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §6!B§ >= §2!,§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §6!B§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §6!B§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §6!B§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §-!3§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§"%§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§'!>§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§+!M§ = null;
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
            if(_loc3_ + _loc9_.width + §6!B§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §6!B§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §'!>§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§4!Y§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§%#§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§8'§(_loc12_)).§7!!§ = null;
               _loc13_.§=U§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §6!B§;
            if(_loc9_.height + §6!B§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §6!B§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §-!M§() : Boolean
      {
         var _loc1_:§"%§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§'!>§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§+!M§ = null;
         if(!§7[§.§"!§())
         {
            return false;
         }
         if(this.§6!3§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§-!Y§)
         {
            if(_loc1_.§%#§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§6m§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§-!3§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§ 2§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§4!Y§;
               _loc9_ = _loc1_.§%#§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§8'§(_loc10_);
                  this.§;!P§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§-!Y§)
         {
            _loc1_.dispose();
         }
         this.§-!Y§ = new Vector.<§"%§>();
         this.§6!3§ = true;
         return true;
      }
      
      private function §;!P§(param1:§+!M§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§3R§ = null;
         var _loc5_:§'!!§;
         if(!(_loc5_ = this.§ E§[param1.mName]))
         {
            _loc6_ = param1.§=U§.clone();
            _loc7_ = new §3R§(param2,_loc6_,false);
            _loc5_ = new §'!!§(_loc7_,param3,_loc6_,param1.§&,§,param1.§'0§,param4);
            this.§ E§[param1.mName] = _loc5_;
         }
      }
      
      public function §;!;§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§7[§.§4!R§)
         {
            for(bd in this.§31§)
            {
               try
               {
                  texture = this.§31§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §]!B§(param1:String) : §'!!§
      {
         return this.§ E§[param1];
      }
      
      public function § 2§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§31§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §7[§.§&!P§(param1,param2);
         this.§31§[param1] = _loc3_;
         this.§0R§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §0R§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§;S§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§>c§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §do §() : Texture
      {
         if(!this.§<!J§)
         {
            this.§<!J§ = this.§ 2§(new BitmapData(40,40,false,16711935));
         }
         return this.§<!J§;
      }
      
      public function §5l§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§31§)
         {
            if(this.§31§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§0R§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§31§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §2P§(param1:String) : BitmapData
      {
         var _loc2_:§'!!§ = this.§]!B§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§]!B§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§]!B§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
