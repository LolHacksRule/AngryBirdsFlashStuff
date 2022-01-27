package §9!v§
{
   import §'!B§.§8T§;
   import §6!5§.getNextPowerOfTwo;
   import §8";§.§,o§;
   import §9"@§.Texture;
   import §9"@§.§["$§;
   import §;!^§.§!0§;
   import §;!^§.§9l§;
   import §;!^§.§;!f§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §6a§ extends EventDispatcher
   {
      
      protected static const §^>§:Number = 20;
      
      private static const §&b§:int = 2048;
      
      private static const §#"8§:int = 8;
      
      private static var §7"5§:§6a§;
       
      
      private var §50§:Dictionary;
      
      private var §00§:Vector.<§!0§>;
      
      private var §1a§:Dictionary;
      
      private var §0!g§:Boolean;
      
      private var §^!0§:Boolean;
      
      private var §]!l§:int;
      
      private var §""§:String;
      
      private var §4K§:Texture;
      
      private var § "H§:int;
      
      private var §4!Q§:int;
      
      private var §^!X§:§,o§;
      
      private var §;!2§:Timer;
      
      public function §6a§(param1:String = null)
      {
         super();
         this.§00§ = new Vector.<§!0§>();
         this.§50§ = new Dictionary();
         this.§1a§ = new Dictionary();
         this.§""§ = param1;
         this.§^!X§ = new §,o§(§&b§,§&b§);
      }
      
      public static function get §3R§() : §6a§
      {
         if(!§7"5§)
         {
            §7"5§ = new §6a§("main");
         }
         return §7"5§;
      }
      
      private static function §9[§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §;"E§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function § else§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §!!C§() : int
      {
         return this.§ "H§;
      }
      
      public function get §^1§() : int
      {
         return this.§4!Q§;
      }
      
      public function get id() : String
      {
         return this.§""§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"[§ = null;
         var _loc2_:§!0§ = null;
         if(this.§50§)
         {
            for each(_loc1_ in this.§50§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§50§ = null;
         }
         if(this.§00§)
         {
            for each(_loc2_ in this.§00§)
            {
               _loc2_.dispose();
            }
            this.§00§ = null;
         }
         if(this.§1a§)
         {
            this.§1a§ = null;
         }
         if(this.§4K§)
         {
            this.§4K§.dispose();
            this.§4K§ = null;
         }
         if(this.§;!2§)
         {
            this.§;!2§.stop();
            this.§;!2§.removeEventListener(TimerEvent.TIMER,this.§;",§);
            this.§;!2§ = null;
         }
         this.§00§ = new Vector.<§!0§>();
         this.§50§ = new Dictionary();
         this.§1a§ = new Dictionary();
      }
      
      protected function §`s§(param1:String) : §!0§
      {
         var _loc2_:§!0§ = null;
         for each(_loc2_ in this.§00§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §<%§(param1:§;!f§, param2:int) : void
      {
         if(this.§0!g§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§!0§;
         if(!(_loc4_ = this.§`s§(_loc3_)))
         {
            _loc4_ = new §!0§(_loc3_);
            this.§00§.push(_loc4_);
         }
         _loc4_.§0d§(param1);
      }
      
      private function §^J§(param1:Vector.<§;!f§>, param2:§,o§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§;!f§ = null;
         var _loc12_:int = 0;
         var _loc13_:§9l§ = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc7_:int = param1.length + 1;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         do
         {
            _loc9_ = 0;
            _loc8_ = 0;
            _loc7_--;
            _loc10_ = 1;
            param2.reset(param3,param4,param5);
            _loc6_ = 0;
            while(_loc6_ < _loc7_)
            {
               _loc11_ = param1[_loc6_];
               if(_loc6_ == 0)
               {
                  _loc10_ = _loc11_.scale;
               }
               else if(_loc11_.scale != _loc10_)
               {
                  break;
               }
               _loc12_ = 0;
               while(_loc12_ < _loc11_.§2">§)
               {
                  _loc13_ = _loc11_.§5"D§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§[!V§(_loc14_,_loc15_,§ else§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§"p§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §^m§(param1:Vector.<§;!f§>, param2:§,o§, param3:BitmapData) : §;!f§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§;!f§ = null;
         var sprite:§9l§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§9l§ = null;
         var spriteSheetCollection:Vector.<§;!f§> = param1;
         var rectanglePacker:§,o§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§,!f§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§;!f§ = new §;!f§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§6p§(i,null);
            rectangleId = rectanglePacker.§ else§(i);
            sheetIndex = §9[§(rectangleId);
            rectangleIndex = §;"E§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§5"D§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§=E§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §9l§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§#"@§(packedSprite);
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
         return combinedSheet;
      }
      
      private function §=E§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
      {
         var _loc7_:Rectangle = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         param2.copyPixels(param1,param3,param4.topLeft);
         var _loc5_:int = param4.width - param3.width;
         var _loc6_:int = param4.height - param3.height;
         if(_loc5_)
         {
            _loc7_ = new Rectangle(param3.right - 1,param3.y,1,param3.height);
            _loc8_ = 0;
            while(_loc8_ < _loc5_)
            {
               param2.copyPixels(param1,_loc7_,new Point(param4.right - 1 - _loc8_,param4.y));
               _loc8_++;
            }
         }
         if(_loc6_)
         {
            _loc7_ = new Rectangle(param3.x,param3.bottom - 1,param3.width,1);
            _loc9_ = 0;
            while(_loc9_ < _loc6_)
            {
               param2.copyPixels(param1,_loc7_,new Point(param4.x,param4.bottom - 1 - _loc9_));
               _loc9_++;
            }
         }
         if(_loc5_ * _loc6_ > 0)
         {
         }
      }
      
      public function §!m§() : Boolean
      {
         if(!§8T§.§=M§())
         {
            return false;
         }
         if(this.§^!0§)
         {
            return false;
         }
         this.§^!0§ = true;
         this.§]!l§ = getTimer();
         return !this.§@!t§();
      }
      
      private function §%=§() : void
      {
         var _loc1_:int = this.§!!C§ / 1024;
         var _loc2_:int = this.§^1§ / 1024;
         var _loc3_:int = getTimer();
         this.§00§ = new Vector.<§!0§>();
         this.§0!g§ = true;
         if(this.§;!2§)
         {
            this.§;!2§.stop();
            this.§;!2§.removeEventListener(TimerEvent.TIMER,this.§;",§);
            this.§;!2§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §;",§(param1:Event) : void
      {
         this.§@!t§();
      }
      
      private function §@!t§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§!0§ = null;
         var _loc3_:int = 0;
         if(this.§00§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§00§.pop();
            this.§6!p§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§00§.length == 0)
         {
            this.§%=§();
         }
         else
         {
            if(!this.§;!2§)
            {
               this.§;!2§ = new Timer(§^>§,0);
               this.§;!2§.addEventListener(TimerEvent.TIMER,this.§;",§);
            }
            else
            {
               this.§;!2§.stop();
            }
            this.§;!2§.start();
         }
         return this.§00§.length > 0;
      }
      
      private function §6!p§(param1:§!0§) : void
      {
         var _loc2_:§;!f§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§;!f§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§9l§ = null;
         var _loc3_:Vector.<§;!f§> = new Vector.<§;!f§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§&",§)
         {
            _loc2_ = param1.§7#§(_loc4_);
            if(_loc2_.§2">§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§^J§(_loc3_,this.§^!X§,§&b§,§&b§,§#"8§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§^!X§.§&$§);
            _loc7_ = getNextPowerOfTwo(this.§^!X§.§`"F§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§^m§(_loc3_,this.§^!X§,_loc8_);
            _loc10_ = this.getTextureFromBitmapData(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§2">§)
            {
               _loc12_ = _loc9_.§5"D§(_loc11_);
               this.§;p§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §;p§(param1:§9l§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§["$§ = null;
         var _loc5_:§"[§;
         if(!(_loc5_ = this.§50§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §["$§(param2,_loc6_,false);
            _loc5_ = new §"[§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§50§[param1.name] = _loc5_;
         }
      }
      
      public function §5!q§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§8T§.§^y§)
         {
            for(bd in this.§1a§)
            {
               try
               {
                  texture = this.§1a§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §"[§
      {
         return this.§50§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§1a§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §8T§.§4"F§(param1,param2);
         this.§1a§[param1] = _loc3_;
         this.§"!4§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §"!4§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§4!Q§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§ "H§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function § get§() : Texture
      {
         if(!this.§4K§)
         {
            this.§4K§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§4K§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§1a§)
         {
            if(this.§1a§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§"!4§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§1a§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
   }
}
