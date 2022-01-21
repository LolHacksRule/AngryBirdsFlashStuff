package §7! §
{
   import §&!9§.§6q§;
   import §&!9§.Texture;
   import §1f§.§ !%§;
   import §1f§.;
   import §each §.§'!3§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §4n§ extends EventDispatcher
   {
      
      private static const §+b§:int = 2;
      
      private static const §9>§:int = 2048;
      
      private static var §;!S§:§4n§;
       
      
      private var § else§:Dictionary;
      
      private var §,W§:Vector.<§ !%§>;
      
      private var §&!3§:Dictionary;
      
      private var §"@§:Boolean;
      
      private var §7#§:String;
      
      private var §4m§:Texture;
      
      private var §1j§:int;
      
      private var §3!n§:int;
      
      public function §4n§(param1:String = null)
      {
         super();
         this.§,W§ = new Vector.<§ !%§>();
         this.§ else§ = new Dictionary();
         this.§&!3§ = new Dictionary();
         this.§7#§ = param1;
      }
      
      public static function get §9$§() : §4n§
      {
         if(!§;!S§)
         {
            §;!S§ = new §4n§();
         }
         return §;!S§;
      }
      
      public function get §<!N§() : int
      {
         return this.§1j§;
      }
      
      public function get §>!E§() : int
      {
         return this.§3!n§;
      }
      
      public function get id() : String
      {
         return this.§7#§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%!h§ = null;
         var _loc2_:§ !%§ = null;
         if(this.§ else§)
         {
            for each(_loc1_ in this.§ else§)
            {
               this.§=!#§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§ else§ = null;
         }
         if(this.§,W§)
         {
            for each(_loc2_ in this.§,W§)
            {
               _loc2_.dispose();
            }
            this.§,W§ = null;
         }
         if(this.§&!3§)
         {
            this.§&!3§ = null;
         }
         if(this.§4m§)
         {
            this.§4m§.dispose();
            this.§4m§ = null;
         }
         this.§,W§ = new Vector.<§ !%§>();
         this.§ else§ = new Dictionary();
         this.§&!3§ = new Dictionary();
      }
      
      public function §@V§(param1:§ !%§) : void
      {
         if(this.§"@§)
         {
            return;
         }
         if(this.§,W§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§,W§.push(param1);
      }
      
      private function §]!K§(param1:Array) : Rectangle
      {
         var _loc9_:§ !%§ = null;
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
            if(_loc2_ + _loc10_.width + §+b§ >= §9>§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §+b§ >= §9>§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §+b§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §+b§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §+b§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §2!Z§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§ !%§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§&!A§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§#7§ = null;
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
            if(_loc3_ + _loc9_.width + §+b§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §+b§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §&!A§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§<4§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§7§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§0!`§(_loc12_)).§6b§ = null;
               _loc13_.§+a§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §+b§;
            if(_loc9_.height + §+b§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §+b§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §<!V§() : Boolean
      {
         var _loc1_:§ !%§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§&!A§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§#7§ = null;
         if(!§'!3§.§?!Z§())
         {
            return false;
         }
         if(this.§"@§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§,W§)
         {
            if(_loc1_.§7§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§]!K§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§2!Z§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§<4§;
               _loc9_ = _loc1_.§7§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§0!`§(_loc10_);
                  this.§+'§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§,W§)
         {
            _loc1_.dispose();
         }
         this.§,W§ = new Vector.<§ !%§>();
         this.§"@§ = true;
         return true;
      }
      
      private function §+'§(param1:§#7§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§6q§ = null;
         var _loc5_:§%!h§;
         if(!(_loc5_ = this.§ else§[param1.mName]))
         {
            _loc6_ = param1.§+a§.clone();
            _loc7_ = new §6q§(param2,_loc6_,false);
            _loc5_ = new §%!h§(_loc7_,param3,_loc6_,param1.§@;§,param1.§2u§,param4);
            this.§ else§[param1.mName] = _loc5_;
         }
      }
      
      public function §8'§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§'!3§.§'!I§)
         {
            for(bd in this.§&!3§)
            {
               try
               {
                  texture = this.§&!3§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §-f§(param1:String) : §%!h§
      {
         return this.§ else§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§&!3§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §'!3§.§+!<§(param1,param2);
         this.§&!3§[param1] = _loc3_;
         this.§=A§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §=A§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§3!n§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§1j§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §9Q§() : Texture
      {
         if(!this.§4m§)
         {
            this.§4m§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§4m§;
      }
      
      public function §=!#§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§&!3§)
         {
            if(this.§&!3§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§=A§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§&!3§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §"!%§(param1:String) : BitmapData
      {
         var _loc2_:§%!h§ = this.§-f§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§-f§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§-f§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
