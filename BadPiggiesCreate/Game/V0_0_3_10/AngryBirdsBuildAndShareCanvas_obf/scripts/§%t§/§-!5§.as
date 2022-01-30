package §%t§
{
   import §+!d§.§&"1§;
   import §+!d§.§]!c§;
   import §4!S§.§4!5§;
   import §4!S§.Texture;
   import §5!5§.§^e§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §-!5§ extends EventDispatcher
   {
      
      private static const §,! §:int = 2;
      
      private static const §1!&§:int = 2048;
      
      private static var §]2§:§-!5§;
       
      
      private var §,m§:Dictionary;
      
      private var §<"1§:Vector.<§]!c§>;
      
      private var §=a§:Dictionary;
      
      private var §+!L§:Boolean;
      
      private var §"!m§:String;
      
      private var §+9§:Texture;
      
      private var §'s§:int;
      
      private var §4!T§:int;
      
      public function §-!5§(param1:String = null)
      {
         super();
         this.§<"1§ = new Vector.<§]!c§>();
         this.§,m§ = new Dictionary();
         this.§=a§ = new Dictionary();
         this.§"!m§ = param1;
      }
      
      public static function get §,l§() : §-!5§
      {
         if(!§]2§)
         {
            §]2§ = new §-!5§();
         }
         return §]2§;
      }
      
      public function get §]o§() : int
      {
         return this.§'s§;
      }
      
      public function get §6Z§() : int
      {
         return this.§4!T§;
      }
      
      public function get id() : String
      {
         return this.§"!m§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#B§ = null;
         var _loc2_:§]!c§ = null;
         if(this.§,m§)
         {
            for each(_loc1_ in this.§,m§)
            {
               this.§#!I§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§,m§ = null;
         }
         if(this.§<"1§)
         {
            for each(_loc2_ in this.§<"1§)
            {
               _loc2_.dispose();
            }
            this.§<"1§ = null;
         }
         if(this.§=a§)
         {
            this.§=a§ = null;
         }
         if(this.§+9§)
         {
            this.§+9§.dispose();
            this.§+9§ = null;
         }
         this.§<"1§ = new Vector.<§]!c§>();
         this.§,m§ = new Dictionary();
         this.§=a§ = new Dictionary();
      }
      
      public function §!!M§(param1:§]!c§) : void
      {
         if(this.§+!L§)
         {
            return;
         }
         if(this.§<"1§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§<"1§.push(param1);
      }
      
      private function §[!r§(param1:Array) : Rectangle
      {
         var _loc9_:§]!c§ = null;
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
            if(_loc2_ + _loc10_.width + §,! § >= §1!&§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §,! § >= §1!&§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §,! §;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §,! § > _loc6_)
            {
               _loc6_ = _loc10_.height + §,! §;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §;t§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§]!c§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§-"6§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§&"1§ = null;
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
            if(_loc3_ + _loc9_.width + §,! § > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §,! § > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §-"6§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§[!p§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§^!!§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§3"%§(_loc12_)).§-"!§ = null;
               _loc13_.§!!O§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §,! §;
            if(_loc9_.height + §,! § > _loc5_)
            {
               _loc5_ = _loc9_.height + §,! §;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §4!N§() : Boolean
      {
         var _loc1_:§]!c§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§-"6§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§&"1§ = null;
         if(!§^e§.§5!#§())
         {
            return false;
         }
         if(this.§+!L§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§<"1§)
         {
            if(_loc1_.§^!!§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§[!r§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§;t§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§extends§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§[!p§;
               _loc9_ = _loc1_.§^!!§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§3"%§(_loc10_);
                  this.§+!o§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§<"1§)
         {
            _loc1_.dispose();
         }
         this.§<"1§ = new Vector.<§]!c§>();
         this.§+!L§ = true;
         return true;
      }
      
      private function §+!o§(param1:§&"1§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§4!5§ = null;
         var _loc5_:§#B§;
         if(!(_loc5_ = this.§,m§[param1.mName]))
         {
            _loc6_ = param1.§!!O§.clone();
            _loc7_ = new §4!5§(param2,_loc6_,false);
            _loc5_ = new §#B§(_loc7_,param3,_loc6_,param1.§;"'§,param1.§-e§,param4);
            this.§,m§[param1.mName] = _loc5_;
         }
      }
      
      public function §]!i§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§^e§.§%d§)
         {
            for(bd in this.§=a§)
            {
               try
               {
                  texture = this.§=a§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function § !Z§(param1:String) : §#B§
      {
         return this.§,m§[param1];
      }
      
      public function §extends§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§=a§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §^e§.§<?§(param1,param2);
         this.§=a§[param1] = _loc3_;
         this.§0"#§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §0"#§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§4!T§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§'s§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §`!E§() : Texture
      {
         if(!this.§+9§)
         {
            this.§+9§ = this.§extends§(new BitmapData(40,40,false,16711935));
         }
         return this.§+9§;
      }
      
      public function §#!I§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§=a§)
         {
            if(this.§=a§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§0"#§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§=a§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §2s§(param1:String) : BitmapData
      {
         var _loc2_:§#B§ = this.§ !Z§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§ !Z§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§ !Z§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
