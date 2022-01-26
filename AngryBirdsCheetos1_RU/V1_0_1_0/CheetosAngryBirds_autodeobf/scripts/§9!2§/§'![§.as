package §9!2§
{
   import §"4§.§<h§;
   import §7k§.§ M§;
   import §7k§.§5O§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import §switch§.§&_§;
   import §switch§.Texture;
   
   public class §'![§ extends EventDispatcher
   {
      
      private static const §4B§:int = 2;
      
      private static const §7!=§:int = 2048;
      
      private static var §,I§:§'![§;
       
      
      private var §^!K§:Dictionary;
      
      private var §8z§:Vector.<§ M§>;
      
      private var §5!U§:Dictionary;
      
      private var §9t§:Boolean;
      
      private var §`w§:String;
      
      private var §?!R§:Texture;
      
      private var §8I§:int;
      
      private var §@f§:int;
      
      public function §'![§(param1:String = null)
      {
         super();
         this.§8z§ = new Vector.<§ M§>();
         this.§^!K§ = new Dictionary();
         this.§5!U§ = new Dictionary();
         this.§`w§ = param1;
      }
      
      public static function get §0E§() : §'![§
      {
         if(!§,I§)
         {
            §,I§ = new §'![§();
         }
         return §,I§;
      }
      
      public function get §`!%§() : int
      {
         return this.§8I§;
      }
      
      public function get §#<§() : int
      {
         return this.§@f§;
      }
      
      public function get id() : String
      {
         return this.§`w§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<j§ = null;
         var _loc2_:§ M§ = null;
         if(this.§^!K§)
         {
            for each(_loc1_ in this.§^!K§)
            {
               this.§%!P§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§^!K§ = null;
         }
         if(this.§8z§)
         {
            for each(_loc2_ in this.§8z§)
            {
               _loc2_.dispose();
            }
            this.§8z§ = null;
         }
         if(this.§5!U§)
         {
            this.§5!U§ = null;
         }
         if(this.§?!R§)
         {
            this.§?!R§.dispose();
            this.§?!R§ = null;
         }
         this.§8z§ = new Vector.<§ M§>();
         this.§^!K§ = new Dictionary();
         this.§5!U§ = new Dictionary();
      }
      
      public function §?n§(param1:§ M§) : void
      {
         if(this.§9t§)
         {
            return;
         }
         if(this.§8z§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§8z§.push(param1);
      }
      
      private function §]!3§(param1:Array) : Rectangle
      {
         var _loc9_:§ M§ = null;
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
            if(_loc2_ + _loc10_.width + §4B§ >= §7!=§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §4B§ >= §7!=§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §4B§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §4B§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §4B§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §<!X§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§ M§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§#8§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§5O§ = null;
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
            if(_loc3_ + _loc9_.width + §4B§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §4B§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §#8§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§,9§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§!!+§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§%!5§(_loc12_)).§3]§ = null;
               _loc13_.§0!`§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §4B§;
            if(_loc9_.height + §4B§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §4B§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §-!_§() : Boolean
      {
         var _loc1_:§ M§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§#8§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§5O§ = null;
         if(!§<h§.§1[§())
         {
            return false;
         }
         if(this.§9t§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§8z§)
         {
            if(_loc1_.§!!+§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§]!3§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§<!X§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§@!=§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§,9§;
               _loc9_ = _loc1_.§!!+§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§%!5§(_loc10_);
                  this.§1!U§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§8z§)
         {
            _loc1_.dispose();
         }
         this.§8z§ = new Vector.<§ M§>();
         this.§9t§ = true;
         return true;
      }
      
      private function §1!U§(param1:§5O§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§&_§ = null;
         var _loc5_:§<j§;
         if(!(_loc5_ = this.§^!K§[param1.mName]))
         {
            _loc6_ = param1.§0!`§.clone();
            _loc7_ = new §&_§(param2,_loc6_,false);
            _loc5_ = new §<j§(_loc7_,param3,_loc6_,param1.§4!M§,param1.§;H§,param4);
            this.§^!K§[param1.mName] = _loc5_;
         }
      }
      
      public function §<!F§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§<h§.§+S§)
         {
            for(bd in this.§5!U§)
            {
               try
               {
                  texture = this.§5!U§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §&'§(param1:String) : §<j§
      {
         return this.§^!K§[param1];
      }
      
      public function §@!=§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§5!U§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §<h§.§<!'§(param1,param2);
         this.§5!U§[param1] = _loc3_;
         this.§#!^§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §#!^§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§@f§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§8I§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §1!!§() : Texture
      {
         if(!this.§?!R§)
         {
            this.§?!R§ = this.§@!=§(new BitmapData(40,40,false,16711935));
         }
         return this.§?!R§;
      }
      
      public function §%!P§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§5!U§)
         {
            if(this.§5!U§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§#!^§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§5!U§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §#^§(param1:String) : BitmapData
      {
         var _loc2_:§<j§ = this.§&'§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§&'§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§&'§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
