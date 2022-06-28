package §_-8d§
{
   import §_-0Ea§.§_-AY§;
   import §_-6E§.§_-0j§;
   import §_-6E§.§_-UU§;
   import §_-z4§.Texture;
   import §_-z4§.§_-ud§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-0FF§ extends EventDispatcher
   {
      
      private static const §_-Pl§:int = 2;
      
      private static const §_-0-§:int = 2048;
      
      private static var §_-me§:§_-0FF§;
       
      
      private var § do§:Dictionary;
      
      private var §_-01q§:Vector.<§_-UU§>;
      
      private var §_-49§:Dictionary;
      
      private var §_-OC§:Boolean;
      
      private var §_-1h§:String;
      
      private var §_-Fx§:Texture;
      
      private var §_-jD§:int;
      
      private var §_-ST§:int;
      
      public function §_-0FF§(param1:String = null)
      {
         super();
         this.§_-01q§ = new Vector.<§_-UU§>();
         this.§ do§ = new Dictionary();
         this.§_-49§ = new Dictionary();
         this.§_-1h§ = param1;
      }
      
      public static function get §_-3S§() : §_-0FF§
      {
         if(!§_-me§)
         {
            §_-me§ = new §_-0FF§();
         }
         return §_-me§;
      }
      
      public function get §_-RF§() : int
      {
         return this.§_-jD§;
      }
      
      public function get §_-0DC§() : int
      {
         return this.§_-ST§;
      }
      
      public function get id() : String
      {
         return this.§_-1h§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-vz§ = null;
         var _loc2_:§_-UU§ = null;
         if(this.§ do§)
         {
            for each(_loc1_ in this.§ do§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§ do§ = null;
         }
         if(this.§_-01q§)
         {
            for each(_loc2_ in this.§_-01q§)
            {
               _loc2_.dispose();
            }
            this.§_-01q§ = null;
         }
         if(this.§_-49§)
         {
            this.§_-49§ = null;
         }
         if(this.§_-Fx§)
         {
            this.§_-Fx§.dispose();
            this.§_-Fx§ = null;
         }
         this.§_-01q§ = new Vector.<§_-UU§>();
         this.§ do§ = new Dictionary();
         this.§_-49§ = new Dictionary();
      }
      
      public function §_-sG§(param1:§_-UU§) : void
      {
         if(this.§_-OC§)
         {
            return;
         }
         if(this.§_-01q§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-01q§.push(param1);
      }
      
      private function §_-1A§(param1:Array) : Rectangle
      {
         var _loc9_:§_-UU§ = null;
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
            if(_loc2_ + _loc10_.width + §_-Pl§ >= §_-0-§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §_-Pl§ >= §_-0-§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §_-Pl§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §_-Pl§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §_-Pl§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-0FH§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§_-UU§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§_-wr§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§_-0j§ = null;
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
            if(_loc3_ + _loc9_.width + §_-Pl§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §_-Pl§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §_-wr§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§_-gP§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§_-0w§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§_-c6§(_loc12_)).§_-7B§ = null;
               _loc13_.§_-vb§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §_-Pl§;
            if(_loc9_.height + §_-Pl§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §_-Pl§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-G9§() : Boolean
      {
         var _loc1_:§_-UU§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-wr§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-0j§ = null;
         if(!§_-AY§.§_-Ow§())
         {
            return false;
         }
         if(this.§_-OC§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-01q§)
         {
            if(_loc1_.§_-0w§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-1A§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-0FH§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-gP§;
               _loc9_ = _loc1_.§_-0w§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-c6§(_loc10_);
                  this.§_-n-§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-01q§)
         {
            _loc1_.dispose();
         }
         this.§_-01q§ = new Vector.<§_-UU§>();
         this.§_-OC§ = true;
         return true;
      }
      
      private function §_-n-§(param1:§_-0j§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§_-ud§ = null;
         var _loc5_:§_-vz§;
         if(!(_loc5_ = this.§ do§[param1.mName]))
         {
            _loc6_ = param1.§_-vb§.clone();
            _loc7_ = new §_-ud§(param2,_loc6_,false);
            _loc5_ = new §_-vz§(_loc7_,param3,_loc6_,param1.§_-7r§,param1.§_-yG§,param4);
            this.§ do§[param1.mName] = _loc5_;
         }
      }
      
      public function §_-tN§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§_-AY§.§_-B4§)
         {
            for(bd in this.§_-49§)
            {
               try
               {
                  texture = this.§_-49§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §_-70§(param1:String) : §_-vz§
      {
         return this.§ do§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§_-49§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §_-AY§.§_-0-D§(param1,param2);
         this.§_-49§[param1] = _loc3_;
         this.§_-dO§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §_-dO§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§_-ST§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§_-jD§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §_-Fl§() : Texture
      {
         if(!this.§_-Fx§)
         {
            this.§_-Fx§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§_-Fx§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-49§)
         {
            if(this.§_-49§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§_-dO§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-49§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-QA§(param1:String) : BitmapData
      {
         var _loc2_:§_-vz§ = this.§_-70§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-70§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-70§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
