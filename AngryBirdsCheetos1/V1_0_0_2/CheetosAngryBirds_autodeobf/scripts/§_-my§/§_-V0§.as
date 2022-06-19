package §_-my§
{
   import §_-DN§.§_-F4§;
   import §_-DN§.§_-XW§;
   import §_-Ye§.§_-cP§;
   import §_-yp§.Texture;
   import §_-yp§.§_-pq§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-V0§ extends EventDispatcher
   {
      
      private static const §_-hO§:int = 2;
      
      private static const §_-T7§:int = 2048;
      
      private static var §_-ft§:§_-V0§;
       
      
      private var §_-h5§:Dictionary;
      
      private var §_-Ev§:Vector.<§_-XW§>;
      
      private var §_-za§:Dictionary;
      
      private var §_-rD§:Boolean;
      
      private var §_-QT§:Texture;
      
      private var §_-WS§:int;
      
      private var §_-Js§:int;
      
      public function §_-V0§()
      {
         super();
         this.§_-Ev§ = new Vector.<§_-XW§>();
         this.§_-h5§ = new Dictionary();
         this.§_-za§ = new Dictionary();
      }
      
      public static function get §_-0H§() : §_-V0§
      {
         if(!§_-ft§)
         {
            §_-ft§ = new §_-V0§();
         }
         return §_-ft§;
      }
      
      public function get §_-M3§() : int
      {
         return this.§_-WS§;
      }
      
      public function get §_-Nj§() : int
      {
         return this.§_-Js§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-GX§ = null;
         var _loc2_:§_-XW§ = null;
         if(this.§_-h5§)
         {
            for each(_loc1_ in this.§_-h5§)
            {
               this.§_-mP§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§_-h5§ = null;
         }
         if(this.§_-Ev§)
         {
            for each(_loc2_ in this.§_-Ev§)
            {
               _loc2_.dispose();
            }
            this.§_-Ev§ = null;
         }
         if(this.§_-za§)
         {
            this.§_-za§ = null;
         }
         if(this.§_-QT§)
         {
            this.§_-QT§.dispose();
            this.§_-QT§ = null;
         }
      }
      
      public function §_-Uj§(param1:§_-XW§) : void
      {
         if(this.§_-rD§)
         {
            return;
         }
         if(this.§_-Ev§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-Ev§.push(param1);
      }
      
      private function §_-Fs§(param1:Array) : Rectangle
      {
         var _loc9_:§_-XW§ = null;
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
            if(_loc2_ + _loc10_.width + §_-hO§ >= §_-T7§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §_-hO§ >= §_-T7§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §_-hO§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §_-hO§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §_-hO§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-id§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§_-XW§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§_-0-w§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§_-F4§ = null;
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
            if(_loc3_ + _loc9_.width + §_-hO§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §_-hO§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §_-0-w§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§_-u7§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§_-R1§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§_-0S§(_loc12_)).§_-EL§ = null;
               _loc13_.§_-lT§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §_-hO§;
            if(_loc9_.height + §_-hO§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §_-hO§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-Q5§() : Boolean
      {
         var _loc1_:§_-XW§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-0-w§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-F4§ = null;
         if(!§_-cP§.§_-Te§())
         {
            return false;
         }
         if(this.§_-rD§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-Ev§)
         {
            if(_loc1_.§_-R1§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-Fs§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-id§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-Z4§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-u7§;
               _loc9_ = _loc1_.§_-R1§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-0S§(_loc10_);
                  this.§_-kw§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-Ev§)
         {
            _loc1_.dispose();
         }
         this.§_-Ev§ = new Vector.<§_-XW§>();
         this.§_-rD§ = true;
         return true;
      }
      
      private function §_-kw§(param1:§_-F4§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§_-pq§ = null;
         var _loc5_:§_-GX§;
         if(!(_loc5_ = this.§_-h5§[param1.mName]))
         {
            _loc6_ = param1.§_-lT§.clone();
            _loc7_ = new §_-pq§(param2,_loc6_,false);
            _loc5_ = new §_-GX§(_loc7_,param3,_loc6_,param1.§_-gL§,param1.§_-q5§,param4);
            this.§_-h5§[param1.mName] = _loc5_;
         }
      }
      
      public function §_-3-§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§_-cP§.§_-P6§)
         {
            for(bd in this.§_-za§)
            {
               try
               {
                  texture = this.§_-za§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §_-8O§(param1:String) : §_-GX§
      {
         return this.§_-h5§[param1];
      }
      
      public function §_-Z4§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§_-za§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §_-cP§.§_-w3§(param1,param2);
         this.§_-za§[param1] = _loc3_;
         this.§_-sn§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §_-sn§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§_-Js§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§_-WS§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §_-Mk§() : Texture
      {
         if(!this.§_-QT§)
         {
            this.§_-QT§ = this.§_-Z4§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-QT§;
      }
      
      public function §_-mP§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-za§)
         {
            if(this.§_-za§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§_-sn§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-za§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-7C§(param1:String) : BitmapData
      {
         var _loc2_:§_-GX§ = this.§_-8O§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-8O§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-8O§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
