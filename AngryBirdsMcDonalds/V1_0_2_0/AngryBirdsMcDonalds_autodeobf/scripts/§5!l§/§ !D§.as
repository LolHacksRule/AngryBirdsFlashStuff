package §5!l§
{
   import §",§.§<!4§;
   import §",§.Texture;
   import §4!$§.§<!2§;
   import §[r§.§"T§;
   import §[r§.§6J§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class § !D§ extends EventDispatcher
   {
      
      private static const §8l§:int = 2;
      
      private static const §<`§:int = 2048;
      
      private static var §,k§:§ !D§;
       
      
      private var §!g§:Dictionary;
      
      private var §`!E§:Vector.<§6J§>;
      
      private var §[]§:Dictionary;
      
      private var §0!d§:Boolean;
      
      private var §-!3§:String;
      
      private var §`!Q§:Texture;
      
      private var §19§:int;
      
      private var §4V§:int;
      
      public function § !D§(param1:String = null)
      {
         super();
         this.§`!E§ = new Vector.<§6J§>();
         this.§!g§ = new Dictionary();
         this.§[]§ = new Dictionary();
         this.§-!3§ = param1;
      }
      
      public static function get §'!S§() : § !D§
      {
         if(!§,k§)
         {
            §,k§ = new § !D§();
         }
         return §,k§;
      }
      
      public function get §0"§() : int
      {
         return this.§19§;
      }
      
      public function get §"!3§() : int
      {
         return this.§4V§;
      }
      
      public function get id() : String
      {
         return this.§-!3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9Z§ = null;
         var _loc2_:§6J§ = null;
         if(this.§!g§)
         {
            for each(_loc1_ in this.§!g§)
            {
               this.§'!Q§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§!g§ = null;
         }
         if(this.§`!E§)
         {
            for each(_loc2_ in this.§`!E§)
            {
               _loc2_.dispose();
            }
            this.§`!E§ = null;
         }
         if(this.§[]§)
         {
            this.§[]§ = null;
         }
         if(this.§`!Q§)
         {
            this.§`!Q§.dispose();
            this.§`!Q§ = null;
         }
         this.§`!E§ = new Vector.<§6J§>();
         this.§!g§ = new Dictionary();
         this.§[]§ = new Dictionary();
      }
      
      public function §?!_§(param1:§6J§) : void
      {
         if(this.§0!d§)
         {
            return;
         }
         if(this.§`!E§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§`!E§.push(param1);
      }
      
      private function §^v§(param1:Array) : Rectangle
      {
         var _loc9_:§6J§ = null;
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
            if(_loc2_ + _loc10_.width + §8l§ >= §<`§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §8l§ >= §<`§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §8l§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §8l§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §8l§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §7Z§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§6J§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§4!2§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§"T§ = null;
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
            if(_loc3_ + _loc9_.width + §8l§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §8l§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §4!2§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§"!b§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§06§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§1!L§(_loc12_)).§4!1§ = null;
               _loc13_.§6!M§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §8l§;
            if(_loc9_.height + §8l§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §8l§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §%!i§() : Boolean
      {
         var _loc1_:§6J§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§4!2§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§"T§ = null;
         if(!§<!2§.§>f§())
         {
            return false;
         }
         if(this.§0!d§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§`!E§)
         {
            if(_loc1_.§06§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§^v§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§7Z§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§"!b§;
               _loc9_ = _loc1_.§06§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§1!L§(_loc10_);
                  this.§3!?§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§`!E§)
         {
            _loc1_.dispose();
         }
         this.§`!E§ = new Vector.<§6J§>();
         this.§0!d§ = true;
         return true;
      }
      
      private function §3!?§(param1:§"T§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§<!4§ = null;
         var _loc5_:§9Z§;
         if(!(_loc5_ = this.§!g§[param1.mName]))
         {
            _loc6_ = param1.§6!M§.clone();
            _loc7_ = new §<!4§(param2,_loc6_,false);
            _loc5_ = new §9Z§(_loc7_,param3,_loc6_,param1.§]a§,param1.§!a§,param4);
            this.§!g§[param1.mName] = _loc5_;
         }
      }
      
      public function §'V§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§<!2§.§+X§)
         {
            for(bd in this.§[]§)
            {
               try
               {
                  texture = this.§[]§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §2x§(param1:String) : §9Z§
      {
         return this.§!g§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§[]§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §<!2§.§ else§(param1,param2);
         this.§[]§[param1] = _loc3_;
         this.§7l§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §7l§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§4V§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§19§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §+!=§() : Texture
      {
         if(!this.§`!Q§)
         {
            this.§`!Q§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§`!Q§;
      }
      
      public function §'!Q§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§[]§)
         {
            if(this.§[]§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§7l§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§[]§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §[!f§(param1:String) : BitmapData
      {
         var _loc2_:§9Z§ = this.§2x§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§2x§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§2x§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
