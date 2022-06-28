package §-w§
{
   import §0!M§.§,'§;
   import §0!M§.§=!=§;
   import §<&§.§^b§;
   import §^!+§.§&<§;
   import §^!+§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §,Q§ extends EventDispatcher
   {
      
      private static const §]!?§:int = 2;
      
      private static const §"!$§:int = 2048;
      
      private static var §`!Y§:§,Q§;
       
      
      private var §"7§:Dictionary;
      
      private var §7#§:Vector.<§=!=§>;
      
      private var §3!U§:Dictionary;
      
      private var §4!Y§:Boolean;
      
      private var §&!X§:String;
      
      private var §5i§:Texture;
      
      private var §3!p§:int;
      
      private var §=4§:int;
      
      public function §,Q§(param1:String = null)
      {
         super();
         this.§7#§ = new Vector.<§=!=§>();
         this.§"7§ = new Dictionary();
         this.§3!U§ = new Dictionary();
         this.§&!X§ = param1;
      }
      
      public static function get §<d§() : §,Q§
      {
         if(!§`!Y§)
         {
            §`!Y§ = new §,Q§();
         }
         return §`!Y§;
      }
      
      public function get §4!l§() : int
      {
         return this.§3!p§;
      }
      
      public function get §<!4§() : int
      {
         return this.§=4§;
      }
      
      public function get id() : String
      {
         return this.§&!X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+W§ = null;
         var _loc2_:§=!=§ = null;
         if(this.§"7§)
         {
            for each(_loc1_ in this.§"7§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§"7§ = null;
         }
         if(this.§7#§)
         {
            for each(_loc2_ in this.§7#§)
            {
               _loc2_.dispose();
            }
            this.§7#§ = null;
         }
         if(this.§3!U§)
         {
            this.§3!U§ = null;
         }
         if(this.§5i§)
         {
            this.§5i§.dispose();
            this.§5i§ = null;
         }
         this.§7#§ = new Vector.<§=!=§>();
         this.§"7§ = new Dictionary();
         this.§3!U§ = new Dictionary();
      }
      
      public function §9!$§(param1:§=!=§) : void
      {
         if(this.§4!Y§)
         {
            return;
         }
         if(this.§7#§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§7#§.push(param1);
      }
      
      private function §&!1§(param1:Array) : Rectangle
      {
         var _loc9_:§=!=§ = null;
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
            if(_loc2_ + _loc10_.width + §]!?§ >= §"!$§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §]!?§ >= §"!$§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §]!?§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §]!?§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §]!?§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §package§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§=!=§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§^!@§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§,'§ = null;
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
            if(_loc3_ + _loc9_.width + §]!?§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §]!?§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §^!@§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§'!?§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§1!]§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§ s§(_loc12_)).§?![§ = null;
               _loc13_.§;!a§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §]!?§;
            if(_loc9_.height + §]!?§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §]!?§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §]!b§() : Boolean
      {
         var _loc1_:§=!=§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§^!@§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§,'§ = null;
         if(!§^b§.§@@§())
         {
            return false;
         }
         if(this.§4!Y§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§7#§)
         {
            if(_loc1_.§1!]§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§&!1§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§package§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§'!?§;
               _loc9_ = _loc1_.§1!]§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§ s§(_loc10_);
                  this.§7!h§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§7#§)
         {
            _loc1_.dispose();
         }
         this.§7#§ = new Vector.<§=!=§>();
         this.§4!Y§ = true;
         return true;
      }
      
      private function §7!h§(param1:§,'§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§&<§ = null;
         var _loc5_:§+W§;
         if(!(_loc5_ = this.§"7§[param1.mName]))
         {
            _loc6_ = param1.§;!a§.clone();
            _loc7_ = new §&<§(param2,_loc6_,false);
            _loc5_ = new §+W§(_loc7_,param3,_loc6_,param1.§&5§,param1.§1!O§,param4);
            this.§"7§[param1.mName] = _loc5_;
         }
      }
      
      public function §2f§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§^b§.§16§)
         {
            for(bd in this.§3!U§)
            {
               try
               {
                  texture = this.§3!U§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §6u§(param1:String) : §+W§
      {
         return this.§"7§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§3!U§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §^b§.§;!;§(param1,param2);
         this.§3!U§[param1] = _loc3_;
         this.§@c§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §@c§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§=4§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§3!p§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §0y§() : Texture
      {
         if(!this.§5i§)
         {
            this.§5i§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§5i§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§3!U§)
         {
            if(this.§3!U§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§@c§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§3!U§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §=o§(param1:String) : BitmapData
      {
         var _loc2_:§+W§ = this.§6u§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§6u§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§6u§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
