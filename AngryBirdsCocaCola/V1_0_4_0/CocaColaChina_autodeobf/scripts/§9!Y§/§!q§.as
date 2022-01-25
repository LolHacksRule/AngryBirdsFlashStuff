package §9!Y§
{
   import §"![§.§,K§;
   import §"![§.Texture;
   import §-S§.§7O§;
   import §-S§.§@,§;
   import §6l§.§79§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §!q§ extends EventDispatcher
   {
      
      private static const §8%§:int = 2;
      
      private static const §"-§:int = 2048;
      
      private static var §%k§:§!q§;
       
      
      private var §[_§:Dictionary;
      
      private var §<2§:Vector.<§@,§>;
      
      private var §>!O§:Dictionary;
      
      private var §&'§:Boolean;
      
      private var §0!2§:String;
      
      private var §&B§:Texture;
      
      private var §3=§:int;
      
      private var §>_§:int;
      
      public function §!q§(param1:String = null)
      {
         super();
         this.§<2§ = new Vector.<§@,§>();
         this.§[_§ = new Dictionary();
         this.§>!O§ = new Dictionary();
         this.§0!2§ = param1;
      }
      
      public static function get §@!c§() : §!q§
      {
         if(!§%k§)
         {
            §%k§ = new §!q§();
         }
         return §%k§;
      }
      
      public function get §-!P§() : int
      {
         return this.§3=§;
      }
      
      public function get §[R§() : int
      {
         return this.§>_§;
      }
      
      public function get id() : String
      {
         return this.§0!2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"#§ = null;
         var _loc2_:§@,§ = null;
         if(this.§[_§)
         {
            for each(_loc1_ in this.§[_§)
            {
               this.§&X§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§[_§ = null;
         }
         if(this.§<2§)
         {
            for each(_loc2_ in this.§<2§)
            {
               _loc2_.dispose();
            }
            this.§<2§ = null;
         }
         if(this.§>!O§)
         {
            this.§>!O§ = null;
         }
         if(this.§&B§)
         {
            this.§&B§.dispose();
            this.§&B§ = null;
         }
         this.§<2§ = new Vector.<§@,§>();
         this.§[_§ = new Dictionary();
         this.§>!O§ = new Dictionary();
      }
      
      public function §#!?§(param1:§@,§) : void
      {
         if(this.§&'§)
         {
            return;
         }
         if(this.§<2§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§<2§.push(param1);
      }
      
      private function §!v§(param1:Array) : Rectangle
      {
         var _loc9_:§@,§ = null;
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
            if(_loc2_ + _loc10_.width + §8%§ >= §"-§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §8%§ >= §"-§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §8%§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §8%§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §8%§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §5!S§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§@,§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§'=§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§7O§ = null;
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
            if(_loc3_ + _loc9_.width + §8%§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §8%§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §'=§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§2!$§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§1p§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§9D§(_loc12_)).§6_§ = null;
               _loc13_.§"0§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §8%§;
            if(_loc9_.height + §8%§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §8%§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §,&§() : Boolean
      {
         var _loc1_:§@,§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§'=§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§7O§ = null;
         if(!§79§.§ do§())
         {
            return false;
         }
         if(this.§&'§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§<2§)
         {
            if(_loc1_.§1p§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§!v§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§5!S§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§+!>§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§2!$§;
               _loc9_ = _loc1_.§1p§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§9D§(_loc10_);
                  this.§@!>§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§<2§)
         {
            _loc1_.dispose();
         }
         this.§<2§ = new Vector.<§@,§>();
         this.§&'§ = true;
         return true;
      }
      
      private function §@!>§(param1:§7O§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§,K§ = null;
         var _loc5_:§"#§;
         if(!(_loc5_ = this.§[_§[param1.mName]))
         {
            _loc6_ = param1.§"0§.clone();
            _loc7_ = new §,K§(param2,_loc6_,false);
            _loc5_ = new §"#§(_loc7_,param3,_loc6_,param1.§[,§,param1.§6!V§,param4);
            this.§[_§[param1.mName] = _loc5_;
         }
      }
      
      public function §+q§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§79§.§%!S§)
         {
            for(bd in this.§>!O§)
            {
               try
               {
                  texture = this.§>!O§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §?!&§(param1:String) : §"#§
      {
         return this.§[_§[param1];
      }
      
      public function §+!>§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§>!O§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §79§.§&!3§(param1,param2);
         this.§>!O§[param1] = _loc3_;
         this.§@j§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §@j§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§>_§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§3=§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §`j§() : Texture
      {
         if(!this.§&B§)
         {
            this.§&B§ = this.§+!>§(new BitmapData(40,40,false,16711935));
         }
         return this.§&B§;
      }
      
      public function §&X§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§>!O§)
         {
            if(this.§>!O§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§@j§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§>!O§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §[Q§(param1:String) : BitmapData
      {
         var _loc2_:§"#§ = this.§?!&§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§?!&§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§?!&§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
