package §;L§
{
   import § !a§.§1!_§;
   import § !a§.Texture;
   import §0!`§.§0W§;
   import §0!`§.§??§;
   import §0!`§.§[P§;
   import §=D§.getNextPowerOfTwo;
   import §[q§.§;!u§;
   import §]!G§.§`3§;
   import §`V§.§;6§;
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
   
   public class §"!X§ extends EventDispatcher
   {
      
      protected static const §#",§:Number = 20;
      
      private static const §7"2§:int = 2048;
      
      private static const §1b§:int = 8;
      
      private static var §?l§:§"!X§;
       
      
      private var §=Q§:Dictionary;
      
      private var §-l§:Vector.<§??§>;
      
      private var §[=§:Dictionary;
      
      private var §2",§:Boolean;
      
      private var §6!8§:Boolean;
      
      private var §%!M§:int;
      
      private var §=H§:String;
      
      private var §6!g§:Texture;
      
      private var §3!0§:int;
      
      private var §>!g§:int;
      
      private var §'!E§:§;!u§;
      
      private var §<3§:Timer;
      
      private var § !C§:Vector.<BitmapData>;
      
      public function §"!X§(param1:String = null)
      {
         this.§ !C§ = new Vector.<BitmapData>();
         super();
         this.§-l§ = new Vector.<§??§>();
         this.§=Q§ = new Dictionary();
         this.§[=§ = new Dictionary();
         this.§=H§ = param1;
         this.§'!E§ = new §;!u§(§7"2§,§7"2§);
      }
      
      public static function get §>!P§() : §"!X§
      {
         if(!§?l§)
         {
            §?l§ = new §"!X§("main");
         }
         return §?l§;
      }
      
      private static function §5Q§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §>`§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §<v§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get § in§() : int
      {
         return this.§3!0§;
      }
      
      public function get §`h§() : int
      {
         return this.§>!g§;
      }
      
      public function get id() : String
      {
         return this.§=H§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[!H§ = null;
         var _loc2_:§??§ = null;
         if(this.§=Q§)
         {
            for each(_loc1_ in this.§=Q§)
            {
               this.§!Y§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§=Q§ = null;
         }
         if(this.§-l§)
         {
            for each(_loc2_ in this.§-l§)
            {
               _loc2_.dispose();
            }
            this.§-l§ = null;
         }
         if(this.§[=§)
         {
            this.§[=§ = null;
         }
         if(this.§ !C§)
         {
            this.§ !C§ = null;
         }
         if(this.§6!g§)
         {
            this.§6!g§.dispose();
            this.§6!g§ = null;
         }
         if(this.§<3§)
         {
            this.§<3§.stop();
            this.§<3§.removeEventListener(TimerEvent.TIMER,this.§=o§);
            this.§<3§ = null;
         }
         this.§-l§ = new Vector.<§??§>();
         this.§=Q§ = new Dictionary();
         this.§[=§ = new Dictionary();
      }
      
      protected function §39§(param1:String) : §??§
      {
         var _loc2_:§??§ = null;
         for each(_loc2_ in this.§-l§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^P§(param1:§0W§, param2:int) : void
      {
         if(this.§2",§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§??§;
         if(!(_loc4_ = this.§39§(_loc3_)))
         {
            _loc4_ = new §??§(_loc3_);
            this.§-l§.push(_loc4_);
         }
         _loc4_.§^"+§(param1);
      }
      
      private function §="-§(param1:Vector.<§0W§>, param2:§;!u§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§0W§ = null;
         var _loc12_:int = 0;
         var _loc13_:§[P§ = null;
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
               while(_loc12_ < _loc11_.§>$§)
               {
                  _loc13_ = _loc11_.§]g§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§?j§(_loc14_,_loc15_,§<v§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§@!g§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §]!Q§(param1:Vector.<§0W§>, param2:§;!u§, param3:BitmapData) : §0W§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§0W§ = null;
         var sprite:§[P§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§[P§ = null;
         var spriteSheetCollection:Vector.<§0W§> = param1;
         var rectanglePacker:§;!u§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§]W§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§0W§ = new §0W§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§4!n§(i,null);
            rectangleId = rectanglePacker.§<v§(i);
            sheetIndex = §5Q§(rectangleId);
            rectangleIndex = §>`§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§]g§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§1N§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §[P§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§^=§(packedSprite);
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
      
      private function §1N§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §+v§() : Boolean
      {
         if(!§;6§.§%1§())
         {
            return false;
         }
         if(this.§6!8§)
         {
            return false;
         }
         this.§6!8§ = true;
         this.§%!M§ = getTimer();
         return !this.§ U§();
      }
      
      private function §+!`§() : void
      {
         var _loc1_:int = this.§ in§ / 1024;
         var _loc2_:int = this.§`h§ / 1024;
         var _loc3_:int = getTimer();
         this.§-l§ = new Vector.<§??§>();
         this.§2",§ = true;
         if(this.§<3§)
         {
            this.§<3§.stop();
            this.§<3§.removeEventListener(TimerEvent.TIMER,this.§=o§);
            this.§<3§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §=o§(param1:Event) : void
      {
         this.§ U§();
      }
      
      private function § U§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§??§ = null;
         var _loc3_:int = 0;
         if(this.§-l§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§-l§.pop();
            this.§1!5§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§-l§.length == 0)
         {
            this.§+!`§();
         }
         else
         {
            if(!this.§<3§)
            {
               this.§<3§ = new Timer(§#",§,0);
               this.§<3§.addEventListener(TimerEvent.TIMER,this.§=o§);
            }
            else
            {
               this.§<3§.stop();
            }
            this.§<3§.start();
         }
         return this.§-l§.length > 0;
      }
      
      private function §1!5§(param1:§??§) : void
      {
         var _loc2_:§0W§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§0W§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§[P§ = null;
         var _loc3_:Vector.<§0W§> = new Vector.<§0W§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§8"&§)
         {
            _loc2_ = param1.§>!Q§(_loc4_);
            if(_loc2_.§>$§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§="-§(_loc3_,this.§'!E§,§7"2§,§7"2§,§1b§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§'!E§.§7,§);
            _loc7_ = getNextPowerOfTwo(this.§'!E§.§^!!§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§]!Q§(_loc3_,this.§'!E§,_loc8_);
            _loc10_ = this.§@",§(_loc8_);
            this.§ !C§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§>$§)
            {
               _loc12_ = _loc9_.§]g§(_loc11_);
               this.§1p§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §1p§(param1:§[P§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§1!_§ = null;
         var _loc5_:§[!H§;
         if(!(_loc5_ = this.§=Q§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §1!_§(param2,_loc6_,false);
            _loc5_ = new §[!H§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§=Q§[param1.name] = _loc5_;
         }
      }
      
      public function §`F§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§;6§.§]!h§)
         {
            for(bd in this.§[=§)
            {
               try
               {
                  texture = this.§[=§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §""#§(param1:String) : §[!H§
      {
         return this.§=Q§[param1];
      }
      
      public function §@",§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§[=§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §;6§.§'A§(param1,param2);
         this.§[=§[param1] = _loc3_;
         this.§`!?§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §`!?§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§>!g§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§3!0§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §+"4§() : Texture
      {
         if(!this.§6!g§)
         {
            this.§6!g§ = this.§@",§(new BitmapData(40,40,false,16711935));
         }
         return this.§6!g§;
      }
      
      public function §!Y§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§[=§)
         {
            if(this.§[=§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§`!?§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§ !C§.indexOf(_loc3_)) >= 0)
                  {
                     this.§ !C§.splice(_loc4_,1);
                  }
               }
               delete this.§[=§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §2!t§() : int
      {
         return this.§ !C§.length;
      }
      
      public function §7!h§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§2!t§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§ !C§[param1];
         var _loc3_:ByteArray = §`3§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
