package §8o§
{
   import §!A§.§<"&§;
   import §3!4§.§ ![§;
   import §3"$§.§5! §;
   import §3"$§.Texture;
   import §8";§.§^!5§;
   import §8";§.§^"#§;
   import §8";§.§`!a§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §5"%§ extends EventDispatcher
   {
      
      private static const §&!I§:int = 2;
      
      private static const §+!y§:int = 2048;
      
      private static var §8!n§:§5"%§;
       
      
      private var §]x§:Dictionary;
      
      private var §[!b§:Vector.<§^!5§>;
      
      private var §5P§:Dictionary;
      
      private var §-0§:Boolean;
      
      private var §1!q§:String;
      
      private var §^!-§:Texture;
      
      private var §9!O§:int;
      
      private var §@"C§:int;
      
      private var §!8§:§<"&§;
      
      public function §5"%§(param1:String = null)
      {
         super();
         this.§[!b§ = new Vector.<§^!5§>();
         this.§]x§ = new Dictionary();
         this.§5P§ = new Dictionary();
         this.§1!q§ = param1;
         this.§!8§ = new §<"&§(§+!y§,§+!y§);
      }
      
      public static function get §<"B§() : §5"%§
      {
         if(!§8!n§)
         {
            §8!n§ = new §5"%§();
         }
         return §8!n§;
      }
      
      public function get §<V§() : int
      {
         return this.§9!O§;
      }
      
      public function get §"!c§() : int
      {
         return this.§@"C§;
      }
      
      public function get id() : String
      {
         return this.§1!q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!">§ = null;
         var _loc2_:§^!5§ = null;
         if(this.§]x§)
         {
            for each(_loc1_ in this.§]x§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§]x§ = null;
         }
         if(this.§[!b§)
         {
            for each(_loc2_ in this.§[!b§)
            {
               _loc2_.dispose();
            }
            this.§[!b§ = null;
         }
         if(this.§5P§)
         {
            this.§5P§ = null;
         }
         if(this.§^!-§)
         {
            this.§^!-§.dispose();
            this.§^!-§ = null;
         }
         this.§[!b§ = new Vector.<§^!5§>();
         this.§]x§ = new Dictionary();
         this.§5P§ = new Dictionary();
      }
      
      protected function §'&§(param1:String) : §^!5§
      {
         var _loc2_:§^!5§ = null;
         for each(_loc2_ in this.§[!b§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §8#§(param1:§`!a§, param2:int) : void
      {
         if(this.§-0§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§^!5§;
         if(!(_loc4_ = this.§'&§(_loc3_)))
         {
            _loc4_ = new §^!5§(_loc3_);
            this.§[!b§.push(_loc4_);
         }
         _loc4_.§'"%§(param1);
      }
      
      private function §%!i§(param1:Vector.<§`!a§>) : Rectangle
      {
         var _loc4_:§`!a§ = null;
         var _loc5_:BitmapData = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:Number = 1;
         this.§!8§.reset(§+!y§,§+!y§);
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
            this.§!8§.§%Q§(_loc6_,_loc7_,_loc3_);
            _loc3_++;
         }
         this.§!8§.§+v§();
         return new Rectangle(0,0,this.§!8§.§""A§,this.§!8§.§`!K§);
      }
      
      private function §@!-§(param1:Vector.<§`!a§>, param2:BitmapData) : Vector.<§>"G§>
      {
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var spriteSheet:§`!a§ = null;
         var bitmap:BitmapData = null;
         var compiledSpriteSheet:§>"G§ = null;
         var count:int = 0;
         var j:int = 0;
         var sprite:§^"#§ = null;
         var spriteSheetCollection:Vector.<§`!a§> = param1;
         var combinedBitmap:BitmapData = param2;
         var packedCount:int = this.§!8§.§=4§;
         var compiledSpriteSheets:Vector.<§>"G§> = new Vector.<§>"G§>();
         var packedIds:Vector.<int> = new Vector.<int>();
         var i:int = 0;
         i = 0;
         while(i < packedCount)
         {
            rect = this.§!8§.§2t§(i,null);
            rectangleId = this.§!8§.§@"&§(i);
            packedIds.push(rectangleId);
            spriteSheet = spriteSheetCollection[rectangleId];
            bitmap = spriteSheet.bitmapData;
            combinedBitmap.copyPixels(bitmap,bitmap.rect,new Point(rect.x,rect.y),null,null,true);
            compiledSpriteSheet = new §>"G§();
            compiledSpriteSheet.offset = new Point(rect.x,rect.y);
            compiledSpriteSheet.spriteSheet = spriteSheet;
            compiledSpriteSheets.push(compiledSpriteSheet);
            count = spriteSheet.§]!n§;
            j = 0;
            while(j < count)
            {
               sprite = spriteSheet.§ !4§(j);
               sprite.§7I§ = null;
               sprite.§["2§.offset(rect.x,rect.y);
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
      
      public function §""=§() : Boolean
      {
         var _loc1_:§^!5§ = null;
         if(!§ ![§.§[c§())
         {
            return false;
         }
         if(this.§-0§)
         {
            return true;
         }
         for each(_loc1_ in this.§[!b§)
         {
            this.§4!3§(_loc1_);
            _loc1_.dispose();
         }
         this.§[!b§ = new Vector.<§^!5§>();
         this.§-0§ = true;
         return true;
      }
      
      private function §4!3§(param1:§^!5§) : void
      {
         var _loc2_:§`!a§ = null;
         var _loc5_:Rectangle = null;
         var _loc6_:BitmapData = null;
         var _loc7_:Vector.<§>"G§> = null;
         var _loc8_:Texture = null;
         var _loc9_:int = 0;
         var _loc10_:§>"G§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:§^"#§ = null;
         var _loc3_:Vector.<§`!a§> = new Vector.<§`!a§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§<!3§)
         {
            _loc2_ = param1.§,!;§(_loc4_);
            if(_loc2_.§]!n§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         while(_loc3_.length > 0)
         {
            if((_loc5_ = this.§%!i§(_loc3_)).width == 0 || _loc5_.height == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = new BitmapData(_loc5_.width,_loc5_.height,true,0);
            _loc7_ = this.§@!-§(_loc3_,_loc6_);
            _loc8_ = this.getTextureFromBitmapData(_loc6_);
            _loc9_ = 0;
            while(_loc9_ < _loc7_.length)
            {
               _loc2_ = (_loc10_ = _loc7_[_loc9_]).spriteSheet;
               _loc11_ = _loc2_.§]!n§;
               _loc12_ = 0;
               while(_loc12_ < _loc11_)
               {
                  _loc13_ = _loc2_.§ !4§(_loc12_);
                  this.§="0§(_loc13_,_loc8_,_loc6_,_loc2_.scale);
                  _loc12_++;
               }
               _loc9_++;
            }
         }
      }
      
      private function §="0§(param1:§^"#§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§5! § = null;
         var _loc5_:§!">§;
         if(!(_loc5_ = this.§]x§[param1.mName]))
         {
            _loc6_ = param1.§["2§.clone();
            _loc7_ = new §5! §(param2,_loc6_,false);
            _loc5_ = new §!">§(_loc7_,param3,_loc6_,param1.§=!b§,param1.§+"#§,param4);
            if(param1.mName.search("TEXTURE_") == 0)
            {
               this.§]x§["INGAME_" + param1.mName] = _loc5_;
            }
            else
            {
               this.§]x§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §1!>§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§ ![§.§%!<§)
         {
            for(bd in this.§5P§)
            {
               try
               {
                  texture = this.§5P§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §!">§
      {
         return this.§]x§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§5P§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = § ![§.§-1§(param1,param2);
         this.§5P§[param1] = _loc3_;
         this.§7%§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §7%§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§@"C§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§9!O§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §"v§() : Texture
      {
         if(!this.§^!-§)
         {
            this.§^!-§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§^!-§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§5P§)
         {
            if(this.§5P§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§7%§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§5P§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
   }
}
