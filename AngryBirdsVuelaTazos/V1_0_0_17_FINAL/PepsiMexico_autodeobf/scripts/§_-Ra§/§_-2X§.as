package §_-Ra§
{
   import §_-2J§.§_-4w§;
   import §_-2J§.§_-Tz§;
   import §_-4g§.Texture;
   import §_-4g§.§_-la§;
   import §_-gY§.§_-Vu§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-2X§ extends EventDispatcher
   {
      
      private static const §_-uf§:int = 2;
      
      private static const §_-sd§:int = 2048;
      
      private static var §_-bv§:§_-2X§;
       
      
      private var §_-Jh§:Dictionary;
      
      private var §_-g5§:Vector.<§_-Tz§>;
      
      private var §_-gk§:Dictionary;
      
      private var §_-sz§:Boolean;
      
      private var §_-VW§:Texture;
      
      public function §_-2X§()
      {
         super();
         if(§_-bv§)
         {
            throw new Error("Only one instance of TextureManager should exist.");
         }
         this.§_-g5§ = new Vector.<§_-Tz§>();
         this.§_-Jh§ = new Dictionary();
         this.§_-gk§ = new Dictionary();
         §_-bv§ = this;
      }
      
      public static function get §_-mE§() : §_-2X§
      {
         if(§_-bv§)
         {
         }
         return §_-bv§;
      }
      
      public function §_-Lf§(param1:§_-Tz§) : void
      {
         if(this.§_-sz§)
         {
            return;
         }
         if(this.§_-g5§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-g5§.push(param1);
      }
      
      private function §_-x7§(param1:Array) : Rectangle
      {
         var _loc8_:§_-Tz§ = null;
         var _loc9_:BitmapData = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < param1.length)
         {
            _loc9_ = (_loc8_ = param1[_loc7_]).bitmapData;
            if(_loc2_ + _loc9_.width + §_-uf§ >= §_-sd§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc9_.height + §_-uf§ >= §_-sd§)
            {
               break;
            }
            _loc2_ += _loc9_.width + §_-uf§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc9_.height + §_-uf§ > _loc6_)
            {
               _loc6_ = _loc9_.height + §_-uf§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc7_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-75§(param1:Array, param2:BitmapData) : Array
      {
         var _loc7_:§_-Tz§ = null;
         var _loc8_:BitmapData = null;
         var _loc9_:§_-CM§ = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§_-4w§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         while(param1.length > 0)
         {
            _loc8_ = (_loc7_ = param1[0]).bitmapData;
            if(_loc3_ + _loc8_.width + §_-uf§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc8_.height + §_-uf§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc8_,_loc8_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc9_ = new §_-CM§()).offset = new Point(_loc3_,_loc4_);
            _loc9_.§_-9M§ = _loc7_;
            _loc6_.push(_loc9_);
            _loc10_ = _loc7_.§_-PF§;
            _loc11_ = 0;
            while(_loc11_ < _loc10_)
            {
               (_loc12_ = _loc7_.§_-e-§(_loc11_)).§_-6p§ = null;
               _loc12_.§_-ua§.offset(_loc3_,_loc4_);
               _loc11_++;
            }
            _loc3_ += _loc8_.width + §_-uf§;
            if(_loc8_.height + §_-uf§ > _loc5_)
            {
               _loc5_ = _loc8_.height + §_-uf§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-WP§() : Boolean
      {
         var _loc1_:§_-Tz§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-CM§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-4w§ = null;
         if(!§_-Vu§.§_-ez§)
         {
            return false;
         }
         if(this.§_-sz§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-g5§)
         {
            if(_loc1_.§_-PF§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-x7§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-75§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-pz§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-9M§;
               _loc9_ = _loc1_.§_-PF§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-e-§(_loc10_);
                  this.§_-N0§(_loc11_,_loc6_,_loc4_);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-g5§)
         {
            _loc1_.dispose();
         }
         this.§_-g5§ = new Vector.<§_-Tz§>();
         this.§_-sz§ = true;
         return true;
      }
      
      private function §_-N0§(param1:§_-4w§, param2:Texture, param3:BitmapData) : void
      {
         var _loc5_:Rectangle = null;
         var _loc6_:§_-la§ = null;
         var _loc4_:§_-Vr§;
         if(!(_loc4_ = this.§_-Jh§[param1.mName]))
         {
            _loc5_ = param1.§_-ua§.clone();
            _loc6_ = new §_-la§(param2,_loc5_,false);
            _loc4_ = new §_-Vr§(_loc6_,param3,_loc5_,param1.§_-ov§,param1.§_-eM§);
            this.§_-Jh§[param1.mName] = _loc4_;
         }
      }
      
      public function §_-dk§() : void
      {
         var bd:Object = null;
         for(bd in this.§_-gk§)
         {
            try
            {
               this.§_-gk§[bd].updateBaseTexture(bd as BitmapData);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §_-ln§(param1:String) : §_-Vr§
      {
         return this.§_-Jh§[param1];
      }
      
      public function §_-pz§(param1:BitmapData) : Texture
      {
         var _loc2_:Texture = this.§_-gk§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         _loc2_ = Texture.§_-su§(param1);
         this.§_-gk§[param1] = _loc2_;
         return _loc2_;
      }
      
      public function §_-Z0§() : Texture
      {
         if(!this.§_-VW§)
         {
            this.§_-VW§ = this.§_-pz§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-VW§;
      }
      
      public function §_-tO§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-gk§)
         {
            if(this.§_-gk§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-gk§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-jZ§(param1:String) : BitmapData
      {
         var _loc2_:§_-Vr§ = this.§_-ln§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-ln§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-ln§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
