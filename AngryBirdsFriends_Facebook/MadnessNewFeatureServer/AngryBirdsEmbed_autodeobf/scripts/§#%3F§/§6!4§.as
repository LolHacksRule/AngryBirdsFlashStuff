package §#?§
{
   import §,!,§.§2t§;
   import §2!!§.§4!+§;
   import §2!!§.§5f§;
   import §21§.Texture;
   import §21§.§each §;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §6!4§ extends EventDispatcher
   {
      
      private static const §-!;§:int = 2;
      
      private static const §9!<§:int = 2048;
      
      private static var §!U§:§6!4§;
       
      
      private var §4Z§:Dictionary;
      
      private var §`<§:Vector.<§4!+§>;
      
      private var § I§:Dictionary;
      
      private var §0c§:Boolean;
      
      private var §<H§:String;
      
      private var §-!'§:Texture;
      
      private var §>I§:int;
      
      private var §1`§:int;
      
      public function §6!4§(param1:String = null)
      {
         super();
         this.§`<§ = new Vector.<§4!+§>();
         this.§4Z§ = new Dictionary();
         this.§ I§ = new Dictionary();
         this.§<H§ = param1;
      }
      
      public static function get §;R§() : §6!4§
      {
         if(!§!U§)
         {
            §!U§ = new §6!4§();
         }
         return §!U§;
      }
      
      public function get §!-§() : int
      {
         return this.§>I§;
      }
      
      public function get §7J§() : int
      {
         return this.§1`§;
      }
      
      public function get id() : String
      {
         return this.§<H§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^@§ = null;
         var _loc2_:§4!+§ = null;
         if(this.§4Z§)
         {
            for each(_loc1_ in this.§4Z§)
            {
               this.§;6§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§4Z§ = null;
         }
         if(this.§`<§)
         {
            for each(_loc2_ in this.§`<§)
            {
               _loc2_.dispose();
            }
            this.§`<§ = null;
         }
         if(this.§ I§)
         {
            this.§ I§ = null;
         }
         if(this.§-!'§)
         {
            this.§-!'§.dispose();
            this.§-!'§ = null;
         }
         this.§`<§ = new Vector.<§4!+§>();
         this.§4Z§ = new Dictionary();
         this.§ I§ = new Dictionary();
      }
      
      public function §<+§(param1:§4!+§) : void
      {
         if(this.§0c§)
         {
            return;
         }
         if(this.§`<§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§`<§.push(param1);
      }
      
      private function §41§(param1:Array) : Rectangle
      {
         var _loc9_:§4!+§ = null;
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
            if(_loc2_ + _loc10_.width + §-!;§ >= §9!<§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §-!;§ >= §9!<§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §-!;§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §-!;§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §-!;§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §+S§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§4!+§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§#[§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§5f§ = null;
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
            if(_loc3_ + _loc9_.width + §-!;§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §-!;§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §#[§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§8!L§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§+v§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§5g§(_loc12_)).§ !I§ = null;
               _loc13_.§[-§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §-!;§;
            if(_loc9_.height + §-!;§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §-!;§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §use§() : Boolean
      {
         var _loc1_:§4!+§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§#[§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§5f§ = null;
         if(!§2t§.§[!K§())
         {
            return false;
         }
         if(this.§0c§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§`<§)
         {
            if(_loc1_.§+v§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§41§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§+S§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§1!+§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§8!L§;
               _loc9_ = _loc1_.§+v§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§5g§(_loc10_);
                  this.§>!6§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§`<§)
         {
            _loc1_.dispose();
         }
         this.§`<§ = new Vector.<§4!+§>();
         this.§0c§ = true;
         return true;
      }
      
      private function §>!6§(param1:§5f§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§each § = null;
         var _loc5_:§^@§;
         if(!(_loc5_ = this.§4Z§[param1.mName]))
         {
            _loc6_ = param1.§[-§.clone();
            _loc7_ = new §each §(param2,_loc6_,false);
            _loc5_ = new §^@§(_loc7_,param3,_loc6_,param1.§@3§,param1.§1!C§,param4);
            this.§4Z§[param1.mName] = _loc5_;
         }
      }
      
      public function §+O§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§2t§.§5S§)
         {
            for(bd in this.§ I§)
            {
               try
               {
                  texture = this.§ I§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §>]§(param1:String) : §^@§
      {
         return this.§4Z§[param1];
      }
      
      public function §1!+§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§ I§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §2t§.§#g§(param1,param2);
         this.§ I§[param1] = _loc3_;
         this.§0!,§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §0!,§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§1`§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§>I§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §9U§() : Texture
      {
         if(!this.§-!'§)
         {
            this.§-!'§ = this.§1!+§(new BitmapData(40,40,false,16711935));
         }
         return this.§-!'§;
      }
      
      public function §;6§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§ I§)
         {
            if(this.§ I§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§0!,§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§ I§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §'!;§(param1:String) : BitmapData
      {
         var _loc2_:§^@§ = this.§>]§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§>]§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§>]§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
