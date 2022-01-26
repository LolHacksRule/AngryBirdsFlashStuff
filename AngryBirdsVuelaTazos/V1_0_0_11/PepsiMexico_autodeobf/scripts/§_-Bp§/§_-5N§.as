package §_-Bp§
{
   import §_-Q2§.Texture;
   import §_-Q2§.§_-VY§;
   import §_-Xc§.§_-39§;
   import §_-Xc§.§_-Yd§;
   import §_-d5§.§_-6Y§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-5N§ extends EventDispatcher
   {
      
      private static const §_-B3§:int = 2;
      
      private static const §_-mJ§:int = 2048;
      
      private static var §_-rO§:§_-5N§;
       
      
      private var §_-5o§:Dictionary;
      
      private var §_-dS§:Vector.<§_-Yd§>;
      
      private var §_-VI§:Dictionary;
      
      private var §_-pF§:Boolean;
      
      private var §_-Zr§:Texture;
      
      public function §_-5N§()
      {
         super();
         if(§_-rO§)
         {
            throw new Error("Only one instance of TextureManager should exist.");
         }
         this.§_-dS§ = new Vector.<§_-Yd§>();
         this.§_-5o§ = new Dictionary();
         this.§_-VI§ = new Dictionary();
         §_-rO§ = this;
      }
      
      public static function get §_-9v§() : §_-5N§
      {
         if(§_-rO§)
         {
         }
         return §_-rO§;
      }
      
      public function §_-0q§(param1:§_-Yd§) : void
      {
         if(this.§_-pF§)
         {
            return;
         }
         if(this.§_-dS§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-dS§.push(param1);
      }
      
      private function §_-uZ§(param1:Array) : Rectangle
      {
         var _loc8_:§_-Yd§ = null;
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
            if(_loc2_ + _loc9_.width + §_-B3§ >= §_-mJ§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc9_.height + §_-B3§ >= §_-mJ§)
            {
               break;
            }
            _loc2_ += _loc9_.width + §_-B3§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc9_.height + §_-B3§ > _loc6_)
            {
               _loc6_ = _loc9_.height + §_-B3§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc7_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-b9§(param1:Array, param2:BitmapData) : Array
      {
         var _loc7_:§_-Yd§ = null;
         var _loc8_:BitmapData = null;
         var _loc9_:§_-p9§ = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§_-39§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         while(param1.length > 0)
         {
            _loc8_ = (_loc7_ = param1[0]).bitmapData;
            if(_loc3_ + _loc8_.width + §_-B3§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc8_.height + §_-B3§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc8_,_loc8_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc9_ = new §_-p9§()).offset = new Point(_loc3_,_loc4_);
            _loc9_.§_-a2§ = _loc7_;
            _loc6_.push(_loc9_);
            _loc10_ = _loc7_.§_-UQ§;
            _loc11_ = 0;
            while(_loc11_ < _loc10_)
            {
               (_loc12_ = _loc7_.§_-BM§(_loc11_)).§_-Et§ = null;
               _loc12_.§_-LD§.offset(_loc3_,_loc4_);
               _loc11_++;
            }
            _loc3_ += _loc8_.width + §_-B3§;
            if(_loc8_.height + §_-B3§ > _loc5_)
            {
               _loc5_ = _loc8_.height + §_-B3§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-gv§() : Boolean
      {
         var _loc1_:§_-Yd§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-p9§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-39§ = null;
         if(!§_-6Y§.§_-0D§)
         {
            return false;
         }
         if(this.§_-pF§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-dS§)
         {
            if(_loc1_.§_-UQ§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-uZ§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-b9§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-pE§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-a2§;
               _loc9_ = _loc1_.§_-UQ§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-BM§(_loc10_);
                  this.§_-ie§(_loc11_,_loc6_,_loc4_);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-dS§)
         {
            _loc1_.dispose();
         }
         this.§_-dS§ = new Vector.<§_-Yd§>();
         this.§_-pF§ = true;
         return true;
      }
      
      private function §_-ie§(param1:§_-39§, param2:Texture, param3:BitmapData) : void
      {
         var _loc5_:Rectangle = null;
         var _loc6_:§_-VY§ = null;
         var _loc4_:§_-9c§;
         if(!(_loc4_ = this.§_-5o§[param1.mName]))
         {
            _loc5_ = param1.§_-LD§.clone();
            _loc6_ = new §_-VY§(param2,_loc5_,false);
            _loc4_ = new §_-9c§(_loc6_,param3,_loc5_,param1.§_-oy§,param1.§_-Pk§);
            this.§_-5o§[param1.mName] = _loc4_;
         }
      }
      
      public function §_-cf§() : void
      {
         var bd:Object = null;
         for(bd in this.§_-VI§)
         {
            try
            {
               this.§_-VI§[bd].updateBaseTexture(bd as BitmapData);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §switch§(param1:String) : §_-9c§
      {
         return this.§_-5o§[param1];
      }
      
      public function §_-pE§(param1:BitmapData) : Texture
      {
         var _loc2_:Texture = this.§_-VI§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         _loc2_ = Texture.§_-d2§(param1);
         this.§_-VI§[param1] = _loc2_;
         return _loc2_;
      }
      
      public function §_-Ex§() : Texture
      {
         if(!this.§_-Zr§)
         {
            this.§_-Zr§ = this.§_-pE§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-Zr§;
      }
      
      public function §finally§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-VI§)
         {
            if(this.§_-VI§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-VI§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-0S§(param1:String) : BitmapData
      {
         var _loc2_:§_-9c§ = this.§switch§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§switch§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§switch§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
