package §_-3b§
{
   import §_-Ku§.§_-Ha§;
   import §_-Q0§.Texture;
   import §_-Q0§.§_-23§;
   import §_-m9§.§_-Tv§;
   import §_-m9§.§_-iN§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-Og§ extends EventDispatcher
   {
      
      private static const §_-RK§:int = 2;
      
      private static const §_-HK§:int = 2048;
      
      private static var §_-1K§:§_-Og§;
       
      
      private var §_-PX§:Dictionary;
      
      private var §_-74§:Vector.<§_-iN§>;
      
      private var §_-d0§:Dictionary;
      
      private var §_-7c§:Boolean;
      
      private var §_-mH§:Texture;
      
      private var §_-PY§:int;
      
      private var §_-O5§:int;
      
      public function §_-Og§()
      {
         super();
         this.§_-74§ = new Vector.<§_-iN§>();
         this.§_-PX§ = new Dictionary();
         this.§_-d0§ = new Dictionary();
      }
      
      public static function get §_-uP§() : §_-Og§
      {
         if(!§_-1K§)
         {
            §_-1K§ = new §_-Og§();
         }
         return §_-1K§;
      }
      
      public function get §_-Zz§() : int
      {
         return this.§_-PY§;
      }
      
      public function get §_-Mk§() : int
      {
         return this.§_-O5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-Lf§ = null;
         var _loc2_:§_-iN§ = null;
         if(this.§_-PX§)
         {
            for each(_loc1_ in this.§_-PX§)
            {
               this.§_-Ug§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§_-PX§ = null;
         }
         if(this.§_-74§)
         {
            for each(_loc2_ in this.§_-74§)
            {
               _loc2_.dispose();
            }
            this.§_-74§ = null;
         }
         if(this.§_-d0§)
         {
            this.§_-d0§ = null;
         }
         if(this.§_-mH§)
         {
            this.§_-mH§.dispose();
            this.§_-mH§ = null;
         }
      }
      
      public function §_-Xf§(param1:§_-iN§) : void
      {
         if(this.§_-7c§)
         {
            return;
         }
         if(this.§_-74§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-74§.push(param1);
      }
      
      private function §_-5d§(param1:Array) : Rectangle
      {
         var _loc8_:§_-iN§ = null;
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
            if(_loc2_ + _loc9_.width + §_-RK§ >= §_-HK§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc9_.height + §_-RK§ >= §_-HK§)
            {
               break;
            }
            _loc2_ += _loc9_.width + §_-RK§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc9_.height + §_-RK§ > _loc6_)
            {
               _loc6_ = _loc9_.height + §_-RK§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc7_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-5O§(param1:Array, param2:BitmapData) : Array
      {
         var _loc7_:§_-iN§ = null;
         var _loc8_:BitmapData = null;
         var _loc9_:§_-qy§ = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§_-Tv§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         while(param1.length > 0)
         {
            _loc8_ = (_loc7_ = param1[0]).bitmapData;
            if(_loc3_ + _loc8_.width + §_-RK§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc8_.height + §_-RK§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc8_,_loc8_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc9_ = new §_-qy§()).offset = new Point(_loc3_,_loc4_);
            _loc9_.§_-gp§ = _loc7_;
            _loc6_.push(_loc9_);
            _loc10_ = _loc7_.§_-HB§;
            _loc11_ = 0;
            while(_loc11_ < _loc10_)
            {
               (_loc12_ = _loc7_.§_-DW§(_loc11_)).§_-uG§ = null;
               _loc12_.§_-N3§.offset(_loc3_,_loc4_);
               _loc11_++;
            }
            _loc3_ += _loc8_.width + §_-RK§;
            if(_loc8_.height + §_-RK§ > _loc5_)
            {
               _loc5_ = _loc8_.height + §_-RK§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-42§() : Boolean
      {
         var _loc1_:§_-iN§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-qy§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-Tv§ = null;
         if(!§_-Ha§.§_-8o§)
         {
            return false;
         }
         if(this.§_-7c§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-74§)
         {
            if(_loc1_.§_-HB§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-5d§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-5O§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-R5§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-gp§;
               _loc9_ = _loc1_.§_-HB§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-DW§(_loc10_);
                  this.§_-iH§(_loc11_,_loc6_,_loc4_);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-74§)
         {
            _loc1_.dispose();
         }
         this.§_-74§ = new Vector.<§_-iN§>();
         this.§_-7c§ = true;
         return true;
      }
      
      private function §_-iH§(param1:§_-Tv§, param2:Texture, param3:BitmapData) : void
      {
         var _loc5_:Rectangle = null;
         var _loc6_:§_-23§ = null;
         var _loc4_:§_-Lf§;
         if(!(_loc4_ = this.§_-PX§[param1.mName]))
         {
            _loc5_ = param1.§_-N3§.clone();
            _loc6_ = new §_-23§(param2,_loc5_,false);
            _loc4_ = new §_-Lf§(_loc6_,param3,_loc5_,param1.§_-0S§,param1.§_-DJ§);
            this.§_-PX§[param1.mName] = _loc4_;
         }
      }
      
      public function §_-sd§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         for(bd in this.§_-d0§)
         {
            try
            {
               texture = this.§_-d0§[bd];
               texture.updateBaseTexture(bd as BitmapData,texture.mipMapping);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §_-lH§(param1:String) : §_-Lf§
      {
         return this.§_-PX§[param1];
      }
      
      public function §_-R5§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§_-d0§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = Texture.§_-M0§(param1,param2);
         this.§_-d0§[param1] = _loc3_;
         this.§_-nv§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §_-nv§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§_-O5§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§_-PY§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §_-3i§() : Texture
      {
         if(!this.§_-mH§)
         {
            this.§_-mH§ = this.§_-R5§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-mH§;
      }
      
      public function §_-Ug§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-d0§)
         {
            if(this.§_-d0§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§_-nv§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-d0§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-gx§(param1:String) : BitmapData
      {
         var _loc2_:§_-Lf§ = this.§_-lH§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-lH§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-lH§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
