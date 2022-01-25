package §8r§
{
   import §#!a§.§=!J§;
   import §#!a§.Texture;
   import §+R§.§0O§;
   import §24§.§ !F§;
   import §24§.§8J§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §@V§ extends EventDispatcher
   {
      
      private static const §2!L§:int = 2;
      
      private static const §=y§:int = 2048;
      
      private static var §2Q§:§@V§;
       
      
      private var §?!M§:Dictionary;
      
      private var §#!8§:Vector.<§8J§>;
      
      private var §1F§:Dictionary;
      
      private var §<!H§:Boolean;
      
      private var §%!'§:String;
      
      private var § _§:Texture;
      
      private var §;j§:int;
      
      private var § -§:int;
      
      public function §@V§(param1:String = null)
      {
         super();
         this.§#!8§ = new Vector.<§8J§>();
         this.§?!M§ = new Dictionary();
         this.§1F§ = new Dictionary();
         this.§%!'§ = param1;
      }
      
      public static function get §`G§() : §@V§
      {
         if(!§2Q§)
         {
            §2Q§ = new §@V§();
         }
         return §2Q§;
      }
      
      public function get §1=§() : int
      {
         return this.§;j§;
      }
      
      public function get §'V§() : int
      {
         return this.§ -§;
      }
      
      public function get id() : String
      {
         return this.§%!'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-!$§ = null;
         var _loc2_:§8J§ = null;
         if(this.§?!M§)
         {
            for each(_loc1_ in this.§?!M§)
            {
               this.§[!6§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§?!M§ = null;
         }
         if(this.§#!8§)
         {
            for each(_loc2_ in this.§#!8§)
            {
               _loc2_.dispose();
            }
            this.§#!8§ = null;
         }
         if(this.§1F§)
         {
            this.§1F§ = null;
         }
         if(this.§ _§)
         {
            this.§ _§.dispose();
            this.§ _§ = null;
         }
         this.§#!8§ = new Vector.<§8J§>();
         this.§?!M§ = new Dictionary();
         this.§1F§ = new Dictionary();
      }
      
      public function §3p§(param1:§8J§) : void
      {
         if(this.§<!H§)
         {
            return;
         }
         if(this.§#!8§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§#!8§.push(param1);
      }
      
      private function § for§(param1:Array) : Rectangle
      {
         var _loc9_:§8J§ = null;
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
            if(_loc2_ + _loc10_.width + §2!L§ >= §=y§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §2!L§ >= §=y§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §2!L§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §2!L§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §2!L§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §!9§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§8J§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§8!'§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§ !F§ = null;
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
            if(_loc3_ + _loc9_.width + §2!L§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §2!L§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §8!'§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§;s§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§,,§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§<!!§(_loc12_)).§9V§ = null;
               _loc13_.§`Y§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §2!L§;
            if(_loc9_.height + §2!L§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §2!L§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §[X§() : Boolean
      {
         var _loc1_:§8J§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§8!'§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§ !F§ = null;
         if(!§0O§.§`T§())
         {
            return false;
         }
         if(this.§<!H§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§#!8§)
         {
            if(_loc1_.§,,§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§ for§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§!9§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§^c§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§;s§;
               _loc9_ = _loc1_.§,,§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§<!!§(_loc10_);
                  this.§&U§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§#!8§)
         {
            _loc1_.dispose();
         }
         this.§#!8§ = new Vector.<§8J§>();
         this.§<!H§ = true;
         return true;
      }
      
      private function §&U§(param1:§ !F§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§=!J§ = null;
         var _loc5_:§-!$§;
         if(!(_loc5_ = this.§?!M§[param1.mName]))
         {
            _loc6_ = param1.§`Y§.clone();
            _loc7_ = new §=!J§(param2,_loc6_,false);
            _loc5_ = new §-!$§(_loc7_,param3,_loc6_,param1.§1S§,param1.§=!&§,param4);
            this.§?!M§[param1.mName] = _loc5_;
         }
      }
      
      public function §1!;§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§0O§.§5D§)
         {
            for(bd in this.§1F§)
            {
               try
               {
                  texture = this.§1F§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §1!I§(param1:String) : §-!$§
      {
         return this.§?!M§[param1];
      }
      
      public function §^c§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§1F§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §0O§.§;S§(param1,param2);
         this.§1F§[param1] = _loc3_;
         this.§]1§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §]1§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§ -§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§;j§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §'N§() : Texture
      {
         if(!this.§ _§)
         {
            this.§ _§ = this.§^c§(new BitmapData(40,40,false,16711935));
         }
         return this.§ _§;
      }
      
      public function §[!6§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§1F§)
         {
            if(this.§1F§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§]1§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§1F§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §;d§(param1:String) : BitmapData
      {
         var _loc2_:§-!$§ = this.§1!I§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§1!I§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§1!I§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
