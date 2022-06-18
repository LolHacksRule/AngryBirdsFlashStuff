package §"a§
{
   import §',§.§6H§;
   import §',§.§<v§;
   import §5@§.§8!<§;
   import §5@§.Texture;
   import §;%§.§8o§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §>X§ extends EventDispatcher
   {
      
      private static const §+!I§:int = 2;
      
      private static const §`V§:int = 2048;
      
      private static var §while§:§>X§;
       
      
      private var §&Y§:Dictionary;
      
      private var §&!D§:Vector.<§6H§>;
      
      private var §5?§:Dictionary;
      
      private var §+V§:Boolean;
      
      private var §>Q§:String;
      
      private var §#N§:Texture;
      
      private var §true §:int;
      
      private var §-!%§:int;
      
      public function §>X§(param1:String = null)
      {
         super();
         this.§&!D§ = new Vector.<§6H§>();
         this.§&Y§ = new Dictionary();
         this.§5?§ = new Dictionary();
         this.§>Q§ = param1;
      }
      
      public static function get §72§() : §>X§
      {
         if(!§while§)
         {
            §while§ = new §>X§();
         }
         return §while§;
      }
      
      public function get §1j§() : int
      {
         return this.§true §;
      }
      
      public function get §8!;§() : int
      {
         return this.§-!%§;
      }
      
      public function get id() : String
      {
         return this.§>Q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^>§ = null;
         var _loc2_:§6H§ = null;
         if(this.§&Y§)
         {
            for each(_loc1_ in this.§&Y§)
            {
               this.§,t§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§&Y§ = null;
         }
         if(this.§&!D§)
         {
            for each(_loc2_ in this.§&!D§)
            {
               _loc2_.dispose();
            }
            this.§&!D§ = null;
         }
         if(this.§5?§)
         {
            this.§5?§ = null;
         }
         if(this.§#N§)
         {
            this.§#N§.dispose();
            this.§#N§ = null;
         }
         this.§&!D§ = new Vector.<§6H§>();
         this.§&Y§ = new Dictionary();
         this.§5?§ = new Dictionary();
      }
      
      public function §"_§(param1:§6H§) : void
      {
         if(this.§+V§)
         {
            return;
         }
         if(this.§&!D§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§&!D§.push(param1);
      }
      
      private function §`C§(param1:Array) : Rectangle
      {
         var _loc9_:§6H§ = null;
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
            if(_loc2_ + _loc10_.width + §+!I§ >= §`V§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §+!I§ >= §`V§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §+!I§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §+!I§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §+!I§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §;!'§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§6H§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§8!+§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§<v§ = null;
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
            if(_loc3_ + _loc9_.width + §+!I§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §+!I§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §8!+§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§'R§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§4A§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§<!D§(_loc12_)).§7O§ = null;
               _loc13_.§?!$§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §+!I§;
            if(_loc9_.height + §+!I§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §+!I§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §>j§() : Boolean
      {
         var _loc1_:§6H§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§8!+§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§<v§ = null;
         if(!§8o§.§2i§())
         {
            return false;
         }
         if(this.§+V§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§&!D§)
         {
            if(_loc1_.§4A§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§`C§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§;!'§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§4;§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§'R§;
               _loc9_ = _loc1_.§4A§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§<!D§(_loc10_);
                  this.§`K§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§&!D§)
         {
            _loc1_.dispose();
         }
         this.§&!D§ = new Vector.<§6H§>();
         this.§+V§ = true;
         return true;
      }
      
      private function §`K§(param1:§<v§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§8!<§ = null;
         var _loc5_:§^>§;
         if(!(_loc5_ = this.§&Y§[param1.mName]))
         {
            _loc6_ = param1.§?!$§.clone();
            _loc7_ = new §8!<§(param2,_loc6_,false);
            _loc5_ = new §^>§(_loc7_,param3,_loc6_,param1.§?#§,param1.§!Y§,param4);
            this.§&Y§[param1.mName] = _loc5_;
         }
      }
      
      public function §'I§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§8o§.§6m§)
         {
            for(bd in this.§5?§)
            {
               try
               {
                  texture = this.§5?§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §>]§(param1:String) : §^>§
      {
         return this.§&Y§[param1];
      }
      
      public function §4;§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§5?§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §8o§.§;]§(param1,param2);
         this.§5?§[param1] = _loc3_;
         this.§,M§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §,M§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§-!%§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§true § += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §4Y§() : Texture
      {
         if(!this.§#N§)
         {
            this.§#N§ = this.§4;§(new BitmapData(40,40,false,16711935));
         }
         return this.§#N§;
      }
      
      public function §,t§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§5?§)
         {
            if(this.§5?§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§,M§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§5?§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §?6§(param1:String) : BitmapData
      {
         var _loc2_:§^>§ = this.§>]§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§>]§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§>]§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
