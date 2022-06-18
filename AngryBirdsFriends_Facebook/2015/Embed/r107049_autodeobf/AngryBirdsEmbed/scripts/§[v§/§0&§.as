package §[v§
{
   import §1#§.§-!E§;
   import §1#§.Texture;
   import §7!§.§,L§;
   import §<1§.§ null§;
   import §<1§.§4!M§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §0&§ extends EventDispatcher
   {
      
      private static const §@E§:int = 2;
      
      private static const §5!7§:int = 2048;
      
      private static var §`g§:§0&§;
       
      
      private var §8N§:Dictionary;
      
      private var §<!9§:Vector.<§4!M§>;
      
      private var §[?§:Dictionary;
      
      private var §4!"§:Boolean;
      
      private var §5!-§:String;
      
      private var §#-§:Texture;
      
      private var §-!F§:int;
      
      private var §&T§:int;
      
      public function §0&§(param1:String = null)
      {
         super();
         this.§<!9§ = new Vector.<§4!M§>();
         this.§8N§ = new Dictionary();
         this.§[?§ = new Dictionary();
         this.§5!-§ = param1;
      }
      
      public static function get §5+§() : §0&§
      {
         if(!§`g§)
         {
            §`g§ = new §0&§();
         }
         return §`g§;
      }
      
      public function get §6!<§() : int
      {
         return this.§-!F§;
      }
      
      public function get §5j§() : int
      {
         return this.§&T§;
      }
      
      public function get id() : String
      {
         return this.§5!-§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'P§ = null;
         var _loc2_:§4!M§ = null;
         if(this.§8N§)
         {
            for each(_loc1_ in this.§8N§)
            {
               this.§=D§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§8N§ = null;
         }
         if(this.§<!9§)
         {
            for each(_loc2_ in this.§<!9§)
            {
               _loc2_.dispose();
            }
            this.§<!9§ = null;
         }
         if(this.§[?§)
         {
            this.§[?§ = null;
         }
         if(this.§#-§)
         {
            this.§#-§.dispose();
            this.§#-§ = null;
         }
         this.§<!9§ = new Vector.<§4!M§>();
         this.§8N§ = new Dictionary();
         this.§[?§ = new Dictionary();
      }
      
      public function §!J§(param1:§4!M§) : void
      {
         if(this.§4!"§)
         {
            return;
         }
         if(this.§<!9§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§<!9§.push(param1);
      }
      
      private function §5`§(param1:Array) : Rectangle
      {
         var _loc9_:§4!M§ = null;
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
            if(_loc2_ + _loc10_.width + §@E§ >= §5!7§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §@E§ >= §5!7§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §@E§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §@E§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §@E§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%-§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§4!M§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§2!9§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§ null§ = null;
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
            if(_loc3_ + _loc9_.width + §@E§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §@E§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §2!9§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§95§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§^I§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§>e§(_loc12_)).§4!F§ = null;
               _loc13_.§=l§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §@E§;
            if(_loc9_.height + §@E§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §@E§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §;! §() : Boolean
      {
         var _loc1_:§4!M§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§2!9§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§ null§ = null;
         if(!§,L§.§,"§())
         {
            return false;
         }
         if(this.§4!"§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§<!9§)
         {
            if(_loc1_.§^I§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§5`§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§%-§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§+! §(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§95§;
               _loc9_ = _loc1_.§^I§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§>e§(_loc10_);
                  this.§@h§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§<!9§)
         {
            _loc1_.dispose();
         }
         this.§<!9§ = new Vector.<§4!M§>();
         this.§4!"§ = true;
         return true;
      }
      
      private function §@h§(param1:§ null§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§-!E§ = null;
         var _loc5_:§'P§;
         if(!(_loc5_ = this.§8N§[param1.mName]))
         {
            _loc6_ = param1.§=l§.clone();
            _loc7_ = new §-!E§(param2,_loc6_,false);
            _loc5_ = new §'P§(_loc7_,param3,_loc6_,param1.§>!§,param1.§=y§,param4);
            this.§8N§[param1.mName] = _loc5_;
         }
      }
      
      public function §`r§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§,L§.§;!;§)
         {
            for(bd in this.§[?§)
            {
               try
               {
                  texture = this.§[?§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §4`§(param1:String) : §'P§
      {
         return this.§8N§[param1];
      }
      
      public function §+! §(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§[?§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §,L§.§`!@§(param1,param2);
         this.§[?§[param1] = _loc3_;
         this.§`I§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §`I§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§&T§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§-!F§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §&z§() : Texture
      {
         if(!this.§#-§)
         {
            this.§#-§ = this.§+! §(new BitmapData(40,40,false,16711935));
         }
         return this.§#-§;
      }
      
      public function §=D§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§[?§)
         {
            if(this.§[?§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§`I§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§[?§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §6!I§(param1:String) : BitmapData
      {
         var _loc2_:§'P§ = this.§4`§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§4`§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§4`§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
