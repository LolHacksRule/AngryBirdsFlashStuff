package §^'§
{
   import §@&§.§"E§;
   import §@&§.§^s§;
   import §@M§.§@w§;
   import §@M§.Texture;
   import §^h§.§2l§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class § !C§ extends EventDispatcher
   {
      
      private static const §&b§:int = 2;
      
      private static const §3]§:int = 2048;
      
      private static var § 8§:§ !C§;
       
      
      private var §?u§:Dictionary;
      
      private var §7<§:Vector.<§"E§>;
      
      private var §@T§:Dictionary;
      
      private var §`A§:Boolean;
      
      private var §7W§:String;
      
      private var §?`§:Texture;
      
      private var §2!A§:int;
      
      private var §3Q§:int;
      
      public function § !C§(param1:String = null)
      {
         super();
         this.§7<§ = new Vector.<§"E§>();
         this.§?u§ = new Dictionary();
         this.§@T§ = new Dictionary();
         this.§7W§ = param1;
      }
      
      public static function get §&y§() : § !C§
      {
         if(!§ 8§)
         {
            § 8§ = new § !C§();
         }
         return § 8§;
      }
      
      public function get §>,§() : int
      {
         return this.§2!A§;
      }
      
      public function get §@S§() : int
      {
         return this.§3Q§;
      }
      
      public function get id() : String
      {
         return this.§7W§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!!M§ = null;
         var _loc2_:§"E§ = null;
         if(this.§?u§)
         {
            for each(_loc1_ in this.§?u§)
            {
               this.§[!O§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§?u§ = null;
         }
         if(this.§7<§)
         {
            for each(_loc2_ in this.§7<§)
            {
               _loc2_.dispose();
            }
            this.§7<§ = null;
         }
         if(this.§@T§)
         {
            this.§@T§ = null;
         }
         if(this.§?`§)
         {
            this.§?`§.dispose();
            this.§?`§ = null;
         }
         this.§7<§ = new Vector.<§"E§>();
         this.§?u§ = new Dictionary();
         this.§@T§ = new Dictionary();
      }
      
      public function §+d§(param1:§"E§) : void
      {
         if(this.§`A§)
         {
            return;
         }
         if(this.§7<§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§7<§.push(param1);
      }
      
      private function §'[§(param1:Array) : Rectangle
      {
         var _loc9_:§"E§ = null;
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
            if(_loc2_ + _loc10_.width + §&b§ >= §3]§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §&b§ >= §3]§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §&b§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §&b§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §&b§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §,k§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§"E§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§;7§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§^s§ = null;
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
            if(_loc3_ + _loc9_.width + §&b§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §&b§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §;7§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§!!E§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§`!I§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§%V§(_loc12_)).§]!K§ = null;
               _loc13_.§@! §.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §&b§;
            if(_loc9_.height + §&b§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §&b§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §3!A§() : Boolean
      {
         var _loc1_:§"E§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§;7§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§^s§ = null;
         if(!§2l§.§3!?§())
         {
            return false;
         }
         if(this.§`A§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§7<§)
         {
            if(_loc1_.§`!I§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§'[§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§,k§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§7d§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§!!E§;
               _loc9_ = _loc1_.§`!I§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§%V§(_loc10_);
                  this.§5I§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§7<§)
         {
            _loc1_.dispose();
         }
         this.§7<§ = new Vector.<§"E§>();
         this.§`A§ = true;
         return true;
      }
      
      private function §5I§(param1:§^s§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§@w§ = null;
         var _loc5_:§!!M§;
         if(!(_loc5_ = this.§?u§[param1.mName]))
         {
            _loc6_ = param1.§@! §.clone();
            _loc7_ = new §@w§(param2,_loc6_,false);
            _loc5_ = new §!!M§(_loc7_,param3,_loc6_,param1.§6!H§,param1.§2x§,param4);
            this.§?u§[param1.mName] = _loc5_;
         }
      }
      
      public function §8f§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§2l§.§[l§)
         {
            for(bd in this.§@T§)
            {
               try
               {
                  texture = this.§@T§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §@h§(param1:String) : §!!M§
      {
         return this.§?u§[param1];
      }
      
      public function §7d§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§@T§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §2l§.§5U§(param1,param2);
         this.§@T§[param1] = _loc3_;
         this.§=g§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §=g§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§3Q§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§2!A§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §;k§() : Texture
      {
         if(!this.§?`§)
         {
            this.§?`§ = this.§7d§(new BitmapData(40,40,false,16711935));
         }
         return this.§?`§;
      }
      
      public function §[!O§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§@T§)
         {
            if(this.§@T§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§=g§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§@T§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §9!K§(param1:String) : BitmapData
      {
         var _loc2_:§!!M§ = this.§@h§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§@h§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§@h§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
