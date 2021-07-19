package §4&§
{
   import §5Q§.§^!e§;
   import §;&§.§8" §;
   import §`!#§.Texture;
   import §`!#§.§`!X§;
   import §`",§.§1!v§;
   import §`",§.§?" §;
   import §`",§.§`!W§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §,C§ extends EventDispatcher
   {
      
      private static const §@"!§:int = 2;
      
      private static const §+!p§:int = 2048;
      
      private static var § t§:§,C§;
       
      
      private var §"""§:Dictionary;
      
      private var §'2§:Vector.<§`!W§>;
      
      private var §5!X§:Dictionary;
      
      private var §^d§:Boolean;
      
      private var §[!o§:String;
      
      private var §-!l§:Texture;
      
      private var §4E§:int;
      
      private var §5O§:int;
      
      private var §`Q§:§8" §;
      
      public function §,C§(param1:String = null)
      {
         super();
         this.§'2§ = new Vector.<§`!W§>();
         this.§"""§ = new Dictionary();
         this.§5!X§ = new Dictionary();
         this.§[!o§ = param1;
         this.§`Q§ = new §8" §(§+!p§,§+!p§);
      }
      
      public static function get §[!1§() : §,C§
      {
         if(!§ t§)
         {
            § t§ = new §,C§();
         }
         return § t§;
      }
      
      public function get §<!b§() : int
      {
         return this.§4E§;
      }
      
      public function get §5"C§() : int
      {
         return this.§5O§;
      }
      
      public function get id() : String
      {
         return this.§[!o§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!"§ = null;
         var _loc2_:§`!W§ = null;
         if(this.§"""§)
         {
            for each(_loc1_ in this.§"""§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§"""§ = null;
         }
         if(this.§'2§)
         {
            for each(_loc2_ in this.§'2§)
            {
               _loc2_.dispose();
            }
            this.§'2§ = null;
         }
         if(this.§5!X§)
         {
            this.§5!X§ = null;
         }
         if(this.§-!l§)
         {
            this.§-!l§.dispose();
            this.§-!l§ = null;
         }
         this.§'2§ = new Vector.<§`!W§>();
         this.§"""§ = new Dictionary();
         this.§5!X§ = new Dictionary();
      }
      
      protected function §9!F§(param1:String) : §`!W§
      {
         var _loc2_:§`!W§ = null;
         for each(_loc2_ in this.§'2§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §?";§(param1:§?" §, param2:int) : void
      {
         if(this.§^d§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§`!W§;
         if(!(_loc4_ = this.§9!F§(_loc3_)))
         {
            _loc4_ = new §`!W§(_loc3_);
            this.§'2§.push(_loc4_);
         }
         _loc4_.§>!B§(param1);
      }
      
      private function §5A§(param1:Vector.<§?" §>) : Rectangle
      {
         var _loc4_:§?" § = null;
         var _loc5_:BitmapData = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:Number = 1;
         this.§`Q§.reset(§+!p§,§+!p§);
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            if(_loc3_ == 0)
            {
               _loc2_ = _loc4_.scale;
            }
            else if(_loc4_.scale != _loc2_)
            {
               break;
            }
            _loc6_ = (_loc5_ = _loc4_.bitmapData).width;
            _loc7_ = _loc5_.height;
            this.§`Q§.§@!L§(_loc6_,_loc7_,_loc3_);
            _loc3_++;
         }
         this.§`Q§.§8^§();
         return new Rectangle(0,0,this.§`Q§.§-!D§,this.§`Q§.§%!M§);
      }
      
      private function §4!J§(param1:Vector.<§?" §>, param2:BitmapData) : Vector.<§]!s§>
      {
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var spriteSheet:§?" § = null;
         var bitmap:BitmapData = null;
         var compiledSpriteSheet:§]!s§ = null;
         var count:int = 0;
         var j:int = 0;
         var sprite:§1!v§ = null;
         var spriteSheetCollection:Vector.<§?" §> = param1;
         var combinedBitmap:BitmapData = param2;
         var packedCount:int = this.§`Q§.§9!x§;
         var compiledSpriteSheets:Vector.<§]!s§> = new Vector.<§]!s§>();
         var packedIds:Vector.<int> = new Vector.<int>();
         var i:int = 0;
         i = 0;
         while(i < packedCount)
         {
            rect = this.§`Q§.§3"@§(i,null);
            rectangleId = this.§`Q§.§^"?§(i);
            packedIds.push(rectangleId);
            spriteSheet = spriteSheetCollection[rectangleId];
            bitmap = spriteSheet.bitmapData;
            combinedBitmap.copyPixels(bitmap,bitmap.rect,new Point(rect.x,rect.y),null,null,true);
            compiledSpriteSheet = new §]!s§();
            compiledSpriteSheet.offset = new Point(rect.x,rect.y);
            compiledSpriteSheet.spriteSheet = spriteSheet;
            compiledSpriteSheets.push(compiledSpriteSheet);
            count = spriteSheet.§,"6§;
            j = 0;
            while(j < count)
            {
               sprite = spriteSheet.§"!i§(j);
               sprite.§%l§ = null;
               sprite.§+#§.offset(rect.x,rect.y);
               j++;
            }
            i++;
         }
         packedIds.sort(function(param1:int, param2:int):int
         {
            if(param1 < param2)
            {
               return -1;
            }
            return 1;
         });
         i = packedIds.length - 1;
         while(i >= 0)
         {
            spriteSheetCollection.splice(packedIds[i],1);
            i--;
         }
         return compiledSpriteSheets;
      }
      
      public function §;!j§() : Boolean
      {
         var _loc1_:§`!W§ = null;
         if(!§^!e§.§>c§())
         {
            return false;
         }
         if(this.§^d§)
         {
            return true;
         }
         for each(_loc1_ in this.§'2§)
         {
            this.§!m§(_loc1_);
            _loc1_.dispose();
         }
         this.§'2§ = new Vector.<§`!W§>();
         this.§^d§ = true;
         return true;
      }
      
      private function §!m§(param1:§`!W§) : void
      {
         var _loc2_:§?" § = null;
         var _loc5_:Rectangle = null;
         var _loc6_:BitmapData = null;
         var _loc7_:Vector.<§]!s§> = null;
         var _loc8_:Texture = null;
         var _loc9_:int = 0;
         var _loc10_:§]!s§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§1!v§ = null;
         var _loc3_:Vector.<§?" §> = new Vector.<§?" §>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§4T§)
         {
            _loc2_ = param1.§5!v§(_loc4_);
            if(_loc2_.§,"6§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         while(_loc3_.length > 0)
         {
            if((_loc5_ = this.§5A§(_loc3_)).width == 0 || _loc5_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = new BitmapData(_loc5_.width,_loc5_.height,true,0);
            _loc7_ = this.§4!J§(_loc3_,_loc6_);
            _loc8_ = this.getTextureFromBitmapData(_loc6_);
            _loc9_ = 0;
            while(_loc9_ < _loc7_.length)
            {
               _loc2_ = (_loc10_ = _loc7_[_loc9_]).spriteSheet;
               _loc11_ = _loc2_.§,"6§;
               _loc12_ = 0;
               while(_loc12_ < _loc11_)
               {
                  _loc13_ = _loc2_.§"!i§(_loc12_);
                  this.§-!b§(_loc13_,_loc8_,_loc6_,_loc2_.scale);
                  _loc12_++;
               }
               _loc9_++;
            }
         }
      }
      
      private function §-!b§(param1:§1!v§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§`!X§ = null;
         var _loc5_:§'!"§;
         if(!(_loc5_ = this.§"""§[param1.mName]))
         {
            _loc6_ = param1.§+#§.clone();
            _loc7_ = new §`!X§(param2,_loc6_,false);
            _loc5_ = new §'!"§(_loc7_,param3,_loc6_,param1.§;o§,param1.§+!H§,param4);
            if(param1.mName.search("TEXTURE_") == 0)
            {
               this.§"""§["INGAME_" + param1.mName] = _loc5_;
            }
            else
            {
               this.§"""§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §7"$§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§^!e§.§<S§)
         {
            for(bd in this.§5!X§)
            {
               try
               {
                  texture = this.§5!X§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §'!"§
      {
         return this.§"""§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§5!X§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §^!e§.§<'§(param1,param2);
         this.§5!X§[param1] = _loc3_;
         this.§0t§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §0t§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§5O§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§4E§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §!!`§() : Texture
      {
         if(!this.§-!l§)
         {
            this.§-!l§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§-!l§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§5!X§)
         {
            if(this.§5!X§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§0t§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§5!X§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
   }
}
