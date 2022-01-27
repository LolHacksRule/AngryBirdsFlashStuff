package §!!k§
{
   import § "-§.§6!R§;
   import §&"s§.§-Y§;
   import §&"s§.Texture;
   import §+=§.§;"S§;
   import §+=§.§<T§;
   import §+=§.§@"Z§;
   import §,!b§.§"!<§;
   import §7"G§.getNextPowerOfTwo;
   import §>"!§.§0"%§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §0!B§ extends EventDispatcher
   {
      
      protected static const §!!C§:Number = 20;
      
      private static const §,!y§:int = 2048;
      
      private static const §2!C§:int = 8;
      
      private static var §7#2§:§0!B§;
       
      
      private var §?! §:Dictionary;
      
      private var §7"]§:Vector.<String>;
      
      private var §`$§:Vector.<§;"S§>;
      
      private var §]"u§:Dictionary;
      
      private var §&"_§:Boolean;
      
      private var §3!>§:Boolean;
      
      private var §[!O§:int;
      
      private var §]!R§:String;
      
      private var §^t§:Texture;
      
      private var §;!e§:int;
      
      private var §0!Y§:int;
      
      private var §-";§:§"!<§;
      
      private var §1"p§:Timer;
      
      private var §7q§:Vector.<BitmapData>;
      
      public function §0!B§(param1:String = null)
      {
         this.§7q§ = new Vector.<BitmapData>();
         super();
         this.§`$§ = new Vector.<§;"S§>();
         this.§?! § = new Dictionary();
         this.§7"]§ = new Vector.<String>();
         this.§]"u§ = new Dictionary();
         this.§]!R§ = param1;
         this.§-";§ = new §"!<§(§,!y§,§,!y§);
      }
      
      public static function get §!6§() : §0!B§
      {
         if(!§7#2§)
         {
            §7#2§ = new §0!B§("main");
         }
         return §7#2§;
      }
      
      private static function §<!1§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §5Q§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §0L§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get textureMemoryUsage() : int
      {
         return this.§;!e§;
      }
      
      public function get bitmapMemoryUsage() : int
      {
         return this.§0!Y§;
      }
      
      public function get id() : String
      {
         return this.§]!R§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!j§ = null;
         var _loc2_:§;"S§ = null;
         if(this.§?! §)
         {
            for each(_loc1_ in this.§?! §)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§?! § = null;
         }
         this.§7"]§ = null;
         if(this.§`$§)
         {
            for each(_loc2_ in this.§`$§)
            {
               _loc2_.dispose();
            }
            this.§`$§ = null;
         }
         if(this.§]"u§)
         {
            this.§]"u§ = null;
         }
         if(this.§7q§)
         {
            this.§7q§ = null;
         }
         if(this.§^t§)
         {
            this.§^t§.dispose();
            this.§^t§ = null;
         }
         if(this.§1"p§)
         {
            this.§1"p§.stop();
            this.§1"p§.removeEventListener(TimerEvent.TIMER,this.§%!t§);
            this.§1"p§ = null;
         }
         this.§`$§ = new Vector.<§;"S§>();
         this.§?! § = new Dictionary();
         this.§]"u§ = new Dictionary();
      }
      
      protected function §0]§(param1:String) : §;"S§
      {
         var _loc2_:§;"S§ = null;
         for each(_loc2_ in this.§`$§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §;C§(param1:§<T§, param2:int) : void
      {
         if(this.§&"_§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§;"S§;
         if(!(_loc4_ = this.§0]§(_loc3_)))
         {
            _loc4_ = new §;"S§(_loc3_);
            this.§`$§.push(_loc4_);
         }
         _loc4_.§8"Y§(param1);
      }
      
      private function §0"<§(param1:Vector.<§<T§>, param2:§"!<§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§<T§ = null;
         var _loc12_:int = 0;
         var _loc13_:§@"Z§ = null;
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
               while(_loc12_ < _loc11_.§8x§)
               {
                  _loc13_ = _loc11_.§%§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§;o§(_loc14_,_loc15_,§0L§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§3^§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function § "w§(param1:Vector.<§<T§>, param2:§"!<§, param3:BitmapData) : §<T§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§<T§ = null;
         var sprite:§@"Z§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§@"Z§ = null;
         var spriteSheetCollection:Vector.<§<T§> = param1;
         var rectanglePacker:§"!<§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§!E§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§<T§ = new §<T§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§8Z§(i,null);
            rectangleId = rectanglePacker.§0L§(i);
            sheetIndex = §<!1§(rectangleId);
            rectangleIndex = §5Q§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§%§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§^W§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §@"Z§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§26§(packedSprite);
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
      
      private function §^W§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function initializeTextures() : Boolean
      {
         if(!§6!R§.§^!j§())
         {
            return false;
         }
         if(this.§3!>§)
         {
            return false;
         }
         this.§3!>§ = true;
         this.§[!O§ = getTimer();
         return !this.§,"7§();
      }
      
      private function §[!a§() : void
      {
         var _loc1_:int = this.textureMemoryUsage / 1024;
         var _loc2_:int = this.bitmapMemoryUsage / 1024;
         var _loc3_:int = getTimer();
         this.§`$§ = new Vector.<§;"S§>();
         this.§&"_§ = true;
         if(this.§1"p§)
         {
            this.§1"p§.stop();
            this.§1"p§.removeEventListener(TimerEvent.TIMER,this.§%!t§);
            this.§1"p§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §%!t§(param1:Event) : void
      {
         this.§,"7§();
      }
      
      private function §,"7§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§;"S§ = null;
         var _loc3_:int = 0;
         if(this.§`$§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§`$§.pop();
            this.§2H§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§`$§.length == 0)
         {
            this.§[!a§();
         }
         else
         {
            if(!this.§1"p§)
            {
               this.§1"p§ = new Timer(§!!C§,0);
               this.§1"p§.addEventListener(TimerEvent.TIMER,this.§%!t§);
            }
            else
            {
               this.§1"p§.stop();
            }
            this.§1"p§.start();
         }
         return this.§`$§.length > 0;
      }
      
      private function §2H§(param1:§;"S§) : void
      {
         var _loc2_:§<T§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§<T§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§@"Z§ = null;
         var _loc3_:Vector.<§<T§> = new Vector.<§<T§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§<6§)
         {
            _loc2_ = param1.§'!1§(_loc4_);
            if(_loc2_.§8x§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§0"<§(_loc3_,this.§-";§,§,!y§,§,!y§,§2!C§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§-";§.§6#0§);
            _loc7_ = getNextPowerOfTwo(this.§-";§.§^j§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§ "w§(_loc3_,this.§-";§,_loc8_);
            _loc10_ = this.getTextureFromBitmapData(_loc8_);
            this.§7q§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§8x§)
            {
               _loc12_ = _loc9_.§%§(_loc11_);
               this.§'!+§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §'!+§(param1:§@"Z§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§-Y§ = null;
         var _loc5_:§'!j§;
         if(!(_loc5_ = this.§?! §[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §-Y§(param2,_loc6_,false);
            _loc5_ = new §'!j§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§?! §[param1.name] = _loc5_;
            this.§7"]§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§6!R§.§?8§)
         {
            for(bd in this.§]"u§)
            {
               try
               {
                  texture = this.§]"u§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §'!j§
      {
         return this.§?! §[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§7"]§.length;
      }
      
      public function getTextureWithIndex(param1:int) : §'!j§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§?! §[this.§7"]§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§]"u§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §6!R§.§8C§(param1,param2);
         this.§]"u§[param1] = _loc3_;
         this.§ !n§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function § !n§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§0!Y§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§;!e§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §3#$§() : Texture
      {
         if(!this.§^t§)
         {
            this.§^t§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§^t§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§]"u§)
         {
            if(this.§]"u§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§ !n§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§7q§.indexOf(_loc3_)) >= 0)
                  {
                     this.§7q§.splice(_loc4_,1);
                  }
               }
               delete this.§]"u§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §7"%§() : int
      {
         return this.§7q§.length;
      }
      
      public function §>f§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§7"%§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§7q§[param1];
         var _loc3_:ByteArray = §0"%§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
