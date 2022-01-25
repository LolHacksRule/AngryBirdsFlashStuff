package §0!_§
{
   import §1"1§.§&O§;
   import §1Q§.getNextPowerOfTwo;
   import §3-§.§'!h§;
   import §3-§.§3!!§;
   import §3-§.§6f§;
   import §6s§.§5d§;
   import §6s§.Texture;
   import §=!d§.§5!5§;
   import §=w§.§@!c§;
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
   
   public class §!!G§ extends EventDispatcher
   {
      
      protected static const §'!l§:Number = 20;
      
      private static const §-!q§:int = 2048;
      
      private static const §3=§:int = 8;
      
      private static var §-S§:§!!G§;
       
      
      private var §9g§:Dictionary;
      
      private var §=!&§:Vector.<String>;
      
      private var §'>§:Vector.<§6f§>;
      
      private var §6!a§:Dictionary;
      
      private var §=r§:Boolean;
      
      private var §@!$§:Boolean;
      
      private var §6!K§:int;
      
      private var §?!j§:String;
      
      private var §-J§:Texture;
      
      private var §!>§:int;
      
      private var §'!8§:int;
      
      private var §0"!§:§&O§;
      
      private var §6"6§:Timer;
      
      private var §6p§:Vector.<BitmapData>;
      
      public function §!!G§(param1:String = null)
      {
         this.§6p§ = new Vector.<BitmapData>();
         super();
         this.§'>§ = new Vector.<§6f§>();
         this.§9g§ = new Dictionary();
         this.§=!&§ = new Vector.<String>();
         this.§6!a§ = new Dictionary();
         this.§?!j§ = param1;
         this.§0"!§ = new §&O§(§-!q§,§-!q§);
      }
      
      public static function get §&!;§() : §!!G§
      {
         if(!§-S§)
         {
            §-S§ = new §!!G§("main");
         }
         return §-S§;
      }
      
      private static function §-"1§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §>6§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §9"6§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §2!Y§() : int
      {
         return this.§!>§;
      }
      
      public function get §#H§() : int
      {
         return this.§'!8§;
      }
      
      public function get id() : String
      {
         return this.§?!j§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§19§ = null;
         var _loc2_:§6f§ = null;
         if(this.§9g§)
         {
            for each(_loc1_ in this.§9g§)
            {
               this.§1,§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§9g§ = null;
         }
         this.§=!&§ = null;
         if(this.§'>§)
         {
            for each(_loc2_ in this.§'>§)
            {
               _loc2_.dispose();
            }
            this.§'>§ = null;
         }
         if(this.§6!a§)
         {
            this.§6!a§ = null;
         }
         if(this.§6p§)
         {
            this.§6p§ = null;
         }
         if(this.§-J§)
         {
            this.§-J§.dispose();
            this.§-J§ = null;
         }
         if(this.§6"6§)
         {
            this.§6"6§.stop();
            this.§6"6§.removeEventListener(TimerEvent.TIMER,this.§3`§);
            this.§6"6§ = null;
         }
         this.§'>§ = new Vector.<§6f§>();
         this.§9g§ = new Dictionary();
         this.§6!a§ = new Dictionary();
      }
      
      protected function §%!A§(param1:String) : §6f§
      {
         var _loc2_:§6f§ = null;
         for each(_loc2_ in this.§'>§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §'W§(param1:§3!!§, param2:int) : void
      {
         if(this.§=r§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§6f§;
         if(!(_loc4_ = this.§%!A§(_loc3_)))
         {
            _loc4_ = new §6f§(_loc3_);
            this.§'>§.push(_loc4_);
         }
         _loc4_.§@!k§(param1);
      }
      
      private function §9J§(param1:Vector.<§3!!§>, param2:§&O§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§3!!§ = null;
         var _loc12_:int = 0;
         var _loc13_:§'!h§ = null;
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
               while(_loc12_ < _loc11_.§""2§)
               {
                  _loc13_ = _loc11_.§"!=§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§-!i§(_loc14_,_loc15_,§9"6§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§2!B§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §-!+§(param1:Vector.<§3!!§>, param2:§&O§, param3:BitmapData) : §3!!§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§3!!§ = null;
         var sprite:§'!h§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§'!h§ = null;
         var spriteSheetCollection:Vector.<§3!!§> = param1;
         var rectanglePacker:§&O§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§6!&§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§3!!§ = new §3!!§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§,!%§(i,null);
            rectangleId = rectanglePacker.§9"6§(i);
            sheetIndex = §-"1§(rectangleId);
            rectangleIndex = §>6§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§"!=§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§=!0§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §'!h§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§#!I§(packedSprite);
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
      
      private function §=!0§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §9Q§() : Boolean
      {
         if(!§5!5§.§<3§())
         {
            return false;
         }
         if(this.§@!$§)
         {
            return false;
         }
         this.§@!$§ = true;
         this.§6!K§ = getTimer();
         return !this.§2!v§();
      }
      
      private function §[!&§() : void
      {
         var _loc1_:int = this.§2!Y§ / 1024;
         var _loc2_:int = this.§#H§ / 1024;
         var _loc3_:int = getTimer();
         this.§'>§ = new Vector.<§6f§>();
         this.§=r§ = true;
         if(this.§6"6§)
         {
            this.§6"6§.stop();
            this.§6"6§.removeEventListener(TimerEvent.TIMER,this.§3`§);
            this.§6"6§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §3`§(param1:Event) : void
      {
         this.§2!v§();
      }
      
      private function §2!v§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§6f§ = null;
         var _loc3_:int = 0;
         if(this.§'>§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§'>§.pop();
            this.§;^§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§'>§.length == 0)
         {
            this.§[!&§();
         }
         else
         {
            if(!this.§6"6§)
            {
               this.§6"6§ = new Timer(§'!l§,0);
               this.§6"6§.addEventListener(TimerEvent.TIMER,this.§3`§);
            }
            else
            {
               this.§6"6§.stop();
            }
            this.§6"6§.start();
         }
         return this.§'>§.length > 0;
      }
      
      private function §;^§(param1:§6f§) : void
      {
         var _loc2_:§3!!§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§3!!§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§'!h§ = null;
         var _loc3_:Vector.<§3!!§> = new Vector.<§3!!§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§ "#§)
         {
            _loc2_ = param1.§[!9§(_loc4_);
            if(_loc2_.§""2§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§9J§(_loc3_,this.§0"!§,§-!q§,§-!q§,§3=§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§0"!§.§2%§);
            _loc7_ = getNextPowerOfTwo(this.§0"!§.§1!1§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§-!+§(_loc3_,this.§0"!§,_loc8_);
            _loc10_ = this.§4"§(_loc8_);
            this.§6p§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§""2§)
            {
               _loc12_ = _loc9_.§"!=§(_loc11_);
               this.§4d§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §4d§(param1:§'!h§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§5d§ = null;
         var _loc5_:§19§;
         if(!(_loc5_ = this.§9g§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §5d§(param2,_loc6_,false);
            _loc5_ = new §19§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§9g§[param1.name] = _loc5_;
            this.§=!&§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§5!5§.§"!>§)
         {
            for(bd in this.§6!a§)
            {
               try
               {
                  texture = this.§6!a§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §<!z§(param1:String) : §19§
      {
         return this.§9g§[param1];
      }
      
      public function get §,=§() : int
      {
         return this.§=!&§.length;
      }
      
      public function §""§(param1:int) : §19§
      {
         if(param1 < 0 || param1 >= this.§,=§)
         {
            return null;
         }
         return this.§9g§[this.§=!&§[param1]];
      }
      
      public function §4"§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§6!a§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §5!5§.§5!7§(param1,param2);
         this.§6!a§[param1] = _loc3_;
         this.§@!^§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §@!^§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§'!8§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§!>§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §;!G§() : Texture
      {
         if(!this.§-J§)
         {
            this.§-J§ = this.§4"§(new BitmapData(40,40,false,16711935));
         }
         return this.§-J§;
      }
      
      public function §1,§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§6!a§)
         {
            if(this.§6!a§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§@!^§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§6p§.indexOf(_loc3_)) >= 0)
                  {
                     this.§6p§.splice(_loc4_,1);
                  }
               }
               delete this.§6!a§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §=!H§() : int
      {
         return this.§6p§.length;
      }
      
      public function §;!2§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§=!H§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§6p§[param1];
         var _loc3_:ByteArray = §@!c§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
