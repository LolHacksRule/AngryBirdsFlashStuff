package §`n§
{
   import § !b§.§4e§;
   import § !b§.§;!P§;
   import §+![§.§,!F§;
   import §+![§.Texture;
   import §94§.§&!7§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §#H§ extends EventDispatcher
   {
      
      private static const §6!6§:int = 2;
      
      private static const §8J§:int = 2048;
      
      private static var §5d§:§#H§;
       
      
      private var §<<§:Dictionary;
      
      private var §?p§:Vector.<§4e§>;
      
      private var §^l§:Dictionary;
      
      private var §+0§:Boolean;
      
      private var §`9§:String;
      
      private var §1^§:Texture;
      
      private var §0s§:int;
      
      private var §8!A§:int;
      
      public function §#H§(param1:String = null)
      {
         super();
         this.§?p§ = new Vector.<§4e§>();
         this.§<<§ = new Dictionary();
         this.§^l§ = new Dictionary();
         this.§`9§ = param1;
      }
      
      public static function get §%b§() : §#H§
      {
         if(!§5d§)
         {
            §5d§ = new §#H§();
         }
         return §5d§;
      }
      
      public function get §<[§() : int
      {
         return this.§0s§;
      }
      
      public function get §0J§() : int
      {
         return this.§8!A§;
      }
      
      public function get id() : String
      {
         return this.§`9§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6o§ = null;
         var _loc2_:§4e§ = null;
         if(this.§<<§)
         {
            for each(_loc1_ in this.§<<§)
            {
               this.§"r§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§<<§ = null;
         }
         if(this.§?p§)
         {
            for each(_loc2_ in this.§?p§)
            {
               _loc2_.dispose();
            }
            this.§?p§ = null;
         }
         if(this.§^l§)
         {
            this.§^l§ = null;
         }
         if(this.§1^§)
         {
            this.§1^§.dispose();
            this.§1^§ = null;
         }
         this.§?p§ = new Vector.<§4e§>();
         this.§<<§ = new Dictionary();
         this.§^l§ = new Dictionary();
      }
      
      public function §3!-§(param1:§4e§) : void
      {
         if(this.§+0§)
         {
            return;
         }
         if(this.§?p§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§?p§.push(param1);
      }
      
      private function §,!<§(param1:Array) : Rectangle
      {
         var _loc9_:§4e§ = null;
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
            if(_loc2_ + _loc10_.width + §6!6§ >= §8J§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §6!6§ >= §8J§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §6!6§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §6!6§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §6!6§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §9Y§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§4e§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§6!M§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§;!P§ = null;
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
            if(_loc3_ + _loc9_.width + §6!6§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §6!6§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §6!M§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§>1§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§'#§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§^!H§(_loc12_)).§ !!§ = null;
               _loc13_.§1!9§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §6!6§;
            if(_loc9_.height + §6!6§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §6!6§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §44§() : Boolean
      {
         var _loc1_:§4e§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§6!M§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§;!P§ = null;
         if(!§&!7§.§4!R§())
         {
            return false;
         }
         if(this.§+0§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§?p§)
         {
            if(_loc1_.§'#§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§,!<§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§9Y§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§^X§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§>1§;
               _loc9_ = _loc1_.§'#§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§^!H§(_loc10_);
                  this.§7n§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§?p§)
         {
            _loc1_.dispose();
         }
         this.§?p§ = new Vector.<§4e§>();
         this.§+0§ = true;
         return true;
      }
      
      private function §7n§(param1:§;!P§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§,!F§ = null;
         var _loc5_:§6o§;
         if(!(_loc5_ = this.§<<§[param1.mName]))
         {
            _loc6_ = param1.§1!9§.clone();
            _loc7_ = new §,!F§(param2,_loc6_,false);
            _loc5_ = new §6o§(_loc7_,param3,_loc6_,param1.§+Z§,param1.§null§,param4);
            this.§<<§[param1.mName] = _loc5_;
         }
      }
      
      public function §,!T§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§&!7§.§!!^§)
         {
            for(bd in this.§^l§)
            {
               try
               {
                  texture = this.§^l§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §&3§(param1:String) : §6o§
      {
         return this.§<<§[param1];
      }
      
      public function §^X§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§^l§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §&!7§.§,v§(param1,param2);
         this.§^l§[param1] = _loc3_;
         this.§6!Y§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §6!Y§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§8!A§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§0s§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §6!]§() : Texture
      {
         if(!this.§1^§)
         {
            this.§1^§ = this.§^X§(new BitmapData(40,40,false,16711935));
         }
         return this.§1^§;
      }
      
      public function §"r§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§^l§)
         {
            if(this.§^l§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§6!Y§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§^l§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §&!3§(param1:String) : BitmapData
      {
         var _loc2_:§6o§ = this.§&3§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§&3§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§&3§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
