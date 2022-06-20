package §'G§
{
   import §"#z§.§2"G§;
   import §"#z§.Texture;
   import §'!j§.Starling;
   import §,#=§.getNextPowerOfTwo;
   import §-"o§.§]#W§;
   import §;$<§.§%#w§;
   import §;$<§.§>!I§;
   import §;$<§.§^9§;
   import §=#o§.§1G§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.system.System;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §3$§ extends EventDispatcher
   {
      
      protected static const §4d§:Number = 20;
      
      private static const §<'§:int = 2048;
      
      private static const §?<§:int = 8;
      
      private static var §9"_§:§3$§;
       
      
      private var §`!h§:Dictionary;
      
      private var §<!g§:Vector.<String>;
      
      private var §!=§:Vector.<§>!I§>;
      
      private var §+!D§:Dictionary;
      
      private var §?#^§:Boolean;
      
      private var §`&§:Boolean;
      
      private var §3!p§:int;
      
      private var mId:String;
      
      private var § #3§:Texture;
      
      private var §4#F§:int;
      
      private var §!<§:int;
      
      private var § "_§:§]#W§;
      
      private var §%"<§:Timer;
      
      private var §<">§:Vector.<BitmapData>;
      
      public function §3$§(param1:String = null)
      {
         this.§<">§ = new Vector.<BitmapData>();
         super();
         this.§!=§ = new Vector.<§>!I§>();
         this.§`!h§ = new Dictionary();
         this.§<!g§ = new Vector.<String>();
         this.§+!D§ = new Dictionary();
         this.mId = param1;
         this.§ "_§ = new §]#W§(§<'§,§<'§);
      }
      
      public static function get §`"H§() : §3$§
      {
         if(!§9"_§)
         {
            §9"_§ = new §3$§("main");
         }
         return §9"_§;
      }
      
      private static function §]"$§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §@!P§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §+"$§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §4"J§() : int
      {
         return this.§4#F§;
      }
      
      public function get §0"5§() : int
      {
         return this.§!<§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3$B§ = null;
         var _loc2_:§>!I§ = null;
         if(this.§`!h§)
         {
            for each(_loc1_ in this.§`!h§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§`!h§ = null;
         }
         this.§<!g§ = null;
         if(this.§!=§)
         {
            for each(_loc2_ in this.§!=§)
            {
               _loc2_.dispose();
            }
            this.§!=§ = null;
         }
         if(this.§+!D§)
         {
            this.§+!D§ = null;
         }
         if(this.§<">§)
         {
            this.§<">§ = null;
         }
         if(this.§ #3§)
         {
            this.§ #3§.dispose();
            this.§ #3§ = null;
         }
         if(this.§%"<§)
         {
            this.§%"<§.stop();
            this.§%"<§.removeEventListener(TimerEvent.TIMER,this.§,!#§);
            this.§%"<§ = null;
         }
         this.§!=§ = new Vector.<§>!I§>();
         this.§`!h§ = new Dictionary();
         this.§+!D§ = new Dictionary();
      }
      
      protected function §0b§(param1:String) : §>!I§
      {
         var _loc2_:§>!I§ = null;
         for each(_loc2_ in this.§!=§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §+#y§(param1:§%#w§, param2:int) : void
      {
         if(this.§`&§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§>!I§;
         if(!(_loc4_ = this.§0b§(_loc3_)))
         {
            _loc4_ = new §>!I§(_loc3_);
            this.§!=§.push(_loc4_);
         }
         _loc4_.§&!;§(param1);
      }
      
      private function §2"^§(param1:Vector.<§%#w§>, param2:§]#W§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:§%#w§ = null;
         var _loc11_:int = 0;
         var _loc12_:§^9§ = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc7_:int = param1.length + 1;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         do
         {
            _loc9_ = 0;
            _loc8_ = 0;
            _loc7_--;
            param2.reset(param3,param4,param5);
            _loc6_ = 0;
            while(_loc6_ < _loc7_)
            {
               _loc10_ = param1[_loc6_];
               _loc11_ = 0;
               while(_loc11_ < _loc10_.§]"a§)
               {
                  _loc12_ = _loc10_.§""s§(_loc11_);
                  _loc13_ = Math.ceil(_loc12_.rect.width / param5) * param5;
                  _loc14_ = Math.ceil(_loc12_.rect.height / param5) * param5;
                  param2.§^#;§(_loc13_,_loc14_,§+"$§(_loc11_,_loc6_));
                  _loc9_++;
                  _loc11_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§]#f§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §8#?§(param1:Vector.<§%#w§>, param2:§]#W§, param3:BitmapData) : §%#w§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§%#w§ = null;
         var sprite:§^9§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§^9§ = null;
         var spriteSheetCollection:Vector.<§%#w§> = param1;
         var rectanglePacker:§]#W§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§[";§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§%#w§ = new §%#w§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§[#0§(i,null);
            rectangleId = rectanglePacker.§+"$§(i);
            sheetIndex = §]"$§(rectangleId);
            rectangleIndex = §@!P§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§""s§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§%?§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §^9§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            packedSprite.§'"3§ = sprite.§'"3§;
            combinedSheet.§ !`§(packedSprite);
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
      
      private function §%?§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §3"A§() : Boolean
      {
         if(!Starling.§?"w§())
         {
            return false;
         }
         if(this.§`&§)
         {
            return false;
         }
         this.§`&§ = true;
         this.§3!p§ = getTimer();
         return !this.§7#a§();
      }
      
      private function §^J§() : void
      {
         var _loc1_:int = this.§4"J§ / 1024;
         var _loc2_:int = this.§0"5§ / 1024;
         var _loc3_:int = getTimer();
         this.§!=§ = new Vector.<§>!I§>();
         this.§?#^§ = true;
         this.§`&§ = false;
         if(this.§%"<§)
         {
            this.§%"<§.stop();
            this.§%"<§.removeEventListener(TimerEvent.TIMER,this.§,!#§);
            this.§%"<§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §,!#§(param1:Event) : void
      {
         this.§7#a§();
      }
      
      private function §7#a§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§>!I§ = null;
         var _loc3_:int = 0;
         if(this.§!=§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§!=§.pop();
            this.§'"J§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§!=§.length == 0)
         {
            this.§^J§();
         }
         else
         {
            if(!this.§%"<§)
            {
               this.§%"<§ = new Timer(§4d§,0);
               this.§%"<§.addEventListener(TimerEvent.TIMER,this.§,!#§);
            }
            else
            {
               this.§%"<§.stop();
            }
            this.§%"<§.start();
         }
         return this.§!=§.length > 0;
      }
      
      private function §'"J§(param1:§>!I§) : void
      {
         var spriteSheet:§%#w§ = null;
         var spriteSheetCollection:Vector.<§%#w§> = null;
         var bitmapWidth:int = 0;
         var bitmapHeight:int = 0;
         var combinedBitmapData:BitmapData = null;
         var combinedSpriteSheet:§%#w§ = null;
         var texture:Texture = null;
         var j:int = 0;
         var sprite:§^9§ = null;
         var sheetGroup:§>!I§ = param1;
         spriteSheetCollection = new Vector.<§%#w§>();
         var i:int = 0;
         while(i < sheetGroup.§5!H§)
         {
            spriteSheet = sheetGroup.§#!U§(i);
            if(spriteSheet.§]"a§ > 0)
            {
               spriteSheetCollection.push(spriteSheet);
            }
            i++;
         }
         var textureCount:int = 0;
         while(spriteSheetCollection.length > 0)
         {
            if(this.§2"^§(spriteSheetCollection,this.§ "_§,§<'§,§<'§,§?<§) == 0)
            {
               throw new Error("Found too large sprite sheet image for sprite sheet collection \'" + this.§3"e§(spriteSheetCollection) + "\'!");
            }
            bitmapWidth = getNextPowerOfTwo(this.§ "_§.§5#y§);
            bitmapHeight = getNextPowerOfTwo(this.§ "_§.§>a§);
            if(bitmapWidth <= 0 || bitmapHeight <= 0)
            {
               throw new Error("Invalid size results from rectangle packer, " + bitmapWidth + "x" + bitmapHeight + " for sprite sheet collection \'" + this.§3"e§(spriteSheetCollection) + "\'.");
            }
            try
            {
               combinedBitmapData = new BitmapData(bitmapWidth,bitmapHeight,true,16777215);
            }
            catch(e:Error)
            {
               throw new Error("Could not create bitmapdata sprite sheet (" + bitmapWidth + "x" + bitmapHeight + ") for collection \'" + §3"e§(spriteSheetCollection) + "\' (error: " + e.toString() + ").\n" + "Free memory: " + System.freeMemory + ", Used total memory: " + System.totalMemoryNumber + ", Private memory: " + System.privateMemory + ".",e.errorID);
            }
            combinedSpriteSheet = this.§8#?§(spriteSheetCollection,this.§ "_§,combinedBitmapData);
            texture = this.getTextureFromBitmapData(combinedBitmapData,true,1);
            this.§<">§.push(combinedBitmapData);
            j = 0;
            while(j < combinedSpriteSheet.§]"a§)
            {
               sprite = combinedSpriteSheet.§""s§(j);
               this.§=#d§(sprite,texture,combinedBitmapData,sprite.§'"3§);
               j++;
            }
            textureCount++;
         }
         if(textureCount > 1)
         {
         }
      }
      
      private function §3"e§(param1:Vector.<§%#w§>) : String
      {
         var _loc3_:§%#w§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_.name);
         }
         return _loc2_.join(", ");
      }
      
      private function §=#d§(param1:§^9§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§2"G§ = null;
         var _loc5_:§3$B§;
         if(!(_loc5_ = this.§`!h§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §2"G§(param2,_loc6_,false);
            _loc5_ = new §3$B§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§`!h§[param1.name] = _loc5_;
            this.§<!g§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§ $A§)
         {
            for(bd in this.§+!D§)
            {
               try
               {
                  texture = this.§+!D§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §3$B§
      {
         return this.§`!h§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§<!g§.length;
      }
      
      public function §3$6§(param1:int) : §3$B§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§`!h§[this.§<!g§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Number = 1.0) : Texture
      {
         var _loc4_:Texture;
         if(_loc4_ = this.§+!D§[param1])
         {
            return _loc4_;
         }
         _loc4_ = Starling.§2u§(param1,param2,false,param3);
         this.§+!D§[param1] = _loc4_;
         this.§1"o§(_loc4_,param1,true);
         return _loc4_;
      }
      
      protected function §1"o§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§!<§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§4#F§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §<"5§() : Texture
      {
         if(!this.§ #3§)
         {
            this.§ #3§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§ #3§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§+!D§)
         {
            if(this.§+!D§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§1"o§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§<">§.indexOf(_loc3_)) >= 0)
                  {
                     this.§<">§.splice(_loc4_,1);
                  }
               }
               delete this.§+!D§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §"#3§() : int
      {
         return this.§<">§.length;
      }
      
      public function §8#>§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§"#3§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§<">§[param1];
         var _loc3_:ByteArray = §1G§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
