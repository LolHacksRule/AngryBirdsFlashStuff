package §4W§
{
   import § !+§.§0Z§;
   import §'!H§.§3^§;
   import §'!H§.§?m§;
   import §2!-§.§!!=§;
   import §2!-§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §!]§ extends EventDispatcher
   {
      
      private static const §!x§:int = 2;
      
      private static const §+! §:int = 2048;
      
      private static var §2z§:§!]§;
       
      
      private var §9!3§:Dictionary;
      
      private var §&?§:Vector.<§3^§>;
      
      private var §1!J§:Dictionary;
      
      private var §+1§:Boolean;
      
      private var §]!E§:Texture;
      
      private var §6r§:int;
      
      private var §@D§:int;
      
      public function §!]§()
      {
         super();
         this.§&?§ = new Vector.<§3^§>();
         this.§9!3§ = new Dictionary();
         this.§1!J§ = new Dictionary();
      }
      
      public static function get §!!L§() : §!]§
      {
         if(!§2z§)
         {
            §2z§ = new §!]§();
         }
         return §2z§;
      }
      
      public function get §^,§() : int
      {
         return this.§6r§;
      }
      
      public function get §<!H§() : int
      {
         return this.§@D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>c§ = null;
         var _loc2_:§3^§ = null;
         if(this.§9!3§)
         {
            for each(_loc1_ in this.§9!3§)
            {
               this.§&!I§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§9!3§ = null;
         }
         if(this.§&?§)
         {
            for each(_loc2_ in this.§&?§)
            {
               _loc2_.dispose();
            }
            this.§&?§ = null;
         }
         if(this.§1!J§)
         {
            this.§1!J§ = null;
         }
         if(this.§]!E§)
         {
            this.§]!E§.dispose();
            this.§]!E§ = null;
         }
         this.§&?§ = new Vector.<§3^§>();
         this.§9!3§ = new Dictionary();
         this.§1!J§ = new Dictionary();
      }
      
      public function §?1§(param1:§3^§) : void
      {
         if(this.§+1§)
         {
            return;
         }
         if(this.§&?§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§&?§.push(param1);
      }
      
      private function §]S§(param1:Array) : Rectangle
      {
         var _loc9_:§3^§ = null;
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
            if(_loc2_ + _loc10_.width + §!x§ >= §+! §)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §!x§ >= §+! §)
            {
               break;
            }
            _loc2_ += _loc10_.width + §!x§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §!x§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §!x§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §8!E§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§3^§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§4!U§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§?m§ = null;
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
            if(_loc3_ + _loc9_.width + §!x§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §!x§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §4!U§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§^J§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§3!L§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§<f§(_loc12_)).§9B§ = null;
               _loc13_.§[!D§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §!x§;
            if(_loc9_.height + §!x§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §!x§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §8!K§() : Boolean
      {
         var _loc1_:§3^§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§4!U§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§?m§ = null;
         if(!§0Z§.§ Z§())
         {
            return false;
         }
         if(this.§+1§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§&?§)
         {
            if(_loc1_.§3!L§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§]S§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§8!E§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§8E§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§^J§;
               _loc9_ = _loc1_.§3!L§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§<f§(_loc10_);
                  this.§0i§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§&?§)
         {
            _loc1_.dispose();
         }
         this.§&?§ = new Vector.<§3^§>();
         this.§+1§ = true;
         return true;
      }
      
      private function §0i§(param1:§?m§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§!!=§ = null;
         var _loc5_:§>c§;
         if(!(_loc5_ = this.§9!3§[param1.mName]))
         {
            _loc6_ = param1.§[!D§.clone();
            _loc7_ = new §!!=§(param2,_loc6_,false);
            _loc5_ = new §>c§(_loc7_,param3,_loc6_,param1.§^D§,param1.§%B§,param4);
            this.§9!3§[param1.mName] = _loc5_;
         }
      }
      
      public function §"7§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§0Z§.§^$§)
         {
            for(bd in this.§1!J§)
            {
               try
               {
                  texture = this.§1!J§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §]]§(param1:String) : §>c§
      {
         return this.§9!3§[param1];
      }
      
      public function §8E§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§1!J§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §0Z§.§4!8§(param1,param2);
         this.§1!J§[param1] = _loc3_;
         this.§=r§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §=r§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§@D§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§6r§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §83§() : Texture
      {
         if(!this.§]!E§)
         {
            this.§]!E§ = this.§8E§(new BitmapData(40,40,false,16711935));
         }
         return this.§]!E§;
      }
      
      public function §&!I§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§1!J§)
         {
            if(this.§1!J§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§=r§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§1!J§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §?r§(param1:String) : BitmapData
      {
         var _loc2_:§>c§ = this.§]]§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§]]§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§]]§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
