package §2`§
{
   import §!!!§.§6!l§;
   import §0!B§.§^!B§;
   import §8! §.§2!f§;
   import §8! §.§9q§;
   import §8! §.§^"-§;
   import §=!4§.§ !5§;
   import §=!4§.Texture;
   import §?@§.§6!F§;
   import §^!^§.getNextPowerOfTwo;
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
   
   public class §%!!§ extends EventDispatcher
   {
      
      protected static const §4! §:Number = 20;
      
      private static const §>&§:int = 2048;
      
      private static const §9!<§:int = 8;
      
      private static var §'E§:§%!!§;
       
      
      private var §5"%§:Dictionary;
      
      private var §^!e§:Vector.<String>;
      
      private var §!!Q§:Vector.<§2!f§>;
      
      private var §["!§:Dictionary;
      
      private var §]!F§:Boolean;
      
      private var §06§:Boolean;
      
      private var §%"&§:int;
      
      private var §?0§:String;
      
      private var §&!7§:Texture;
      
      private var §"!>§:int;
      
      private var §1!s§:int;
      
      private var §0b§:§^!B§;
      
      private var §="'§:Timer;
      
      private var §&!0§:Vector.<BitmapData>;
      
      public function §%!!§(param1:String = null)
      {
         this.§&!0§ = new Vector.<BitmapData>();
         super();
         this.§!!Q§ = new Vector.<§2!f§>();
         this.§5"%§ = new Dictionary();
         this.§^!e§ = new Vector.<String>();
         this.§["!§ = new Dictionary();
         this.§?0§ = param1;
         this.§0b§ = new §^!B§(§>&§,§>&§);
      }
      
      public static function get §,2§() : §%!!§
      {
         if(!§'E§)
         {
            §'E§ = new §%!!§("main");
         }
         return §'E§;
      }
      
      private static function §@O§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §'!v§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §<"3§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §>3§() : int
      {
         return this.§"!>§;
      }
      
      public function get §4Y§() : int
      {
         return this.§1!s§;
      }
      
      public function get id() : String
      {
         return this.§?0§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§5E§ = null;
         var _loc2_:§2!f§ = null;
         if(this.§5"%§)
         {
            for each(_loc1_ in this.§5"%§)
            {
               this.§ f§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§5"%§ = null;
         }
         this.§^!e§ = null;
         if(this.§!!Q§)
         {
            for each(_loc2_ in this.§!!Q§)
            {
               _loc2_.dispose();
            }
            this.§!!Q§ = null;
         }
         if(this.§["!§)
         {
            this.§["!§ = null;
         }
         if(this.§&!0§)
         {
            this.§&!0§ = null;
         }
         if(this.§&!7§)
         {
            this.§&!7§.dispose();
            this.§&!7§ = null;
         }
         if(this.§="'§)
         {
            this.§="'§.stop();
            this.§="'§.removeEventListener(TimerEvent.TIMER,this.§1T§);
            this.§="'§ = null;
         }
         this.§!!Q§ = new Vector.<§2!f§>();
         this.§5"%§ = new Dictionary();
         this.§["!§ = new Dictionary();
      }
      
      protected function §@m§(param1:String) : §2!f§
      {
         var _loc2_:§2!f§ = null;
         for each(_loc2_ in this.§!!Q§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^!0§(param1:§9q§, param2:int) : void
      {
         if(this.§]!F§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§2!f§;
         if(!(_loc4_ = this.§@m§(_loc3_)))
         {
            _loc4_ = new §2!f§(_loc3_);
            this.§!!Q§.push(_loc4_);
         }
         _loc4_.§^",§(param1);
      }
      
      private function §3!y§(param1:Vector.<§9q§>, param2:§^!B§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§9q§ = null;
         var _loc12_:int = 0;
         var _loc13_:§^"-§ = null;
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
               while(_loc12_ < _loc11_.§!,§)
               {
                  _loc13_ = _loc11_.§0@§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§;6§(_loc14_,_loc15_,§<"3§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§65§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §`u§(param1:Vector.<§9q§>, param2:§^!B§, param3:BitmapData) : §9q§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§9q§ = null;
         var sprite:§^"-§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§^"-§ = null;
         var spriteSheetCollection:Vector.<§9q§> = param1;
         var rectanglePacker:§^!B§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§=;§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§9q§ = new §9q§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§^!s§(i,null);
            rectangleId = rectanglePacker.§<"3§(i);
            sheetIndex = §@O§(rectangleId);
            rectangleIndex = §'!v§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§0@§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§3!,§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §^"-§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§-"#§(packedSprite);
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
      
      private function §3!,§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §,!X§() : Boolean
      {
         if(!§6!l§.§<E§())
         {
            return false;
         }
         if(this.§06§)
         {
            return false;
         }
         this.§06§ = true;
         this.§%"&§ = getTimer();
         return !this.§==§();
      }
      
      private function §9!D§() : void
      {
         var _loc1_:int = this.§>3§ / 1024;
         var _loc2_:int = this.§4Y§ / 1024;
         var _loc3_:int = getTimer();
         this.§!!Q§ = new Vector.<§2!f§>();
         this.§]!F§ = true;
         if(this.§="'§)
         {
            this.§="'§.stop();
            this.§="'§.removeEventListener(TimerEvent.TIMER,this.§1T§);
            this.§="'§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §1T§(param1:Event) : void
      {
         this.§==§();
      }
      
      private function §==§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§2!f§ = null;
         var _loc3_:int = 0;
         if(this.§!!Q§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§!!Q§.pop();
            this.§-i§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§!!Q§.length == 0)
         {
            this.§9!D§();
         }
         else
         {
            if(!this.§="'§)
            {
               this.§="'§ = new Timer(§4! §,0);
               this.§="'§.addEventListener(TimerEvent.TIMER,this.§1T§);
            }
            else
            {
               this.§="'§.stop();
            }
            this.§="'§.start();
         }
         return this.§!!Q§.length > 0;
      }
      
      private function §-i§(param1:§2!f§) : void
      {
         var _loc2_:§9q§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§9q§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§^"-§ = null;
         var _loc3_:Vector.<§9q§> = new Vector.<§9q§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§8!h§)
         {
            _loc2_ = param1.§!!-§(_loc4_);
            if(_loc2_.§!,§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§3!y§(_loc3_,this.§0b§,§>&§,§>&§,§9!<§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§0b§.§6Q§);
            _loc7_ = getNextPowerOfTwo(this.§0b§.§#_§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§`u§(_loc3_,this.§0b§,_loc8_);
            _loc10_ = this.§@!;§(_loc8_);
            this.§&!0§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§!,§)
            {
               _loc12_ = _loc9_.§0@§(_loc11_);
               this.§7#§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §7#§(param1:§^"-§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§ !5§ = null;
         var _loc5_:§5E§;
         if(!(_loc5_ = this.§5"%§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new § !5§(param2,_loc6_,false);
            _loc5_ = new §5E§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§5"%§[param1.name] = _loc5_;
            this.§^!e§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§6!l§.§0i§)
         {
            for(bd in this.§["!§)
            {
               try
               {
                  texture = this.§["!§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §5!X§(param1:String) : §5E§
      {
         return this.§5"%§[param1];
      }
      
      public function get §2!Q§() : int
      {
         return this.§^!e§.length;
      }
      
      public function §9!J§(param1:int) : §5E§
      {
         if(param1 < 0 || param1 >= this.§2!Q§)
         {
            return null;
         }
         return this.§5"%§[this.§^!e§[param1]];
      }
      
      public function §@!;§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§["!§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §6!l§.§9`§(param1,param2);
         this.§["!§[param1] = _loc3_;
         this.§']§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §']§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§1!s§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§"!>§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §4!0§() : Texture
      {
         if(!this.§&!7§)
         {
            this.§&!7§ = this.§@!;§(new BitmapData(40,40,false,16711935));
         }
         return this.§&!7§;
      }
      
      public function § f§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§["!§)
         {
            if(this.§["!§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§']§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§&!0§.indexOf(_loc3_)) >= 0)
                  {
                     this.§&!0§.splice(_loc4_,1);
                  }
               }
               delete this.§["!§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §5!>§() : int
      {
         return this.§&!0§.length;
      }
      
      public function §7s§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§5!>§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§&!0§[param1];
         var _loc3_:ByteArray = §6!F§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
