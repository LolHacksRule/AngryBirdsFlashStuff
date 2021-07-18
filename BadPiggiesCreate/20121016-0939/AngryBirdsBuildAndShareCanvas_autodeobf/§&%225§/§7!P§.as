package §&"5§
{
   import §,I§.§5i§;
   import §,I§.§7!c§;
   import §6p§.§?%§;
   import §7R§.§?P§;
   import §7R§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §7!P§ extends EventDispatcher
   {
      
      private static const §@"$§:int = 2;
      
      private static const §8J§:int = 2048;
      
      private static var §^!@§:§7!P§;
       
      
      private var §>!L§:Dictionary;
      
      private var §[,§:Vector.<§5i§>;
      
      private var §0!W§:Dictionary;
      
      private var §>!S§:Boolean;
      
      private var §"E§:String;
      
      private var §[!4§:Texture;
      
      private var §&"?§:int;
      
      private var §`!A§:int;
      
      public function §7!P§(param1:String = null)
      {
         super();
         this.§[,§ = new Vector.<§5i§>();
         this.§>!L§ = new Dictionary();
         this.§0!W§ = new Dictionary();
         this.§"E§ = param1;
      }
      
      public static function get §2=§() : §7!P§
      {
         if(!§^!@§)
         {
            §^!@§ = new §7!P§();
         }
         return §^!@§;
      }
      
      public function get §#!%§() : int
      {
         return this.§&"?§;
      }
      
      public function get §3!Q§() : int
      {
         return this.§`!A§;
      }
      
      public function get id() : String
      {
         return this.§"E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!L§ = null;
         var _loc2_:§5i§ = null;
         if(this.§>!L§)
         {
            for each(_loc1_ in this.§>!L§)
            {
               this.§^y§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§>!L§ = null;
         }
         if(this.§[,§)
         {
            for each(_loc2_ in this.§[,§)
            {
               _loc2_.dispose();
            }
            this.§[,§ = null;
         }
         if(this.§0!W§)
         {
            this.§0!W§ = null;
         }
         if(this.§[!4§)
         {
            this.§[!4§.dispose();
            this.§[!4§ = null;
         }
         this.§[,§ = new Vector.<§5i§>();
         this.§>!L§ = new Dictionary();
         this.§0!W§ = new Dictionary();
      }
      
      public function §@!@§(param1:§5i§) : void
      {
         if(this.§>!S§)
         {
            return;
         }
         if(this.§[,§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§[,§.push(param1);
      }
      
      private function §@!X§(param1:Array) : Rectangle
      {
         var _loc9_:§5i§ = null;
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
            if(_loc2_ + _loc10_.width + §@"$§ >= §8J§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §@"$§ >= §8J§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §@"$§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §@"$§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §@"$§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §[q§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§5i§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§0;§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§7!c§ = null;
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
            if(_loc3_ + _loc9_.width + §@"$§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §@"$§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §0;§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§0!=§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§6!]§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§["7§(_loc12_)).§9!U§ = null;
               _loc13_.§5l§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §@"$§;
            if(_loc9_.height + §@"$§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §@"$§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §;"#§() : Boolean
      {
         var _loc1_:§5i§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§0;§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§7!c§ = null;
         if(!§?%§.§]p§())
         {
            return false;
         }
         if(this.§>!S§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§[,§)
         {
            if(_loc1_.§6!]§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§@!X§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§[q§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§&#§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§0!=§;
               _loc9_ = _loc1_.§6!]§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§["7§(_loc10_);
                  this.§,!j§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§[,§)
         {
            _loc1_.dispose();
         }
         this.§[,§ = new Vector.<§5i§>();
         this.§>!S§ = true;
         return true;
      }
      
      private function §,!j§(param1:§7!c§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§?P§ = null;
         var _loc5_:§6!L§;
         if(!(_loc5_ = this.§>!L§[param1.mName]))
         {
            _loc6_ = param1.§5l§.clone();
            _loc7_ = new §?P§(param2,_loc6_,false);
            _loc5_ = new §6!L§(_loc7_,param3,_loc6_,param1.§>!v§,param1.§>!J§,param4);
            this.§>!L§[param1.mName] = _loc5_;
         }
      }
      
      public function §;!2§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§?%§.§ !O§)
         {
            for(bd in this.§0!W§)
            {
               try
               {
                  texture = this.§0!W§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §12§(param1:String) : §6!L§
      {
         return this.§>!L§[param1];
      }
      
      public function §&#§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§0!W§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §?%§.§1J§(param1,param2);
         this.§0!W§[param1] = _loc3_;
         this.§'!m§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §'!m§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§`!A§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§&"?§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §4!A§() : Texture
      {
         if(!this.§[!4§)
         {
            this.§[!4§ = this.§&#§(new BitmapData(40,40,false,16711935));
         }
         return this.§[!4§;
      }
      
      public function §^y§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§0!W§)
         {
            if(this.§0!W§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§'!m§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§0!W§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §"k§(param1:String) : BitmapData
      {
         var _loc2_:§6!L§ = this.§12§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§12§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§12§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
