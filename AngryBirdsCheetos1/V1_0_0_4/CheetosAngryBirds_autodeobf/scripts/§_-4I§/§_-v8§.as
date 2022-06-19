package §_-4I§
{
   import §_-DG§.§ for§;
   import §_-DG§.§_-1B§;
   import §_-KM§.§_-0A§;
   import §_-i9§.Texture;
   import §_-i9§.§_-DR§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-v8§ extends EventDispatcher
   {
      
      private static const §_-rd§:int = 2;
      
      private static const §_-Uk§:int = 2048;
      
      private static var §_-WC§:§_-v8§;
       
      
      private var §_-Ch§:Dictionary;
      
      private var §_-Sf§:Vector.<§ for§>;
      
      private var §_-Z4§:Dictionary;
      
      private var §_-7d§:Boolean;
      
      private var §_-qb§:Texture;
      
      private var §_-3H§:int;
      
      private var §_-Jd§:int;
      
      public function §_-v8§()
      {
         super();
         this.§_-Sf§ = new Vector.<§ for§>();
         this.§_-Ch§ = new Dictionary();
         this.§_-Z4§ = new Dictionary();
      }
      
      public static function get §_-yU§() : §_-v8§
      {
         if(!§_-WC§)
         {
            §_-WC§ = new §_-v8§();
         }
         return §_-WC§;
      }
      
      public function get §_-1R§() : int
      {
         return this.§_-3H§;
      }
      
      public function get §_-L-§() : int
      {
         return this.§_-Jd§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-EA§ = null;
         var _loc2_:§ for§ = null;
         if(this.§_-Ch§)
         {
            for each(_loc1_ in this.§_-Ch§)
            {
               this.§_-qj§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§_-Ch§ = null;
         }
         if(this.§_-Sf§)
         {
            for each(_loc2_ in this.§_-Sf§)
            {
               _loc2_.dispose();
            }
            this.§_-Sf§ = null;
         }
         if(this.§_-Z4§)
         {
            this.§_-Z4§ = null;
         }
         if(this.§_-qb§)
         {
            this.§_-qb§.dispose();
            this.§_-qb§ = null;
         }
         this.§_-Sf§ = new Vector.<§ for§>();
         this.§_-Ch§ = new Dictionary();
         this.§_-Z4§ = new Dictionary();
      }
      
      public function §_-kx§(param1:§ for§) : void
      {
         if(this.§_-7d§)
         {
            return;
         }
         if(this.§_-Sf§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-Sf§.push(param1);
      }
      
      private function §_-HP§(param1:Array) : Rectangle
      {
         var _loc9_:§ for§ = null;
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
            if(_loc2_ + _loc10_.width + §_-rd§ >= §_-Uk§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §_-rd§ >= §_-Uk§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §_-rd§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §_-rd§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §_-rd§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-70§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§ for§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§_-PE§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§_-1B§ = null;
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
            if(_loc3_ + _loc9_.width + §_-rd§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §_-rd§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §_-PE§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§_-Cn§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§_-7q§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§_-OZ§(_loc12_)).§_-C§ = null;
               _loc13_.§_-dK§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §_-rd§;
            if(_loc9_.height + §_-rd§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §_-rd§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-dR§() : Boolean
      {
         var _loc1_:§ for§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-PE§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-1B§ = null;
         if(!§_-0A§.§_-bT§())
         {
            return false;
         }
         if(this.§_-7d§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-Sf§)
         {
            if(_loc1_.§_-7q§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-HP§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-70§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-Cg§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-Cn§;
               _loc9_ = _loc1_.§_-7q§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-OZ§(_loc10_);
                  this.§package§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-Sf§)
         {
            _loc1_.dispose();
         }
         this.§_-Sf§ = new Vector.<§ for§>();
         this.§_-7d§ = true;
         return true;
      }
      
      private function §package§(param1:§_-1B§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§_-DR§ = null;
         var _loc5_:§_-EA§;
         if(!(_loc5_ = this.§_-Ch§[param1.mName]))
         {
            _loc6_ = param1.§_-dK§.clone();
            _loc7_ = new §_-DR§(param2,_loc6_,false);
            _loc5_ = new §_-EA§(_loc7_,param3,_loc6_,param1.§_-dI§,param1.§_-9j§,param4);
            this.§_-Ch§[param1.mName] = _loc5_;
         }
      }
      
      public function §_-6p§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§_-0A§.§_-CZ§)
         {
            for(bd in this.§_-Z4§)
            {
               try
               {
                  texture = this.§_-Z4§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §_-QE§(param1:String) : §_-EA§
      {
         return this.§_-Ch§[param1];
      }
      
      public function §_-Cg§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§_-Z4§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §_-0A§.§_-yP§(param1,param2);
         this.§_-Z4§[param1] = _loc3_;
         this.§_-iT§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §_-iT§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§_-Jd§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§_-3H§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §_-T-§() : Texture
      {
         if(!this.§_-qb§)
         {
            this.§_-qb§ = this.§_-Cg§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-qb§;
      }
      
      public function §_-qj§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-Z4§)
         {
            if(this.§_-Z4§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§_-iT§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-Z4§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-kP§(param1:String) : BitmapData
      {
         var _loc2_:§_-EA§ = this.§_-QE§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-QE§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-QE§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
