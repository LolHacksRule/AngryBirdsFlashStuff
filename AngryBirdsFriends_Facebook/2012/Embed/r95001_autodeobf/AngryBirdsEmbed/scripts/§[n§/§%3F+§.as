package §[n§
{
   import §-z§.§%i§;
   import §-z§.§0w§;
   import §9!2§.§7N§;
   import §<-§.§<!,§;
   import §<-§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §?+§ extends EventDispatcher
   {
      
      private static const §3!9§:int = 2;
      
      private static const §&j§:int = 2048;
      
      private static var §4%§:§?+§;
       
      
      private var §9h§:Dictionary;
      
      private var §9C§:Vector.<§0w§>;
      
      private var §?h§:Dictionary;
      
      private var §-P§:Boolean;
      
      private var §4!8§:String;
      
      private var §#V§:Texture;
      
      private var §%G§:int;
      
      private var §3]§:int;
      
      public function §?+§(param1:String = null)
      {
         super();
         this.§9C§ = new Vector.<§0w§>();
         this.§9h§ = new Dictionary();
         this.§?h§ = new Dictionary();
         this.§4!8§ = param1;
      }
      
      public static function get §+S§() : §?+§
      {
         if(!§4%§)
         {
            §4%§ = new §?+§();
         }
         return §4%§;
      }
      
      public function get §-<§() : int
      {
         return this.§%G§;
      }
      
      public function get §#t§() : int
      {
         return this.§3]§;
      }
      
      public function get id() : String
      {
         return this.§4!8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#H§ = null;
         var _loc2_:§0w§ = null;
         if(this.§9h§)
         {
            for each(_loc1_ in this.§9h§)
            {
               this.§"p§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§9h§ = null;
         }
         if(this.§9C§)
         {
            for each(_loc2_ in this.§9C§)
            {
               _loc2_.dispose();
            }
            this.§9C§ = null;
         }
         if(this.§?h§)
         {
            this.§?h§ = null;
         }
         if(this.§#V§)
         {
            this.§#V§.dispose();
            this.§#V§ = null;
         }
         this.§9C§ = new Vector.<§0w§>();
         this.§9h§ = new Dictionary();
         this.§?h§ = new Dictionary();
      }
      
      public function §,J§(param1:§0w§) : void
      {
         if(this.§-P§)
         {
            return;
         }
         if(this.§9C§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§9C§.push(param1);
      }
      
      private function §-S§(param1:Array) : Rectangle
      {
         var _loc9_:§0w§ = null;
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
            if(_loc2_ + _loc10_.width + §3!9§ >= §&j§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §3!9§ >= §&j§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §3!9§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §3!9§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §3!9§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §+"§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§0w§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§!X§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§%i§ = null;
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
            if(_loc3_ + _loc9_.width + §3!9§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §3!9§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §!X§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§ null§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§'§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§,'§(_loc12_)).§#y§ = null;
               _loc13_.§,-§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §3!9§;
            if(_loc9_.height + §3!9§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §3!9§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §6M§() : Boolean
      {
         var _loc1_:§0w§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§!X§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§%i§ = null;
         if(!§7N§.§&Z§())
         {
            return false;
         }
         if(this.§-P§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§9C§)
         {
            if(_loc1_.§'§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§-S§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§+"§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§"M§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§ null§;
               _loc9_ = _loc1_.§'§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§,'§(_loc10_);
                  this.§'! §(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§9C§)
         {
            _loc1_.dispose();
         }
         this.§9C§ = new Vector.<§0w§>();
         this.§-P§ = true;
         return true;
      }
      
      private function §'! §(param1:§%i§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§<!,§ = null;
         var _loc5_:§#H§;
         if(!(_loc5_ = this.§9h§[param1.mName]))
         {
            _loc6_ = param1.§,-§.clone();
            _loc7_ = new §<!,§(param2,_loc6_,false);
            _loc5_ = new §#H§(_loc7_,param3,_loc6_,param1.§=C§,param1.§]0§,param4);
            this.§9h§[param1.mName] = _loc5_;
         }
      }
      
      public function §-C§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§7N§.§!!!§)
         {
            for(bd in this.§?h§)
            {
               try
               {
                  texture = this.§?h§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §&P§(param1:String) : §#H§
      {
         return this.§9h§[param1];
      }
      
      public function §"M§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§?h§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §7N§.§7!1§(param1,param2);
         this.§?h§[param1] = _loc3_;
         this.§<!=§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §<!=§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§3]§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§%G§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §>e§() : Texture
      {
         if(!this.§#V§)
         {
            this.§#V§ = this.§"M§(new BitmapData(40,40,false,16711935));
         }
         return this.§#V§;
      }
      
      public function §"p§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§?h§)
         {
            if(this.§?h§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§<!=§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§?h§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §,F§(param1:String) : BitmapData
      {
         var _loc2_:§#H§ = this.§&P§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§&P§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§&P§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
