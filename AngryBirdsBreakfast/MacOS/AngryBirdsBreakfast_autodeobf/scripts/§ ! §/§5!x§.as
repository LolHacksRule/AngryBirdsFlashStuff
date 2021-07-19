package § ! §
{
   import §%q§.§<w§;
   import §%q§.Texture;
   import §'!l§.§5K§;
   import §'!l§.§9!#§;
   import §'!l§.§]!e§;
   import §+o§.getNextPowerOfTwo;
   import §1"%§.§?#§;
   import §[O§.§3!$§;
   import §`!a§.§1"&§;
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
   
   public class §5!x§ extends EventDispatcher
   {
      
      protected static const §+]§:Number = 20;
      
      private static const §&!'§:int = 2048;
      
      private static const § 2§:int = 8;
      
      private static var §0!§:§5!x§;
       
      
      private var §"^§:Dictionary;
      
      private var §&!6§:Vector.<String>;
      
      private var §-!0§:Vector.<§]!e§>;
      
      private var §6e§:Dictionary;
      
      private var §5C§:Boolean;
      
      private var §8!G§:Boolean;
      
      private var §#U§:int;
      
      private var §>6§:String;
      
      private var § !e§:Texture;
      
      private var §[!>§:int;
      
      private var §'4§:int;
      
      private var §["'§:§?#§;
      
      private var §="#§:Timer;
      
      private var §+!Z§:Vector.<BitmapData>;
      
      public function §5!x§(param1:String = null)
      {
         this.§+!Z§ = new Vector.<BitmapData>();
         super();
         this.§-!0§ = new Vector.<§]!e§>();
         this.§"^§ = new Dictionary();
         this.§&!6§ = new Vector.<String>();
         this.§6e§ = new Dictionary();
         this.§>6§ = param1;
         this.§["'§ = new §?#§(§&!'§,§&!'§);
      }
      
      public static function get §2Z§() : §5!x§
      {
         if(!§0!§)
         {
            §0!§ = new §5!x§("main");
         }
         return §0!§;
      }
      
      private static function § !?§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §4!V§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §<P§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §[5§() : int
      {
         return this.§[!>§;
      }
      
      public function get §]-§() : int
      {
         return this.§'4§;
      }
      
      public function get id() : String
      {
         return this.§>6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8-§ = null;
         var _loc2_:§]!e§ = null;
         if(this.§"^§)
         {
            for each(_loc1_ in this.§"^§)
            {
               this.§ !A§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§"^§ = null;
         }
         this.§&!6§ = null;
         if(this.§-!0§)
         {
            for each(_loc2_ in this.§-!0§)
            {
               _loc2_.dispose();
            }
            this.§-!0§ = null;
         }
         if(this.§6e§)
         {
            this.§6e§ = null;
         }
         if(this.§+!Z§)
         {
            this.§+!Z§ = null;
         }
         if(this.§ !e§)
         {
            this.§ !e§.dispose();
            this.§ !e§ = null;
         }
         if(this.§="#§)
         {
            this.§="#§.stop();
            this.§="#§.removeEventListener(TimerEvent.TIMER,this.§`%§);
            this.§="#§ = null;
         }
         this.§-!0§ = new Vector.<§]!e§>();
         this.§"^§ = new Dictionary();
         this.§6e§ = new Dictionary();
      }
      
      protected function §>r§(param1:String) : §]!e§
      {
         var _loc2_:§]!e§ = null;
         for each(_loc2_ in this.§-!0§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §5!"§(param1:§9!#§, param2:int) : void
      {
         if(this.§5C§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§]!e§;
         if(!(_loc4_ = this.§>r§(_loc3_)))
         {
            _loc4_ = new §]!e§(_loc3_);
            this.§-!0§.push(_loc4_);
         }
         _loc4_.§1!u§(param1);
      }
      
      private function §#!-§(param1:Vector.<§9!#§>, param2:§?#§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§9!#§ = null;
         var _loc12_:int = 0;
         var _loc13_:§5K§ = null;
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
               while(_loc12_ < _loc11_.§^%§)
               {
                  _loc13_ = _loc11_.§ k§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§&!`§(_loc14_,_loc15_,§<P§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§6!_§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §,N§(param1:Vector.<§9!#§>, param2:§?#§, param3:BitmapData) : §9!#§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§9!#§ = null;
         var sprite:§5K§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§5K§ = null;
         var spriteSheetCollection:Vector.<§9!#§> = param1;
         var rectanglePacker:§?#§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§+I§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§9!#§ = new §9!#§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§6!'§(i,null);
            rectangleId = rectanglePacker.§<P§(i);
            sheetIndex = § !?§(rectangleId);
            rectangleIndex = §4!V§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§ k§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§6$§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §5K§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§?!t§(packedSprite);
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
      
      private function §6$§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §0"&§() : Boolean
      {
         if(!§1"&§.§ !R§())
         {
            return false;
         }
         if(this.§8!G§)
         {
            return false;
         }
         this.§8!G§ = true;
         this.§#U§ = getTimer();
         return !this.§4c§();
      }
      
      private function §?D§() : void
      {
         var _loc1_:int = this.§[5§ / 1024;
         var _loc2_:int = this.§]-§ / 1024;
         var _loc3_:int = getTimer();
         this.§-!0§ = new Vector.<§]!e§>();
         this.§5C§ = true;
         if(this.§="#§)
         {
            this.§="#§.stop();
            this.§="#§.removeEventListener(TimerEvent.TIMER,this.§`%§);
            this.§="#§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §`%§(param1:Event) : void
      {
         this.§4c§();
      }
      
      private function §4c§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§]!e§ = null;
         var _loc3_:int = 0;
         if(this.§-!0§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§-!0§.pop();
            this.§`6§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§-!0§.length == 0)
         {
            this.§?D§();
         }
         else
         {
            if(!this.§="#§)
            {
               this.§="#§ = new Timer(§+]§,0);
               this.§="#§.addEventListener(TimerEvent.TIMER,this.§`%§);
            }
            else
            {
               this.§="#§.stop();
            }
            this.§="#§.start();
         }
         return this.§-!0§.length > 0;
      }
      
      private function §`6§(param1:§]!e§) : void
      {
         var _loc2_:§9!#§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§9!#§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§5K§ = null;
         var _loc3_:Vector.<§9!#§> = new Vector.<§9!#§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§]!M§)
         {
            _loc2_ = param1.§-!d§(_loc4_);
            if(_loc2_.§^%§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§#!-§(_loc3_,this.§["'§,§&!'§,§&!'§,§ 2§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§["'§.§9!J§);
            _loc7_ = getNextPowerOfTwo(this.§["'§.§&;§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§,N§(_loc3_,this.§["'§,_loc8_);
            _loc10_ = this.§%^§(_loc8_);
            this.§+!Z§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§^%§)
            {
               _loc12_ = _loc9_.§ k§(_loc11_);
               this.§@?§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §@?§(param1:§5K§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§<w§ = null;
         var _loc5_:§8-§;
         if(!(_loc5_ = this.§"^§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §<w§(param2,_loc6_,false);
            _loc5_ = new §8-§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§"^§[param1.name] = _loc5_;
            this.§&!6§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§1"&§.§;J§)
         {
            for(bd in this.§6e§)
            {
               try
               {
                  texture = this.§6e§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §`I§(param1:String) : §8-§
      {
         return this.§"^§[param1];
      }
      
      public function get §'?§() : int
      {
         return this.§&!6§.length;
      }
      
      public function §[!X§(param1:int) : §8-§
      {
         if(param1 < 0 || param1 >= this.§'?§)
         {
            return null;
         }
         return this.§"^§[this.§&!6§[param1]];
      }
      
      public function §%^§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§6e§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §1"&§.§7!#§(param1,param2);
         this.§6e§[param1] = _loc3_;
         this.§-X§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §-X§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§'4§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§[!>§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §2!;§() : Texture
      {
         if(!this.§ !e§)
         {
            this.§ !e§ = this.§%^§(new BitmapData(40,40,false,16711935));
         }
         return this.§ !e§;
      }
      
      public function § !A§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§6e§)
         {
            if(this.§6e§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§-X§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§+!Z§.indexOf(_loc3_)) >= 0)
                  {
                     this.§+!Z§.splice(_loc4_,1);
                  }
               }
               delete this.§6e§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §"!e§() : int
      {
         return this.§+!Z§.length;
      }
      
      public function §-?§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§"!e§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§+!Z§[param1];
         var _loc3_:ByteArray = §3!$§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
