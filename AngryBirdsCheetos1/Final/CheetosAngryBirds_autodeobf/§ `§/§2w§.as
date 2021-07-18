package § `§
{
   import §@b§.§0!W§;
   import §@b§.§;%§;
   import §]!B§.§#!§;
   import §]!B§.Texture;
   import §`C§.§9!'§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §2w§ extends EventDispatcher
   {
      
      private static const §^`§:int = 2;
      
      private static const §%!;§:int = 2048;
      
      private static var §9o§:§2w§;
       
      
      private var §^!Z§:Dictionary;
      
      private var §%i§:Vector.<§;%§>;
      
      private var §;"§:Dictionary;
      
      private var §5!'§:Boolean;
      
      private var §;p§:String;
      
      private var §=C§:Texture;
      
      private var § !O§:int;
      
      private var §70§:int;
      
      public function §2w§(param1:String = null)
      {
         super();
         this.§%i§ = new Vector.<§;%§>();
         this.§^!Z§ = new Dictionary();
         this.§;"§ = new Dictionary();
         this.§;p§ = param1;
      }
      
      public static function get §%!O§() : §2w§
      {
         if(!§9o§)
         {
            §9o§ = new §2w§();
         }
         return §9o§;
      }
      
      public function get §[!G§() : int
      {
         return this.§ !O§;
      }
      
      public function get §4p§() : int
      {
         return this.§70§;
      }
      
      public function get id() : String
      {
         return this.§;p§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!=§ = null;
         var _loc2_:§;%§ = null;
         if(this.§^!Z§)
         {
            for each(_loc1_ in this.§^!Z§)
            {
               this.§'!Y§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§^!Z§ = null;
         }
         if(this.§%i§)
         {
            for each(_loc2_ in this.§%i§)
            {
               _loc2_.dispose();
            }
            this.§%i§ = null;
         }
         if(this.§;"§)
         {
            this.§;"§ = null;
         }
         if(this.§=C§)
         {
            this.§=C§.dispose();
            this.§=C§ = null;
         }
         this.§%i§ = new Vector.<§;%§>();
         this.§^!Z§ = new Dictionary();
         this.§;"§ = new Dictionary();
      }
      
      public function §7!<§(param1:§;%§) : void
      {
         if(this.§5!'§)
         {
            return;
         }
         if(this.§%i§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§%i§.push(param1);
      }
      
      private function §5!#§(param1:Array) : Rectangle
      {
         var _loc9_:§;%§ = null;
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
            if(_loc2_ + _loc10_.width + §^`§ >= §%!;§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §^`§ >= §%!;§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §^`§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §^`§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §^`§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §>;§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§;%§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§^R§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§0!W§ = null;
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
            if(_loc3_ + _loc9_.width + §^`§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §^`§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §^R§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§]L§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§]H§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§+e§(_loc12_)).§-!C§ = null;
               _loc13_.§,-§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §^`§;
            if(_loc9_.height + §^`§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §^`§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §+!^§() : Boolean
      {
         var _loc1_:§;%§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§^R§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§0!W§ = null;
         if(!§9!'§.§%C§())
         {
            return false;
         }
         if(this.§5!'§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§%i§)
         {
            if(_loc1_.§]H§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§5!#§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§>;§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§1u§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§]L§;
               _loc9_ = _loc1_.§]H§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§+e§(_loc10_);
                  this.§ B§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§%i§)
         {
            _loc1_.dispose();
         }
         this.§%i§ = new Vector.<§;%§>();
         this.§5!'§ = true;
         return true;
      }
      
      private function § B§(param1:§0!W§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§#!§ = null;
         var _loc5_:§6!=§;
         if(!(_loc5_ = this.§^!Z§[param1.mName]))
         {
            _loc6_ = param1.§,-§.clone();
            _loc7_ = new §#!§(param2,_loc6_,false);
            _loc5_ = new §6!=§(_loc7_,param3,_loc6_,param1.§?!Q§,param1.§+9§,param4);
            this.§^!Z§[param1.mName] = _loc5_;
         }
      }
      
      public function §6y§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§9!'§.§+!N§)
         {
            for(bd in this.§;"§)
            {
               try
               {
                  texture = this.§;"§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §4!,§(param1:String) : §6!=§
      {
         return this.§^!Z§[param1];
      }
      
      public function §1u§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§;"§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §9!'§.§9!L§(param1,param2);
         this.§;"§[param1] = _loc3_;
         this.§@u§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §@u§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§70§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§ !O§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §-!D§() : Texture
      {
         if(!this.§=C§)
         {
            this.§=C§ = this.§1u§(new BitmapData(40,40,false,16711935));
         }
         return this.§=C§;
      }
      
      public function §'!Y§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§;"§)
         {
            if(this.§;"§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§@u§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§;"§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §=W§(param1:String) : BitmapData
      {
         var _loc2_:§6!=§ = this.§4!,§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§4!,§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§4!,§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
