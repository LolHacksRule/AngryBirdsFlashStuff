package §=U§
{
   import §0!-§.§5!<§;
   import §0!-§.Texture;
   import §7U§.§@!4§;
   import §7U§.§`L§;
   import §@!X§.§7j§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §3p§ extends EventDispatcher
   {
      
      private static const §=!#§:int = 2;
      
      private static const §]c§:int = 2048;
      
      private static var §+u§:§3p§;
       
      
      private var §;G§:Dictionary;
      
      private var §9!E§:Vector.<§`L§>;
      
      private var §2!+§:Dictionary;
      
      private var §2y§:Boolean;
      
      private var §%I§:String;
      
      private var §5!0§:Texture;
      
      private var §1!$§:int;
      
      private var §;c§:int;
      
      public function §3p§(param1:String = null)
      {
         super();
         this.§9!E§ = new Vector.<§`L§>();
         this.§;G§ = new Dictionary();
         this.§2!+§ = new Dictionary();
         this.§%I§ = param1;
      }
      
      public static function get §`!t§() : §3p§
      {
         if(!§+u§)
         {
            §+u§ = new §3p§();
         }
         return §+u§;
      }
      
      public function get §-O§() : int
      {
         return this.§1!$§;
      }
      
      public function get §]!g§() : int
      {
         return this.§;c§;
      }
      
      public function get id() : String
      {
         return this.§%I§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>?§ = null;
         var _loc2_:§`L§ = null;
         if(this.§;G§)
         {
            for each(_loc1_ in this.§;G§)
            {
               this.§[!]§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§;G§ = null;
         }
         if(this.§9!E§)
         {
            for each(_loc2_ in this.§9!E§)
            {
               _loc2_.dispose();
            }
            this.§9!E§ = null;
         }
         if(this.§2!+§)
         {
            this.§2!+§ = null;
         }
         if(this.§5!0§)
         {
            this.§5!0§.dispose();
            this.§5!0§ = null;
         }
         this.§9!E§ = new Vector.<§`L§>();
         this.§;G§ = new Dictionary();
         this.§2!+§ = new Dictionary();
      }
      
      public function §+t§(param1:§`L§) : void
      {
         if(this.§2y§)
         {
            return;
         }
         if(this.§9!E§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§9!E§.push(param1);
      }
      
      private function §?_§(param1:Array) : Rectangle
      {
         var _loc9_:§`L§ = null;
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
            if(_loc2_ + _loc10_.width + §=!#§ >= §]c§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §=!#§ >= §]c§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §=!#§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §=!#§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §=!#§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §9%§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§`L§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§%j§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§@!4§ = null;
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
            if(_loc3_ + _loc9_.width + §=!#§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §=!#§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §%j§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§8!m§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§]X§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§#Q§(_loc12_)).§5G§ = null;
               _loc13_.§>Q§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §=!#§;
            if(_loc9_.height + §=!#§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §=!#§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §[!>§() : Boolean
      {
         var _loc1_:§`L§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§%j§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§@!4§ = null;
         if(!§7j§.§!m§())
         {
            return false;
         }
         if(this.§2y§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§9!E§)
         {
            if(_loc1_.§]X§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§?_§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§9%§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§%!^§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§8!m§;
               _loc9_ = _loc1_.§]X§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§#Q§(_loc10_);
                  this.§;!I§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§9!E§)
         {
            _loc1_.dispose();
         }
         this.§9!E§ = new Vector.<§`L§>();
         this.§2y§ = true;
         return true;
      }
      
      private function §;!I§(param1:§@!4§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§5!<§ = null;
         var _loc5_:§>?§;
         if(!(_loc5_ = this.§;G§[param1.mName]))
         {
            _loc6_ = param1.§>Q§.clone();
            _loc7_ = new §5!<§(param2,_loc6_,false);
            _loc5_ = new §>?§(_loc7_,param3,_loc6_,param1.§-!V§,param1.§;!A§,param4);
            this.§;G§[param1.mName] = _loc5_;
         }
      }
      
      public function §&k§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§7j§.§>!Z§)
         {
            for(bd in this.§2!+§)
            {
               try
               {
                  texture = this.§2!+§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §8!@§(param1:String) : §>?§
      {
         return this.§;G§[param1];
      }
      
      public function §%!^§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§2!+§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §7j§.§[I§(param1,param2);
         this.§2!+§[param1] = _loc3_;
         this.§@e§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §@e§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§;c§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§1!$§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §8r§() : Texture
      {
         if(!this.§5!0§)
         {
            this.§5!0§ = this.§%!^§(new BitmapData(40,40,false,16711935));
         }
         return this.§5!0§;
      }
      
      public function §[!]§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§2!+§)
         {
            if(this.§2!+§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§@e§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§2!+§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §`E§(param1:String) : BitmapData
      {
         var _loc2_:§>?§ = this.§8!@§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§8!@§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§8!@§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
