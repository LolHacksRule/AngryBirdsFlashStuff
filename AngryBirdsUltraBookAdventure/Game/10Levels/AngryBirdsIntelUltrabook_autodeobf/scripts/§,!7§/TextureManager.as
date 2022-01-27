package §,!7§
{
   import §6!J§.§"!]§;
   import §6!J§.Texture;
   import §6w§.§<>§;
   import §6w§.SpriteSheetBase;
   import §7!>§.Starling;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class TextureManager extends EventDispatcher
   {
      
      private static const §4!f§:int = 2;
      
      private static const §0!R§:int = 2048;
      
      private static var §11§:TextureManager;
       
      
      private var §]!V§:Dictionary;
      
      private var § !`§:Vector.<SpriteSheetBase>;
      
      private var §%5§:Dictionary;
      
      private var §3U§:Boolean;
      
      private var §7!D§:String;
      
      private var §3!,§:Texture;
      
      private var §4M§:int;
      
      private var §,!=§:int;
      
      public function TextureManager(param1:String = null)
      {
         super();
         this.§ !`§ = new Vector.<SpriteSheetBase>();
         this.§]!V§ = new Dictionary();
         this.§%5§ = new Dictionary();
         this.§7!D§ = param1;
      }
      
      public static function get §7!E§() : TextureManager
      {
         if(!§11§)
         {
            §11§ = new TextureManager();
         }
         return §11§;
      }
      
      public function get §^!"§() : int
      {
         return this.§4M§;
      }
      
      public function get §9!d§() : int
      {
         return this.§,!=§;
      }
      
      public function get id() : String
      {
         return this.§7!D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ H§ = null;
         var _loc2_:SpriteSheetBase = null;
         if(this.§]!V§)
         {
            for each(_loc1_ in this.§]!V§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§]!V§ = null;
         }
         if(this.§ !`§)
         {
            for each(_loc2_ in this.§ !`§)
            {
               _loc2_.dispose();
            }
            this.§ !`§ = null;
         }
         if(this.§%5§)
         {
            this.§%5§ = null;
         }
         if(this.§3!,§)
         {
            this.§3!,§.dispose();
            this.§3!,§ = null;
         }
         this.§ !`§ = new Vector.<SpriteSheetBase>();
         this.§]!V§ = new Dictionary();
         this.§%5§ = new Dictionary();
      }
      
      public function §-M§(param1:SpriteSheetBase) : void
      {
         if(this.§3U§)
         {
            return;
         }
         if(this.§ !`§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§ !`§.push(param1);
      }
      
      private function §-_§(param1:Array) : Rectangle
      {
         var _loc9_:SpriteSheetBase = null;
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
            if(_loc2_ + _loc10_.width + §4!f§ >= §0!R§)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §4!f§ >= §0!R§)
            {
               break;
            }
            _loc2_ += _loc10_.width + §4!f§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §4!f§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §4!f§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function § !6§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:SpriteSheetBase = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§9!<§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§<>§ = null;
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
            if(_loc3_ + _loc9_.width + §4!f§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §4!f§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            _loc10_ = new §9!<§();
            _loc10_.offset = new Point(_loc3_,_loc4_);
            _loc10_.§<!0§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§5!^§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               _loc13_ = _loc8_.§0B§(_loc12_);
               _loc13_.§!c§ = null;
               _loc13_.§'?§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §4!f§;
            if(_loc9_.height + §4!f§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §4!f§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §!4§() : Boolean
      {
         var _loc1_:SpriteSheetBase = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§9!<§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§<>§ = null;
         if(!Starling.§!w§())
         {
            return false;
         }
         if(this.§3U§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§ !`§)
         {
            if(_loc1_.§5!^§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§-_§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            _loc5_ = this.§ !6§(_loc2_,_loc4_);
            if(_loc5_.length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc8_ = _loc5_[_loc7_];
               _loc1_ = _loc8_.§<!0§;
               _loc9_ = _loc1_.§5!^§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§0B§(_loc10_);
                  this.§]!E§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§ !`§)
         {
            _loc1_.dispose();
         }
         this.§ !`§ = new Vector.<SpriteSheetBase>();
         this.§3U§ = true;
         return true;
      }
      
      private function §]!E§(param1:§<>§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§"!]§ = null;
         var _loc5_:§ H§ = this.§]!V§[param1.mName];
         if(!_loc5_)
         {
            _loc6_ = param1.§'?§.clone();
            _loc7_ = new §"!]§(param2,_loc6_,false);
            _loc5_ = new § H§(_loc7_,param3,_loc6_,param1.§1l§,param1.§%!N§,param4);
            this.§]!V§[param1.mName] = _loc5_;
         }
      }
      
      public function §4!^§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§=!j§)
         {
            for(bd in this.§%5§)
            {
               try
               {
                  texture = this.§%5§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §]w§(param1:String) : § H§
      {
         return this.§]!V§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§%5§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = Starling.§,q§(param1,param2);
         this.§%5§[param1] = _loc3_;
         this.§6!?§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §6!?§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:int = 1;
         if(!param3)
         {
            _loc4_ = -1;
         }
         if(param2)
         {
            this.§,!=§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = param1.width;
            _loc6_ = param1.height;
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§4M§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §&R§() : Texture
      {
         if(!this.§3!,§)
         {
            this.§3!,§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§3!,§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§%5§)
         {
            if(this.§%5§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§6!?§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§%5§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §?!d§(param1:String) : BitmapData
      {
         var _loc2_:§ H§ = this.§]w§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§]w§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§]w§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
