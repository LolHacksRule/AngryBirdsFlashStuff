package §#S§
{
   import §+!F§.§1!D§;
   import §?7§.Texture;
   import §?7§.§]"0§;
   import §^"7§.§"O§;
   import §^"7§.§]V§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §?!?§ extends EventDispatcher
   {
      
      private static const §-F§:int = 2;
      
      private static const §6J§:int = 2048;
      
      private static var §4=§:§?!?§;
       
      
      private var §9y§:Dictionary;
      
      private var §>!4§:Vector.<§]V§>;
      
      private var § _§:Dictionary;
      
      private var §2!F§:Boolean;
      
      private var §3!9§:String;
      
      private var §="=§:Texture;
      
      private var §^!&§:int;
      
      private var §2;§:int;
      
      public function §?!?§(param1:String = null)
      {
         super();
         this.§>!4§ = new Vector.<§]V§>();
         this.§9y§ = new Dictionary();
         this.§ _§ = new Dictionary();
         this.§3!9§ = param1;
      }
      
      public static function get §1[§() : §?!?§
      {
         if(!§4=§)
         {
            §4=§ = new §?!?§();
         }
         return §4=§;
      }
      
      public function get §'I§() : int
      {
         return this.§^!&§;
      }
      
      public function get §<D§() : int
      {
         return this.§2;§;
      }
      
      public function get id() : String
      {
         return this.§3!9§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!r§ = null;
         var _loc2_:§]V§ = null;
         if(this.§9y§)
         {
            for each(_loc1_ in this.§9y§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§9y§ = null;
         }
         if(this.§>!4§)
         {
            for each(_loc2_ in this.§>!4§)
            {
               _loc2_.dispose();
            }
            this.§>!4§ = null;
         }
         if(this.§ _§)
         {
            this.§ _§ = null;
         }
         if(this.§="=§)
         {
            this.§="=§.dispose();
            this.§="=§ = null;
         }
         this.§>!4§ = new Vector.<§]V§>();
         this.§9y§ = new Dictionary();
         this.§ _§ = new Dictionary();
      }
      
      public function §2!x§(param1:§]V§) : void
      {
         if(this.§2!F§)
         {
            return;
         }
         if(this.§>!4§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§>!4§.push(param1);
      }
      
      private function §-!S§(param1:Array) : Rectangle
      {
         var _loc9_:§]V§ = null;
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
            if(_loc2_ + _loc10_.width + §-F§ >= §6J§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §-F§ >= §6J§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §-F§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §-F§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §-F§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §17§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§]V§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§+7§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§"O§ = null;
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
            if(_loc3_ + _loc9_.width + §-F§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §-F§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §+7§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§=,§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§3B§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§19§(_loc12_)).§&=§ = null;
               _loc13_.§--§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §-F§;
            if(_loc9_.height + §-F§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §-F§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §@!5§() : Boolean
      {
         var _loc1_:§]V§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§+7§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§"O§ = null;
         if(!§1!D§.§&"$§())
         {
            return false;
         }
         if(this.§2!F§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§>!4§)
         {
            if(_loc1_.§3B§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§-!S§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§17§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§=,§;
               _loc9_ = _loc1_.§3B§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§19§(_loc10_);
                  this.§<!I§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§>!4§)
         {
            _loc1_.dispose();
         }
         this.§>!4§ = new Vector.<§]V§>();
         this.§2!F§ = true;
         return true;
      }
      
      private function §<!I§(param1:§"O§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§]"0§ = null;
         var _loc5_:§6!r§;
         if(!(_loc5_ = this.§9y§[param1.mName]))
         {
            _loc6_ = param1.§--§.clone();
            _loc7_ = new §]"0§(param2,_loc6_,false);
            _loc5_ = new §6!r§(_loc7_,param3,_loc6_,param1.§1m§,param1.§;!Q§,param4);
            this.§9y§[param1.mName] = _loc5_;
         }
      }
      
      public function §4!;§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§1!D§.§5""§)
         {
            for(bd in this.§ _§)
            {
               try
               {
                  texture = this.§ _§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §'"@§(param1:String) : §6!r§
      {
         return this.§9y§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§ _§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §1!D§.§;!1§(param1,param2);
         this.§ _§[param1] = _loc3_;
         this.§?!7§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §?!7§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§2;§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§^!&§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §^!k§() : Texture
      {
         if(!this.§="=§)
         {
            this.§="=§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§="=§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§ _§)
         {
            if(this.§ _§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§?!7§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§ _§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §"c§(param1:String) : BitmapData
      {
         var _loc2_:§6!r§ = this.§'"@§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§'"@§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§'"@§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
