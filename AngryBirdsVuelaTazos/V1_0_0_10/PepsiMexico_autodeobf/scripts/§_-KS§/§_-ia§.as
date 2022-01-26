package §_-KS§
{
   import §_-B2§.§_-H4§;
   import §_-I4§.§_-8d§;
   import §_-I4§.§_-Iz§;
   import §_-jY§.Texture;
   import §_-jY§.§_-bn§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-ia§ extends EventDispatcher
   {
      
      private static const §_-L7§:int = 2;
      
      private static const §_-5l§:int = 2048;
      
      private static var §_-QH§:§_-ia§;
       
      
      private var §_-9q§:Dictionary;
      
      private var §_-s7§:Vector.<§_-8d§>;
      
      private var §_-hp§:Dictionary;
      
      private var §_-C8§:Boolean;
      
      private var §_-do§:Texture;
      
      public function §_-ia§()
      {
         super();
         if(§_-QH§)
         {
            throw new Error("Only one instance of TextureManager should exist.");
         }
         this.§_-s7§ = new Vector.<§_-8d§>();
         this.§_-9q§ = new Dictionary();
         this.§_-hp§ = new Dictionary();
         §_-QH§ = this;
      }
      
      public static function get §_-vJ§() : §_-ia§
      {
         if(§_-QH§)
         {
         }
         return §_-QH§;
      }
      
      public function §_-WW§(param1:§_-8d§) : void
      {
         if(this.§_-C8§)
         {
            return;
         }
         if(this.§_-s7§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-s7§.push(param1);
      }
      
      private function §_-n0§(param1:Array) : Rectangle
      {
         var _loc8_:§_-8d§ = null;
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
            if(_loc2_ + _loc9_.width + §_-L7§ >= §_-5l§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc9_.height + §_-L7§ >= §_-5l§)
            {
               break;
            }
            _loc2_ += _loc9_.width + §_-L7§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc9_.height + §_-L7§ > _loc6_)
            {
               _loc6_ = _loc9_.height + §_-L7§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc7_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-HI§(param1:Array, param2:BitmapData) : Array
      {
         var _loc7_:§_-8d§ = null;
         var _loc8_:BitmapData = null;
         var _loc9_:§_-iw§ = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§_-Iz§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         while(param1.length > 0)
         {
            _loc8_ = (_loc7_ = param1[0]).bitmapData;
            if(_loc3_ + _loc8_.width + §_-L7§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc8_.height + §_-L7§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc8_,_loc8_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc9_ = new §_-iw§()).offset = new Point(_loc3_,_loc4_);
            _loc9_.§_-Ft§ = _loc7_;
            _loc6_.push(_loc9_);
            _loc10_ = _loc7_.§_-nf§;
            _loc11_ = 0;
            while(_loc11_ < _loc10_)
            {
               (_loc12_ = _loc7_.§_-AB§(_loc11_)).§_-Ya§ = null;
               _loc12_.§_-8I§.offset(_loc3_,_loc4_);
               _loc11_++;
            }
            _loc3_ += _loc8_.width + §_-L7§;
            if(_loc8_.height + §_-L7§ > _loc5_)
            {
               _loc5_ = _loc8_.height + §_-L7§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-YC§() : Boolean
      {
         var _loc1_:§_-8d§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-iw§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-Iz§ = null;
         if(!§_-H4§.§_-Eu§)
         {
            return false;
         }
         if(this.§_-C8§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-s7§)
         {
            if(_loc1_.§_-nf§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-n0§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-HI§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-2V§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-Ft§;
               _loc9_ = _loc1_.§_-nf§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-AB§(_loc10_);
                  this.§_-ov§(_loc11_,_loc6_,_loc4_);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-s7§)
         {
            _loc1_.dispose();
         }
         this.§_-s7§ = new Vector.<§_-8d§>();
         this.§_-C8§ = true;
         return true;
      }
      
      private function §_-ov§(param1:§_-Iz§, param2:Texture, param3:BitmapData) : void
      {
         var _loc5_:Rectangle = null;
         var _loc6_:§_-bn§ = null;
         var _loc4_:§_-Wt§;
         if(!(_loc4_ = this.§_-9q§[param1.mName]))
         {
            _loc5_ = param1.§_-8I§.clone();
            _loc6_ = new §_-bn§(param2,_loc5_,false);
            _loc4_ = new §_-Wt§(_loc6_,param3,_loc5_,param1.§_-ui§,param1.§_-np§);
            this.§_-9q§[param1.mName] = _loc4_;
         }
      }
      
      public function §_-mv§() : void
      {
         var bd:Object = null;
         for(bd in this.§_-hp§)
         {
            try
            {
               this.§_-hp§[bd].updateBaseTexture(bd as BitmapData);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §_-es§(param1:String) : §_-Wt§
      {
         return this.§_-9q§[param1];
      }
      
      public function §_-2V§(param1:BitmapData) : Texture
      {
         var _loc2_:Texture = this.§_-hp§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         _loc2_ = Texture.§_-SK§(param1);
         this.§_-hp§[param1] = _loc2_;
         return _loc2_;
      }
      
      public function §_-O8§() : Texture
      {
         if(!this.§_-do§)
         {
            this.§_-do§ = this.§_-2V§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-do§;
      }
      
      public function §_-Tx§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-hp§)
         {
            if(this.§_-hp§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-hp§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-c1§(param1:String) : BitmapData
      {
         var _loc2_:§_-Wt§ = this.§_-es§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-es§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-es§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
