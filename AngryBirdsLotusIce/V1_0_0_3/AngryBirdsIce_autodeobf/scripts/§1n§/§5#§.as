package §1n§
{
   import §-Z§.§?h§;
   import §[P§.Texture;
   import §[P§.§]!&§;
   import §`g§.§&_§;
   import §`g§.§]!3§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §5#§ extends EventDispatcher
   {
      
      private static const §+7§:int = 2;
      
      private static const §38§:int = 2048;
      
      private static var §-c§:§5#§;
       
      
      private var §8w§:Dictionary;
      
      private var §>U§:Vector.<§&_§>;
      
      private var § set§:Dictionary;
      
      private var §!!B§:Boolean;
      
      private var §#!<§:String;
      
      private var §5b§:Texture;
      
      private var §69§:int;
      
      private var §]!4§:int;
      
      public function §5#§(param1:String = null)
      {
         super();
         this.§>U§ = new Vector.<§&_§>();
         this.§8w§ = new Dictionary();
         this.§ set§ = new Dictionary();
         this.§#!<§ = param1;
      }
      
      public static function get §[8§() : §5#§
      {
         if(!§-c§)
         {
            §-c§ = new §5#§();
         }
         return §-c§;
      }
      
      public function get §;!$§() : int
      {
         return this.§69§;
      }
      
      public function get §@!C§() : int
      {
         return this.§]!4§;
      }
      
      public function get id() : String
      {
         return this.§#!<§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1D§ = null;
         var _loc2_:§&_§ = null;
         if(this.§8w§)
         {
            for each(_loc1_ in this.§8w§)
            {
               this.§1l§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§8w§ = null;
         }
         if(this.§>U§)
         {
            for each(_loc2_ in this.§>U§)
            {
               _loc2_.dispose();
            }
            this.§>U§ = null;
         }
         if(this.§ set§)
         {
            this.§ set§ = null;
         }
         if(this.§5b§)
         {
            this.§5b§.dispose();
            this.§5b§ = null;
         }
         this.§>U§ = new Vector.<§&_§>();
         this.§8w§ = new Dictionary();
         this.§ set§ = new Dictionary();
      }
      
      public function §5§(param1:§&_§) : void
      {
         if(this.§!!B§)
         {
            return;
         }
         if(this.§>U§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§>U§.push(param1);
      }
      
      private function §19§(param1:Array) : Rectangle
      {
         var _loc9_:§&_§ = null;
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
            if(_loc2_ + _loc10_.width + §+7§ >= §38§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §+7§ >= §38§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §+7§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §+7§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §+7§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §3-§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§&_§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§&>§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§]!3§ = null;
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
            if(_loc3_ + _loc9_.width + §+7§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §+7§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §&>§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§`!6§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§3t§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§7&§(_loc12_)).§!o§ = null;
               _loc13_.§<-§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §+7§;
            if(_loc9_.height + §+7§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §+7§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §&!%§() : Boolean
      {
         var _loc1_:§&_§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§&>§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§]!3§ = null;
         if(!§?h§.§6t§())
         {
            return false;
         }
         if(this.§!!B§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§>U§)
         {
            if(_loc1_.§3t§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§19§(_loc2_);
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§3-§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§]C§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§`!6§;
               _loc9_ = _loc1_.§3t§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§7&§(_loc10_);
                  this.§45§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§>U§)
         {
            _loc1_.dispose();
         }
         this.§>U§ = new Vector.<§&_§>();
         this.§!!B§ = true;
         return true;
      }
      
      private function §45§(param1:§]!3§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§]!&§ = null;
         var _loc5_:§1D§;
         if(!(_loc5_ = this.§8w§[param1.mName]))
         {
            _loc6_ = param1.§<-§.clone();
            _loc7_ = new §]!&§(param2,_loc6_,false);
            _loc5_ = new §1D§(_loc7_,param3,_loc6_,param1.§3e§,param1.§>9§,param4);
            this.§8w§[param1.mName] = _loc5_;
         }
      }
      
      public function §^2§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§?h§.§6!#§)
         {
            for(bd in this.§ set§)
            {
               try
               {
                  texture = this.§ set§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §,Y§(param1:String) : §1D§
      {
         return this.§8w§[param1];
      }
      
      public function §]C§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§ set§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §?h§.§8g§(param1,param2);
         this.§ set§[param1] = _loc3_;
         this.§16§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §16§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§]!4§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§69§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §9!5§() : Texture
      {
         if(!this.§5b§)
         {
            this.§5b§ = this.§]C§(new BitmapData(40,40,false,16711935));
         }
         return this.§5b§;
      }
      
      public function §1l§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§ set§)
         {
            if(this.§ set§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§16§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§ set§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §6x§(param1:String) : BitmapData
      {
         var _loc2_:§1D§ = this.§,Y§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§,Y§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§,Y§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
