package §8!?§
{
   import §"$§.Starling;
   import §'_§.§=w§;
   import §'_§.Texture;
   import §3!c§.§33§;
   import §3!c§.SpriteSheetBase;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class TextureManager extends EventDispatcher
   {
      
      private static const §&!#§:int = 2;
      
      private static const §do §:int = 2048;
      
      private static var §;`§:TextureManager;
       
      
      private var §^k§:Dictionary;
      
      private var §9!V§:Vector.<SpriteSheetBase>;
      
      private var §<r§:Dictionary;
      
      private var §%!C§:Boolean;
      
      private var §^!,§:String;
      
      private var §^2§:Texture;
      
      private var §@X§:int;
      
      private var §^4§:int;
      
      public function TextureManager(param1:String = null)
      {
         super();
         this.§9!V§ = new Vector.<SpriteSheetBase>();
         this.§^k§ = new Dictionary();
         this.§<r§ = new Dictionary();
         this.§^!,§ = param1;
      }
      
      public static function get §&!'§() : TextureManager
      {
         if(!§;`§)
         {
            §;`§ = new TextureManager();
         }
         return §;`§;
      }
      
      public function get §3^§() : int
      {
         return this.§@X§;
      }
      
      public function get §+2§() : int
      {
         return this.§^4§;
      }
      
      public function get id() : String
      {
         return this.§^!,§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!B§ = null;
         var _loc2_:SpriteSheetBase = null;
         if(this.§^k§)
         {
            for each(_loc1_ in this.§^k§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§^k§ = null;
         }
         if(this.§9!V§)
         {
            for each(_loc2_ in this.§9!V§)
            {
               _loc2_.dispose();
            }
            this.§9!V§ = null;
         }
         if(this.§<r§)
         {
            this.§<r§ = null;
         }
         if(this.§^2§)
         {
            this.§^2§.dispose();
            this.§^2§ = null;
         }
         this.§9!V§ = new Vector.<SpriteSheetBase>();
         this.§^k§ = new Dictionary();
         this.§<r§ = new Dictionary();
      }
      
      public function §2!M§(param1:SpriteSheetBase) : void
      {
         if(this.§%!C§)
         {
            return;
         }
         if(this.§9!V§.indexOf(param1) >= 0)
         {
            return;
         }
         this.§9!V§.push(param1);
      }
      
      private function §7!§(param1:Array) : Rectangle
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
            if(_loc2_ + _loc10_.width + §&!#§ >= §do §)
            {
               _loc2_ = 0;
               _loc3_ += _loc6_;
               _loc6_ = 0;
            }
            if(_loc3_ + _loc10_.height + §&!#§ >= §do §)
            {
               break;
            }
            _loc2_ += _loc10_.width + §&!#§;
            if(_loc2_ > _loc4_)
            {
               _loc4_ = _loc2_;
            }
            if(_loc10_.height + §&!#§ > _loc6_)
            {
               _loc6_ = _loc10_.height + §&!#§;
               _loc5_ = _loc3_ + _loc6_;
            }
            _loc8_++;
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §7G§(param1:Array, param2:BitmapData) : Array
      {
         var _loc8_:SpriteSheetBase = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§[!`§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§33§ = null;
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
            if(_loc3_ + _loc9_.width + §&!#§ > param2.width)
            {
               _loc3_ = 0;
               _loc4_ += _loc5_;
               _loc5_ = 0;
            }
            if(_loc4_ + _loc9_.height + §&!#§ > param2.height)
            {
               break;
            }
            param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
            _loc10_ = new §[!`§();
            _loc10_.offset = new Point(_loc3_,_loc4_);
            _loc10_.§<!K§ = _loc8_;
            _loc6_.push(_loc10_);
            _loc11_ = _loc8_.§@![§;
            _loc12_ = 0;
            while(_loc12_ < _loc11_)
            {
               _loc13_ = _loc8_.§'!1§(_loc12_);
               _loc13_.§6B§ = null;
               _loc13_.§+!W§.offset(_loc3_,_loc4_);
               _loc12_++;
            }
            _loc3_ += _loc9_.width + §&!#§;
            if(_loc9_.height + §&!#§ > _loc5_)
            {
               _loc5_ = _loc9_.height + §&!#§;
            }
            param1.splice(0,1);
         }
         return _loc6_;
      }
      
      public function §-t§() : Boolean
      {
         var _loc1_:SpriteSheetBase = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:int = 0;
         var _loc8_:§[!`§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:§33§ = null;
         if(!Starling.§]c§())
         {
            return false;
         }
         if(this.§%!C§)
         {
            return true;
         }
         var _loc2_:Array = [];
         for each(_loc1_ in this.§9!V§)
         {
            if(_loc1_.§@![§ > 0)
            {
               _loc2_.push(_loc1_);
            }
         }
         while(_loc2_.length > 0)
         {
            _loc3_ = this.§7!§(_loc2_);
            if(_loc3_.width * _loc3_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            _loc5_ = this.§7G§(_loc2_,_loc4_);
            if(_loc5_.length == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = this.getTextureFromBitmapData(_loc4_);
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc8_ = _loc5_[_loc7_];
               _loc1_ = _loc8_.§<!K§;
               _loc9_ = _loc1_.§@![§;
               _loc10_ = 0;
               while(_loc10_ < _loc9_)
               {
                  _loc11_ = _loc1_.§'!1§(_loc10_);
                  this.§3!H§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                  _loc10_++;
               }
               _loc7_++;
            }
         }
         for each(_loc1_ in this.§9!V§)
         {
            _loc1_.dispose();
         }
         this.§9!V§ = new Vector.<SpriteSheetBase>();
         this.§%!C§ = true;
         return true;
      }
      
      private function §3!H§(param1:§33§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§=w§ = null;
         var _loc5_:§?!B§ = this.§^k§[param1.mName];
         if(!_loc5_)
         {
            _loc6_ = param1.§+!W§.clone();
            _loc7_ = new §=w§(param2,_loc6_,false);
            _loc5_ = new §?!B§(_loc7_,param3,_loc6_,param1.§@!h§,param1.§#O§,param4);
            this.§^k§[param1.mName] = _loc5_;
         }
      }
      
      public function §-h§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§6_§)
         {
            for(bd in this.§<r§)
            {
               try
               {
                  texture = this.§<r§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §"!'§(param1:String) : §?!B§
      {
         return this.§^k§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§<r§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = Starling.§7]§(param1,param2);
         this.§<r§[param1] = _loc3_;
         this.§2!$§(_loc3_,param1,true);
         return _loc3_;
      }
      
      public function §2!$§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§^4§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = param1.width;
            _loc6_ = param1.height;
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§@X§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §0G§() : Texture
      {
         if(!this.§^2§)
         {
            this.§^2§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§^2§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§<r§)
         {
            if(this.§<r§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§2!$§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§<r§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function §"%§(param1:String) : BitmapData
      {
         var _loc2_:§?!B§ = this.§"!'§(param1);
         if(_loc2_ == null)
         {
            _loc2_ = this.§"!'§(param1 + "_1");
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.§"!'§(param1 + "_01");
         }
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
   }
}
