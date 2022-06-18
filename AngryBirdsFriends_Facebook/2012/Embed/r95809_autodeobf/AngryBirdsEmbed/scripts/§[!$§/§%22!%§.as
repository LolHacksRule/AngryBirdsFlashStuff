package §[!$§
{
   import §&!7§.§&6§;
   import §&!7§.Texture;
   import §&I§.§3! §;
   import §0[§.§!!6§;
   import §0[§.§4Q§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §"!%§ extends EventDispatcher
   {
      
      private static const §`f§:int = 2;
      
      private static const §4Z§:int = 2048;
      
      private static var §@!C§:§"!%§;
       
      
      private var §2U§:Dictionary;
      
      private var §[u§:Vector.<§!!6§>;
      
      private var §,J§:Dictionary;
      
      private var §6y§:Boolean;
      
      private var §]<§:String;
      
      private var §-Y§:Texture;
      
      private var §?4§:int;
      
      private var §-5§:int;
      
      public function §"!%§(param1:String = null)
      {
         super();
         this.§[u§ = new Vector.<§!!6§>();
         this.§2U§ = new Dictionary();
         this.§,J§ = new Dictionary();
         this.§]<§ = param1;
      }
      
      public static function get §^7§() : §"!%§
      {
         if(!§@!C§)
         {
            §@!C§ = new §"!%§();
         }
         return §@!C§;
      }
      
      public function get §'o§() : int
      {
         return this.§?4§;
      }
      
      public function get §2L§() : int
      {
         return this.§-5§;
      }
      
      public function get id() : String
      {
         return this.§]<§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§89§ = null;
         var _loc2_:§!!6§ = null;
         if(this.§2U§)
         {
            for each(_loc1_ in this.§2U§)
            {
               this.§]V§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§2U§ = null;
         }
         if(this.§[u§)
         {
            for each(_loc2_ in this.§[u§)
            {
               _loc2_.dispose();
            }
            this.§[u§ = null;
         }
         if(this.§,J§)
         {
            this.§,J§ = null;
         }
         if(this.§-Y§)
         {
            this.§-Y§.dispose();
            this.§-Y§ = null;
         }
         this.§[u§ = new Vector.<§!!6§>();
         this.§2U§ = new Dictionary();
         this.§,J§ = new Dictionary();
      }
      
      public function §04§(param1:§!!6§) : void
      {
         if(this.§6y§)
         {
            return;
         }
         if(this.§[u§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§[u§.push(param1);
      }
      
      private function §&s§(param1:Array) : Rectangle
      {
         var _loc9_:§!!6§ = null;
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
            if(_loc2_ + _loc10_.width + §`f§ >= §4Z§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §`f§ >= §4Z§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §`f§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §`f§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §`f§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §&!<§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§!!6§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§%!3§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§4Q§ = null;
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
            if(_loc3_ + _loc9_.width + §`f§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §`f§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §%!3§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§#'§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§2]§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§`"§(_loc12_)).§-o§ = null;
               _loc13_.§@v§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §`f§;
            if(_loc9_.height + §`f§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §`f§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §1N§() : Boolean
      {
         var _loc1_:§!!6§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§%!3§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§4Q§ = null;
         if(!§3! §.§=!&§())
         {
            return false;
         }
         if(this.§6y§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§[u§)
         {
            if(_loc1_.§2]§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§&s§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§&!<§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§%a§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§#'§;
               _loc9_ = _loc1_.§2]§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§`"§(_loc10_);
                  this.§5]§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§[u§)
         {
            _loc1_.dispose();
         }
         this.§[u§ = new Vector.<§!!6§>();
         this.§6y§ = true;
         return true;
      }
      
      private function §5]§(param1:§4Q§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§&6§ = null;
         var _loc5_:§89§;
         if(!(_loc5_ = this.§2U§[param1.mName]))
         {
            _loc6_ = param1.§@v§.clone();
            _loc7_ = new §&6§(param2,_loc6_,false);
            _loc5_ = new §89§(_loc7_,param3,_loc6_,param1.§&K§,param1.§]r§,param4);
            this.§2U§[param1.mName] = _loc5_;
         }
      }
      
      public function §,!E§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§3! §.§;!=§)
         {
            for(bd in this.§,J§)
            {
               try
               {
                  texture = this.§,J§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §<I§(param1:String) : §89§
      {
         return this.§2U§[param1];
      }
      
      public function §%a§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§,J§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §3! §.§[!C§(param1,param2);
         this.§,J§[param1] = _loc3_;
         this.§5!+§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §5!+§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§-5§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§?4§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §!L§() : Texture
      {
         if(!this.§-Y§)
         {
            this.§-Y§ = this.§%a§(new BitmapData(40,40,false,16711935));
         }
         return this.§-Y§;
      }
      
      public function §]V§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§,J§)
         {
            if(this.§,J§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§5!+§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§,J§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §!g§(param1:String) : BitmapData
      {
         var _loc2_:§89§ = this.§<I§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§<I§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§<I§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
