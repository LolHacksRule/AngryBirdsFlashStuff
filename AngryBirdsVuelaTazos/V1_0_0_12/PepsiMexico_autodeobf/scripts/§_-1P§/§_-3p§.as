package §_-1P§
{
   import §_-S4§.Texture;
   import §_-S4§.§_-JQ§;
   import §_-mK§.§_-4C§;
   import §_-mK§.§implements§;
   import §_-v3§.§_-G3§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §_-3p§ extends EventDispatcher
   {
      
      private static const §_-Pb§:int = 2;
      
      private static const §_-xW§:int = 2048;
      
      private static var §_-8n§:§_-3p§;
       
      
      private var §_-ni§:Dictionary;
      
      private var §_-DF§:Vector.<§_-4C§>;
      
      private var §_-oE§:Dictionary;
      
      private var §_-ww§:Boolean;
      
      private var §_-gR§:Texture;
      
      public function §_-3p§()
      {
         super();
         if(§_-8n§)
         {
            throw new Error("Only one instance of TextureManager should exist.");
         }
         this.§_-DF§ = new Vector.<§_-4C§>();
         this.§_-ni§ = new Dictionary();
         this.§_-oE§ = new Dictionary();
         §_-8n§ = this;
      }
      
      public static function get §_-WK§() : §_-3p§
      {
         if(§_-8n§)
         {
         }
         return §_-8n§;
      }
      
      public function §_-lr§(param1:§_-4C§) : void
      {
         if(this.§_-ww§)
         {
            return;
         }
         if(this.§_-DF§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§_-DF§.push(param1);
      }
      
      private function §_-Fw§(param1:Array) : Rectangle
      {
         var _loc8_:§_-4C§ = null;
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
            if(_loc2_ + _loc9_.width + §_-Pb§ >= §_-xW§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc9_.height + §_-Pb§ >= §_-xW§)
            {
               break;
            }
            _loc2_ += _loc9_.width + §_-Pb§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc9_.height + §_-Pb§ > _loc6_)
            {
               _loc6_ = _loc9_.height + §_-Pb§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc7_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §_-Pk§(param1:Array, param2:BitmapData) : Array
      {
         var _loc7_:§_-4C§ = null;
         var _loc8_:BitmapData = null;
         var _loc9_:§_-6-§ = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:§implements§ = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Array = [];
         while(param1.length > 0)
         {
            _loc8_ = (_loc7_ = param1[0]).bitmapData;
            if(_loc3_ + _loc8_.width + §_-Pb§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc8_.height + §_-Pb§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc8_,_loc8_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc9_ = new §_-6-§()).offset = new Point(_loc3_,_loc4_);
            _loc9_.§_-v§ = _loc7_;
            _loc6_.push(_loc9_);
            _loc10_ = _loc7_.§_-y§;
            _loc11_ = 0;
            while(_loc11_ < _loc10_)
            {
               (_loc12_ = _loc7_.§_-rZ§(_loc11_)).§_-6q§ = null;
               _loc12_.§_-K§.offset(_loc3_,_loc4_);
               _loc11_++;
            }
            _loc3_ += _loc8_.width + §_-Pb§;
            if(_loc8_.height + §_-Pb§ > _loc5_)
            {
               _loc5_ = _loc8_.height + §_-Pb§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §_-RQ§() : Boolean
      {
         var _loc1_:§_-4C§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§_-6-§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§implements§ = null;
         if(!§_-G3§.§_-FH§)
         {
            return false;
         }
         if(this.§_-ww§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§_-DF§)
         {
            if(_loc1_.§_-y§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§_-Fw§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§_-Pk§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§_-8R§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§_-v§;
               _loc9_ = _loc1_.§_-y§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§_-rZ§(_loc10_);
                  this.§_-Ut§(_loc11_,_loc6_,_loc4_);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§_-DF§)
         {
            _loc1_.dispose();
         }
         this.§_-DF§ = new Vector.<§_-4C§>();
         this.§_-ww§ = true;
         return true;
      }
      
      private function §_-Ut§(param1:§implements§, param2:Texture, param3:BitmapData) : void
      {
         var _loc5_:Rectangle = null;
         var _loc6_:§_-JQ§ = null;
         var _loc4_:§_-XN§;
         if(!(_loc4_ = this.§_-ni§[param1.mName]))
         {
            _loc5_ = param1.§_-K§.clone();
            _loc6_ = new §_-JQ§(param2,_loc5_,false);
            _loc4_ = new §_-XN§(_loc6_,param3,_loc5_,param1.§_-Ho§,param1.§_-rf§);
            this.§_-ni§[param1.mName] = _loc4_;
         }
      }
      
      public function §_-Pt§() : void
      {
         var bd:Object = null;
         for(bd in this.§_-oE§)
         {
            try
            {
               this.§_-oE§[bd].updateBaseTexture(bd as BitmapData);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §_-wz§(param1:String) : §_-XN§
      {
         return this.§_-ni§[param1];
      }
      
      public function §_-8R§(param1:BitmapData) : Texture
      {
         var _loc2_:Texture = this.§_-oE§[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         _loc2_ = Texture.§_-qw§(param1);
         this.§_-oE§[param1] = _loc2_;
         return _loc2_;
      }
      
      public function §_-WG§() : Texture
      {
         if(!this.§_-gR§)
         {
            this.§_-gR§ = this.§_-8R§(new BitmapData(40,40,false,16711935));
         }
         return this.§_-gR§;
      }
      
      public function §_-8o§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§_-oE§)
         {
            if(this.§_-oE§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§_-oE§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §_-e7§(param1:String) : BitmapData
      {
         var _loc2_:§_-XN§ = this.§_-wz§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-wz§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§_-wz§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
