package §;!<§
{
   import §#""§.§2! §;
   import §#""§.§>Z§;
   import §-N§.§=!]§;
   import §8Y§.§?!N§;
   import §8Y§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §7!f§ extends EventDispatcher
   {
      
      private static const set:int = 2;
      
      private static const §=!5§:int = 2048;
      
      private static var §#<§:§7!f§;
       
      
      private var §9g§:Dictionary;
      
      private var §5L§:Vector.<§>Z§>;
      
      private var §2!P§:Dictionary;
      
      private var § !W§:Boolean;
      
      private var §]!Q§:String;
      
      private var §-!+§:Texture;
      
      private var §]U§:int;
      
      private var §'!"§:int;
      
      public function §7!f§(param1:String = null)
      {
         super();
         this.§5L§ = new Vector.<§>Z§>();
         this.§9g§ = new Dictionary();
         this.§2!P§ = new Dictionary();
         this.§]!Q§ = param1;
      }
      
      public static function get §'!o§() : §7!f§
      {
         if(!§#<§)
         {
            §#<§ = new §7!f§();
         }
         return §#<§;
      }
      
      public function get §5!u§() : int
      {
         return this.§]U§;
      }
      
      public function get §;7§() : int
      {
         return this.§'!"§;
      }
      
      public function get id() : String
      {
         return this.§]!Q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!D§ = null;
         var _loc2_:§>Z§ = null;
         if(this.§9g§)
         {
            for each(_loc1_ in this.§9g§)
            {
               this.§;!'§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§9g§ = null;
         }
         if(this.§5L§)
         {
            for each(_loc2_ in this.§5L§)
            {
               _loc2_.dispose();
            }
            this.§5L§ = null;
         }
         if(this.§2!P§)
         {
            this.§2!P§ = null;
         }
         if(this.§-!+§)
         {
            this.§-!+§.dispose();
            this.§-!+§ = null;
         }
         this.§5L§ = new Vector.<§>Z§>();
         this.§9g§ = new Dictionary();
         this.§2!P§ = new Dictionary();
      }
      
      public function §#!S§(param1:§>Z§) : void
      {
         if(this.§ !W§)
         {
            return;
         }
         if(this.§5L§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§5L§.push(param1);
      }
      
      private function §4"§(param1:Array) : Rectangle
      {
         var _loc9_:§>Z§ = null;
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
            if(_loc2_ + _loc10_.width + set >= §=!5§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + set >= §=!5§)
            {
               break;
            }
            _loc2_ += _loc10_.width + set;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + set > _loc6_)
            {
               _loc6_ = _loc10_.height + set;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §`!l§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§>Z§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§6!1§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§2! § = null;
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
            if(_loc3_ + _loc9_.width + set > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + set > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §6!1§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§0!w§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§=s§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§]2§(_loc12_)).§,!d§ = null;
               _loc13_.§8!G§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + set;
            if(_loc9_.height + set > _loc5_)
            {
               _loc5_ = _loc9_.height + set;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §]"#§() : Boolean
      {
         var _loc1_:§>Z§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§6!1§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§2! § = null;
         if(!§=!]§.§'`§())
         {
            return false;
         }
         if(this.§ !W§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§5L§)
         {
            if(_loc1_.§=s§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§4"§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§`!l§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§>!d§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§0!w§;
               _loc9_ = _loc1_.§=s§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§]2§(_loc10_);
                  this.§0!6§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§5L§)
         {
            _loc1_.dispose();
         }
         this.§5L§ = new Vector.<§>Z§>();
         this.§ !W§ = true;
         return true;
      }
      
      private function §0!6§(param1:§2! §, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§?!N§ = null;
         var _loc5_:§<!D§;
         if(!(_loc5_ = this.§9g§[param1.mName]))
         {
            _loc6_ = param1.§8!G§.clone();
            _loc7_ = new §?!N§(param2,_loc6_,false);
            _loc5_ = new §<!D§(_loc7_,param3,_loc6_,param1.§6o§,param1.§["2§,param4);
            this.§9g§[param1.mName] = _loc5_;
         }
      }
      
      public function §7!J§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§=!]§.§=t§)
         {
            for(bd in this.§2!P§)
            {
               try
               {
                  texture = this.§2!P§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §>",§(param1:String) : §<!D§
      {
         return this.§9g§[param1];
      }
      
      public function §>!d§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§2!P§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §=!]§.§^Y§(param1,param2);
         this.§2!P§[param1] = _loc3_;
         this.§3!>§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §3!>§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§'!"§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§]U§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §-!s§() : Texture
      {
         if(!this.§-!+§)
         {
            this.§-!+§ = this.§>!d§(new BitmapData(40,40,false,16711935));
         }
         return this.§-!+§;
      }
      
      public function §;!'§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§2!P§)
         {
            if(this.§2!P§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§3!>§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§2!P§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §3!y§(param1:String) : BitmapData
      {
         var _loc2_:§<!D§ = this.§>",§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§>",§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§>",§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
