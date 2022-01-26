package §_-PC§
{
   import §_-DQ§.Texture;
   import §_-DQ§.§_-Ln§;
   import §_-fI§.§_-BI§;
   import §_-id§.§_-fk§;
   import §_-id§.§_-jr§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-lx§ extends EventDispatcher
   {
      
      private static const §_-EB§:int = 2;
      
      private static const §_-fz§:int = 2048;
      
      private static var §_-p-§:§_-lx§;
       
      
      private var §_-5K§:Dictionary;
      
      private var §_-v3§:Vector.<§_-fk§>;
      
      private var §_-0Z§:Dictionary;
      
      private var §_-3s§:Boolean;
      
      private var §_-1N§:Texture;
      
      public function §_-lx§()
      {
         super();
         if(§_-p-§)
         {
            throw new Error("Only one instance of TextureManager should exist.");
         }
         this.§_-v3§ = new Vector.<§_-fk§>();
         this.§_-5K§ = new Dictionary();
         this.§_-0Z§ = new Dictionary();
         §_-p-§ = this;
      }
      
      public static function get §_-aP§() : §_-lx§
      {
         if(§_-p-§)
         {
         }
         return §_-p-§;
      }
      
      public function §_-cD§(param1:§_-fk§) : void
      {
         if(this.§_-3s§)
         {
            return;
         }
         if(this.§_-v3§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-v3§.push(param1);
      }
      
      private function §_-V7§(param1:Array) : Rectangle
      {
         var _loc8_:§_-fk§ = null;
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
            if(_loc2_ + _loc9_.width + §_-EB§ >= §_-fz§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc9_.height + §_-EB§ >= §_-fz§)
            {
               break;
            }
            _loc2_ += _loc9_.width + §_-EB§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc9_.height + §_-EB§ > _loc6_)
            {
               _loc6_ = _loc9_.height + §_-EB§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc7_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-VB§(param1:Array, param2:BitmapData) : Array
      {
         var _loc7_:§_-fk§ = null;
         var _loc8_:BitmapData = null;
         var _loc9_:§_-Il§ = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§_-jr§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         while(param1.length > 0)
         {
            _loc8_ = (_loc7_ = param1[0]).bitmapData;
            if(_loc3_ + _loc8_.width + §_-EB§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc8_.height + §_-EB§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc8_,_loc8_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc9_ = new §_-Il§()).offset = new Point(_loc3_,_loc4_);
            _loc9_.§_-sk§ = _loc7_;
            _loc6_.push(_loc9_);
            _loc10_ = _loc7_.§_-B9§;
            _loc11_ = 0;
            while(_loc11_ < _loc10_)
            {
               (_loc12_ = _loc7_.§_-SK§(_loc11_)).§_-uN§ = null;
               _loc12_.§_-wF§.offset(_loc3_,_loc4_);
               _loc11_++;
            }
            _loc3_ += _loc8_.width + §_-EB§;
            if(_loc8_.height + §_-EB§ > _loc5_)
            {
               _loc5_ = _loc8_.height + §_-EB§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-p5§() : Boolean
      {
         var _loc1_:§_-fk§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-Il§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-jr§ = null;
         if(!§_-BI§.§_-Pw§)
         {
            return false;
         }
         if(this.§_-3s§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-v3§)
         {
            if(_loc1_.§_-B9§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-V7§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-VB§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-a§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-sk§;
               _loc9_ = _loc1_.§_-B9§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-SK§(_loc10_);
                  this.§_-te§(_loc11_,_loc6_,_loc4_);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-v3§)
         {
            _loc1_.dispose();
         }
         this.§_-v3§ = new Vector.<§_-fk§>();
         this.§_-3s§ = true;
         return true;
      }
      
      private function §_-te§(param1:§_-jr§, param2:Texture, param3:BitmapData) : void
      {
         var _loc5_:Rectangle = null;
         var _loc6_:§_-Ln§ = null;
         var _loc4_:§_-qH§;
         if(!(_loc4_ = this.§_-5K§[param1.mName]))
         {
            _loc5_ = param1.§_-wF§.clone();
            _loc6_ = new §_-Ln§(param2,_loc5_,false);
            _loc4_ = new §_-qH§(_loc6_,param3,_loc5_,param1.§_-eo§,param1.§_-TO§);
            this.§_-5K§[param1.mName] = _loc4_;
         }
      }
      
      public function §_-kg§() : void
      {
         var bd:Object = null;
         for(bd in this.§_-0Z§)
         {
            try
            {
               this.§_-0Z§[bd].updateBaseTexture(bd as BitmapData);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §_-vh§(param1:String) : §_-qH§
      {
         return this.§_-5K§[param1];
      }
      
      public function §_-a§(param1:BitmapData) : Texture
      {
         var _loc2_:Texture = this.§_-0Z§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         _loc2_ = Texture.§_-BJ§(param1);
         this.§_-0Z§[param1] = _loc2_;
         return _loc2_;
      }
      
      public function §_-hd§() : Texture
      {
         if(!this.§_-1N§)
         {
            this.§_-1N§ = this.§_-a§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-1N§;
      }
      
      public function §try§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-0Z§)
         {
            if(this.§_-0Z§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-0Z§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-Tr§(param1:String) : BitmapData
      {
         var _loc2_:§_-qH§ = this.§_-vh§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-vh§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-vh§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
