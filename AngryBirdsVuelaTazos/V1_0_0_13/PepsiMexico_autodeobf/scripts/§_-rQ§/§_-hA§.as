package §_-rQ§
{
   import §_-Cy§.Texture;
   import §_-Cy§.§_-s0§;
   import §_-JR§.§_-yh§;
   import §_-di§.§_-XM§;
   import §_-di§.§_-hc§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-hA§ extends EventDispatcher
   {
      
      private static const §_-je§:int = 2;
      
      private static const §_-Tk§:int = 2048;
      
      private static var §_-fc§:§_-hA§;
       
      
      private var §_-fT§:Dictionary;
      
      private var §_-OJ§:Vector.<§_-XM§>;
      
      private var §_-1a§:Dictionary;
      
      private var §_-M1§:Boolean;
      
      private var §_-Ew§:Texture;
      
      public function §_-hA§()
      {
         super();
         if(§_-fc§)
         {
            throw new Error("Only one instance of TextureManager should exist.");
         }
         this.§_-OJ§ = new Vector.<§_-XM§>();
         this.§_-fT§ = new Dictionary();
         this.§_-1a§ = new Dictionary();
         §_-fc§ = this;
      }
      
      public static function get §_-G4§() : §_-hA§
      {
         if(§_-fc§)
         {
         }
         return §_-fc§;
      }
      
      public function §_-oF§(param1:§_-XM§) : void
      {
         if(this.§_-M1§)
         {
            return;
         }
         if(this.§_-OJ§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-OJ§.push(param1);
      }
      
      private function §_-FZ§(param1:Array) : Rectangle
      {
         var _loc8_:§_-XM§ = null;
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
            if(_loc2_ + _loc9_.width + §_-je§ >= §_-Tk§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc9_.height + §_-je§ >= §_-Tk§)
            {
               break;
            }
            _loc2_ += _loc9_.width + §_-je§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc9_.height + §_-je§ > _loc6_)
            {
               _loc6_ = _loc9_.height + §_-je§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc7_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-g7§(param1:Array, param2:BitmapData) : Array
      {
         var _loc7_:§_-XM§ = null;
         var _loc8_:BitmapData = null;
         var _loc9_:§_-1L§ = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§_-hc§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         while(param1.length > 0)
         {
            _loc8_ = (_loc7_ = param1[0]).bitmapData;
            if(_loc3_ + _loc8_.width + §_-je§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc8_.height + §_-je§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc8_,_loc8_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc9_ = new §_-1L§()).offset = new Point(_loc3_,_loc4_);
            _loc9_.§_-ty§ = _loc7_;
            _loc6_.push(_loc9_);
            _loc10_ = _loc7_.§_-dm§;
            _loc11_ = 0;
            while(_loc11_ < _loc10_)
            {
               (_loc12_ = _loc7_.§_-3R§(_loc11_)).§_-KL§ = null;
               _loc12_.§_-WP§.offset(_loc3_,_loc4_);
               _loc11_++;
            }
            _loc3_ += _loc8_.width + §_-je§;
            if(_loc8_.height + §_-je§ > _loc5_)
            {
               _loc5_ = _loc8_.height + §_-je§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-0G§() : Boolean
      {
         var _loc1_:§_-XM§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-1L§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§_-hc§ = null;
         if(!§_-yh§.§_-gS§)
         {
            return false;
         }
         if(this.§_-M1§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-OJ§)
         {
            if(_loc1_.§_-dm§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-FZ§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-g7§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-ka§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-ty§;
               _loc9_ = _loc1_.§_-dm§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-3R§(_loc10_);
                  this.§_-qs§(_loc11_,_loc6_,_loc4_);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-OJ§)
         {
            _loc1_.dispose();
         }
         this.§_-OJ§ = new Vector.<§_-XM§>();
         this.§_-M1§ = true;
         return true;
      }
      
      private function §_-qs§(param1:§_-hc§, param2:Texture, param3:BitmapData) : void
      {
         var _loc5_:Rectangle = null;
         var _loc6_:§_-s0§ = null;
         var _loc4_:§_-MV§;
         if(!(_loc4_ = this.§_-fT§[param1.mName]))
         {
            _loc5_ = param1.§_-WP§.clone();
            _loc6_ = new §_-s0§(param2,_loc5_,false);
            _loc4_ = new §_-MV§(_loc6_,param3,_loc5_,param1.§_-u1§,param1.§_-su§);
            this.§_-fT§[param1.mName] = _loc4_;
         }
      }
      
      public function §_-on§() : void
      {
         var bd:Object = null;
         for(bd in this.§_-1a§)
         {
            try
            {
               this.§_-1a§[bd].updateBaseTexture(bd as BitmapData);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §_-E4§(param1:String) : §_-MV§
      {
         return this.§_-fT§[param1];
      }
      
      public function §_-ka§(param1:BitmapData) : Texture
      {
         var _loc2_:Texture = this.§_-1a§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         _loc2_ = Texture.§_-qj§(param1);
         this.§_-1a§[param1] = _loc2_;
         return _loc2_;
      }
      
      public function §_-qL§() : Texture
      {
         if(!this.§_-Ew§)
         {
            this.§_-Ew§ = this.§_-ka§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-Ew§;
      }
      
      public function §_-18§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-1a§)
         {
            if(this.§_-1a§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-1a§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-AJ§(param1:String) : BitmapData
      {
         var _loc2_:§_-MV§ = this.§_-E4§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-E4§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-E4§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
