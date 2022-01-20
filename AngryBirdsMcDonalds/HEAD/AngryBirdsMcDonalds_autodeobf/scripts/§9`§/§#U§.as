package §9`§
{
   import §%%§.§3P§;
   import §&7§.§ !k§;
   import §&7§.Texture;
   import §8]§.§@L§;
   import §8]§.§`!`§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §#U§ extends EventDispatcher
   {
      
      private static const §'L§:int = 2;
      
      private static const §-;§:int = 2048;
      
      private static var §%!1§:§#U§;
       
      
      private var §'Q§:Dictionary;
      
      private var §>F§:Vector.<§@L§>;
      
      private var §>9§:Dictionary;
      
      private var §"!U§:Boolean;
      
      private var §7^§:String;
      
      private var §]!b§:Texture;
      
      private var §!Q§:int;
      
      private var §#l§:int;
      
      public function §#U§(param1:String = null)
      {
         super();
         this.§>F§ = new Vector.<§@L§>();
         this.§'Q§ = new Dictionary();
         this.§>9§ = new Dictionary();
         this.§7^§ = param1;
      }
      
      public static function get §5!!§() : §#U§
      {
         if(!§%!1§)
         {
            §%!1§ = new §#U§();
         }
         return §%!1§;
      }
      
      public function get §'h§() : int
      {
         return this.§!Q§;
      }
      
      public function get §3`§() : int
      {
         return this.§#l§;
      }
      
      public function get id() : String
      {
         return this.§7^§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8!P§ = null;
         var _loc2_:§@L§ = null;
         if(this.§'Q§)
         {
            for each(_loc1_ in this.§'Q§)
            {
               this.§`q§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§'Q§ = null;
         }
         if(this.§>F§)
         {
            for each(_loc2_ in this.§>F§)
            {
               _loc2_.dispose();
            }
            this.§>F§ = null;
         }
         if(this.§>9§)
         {
            this.§>9§ = null;
         }
         if(this.§]!b§)
         {
            this.§]!b§.dispose();
            this.§]!b§ = null;
         }
         this.§>F§ = new Vector.<§@L§>();
         this.§'Q§ = new Dictionary();
         this.§>9§ = new Dictionary();
      }
      
      public function §7!2§(param1:§@L§) : void
      {
         if(this.§"!U§)
         {
            return;
         }
         if(this.§>F§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§>F§.push(param1);
      }
      
      private function §<c§(param1:Array) : Rectangle
      {
         var _loc9_:§@L§ = null;
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
            if(_loc2_ + _loc10_.width + §'L§ >= §-;§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §'L§ >= §-;§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §'L§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §'L§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §'L§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §<!&§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§@L§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§6q§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§`!`§ = null;
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
            if(_loc3_ + _loc9_.width + §'L§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §'L§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §6q§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§^D§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§,s§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§=!k§(_loc12_)).§?!;§ = null;
               _loc13_.§2!&§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §'L§;
            if(_loc9_.height + §'L§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §'L§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §;!K§() : Boolean
      {
         var _loc1_:§@L§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§6q§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§`!`§ = null;
         if(!§3P§.§'j§())
         {
            return false;
         }
         if(this.§"!U§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§>F§)
         {
            if(_loc1_.§,s§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§<c§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§<!&§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§^D§;
               _loc9_ = _loc1_.§,s§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§=!k§(_loc10_);
                  this.§"!m§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§>F§)
         {
            _loc1_.dispose();
         }
         this.§>F§ = new Vector.<§@L§>();
         this.§"!U§ = true;
         return true;
      }
      
      private function §"!m§(param1:§`!`§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§ !k§ = null;
         var _loc5_:§8!P§;
         if(!(_loc5_ = this.§'Q§[param1.mName]))
         {
            _loc6_ = param1.§2!&§.clone();
            _loc7_ = new § !k§(param2,_loc6_,false);
            _loc5_ = new §8!P§(_loc7_,param3,_loc6_,param1.§>s§,param1.§#!^§,param4);
            this.§'Q§[param1.mName] = _loc5_;
         }
      }
      
      public function §,k§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§3P§.§7+§)
         {
            for(bd in this.§>9§)
            {
               try
               {
                  texture = this.§>9§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §#P§(param1:String) : §8!P§
      {
         return this.§'Q§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§>9§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §3P§.§7!M§(param1,param2);
         this.§>9§[param1] = _loc3_;
         this.§[!1§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §[!1§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§#l§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§!Q§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §`G§() : Texture
      {
         if(!this.§]!b§)
         {
            this.§]!b§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§]!b§;
      }
      
      public function §`q§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§>9§)
         {
            if(this.§>9§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§[!1§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§>9§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §2!p§(param1:String) : BitmapData
      {
         var _loc2_:§8!P§ = this.§#P§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§#P§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§#P§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
