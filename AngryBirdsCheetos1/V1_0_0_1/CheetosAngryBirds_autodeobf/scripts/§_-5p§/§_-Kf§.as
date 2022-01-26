package §_-5p§
{
   import §_-Dk§.Texture;
   import §_-Dk§.§_-6A§;
   import §_-dH§.§_-Tu§;
   import §_-dH§.§_-aW§;
   import §_-vB§.§_-Kk§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-Kf§ extends EventDispatcher
   {
      
      private static const §_-P§:int = 2;
      
      private static const §_-Z4§:int = 2048;
      
      private static var §_-9C§:§_-Kf§;
       
      
      private var §_-k6§:Dictionary;
      
      private var §_-Jh§:Vector.<§_-Tu§>;
      
      private var §_-IZ§:Dictionary;
      
      private var §_-ZF§:Boolean;
      
      private var §_-IT§:Texture;
      
      private var §_-ev§:int;
      
      private var §_-JW§:int;
      
      public function §_-Kf§()
      {
         super();
         this.§_-Jh§ = new Vector.<§_-Tu§>();
         this.§_-k6§ = new Dictionary();
         this.§_-IZ§ = new Dictionary();
      }
      
      public static function get §var §() : §_-Kf§
      {
         if(!§_-9C§)
         {
            §_-9C§ = new §_-Kf§();
         }
         return §_-9C§;
      }
      
      public function get §_-FP§() : int
      {
         return this.§_-ev§;
      }
      
      public function get §_-8N§() : int
      {
         return this.§_-JW§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-4§ = null;
         var _loc2_:§_-Tu§ = null;
         if(this.§_-k6§)
         {
            for each(_loc1_ in this.§_-k6§)
            {
               this.§_-80§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§_-k6§ = null;
         }
         if(this.§_-Jh§)
         {
            for each(_loc2_ in this.§_-Jh§)
            {
               _loc2_.dispose();
            }
            this.§_-Jh§ = null;
         }
         if(this.§_-IZ§)
         {
            this.§_-IZ§ = null;
         }
         if(this.§_-IT§)
         {
            this.§_-IT§.dispose();
            this.§_-IT§ = null;
         }
      }
      
      public function §_-sp§(param1:§_-Tu§) : void
      {
         if(this.§_-ZF§)
         {
            return;
         }
         if(this.§_-Jh§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-Jh§.push(param1);
      }
      
      private function §_-VJ§(param1:Array) : Rectangle
      {
         var _loc9_:§_-Tu§ = null;
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
            if(_loc2_ + _loc10_.width + §_-P§ >= §_-Z4§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §_-P§ >= §_-Z4§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §_-P§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §_-P§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §_-P§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-15§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§_-Tu§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§_-lw§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§_-aW§ = null;
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
            if(_loc3_ + _loc9_.width + §_-P§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §_-P§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §_-lw§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§_-IJ§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§_-zo§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§_-Rf§(_loc12_)).§_-o6§ = null;
               _loc13_.§_-iJ§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §_-P§;
            if(_loc9_.height + §_-P§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §_-P§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-9g§() : Boolean
      {
         var _loc1_:§_-Tu§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-lw§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-aW§ = null;
         if(!§_-Kk§.§_-tl§())
         {
            return false;
         }
         if(this.§_-ZF§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-Jh§)
         {
            if(_loc1_.§_-zo§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-VJ§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-15§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-0p§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-IJ§;
               _loc9_ = _loc1_.§_-zo§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-Rf§(_loc10_);
                  this.§_-4O§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-Jh§)
         {
            _loc1_.dispose();
         }
         this.§_-Jh§ = new Vector.<§_-Tu§>();
         this.§_-ZF§ = true;
         return true;
      }
      
      private function §_-4O§(param1:§_-aW§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§_-6A§ = null;
         var _loc5_:§_-4§;
         if(!(_loc5_ = this.§_-k6§[param1.mName]))
         {
            _loc6_ = param1.§_-iJ§.clone();
            _loc7_ = new §_-6A§(param2,_loc6_,false);
            _loc5_ = new §_-4§(_loc7_,param3,_loc6_,param1.§_-FW§,param1.§in§,param4);
            this.§_-k6§[param1.mName] = _loc5_;
         }
      }
      
      public function §_-0-c§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§_-Kk§.§_-RZ§)
         {
            for(bd in this.§_-IZ§)
            {
               try
               {
                  texture = this.§_-IZ§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §_-I4§(param1:String) : §_-4§
      {
         return this.§_-k6§[param1];
      }
      
      public function §_-0p§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§_-IZ§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §_-Kk§.§_-MS§(param1,param2);
         this.§_-IZ§[param1] = _loc3_;
         this.§_-AU§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §_-AU§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§_-JW§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§_-ev§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §_-H0§() : Texture
      {
         if(!this.§_-IT§)
         {
            this.§_-IT§ = this.§_-0p§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-IT§;
      }
      
      public function §_-80§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-IZ§)
         {
            if(this.§_-IZ§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§_-AU§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-IZ§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-BJ§(param1:String) : BitmapData
      {
         var _loc2_:§_-4§ = this.§_-I4§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-I4§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-I4§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
