package §6!?§
{
   import §#"2§.§%V§;
   import §5!W§.§>P§;
   import §9`§.§3i§;
   import §9`§.§<!§;
   import §9`§.§=C§;
   import §?!t§.§=s§;
   import §^z§.§ p§;
   import §^z§.Texture;
   import §`!"§.getNextPowerOfTwo;
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
   
   public class §`!O§ extends EventDispatcher
   {
      
      protected static const §1`§:Number = 20;
      
      private static const §5",§:int = 2048;
      
      private static const §8I§:int = 8;
      
      private static var §9",§:§`!O§;
       
      
      private var § X§:Dictionary;
      
      private var §3$§:Vector.<§3i§>;
      
      private var §?k§:Dictionary;
      
      private var §"!w§:Boolean;
      
      private var §<y§:Boolean;
      
      private var §'_§:int;
      
      private var §]!U§:String;
      
      private var §1H§:Texture;
      
      private var §&",§:int;
      
      private var § !"§:int;
      
      private var §4]§:§=s§;
      
      private var §7§:Timer;
      
      private var §`!=§:Vector.<BitmapData>;
      
      public function §`!O§(param1:String = null)
      {
         this.§`!=§ = new Vector.<BitmapData>();
         super();
         this.§3$§ = new Vector.<§3i§>();
         this.§ X§ = new Dictionary();
         this.§?k§ = new Dictionary();
         this.§]!U§ = param1;
         this.§4]§ = new §=s§(§5",§,§5",§);
      }
      
      public static function get §=J§() : §`!O§
      {
         if(!§9",§)
         {
            §9",§ = new §`!O§("main");
         }
         return §9",§;
      }
      
      private static function §[1§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §?!]§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §&!4§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §8C§() : int
      {
         return this.§&",§;
      }
      
      public function get §,!S§() : int
      {
         return this.§ !"§;
      }
      
      public function get id() : String
      {
         return this.§]!U§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6B§ = null;
         var _loc2_:§3i§ = null;
         if(this.§ X§)
         {
            for each(_loc1_ in this.§ X§)
            {
               this.§=N§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§ X§ = null;
         }
         if(this.§3$§)
         {
            for each(_loc2_ in this.§3$§)
            {
               _loc2_.dispose();
            }
            this.§3$§ = null;
         }
         if(this.§?k§)
         {
            this.§?k§ = null;
         }
         if(this.§`!=§)
         {
            this.§`!=§ = null;
         }
         if(this.§1H§)
         {
            this.§1H§.dispose();
            this.§1H§ = null;
         }
         if(this.§7§)
         {
            this.§7§.stop();
            this.§7§.removeEventListener(TimerEvent.TIMER,this.§?!l§);
            this.§7§ = null;
         }
         this.§3$§ = new Vector.<§3i§>();
         this.§ X§ = new Dictionary();
         this.§?k§ = new Dictionary();
      }
      
      protected function §0!g§(param1:String) : §3i§
      {
         var _loc2_:§3i§ = null;
         for each(_loc2_ in this.§3$§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §'!e§(param1:§<!§, param2:int) : void
      {
         if(this.§"!w§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§3i§;
         if(!(_loc4_ = this.§0!g§(_loc3_)))
         {
            _loc4_ = new §3i§(_loc3_);
            this.§3$§.push(_loc4_);
         }
         _loc4_.§8"'§(param1);
      }
      
      private function §5!w§(param1:Vector.<§<!§>, param2:§=s§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§<!§ = null;
         var _loc12_:int = 0;
         var _loc13_:§=C§ = null;
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
               while(_loc12_ < _loc11_.§`s§)
               {
                  _loc13_ = _loc11_.§=4§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§-h§(_loc14_,_loc15_,§&!4§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§+"2§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §3K§(param1:Vector.<§<!§>, param2:§=s§, param3:BitmapData) : §<!§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§<!§ = null;
         var sprite:§=C§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§=C§ = null;
         var spriteSheetCollection:Vector.<§<!§> = param1;
         var rectanglePacker:§=s§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§5!I§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§<!§ = new §<!§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§'!&§(i,null);
            rectangleId = rectanglePacker.§&!4§(i);
            sheetIndex = §[1§(rectangleId);
            rectangleIndex = §?!]§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§=4§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§4"1§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §=C§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§]+§(packedSprite);
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
      
      private function §4"1§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §3r§() : Boolean
      {
         if(!§>P§.§1Y§())
         {
            return false;
         }
         if(this.§<y§)
         {
            return false;
         }
         this.§<y§ = true;
         this.§'_§ = getTimer();
         return !this.§]T§();
      }
      
      private function §%!-§() : void
      {
         var _loc1_:int = this.§8C§ / 1024;
         var _loc2_:int = this.§,!S§ / 1024;
         var _loc3_:int = getTimer();
         this.§3$§ = new Vector.<§3i§>();
         this.§"!w§ = true;
         if(this.§7§)
         {
            this.§7§.stop();
            this.§7§.removeEventListener(TimerEvent.TIMER,this.§?!l§);
            this.§7§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §?!l§(param1:Event) : void
      {
         this.§]T§();
      }
      
      private function §]T§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§3i§ = null;
         var _loc3_:int = 0;
         if(this.§3$§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§3$§.pop();
            this.§!!C§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§3$§.length == 0)
         {
            this.§%!-§();
         }
         else
         {
            if(!this.§7§)
            {
               this.§7§ = new Timer(§1`§,0);
               this.§7§.addEventListener(TimerEvent.TIMER,this.§?!l§);
            }
            else
            {
               this.§7§.stop();
            }
            this.§7§.start();
         }
         return this.§3$§.length > 0;
      }
      
      private function §!!C§(param1:§3i§) : void
      {
         var _loc2_:§<!§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§<!§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§=C§ = null;
         var _loc3_:Vector.<§<!§> = new Vector.<§<!§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§ #§)
         {
            _loc2_ = param1.§<;§(_loc4_);
            if(_loc2_.§`s§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§5!w§(_loc3_,this.§4]§,§5",§,§5",§,§8I§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§4]§.§8!B§);
            _loc7_ = getNextPowerOfTwo(this.§4]§.§%D§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§3K§(_loc3_,this.§4]§,_loc8_);
            _loc10_ = this.§6!&§(_loc8_);
            this.§`!=§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§`s§)
            {
               _loc12_ = _loc9_.§=4§(_loc11_);
               this.§0x§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §0x§(param1:§=C§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§ p§ = null;
         var _loc5_:§6B§;
         if(!(_loc5_ = this.§ X§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new § p§(param2,_loc6_,false);
            _loc5_ = new §6B§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§ X§[param1.name] = _loc5_;
         }
      }
      
      public function §""§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§>P§.§=!l§)
         {
            for(bd in this.§?k§)
            {
               try
               {
                  texture = this.§?k§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §=!'§(param1:String) : §6B§
      {
         return this.§ X§[param1];
      }
      
      public function §6!&§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§?k§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §>P§.§-S§(param1,param2);
         this.§?k§[param1] = _loc3_;
         this.§5i§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §5i§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§ !"§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§&",§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §3!`§() : Texture
      {
         if(!this.§1H§)
         {
            this.§1H§ = this.§6!&§(new BitmapData(40,40,false,16711935));
         }
         return this.§1H§;
      }
      
      public function §=N§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§?k§)
         {
            if(this.§?k§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§5i§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§`!=§.indexOf(_loc3_)) >= 0)
                  {
                     this.§`!=§.splice(_loc4_,1);
                  }
               }
               delete this.§?k§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §^n§() : int
      {
         return this.§`!=§.length;
      }
      
      public function §]N§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§^n§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§`!=§[param1];
         var _loc3_:ByteArray = §%V§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
