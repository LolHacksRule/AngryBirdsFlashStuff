package §-!0§
{
   import §&p§.§'_§;
   import §<!B§.§#z§;
   import §<!B§.§]!=§;
   import each.§-0§;
   import each.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §'!3§ extends EventDispatcher
   {
      
      private static const §5d§:int = 2;
      
      private static const §[P§:int = 2048;
      
      private static var §4-§:§'!3§;
       
      
      private var §4Y§:Dictionary;
      
      private var §^Q§:Vector.<§]!=§>;
      
      private var §!!,§:Dictionary;
      
      private var §'!=§:Boolean;
      
      private var §]!8§:String;
      
      private var §;O§:Texture;
      
      private var §4s§:int;
      
      private var §`y§:int;
      
      public function §'!3§(param1:String = null)
      {
         super();
         this.§^Q§ = new Vector.<§]!=§>();
         this.§4Y§ = new Dictionary();
         this.§!!,§ = new Dictionary();
         this.§]!8§ = param1;
      }
      
      public static function get §-]§() : §'!3§
      {
         if(!§4-§)
         {
            §4-§ = new §'!3§();
         }
         return §4-§;
      }
      
      public function get §=M§() : int
      {
         return this.§4s§;
      }
      
      public function get §&i§() : int
      {
         return this.§`y§;
      }
      
      public function get id() : String
      {
         return this.§]!8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9X§ = null;
         var _loc2_:§]!=§ = null;
         if(this.§4Y§)
         {
            for each(_loc1_ in this.§4Y§)
            {
               this.§9a§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§4Y§ = null;
         }
         if(this.§^Q§)
         {
            for each(_loc2_ in this.§^Q§)
            {
               _loc2_.dispose();
            }
            this.§^Q§ = null;
         }
         if(this.§!!,§)
         {
            this.§!!,§ = null;
         }
         if(this.§;O§)
         {
            this.§;O§.dispose();
            this.§;O§ = null;
         }
         this.§^Q§ = new Vector.<§]!=§>();
         this.§4Y§ = new Dictionary();
         this.§!!,§ = new Dictionary();
      }
      
      public function §4!2§(param1:§]!=§) : void
      {
         if(this.§'!=§)
         {
            return;
         }
         if(this.§^Q§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§^Q§.push(param1);
      }
      
      private function §6z§(param1:Array) : Rectangle
      {
         var _loc9_:§]!=§ = null;
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
            if(_loc2_ + _loc10_.width + §5d§ >= §[P§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §5d§ >= §[P§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §5d§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §5d§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §5d§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §;>§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§]!=§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§8§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§#z§ = null;
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
            if(_loc3_ + _loc9_.width + §5d§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §5d§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §8§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§7p§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§9@§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§^!B§(_loc12_)).§93§ = null;
               _loc13_.§9!&§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §5d§;
            if(_loc9_.height + §5d§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §5d§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §,_§() : Boolean
      {
         var _loc1_:§]!=§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§8§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§#z§ = null;
         if(!§'_§.§+! §())
         {
            return false;
         }
         if(this.§'!=§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§^Q§)
         {
            if(_loc1_.§9@§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§6z§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§;>§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§ b§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§7p§;
               _loc9_ = _loc1_.§9@§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§^!B§(_loc10_);
                  this.§-9§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§^Q§)
         {
            _loc1_.dispose();
         }
         this.§^Q§ = new Vector.<§]!=§>();
         this.§'!=§ = true;
         return true;
      }
      
      private function §-9§(param1:§#z§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§-0§ = null;
         var _loc5_:§9X§;
         if(!(_loc5_ = this.§4Y§[param1.mName]))
         {
            _loc6_ = param1.§9!&§.clone();
            _loc7_ = new §-0§(param2,_loc6_,false);
            _loc5_ = new §9X§(_loc7_,param3,_loc6_,param1.§^A§,param1.§6W§,param4);
            this.§4Y§[param1.mName] = _loc5_;
         }
      }
      
      public function §-+§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§'_§.§3R§)
         {
            for(bd in this.§!!,§)
            {
               try
               {
                  texture = this.§!!,§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §4K§(param1:String) : §9X§
      {
         return this.§4Y§[param1];
      }
      
      public function § b§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§!!,§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §'_§.§]e§(param1,param2);
         this.§!!,§[param1] = _loc3_;
         this.§'K§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §'K§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§`y§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§4s§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §?K§() : Texture
      {
         if(!this.§;O§)
         {
            this.§;O§ = this.§ b§(new BitmapData(40,40,false,16711935));
         }
         return this.§;O§;
      }
      
      public function §9a§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§!!,§)
         {
            if(this.§!!,§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§'K§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§!!,§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §@!E§(param1:String) : BitmapData
      {
         var _loc2_:§9X§ = this.§4K§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§4K§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§4K§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
