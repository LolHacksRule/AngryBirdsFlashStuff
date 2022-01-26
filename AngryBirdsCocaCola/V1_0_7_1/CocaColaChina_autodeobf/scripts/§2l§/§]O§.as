package §2l§
{
   import § F§.§3!&§;
   import §+!S§.§'R§;
   import §+!S§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import §in§.§-!L§;
   import §in§.§3!+§;
   
   public class §]O§ extends EventDispatcher
   {
      
      private static const §+!>§:int = 2;
      
      private static const §@j§:int = 2048;
      
      private static var §`j§:§]O§;
       
      
      private var §4n§:Dictionary;
      
      private var § !R§:Vector.<§-!L§>;
      
      private var §>5§:Dictionary;
      
      private var §9!Y§:Boolean;
      
      private var §!q§:String;
      
      private var §[_§:Texture;
      
      private var §<2§:int;
      
      private var §>!O§:int;
      
      public function §]O§(param1:String = null)
      {
         super();
         this.§ !R§ = new Vector.<§-!L§>();
         this.§4n§ = new Dictionary();
         this.§>5§ = new Dictionary();
         this.§!q§ = param1;
      }
      
      public static function get §'!C§() : §]O§
      {
         if(!§`j§)
         {
            §`j§ = new §]O§();
         }
         return §`j§;
      }
      
      public function get §&'§() : int
      {
         return this.§<2§;
      }
      
      public function get §0!2§() : int
      {
         return this.§>!O§;
      }
      
      public function get id() : String
      {
         return this.§!q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4!Q§ = null;
         var _loc2_:§-!L§ = null;
         if(this.§4n§)
         {
            for each(_loc1_ in this.§4n§)
            {
               this.§+q§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§4n§ = null;
         }
         if(this.§ !R§)
         {
            for each(_loc2_ in this.§ !R§)
            {
               _loc2_.dispose();
            }
            this.§ !R§ = null;
         }
         if(this.§>5§)
         {
            this.§>5§ = null;
         }
         if(this.§[_§)
         {
            this.§[_§.dispose();
            this.§[_§ = null;
         }
         this.§ !R§ = new Vector.<§-!L§>();
         this.§4n§ = new Dictionary();
         this.§>5§ = new Dictionary();
      }
      
      public function §&B§(param1:§-!L§) : void
      {
         if(this.§9!Y§)
         {
            return;
         }
         if(this.§ !R§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§ !R§.push(param1);
      }
      
      private function §3=§(param1:Array) : Rectangle
      {
         var _loc9_:§-!L§ = null;
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
            if(_loc2_ + _loc10_.width + §+!>§ >= §@j§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §+!>§ >= §@j§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §+!>§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §+!>§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §+!>§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §>_§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§-!L§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§"#§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§3!+§ = null;
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
            if(_loc3_ + _loc9_.width + §+!>§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §+!>§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §"#§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§<Y§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§^!_§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§[!B§(_loc12_)).§[,§ = null;
               _loc13_.§9D§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §+!>§;
            if(_loc9_.height + §+!>§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §+!>§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §-!P§() : Boolean
      {
         var _loc1_:§-!L§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§"#§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§3!+§ = null;
         if(!§3!&§.§'w§())
         {
            return false;
         }
         if(this.§9!Y§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§ !R§)
         {
            if(_loc1_.§^!_§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§3=§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§>_§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§5!S§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§<Y§;
               _loc9_ = _loc1_.§^!_§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§[!B§(_loc10_);
                  this.§[R§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§ !R§)
         {
            _loc1_.dispose();
         }
         this.§ !R§ = new Vector.<§-!L§>();
         this.§9!Y§ = true;
         return true;
      }
      
      private function §[R§(param1:§3!+§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§'R§ = null;
         var _loc5_:§4!Q§;
         if(!(_loc5_ = this.§4n§[param1.mName]))
         {
            _loc6_ = param1.§9D§.clone();
            _loc7_ = new §'R§(param2,_loc6_,false);
            _loc5_ = new §4!Q§(_loc7_,param3,_loc6_,param1.§7O§,param1.§"0§,param4);
            this.§4n§[param1.mName] = _loc5_;
         }
      }
      
      public function §#!?§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§3!&§.§5C§)
         {
            for(bd in this.§>5§)
            {
               try
               {
                  texture = this.§>5§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §!v§(param1:String) : §4!Q§
      {
         return this.§4n§[param1];
      }
      
      public function §5!S§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§>5§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §3!&§.§;J§(param1,param2);
         this.§>5§[param1] = _loc3_;
         this.§,&§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §,&§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§>!O§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§<2§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §@!>§() : Texture
      {
         if(!this.§[_§)
         {
            this.§[_§ = this.§5!S§(new BitmapData(40,40,false,16711935));
         }
         return this.§[_§;
      }
      
      public function §+q§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§>5§)
         {
            if(this.§>5§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§,&§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§>5§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §?!&§(param1:String) : BitmapData
      {
         var _loc2_:§4!Q§ = this.§!v§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§!v§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§!v§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
