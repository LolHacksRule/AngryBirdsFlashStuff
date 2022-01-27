package §4!0§
{
   import §@g§.§4!@§;
   import §@k§.§-[§;
   import §@k§.§false§;
   import §[!A§.§2!&§;
   import §[!A§.Texture;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §3§ extends EventDispatcher
   {
      
      private static const §[!'§:int = 2;
      
      private static const §8s§:int = 2048;
      
      private static var §"!6§:§3§;
       
      
      private var §%n§:Dictionary;
      
      private var §,b§:Vector.<§-[§>;
      
      private var §6! §:Dictionary;
      
      private var §6^§:Boolean;
      
      private var §;!9§:String;
      
      private var §0=§:Texture;
      
      private var §>>§:int;
      
      private var §super§:int;
      
      public function §3§(param1:String = null)
      {
         super();
         this.§,b§ = new Vector.<§-[§>();
         this.§%n§ = new Dictionary();
         this.§6! § = new Dictionary();
         this.§;!9§ = param1;
      }
      
      public static function get §<"§() : §3§
      {
         if(!§"!6§)
         {
            §"!6§ = new §3§();
         }
         return §"!6§;
      }
      
      public function get §6d§() : int
      {
         return this.§>>§;
      }
      
      public function get §9]§() : int
      {
         return this.§super§;
      }
      
      public function get id() : String
      {
         return this.§;!9§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#^§ = null;
         var _loc2_:§-[§ = null;
         if(this.§%n§)
         {
            for each(_loc1_ in this.§%n§)
            {
               this.§7a§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§%n§ = null;
         }
         if(this.§,b§)
         {
            for each(_loc2_ in this.§,b§)
            {
               _loc2_.dispose();
            }
            this.§,b§ = null;
         }
         if(this.§6! §)
         {
            this.§6! § = null;
         }
         if(this.§0=§)
         {
            this.§0=§.dispose();
            this.§0=§ = null;
         }
         this.§,b§ = new Vector.<§-[§>();
         this.§%n§ = new Dictionary();
         this.§6! § = new Dictionary();
      }
      
      public function §-'§(param1:§-[§) : void
      {
         if(this.§6^§)
         {
            return;
         }
         if(this.§,b§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§,b§.push(param1);
      }
      
      private function §=`§(param1:Array) : Rectangle
      {
         var _loc9_:§-[§ = null;
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
            if(_loc2_ + _loc10_.width + §[!'§ >= §8s§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §[!'§ >= §8s§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §[!'§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §[!'§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §[!'§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §-!9§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:§-[§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§%s§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§false§ = null;
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
            if(_loc3_ + _loc9_.width + §[!'§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §[!'§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            (_loc10_ = new §%s§()).offset = new Point(_loc3_,_loc4_);
            _loc10_.§6$§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§5!0§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               (_loc13_ = _loc8_.§3!+§(_loc12_)).§?!G§ = null;
               _loc13_.§]t§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §[!'§;
            if(_loc9_.height + §[!'§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §[!'§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §]+§() : Boolean
      {
         var _loc1_:§-[§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§%s§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§false§ = null;
         if(!§4!@§.§<<§())
         {
            return false;
         }
         if(this.§6^§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§,b§)
         {
            if(_loc1_.§5!0§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§=`§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            if((_loc5_ = this.§-!9§(_loc2_,_loc4_)).length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.§5Y§(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc1_ = (_loc8_ = _loc5_[_loc7_]).§6$§;
               _loc9_ = _loc1_.§5!0§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§3!+§(_loc10_);
                  this.§+O§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§,b§)
         {
            _loc1_.dispose();
         }
         this.§,b§ = new Vector.<§-[§>();
         this.§6^§ = true;
         return true;
      }
      
      private function §+O§(param1:§false§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§2!&§ = null;
         var _loc5_:§#^§;
         if(!(_loc5_ = this.§%n§[param1.mName]))
         {
            _loc6_ = param1.§]t§.clone();
            _loc7_ = new §2!&§(param2,_loc6_,false);
            _loc5_ = new §#^§(_loc7_,param3,_loc6_,param1.§4G§,param1.§8K§,param4);
            this.§%n§[param1.mName] = _loc5_;
         }
      }
      
      public function §!+§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§4!@§.§`?§)
         {
            for(bd in this.§6! §)
            {
               try
               {
                  texture = this.§6! §[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §2L§(param1:String) : §#^§
      {
         return this.§%n§[param1];
      }
      
      public function §5Y§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§6! §[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §4!@§.§extends§(param1,param2);
         this.§6! §[param1] = _loc3_;
         this.§@W§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §@W§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§super§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§>>§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §`c§() : Texture
      {
         if(!this.§0=§)
         {
            this.§0=§ = this.§5Y§(new BitmapData(40,40,false,16711935));
         }
         return this.§0=§;
      }
      
      public function §7a§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§6! §)
         {
            if(this.§6! §[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§@W§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§6! §[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §?!N§(param1:String) : BitmapData
      {
         var _loc2_:§#^§ = this.§2L§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§2L§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§2L§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
