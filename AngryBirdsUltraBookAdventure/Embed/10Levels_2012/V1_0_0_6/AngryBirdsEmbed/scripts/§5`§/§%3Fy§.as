package §5`§
{
   import §7!=§.§;"§;
   import §7!=§.Texture;
   import §<=§.;
   import §<=§.§66§;
   import §catch§.§4@§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §?y§ extends EventDispatcher
   {
      
      private static const §;7§:int = 2;
      
      private static const §4'§:int = 2048;
      
      private static var §@!E§:§?y§;
       
      
      private var §8I§:Dictionary;
      
      private var §<&§:Vector.<§66§>;
      
      private var §"#§:Dictionary;
      
      private var §<?§:Boolean;
      
      private var §]v§:String;
      
      private var §+O§:Texture;
      
      private var §6!E§:int;
      
      private var §68§:int;
      
      public function §?y§(param1:String = null)
      {
         super();
         this.§<&§ = new Vector.<§66§>();
         this.§8I§ = new Dictionary();
         this.§"#§ = new Dictionary();
         this.§]v§ = param1;
      }
      
      public static function get §@j§() : §?y§
      {
         if(!§@!E§)
         {
            §@!E§ = new §?y§();
         }
         return §@!E§;
      }
      
      public function get §=N§() : int
      {
         return this.§6!E§;
      }
      
      public function get §?^§() : int
      {
         return this.§68§;
      }
      
      public function get id() : String
      {
         return this.§]v§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%F§ = null;
         var _loc2_:§66§ = null;
         if(this.§8I§)
         {
            for each(_loc1_ in this.§8I§)
            {
               this.§[^§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§8I§ = null;
         }
         if(this.§<&§)
         {
            for each(_loc2_ in this.§<&§)
            {
               _loc2_.dispose();
            }
            this.§<&§ = null;
         }
         if(this.§"#§)
         {
            this.§"#§ = null;
         }
         if(this.§+O§)
         {
            this.§+O§.dispose();
            this.§+O§ = null;
         }
         this.§<&§ = new Vector.<§66§>();
         this.§8I§ = new Dictionary();
         this.§"#§ = new Dictionary();
      }
      
      public function §6v§(param1:§66§) : void
      {
         if(this.§<?§)
         {
            return;
         }
         if(this.§<&§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§<&§.push(param1);
      }
      
      private function §!P§(param1:Array) : Rectangle
      {
         var _loc9_:§66§ = null;
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
            if(_loc2_ + _loc10_.width + §;7§ >= §4'§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §;7§ >= §4'§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §;7§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §;7§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §;7§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §&s§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§66§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§<c§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§#8§ = null;
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
            if(_loc3_ + _loc9_.width + §;7§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §;7§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §<c§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§&!0§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§<q§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§1@§(_loc12_)).§!! § = null;
               _loc13_.§%!<§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §;7§;
            if(_loc9_.height + §;7§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §;7§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §4+§() : Boolean
      {
         var _loc1_:§66§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§<c§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§#8§ = null;
         if(!§4@§.§!!7§())
         {
            return false;
         }
         if(this.§<?§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§<&§)
         {
            if(_loc1_.§<q§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§!P§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§&s§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§-§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§&!0§;
               _loc9_ = _loc1_.§<q§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§1@§(_loc10_);
                  this.§;!D§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§<&§)
         {
            _loc1_.dispose();
         }
         this.§<&§ = new Vector.<§66§>();
         this.§<?§ = true;
         return true;
      }
      
      private function §;!D§(param1:§#8§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§;"§ = null;
         var _loc5_:§%F§;
         if(!(_loc5_ = this.§8I§[param1.mName]))
         {
            _loc6_ = param1.§%!<§.clone();
            _loc7_ = new §;"§(param2,_loc6_,false);
            _loc5_ = new §%F§(_loc7_,param3,_loc6_,param1.§3!4§,param1.§;!0§,param4);
            this.§8I§[param1.mName] = _loc5_;
         }
      }
      
      public function §0<§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§4@§.§#!1§)
         {
            for(bd in this.§"#§)
            {
               try
               {
                  texture = this.§"#§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §9,§(param1:String) : §%F§
      {
         return this.§8I§[param1];
      }
      
      public function §-§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§"#§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §4@§.§=I§(param1,param2);
         this.§"#§[param1] = _loc3_;
         this.§`'§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §`'§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§68§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§6!E§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §9!?§() : Texture
      {
         if(!this.§+O§)
         {
            this.§+O§ = this.§-§(new BitmapData(40,40,false,16711935));
         }
         return this.§+O§;
      }
      
      public function §[^§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§"#§)
         {
            if(this.§"#§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§`'§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§"#§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §5!C§(param1:String) : BitmapData
      {
         var _loc2_:§%F§ = this.§9,§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§9,§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§9,§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
