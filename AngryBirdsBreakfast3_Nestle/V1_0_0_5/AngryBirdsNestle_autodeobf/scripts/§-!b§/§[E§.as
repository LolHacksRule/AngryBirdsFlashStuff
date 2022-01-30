package §-!b§
{
   import §-!Y§.§%!%§;
   import §-$§.getNextPowerOfTwo;
   import §0m§.§3S§;
   import §0m§.§<p§;
   import §0m§.§`§;
   import §1!L§.§5N§;
   import §7D§.§!f§;
   import §?V§.§3k§;
   import §?V§.Texture;
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
   
   public class §[E§ extends EventDispatcher
   {
      
      protected static const §1x§:Number = 20;
      
      private static const §>!Y§:int = 2048;
      
      private static const §!""§:int = 8;
      
      private static var §>r§:§[E§;
       
      
      private var §,"3§:Dictionary;
      
      private var §"!U§:Vector.<§3S§>;
      
      private var §%a§:Dictionary;
      
      private var §7!g§:Boolean;
      
      private var §>!N§:Boolean;
      
      private var §6f§:int;
      
      private var §,p§:String;
      
      private var §!b§:Texture;
      
      private var §2!a§:int;
      
      private var §[!N§:int;
      
      private var §3]§:§!f§;
      
      private var §0!z§:Timer;
      
      private var §[j§:Vector.<BitmapData>;
      
      public function §[E§(param1:String = null)
      {
         this.§[j§ = new Vector.<BitmapData>();
         super();
         this.§"!U§ = new Vector.<§3S§>();
         this.§,"3§ = new Dictionary();
         this.§%a§ = new Dictionary();
         this.§,p§ = param1;
         this.§3]§ = new §!f§(§>!Y§,§>!Y§);
      }
      
      public static function get §<"5§() : §[E§
      {
         if(!§>r§)
         {
            §>r§ = new §[E§("main");
         }
         return §>r§;
      }
      
      private static function §9!d§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §^!0§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §2!+§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §0y§() : int
      {
         return this.§2!a§;
      }
      
      public function get §&!O§() : int
      {
         return this.§[!N§;
      }
      
      public function get id() : String
      {
         return this.§,p§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!T§ = null;
         var _loc2_:§3S§ = null;
         if(this.§,"3§)
         {
            for each(_loc1_ in this.§,"3§)
            {
               this.§1!#§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§,"3§ = null;
         }
         if(this.§"!U§)
         {
            for each(_loc2_ in this.§"!U§)
            {
               _loc2_.dispose();
            }
            this.§"!U§ = null;
         }
         if(this.§%a§)
         {
            this.§%a§ = null;
         }
         if(this.§[j§)
         {
            this.§[j§ = null;
         }
         if(this.§!b§)
         {
            this.§!b§.dispose();
            this.§!b§ = null;
         }
         if(this.§0!z§)
         {
            this.§0!z§.stop();
            this.§0!z§.removeEventListener(TimerEvent.TIMER,this.§-6§);
            this.§0!z§ = null;
         }
         this.§"!U§ = new Vector.<§3S§>();
         this.§,"3§ = new Dictionary();
         this.§%a§ = new Dictionary();
      }
      
      protected function §["$§(param1:String) : §3S§
      {
         var _loc2_:§3S§ = null;
         for each(_loc2_ in this.§"!U§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §#%§(param1:§<p§, param2:int) : void
      {
         if(this.§7!g§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§3S§;
         if(!(_loc4_ = this.§["$§(_loc3_)))
         {
            _loc4_ = new §3S§(_loc3_);
            this.§"!U§.push(_loc4_);
         }
         _loc4_.§,"-§(param1);
      }
      
      private function §5&§(param1:Vector.<§<p§>, param2:§!f§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§<p§ = null;
         var _loc12_:int = 0;
         var _loc13_:§`§ = null;
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
               while(_loc12_ < _loc11_.§+!M§)
               {
                  _loc13_ = _loc11_.§?"3§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§[!`§(_loc14_,_loc15_,§2!+§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§6!Q§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §]!U§(param1:Vector.<§<p§>, param2:§!f§, param3:BitmapData) : §<p§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§<p§ = null;
         var sprite:§`§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§`§ = null;
         var spriteSheetCollection:Vector.<§<p§> = param1;
         var rectanglePacker:§!f§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§ !J§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§<p§ = new §<p§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§6"!§(i,null);
            rectangleId = rectanglePacker.§2!+§(i);
            sheetIndex = §9!d§(rectangleId);
            rectangleIndex = §^!0§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§?"3§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§<@§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §`§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§ "$§(packedSprite);
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
      
      private function §<@§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §<?§() : Boolean
      {
         if(!§%!%§.§5"%§())
         {
            return false;
         }
         if(this.§>!N§)
         {
            return false;
         }
         this.§>!N§ = true;
         this.§6f§ = getTimer();
         return !this.§ !N§();
      }
      
      private function §?R§() : void
      {
         var _loc1_:int = this.§0y§ / 1024;
         var _loc2_:int = this.§&!O§ / 1024;
         var _loc3_:int = getTimer();
         this.§"!U§ = new Vector.<§3S§>();
         this.§7!g§ = true;
         if(this.§0!z§)
         {
            this.§0!z§.stop();
            this.§0!z§.removeEventListener(TimerEvent.TIMER,this.§-6§);
            this.§0!z§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §-6§(param1:Event) : void
      {
         this.§ !N§();
      }
      
      private function § !N§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§3S§ = null;
         var _loc3_:int = 0;
         if(this.§"!U§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§"!U§.pop();
            this.§[!_§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§"!U§.length == 0)
         {
            this.§?R§();
         }
         else
         {
            if(!this.§0!z§)
            {
               this.§0!z§ = new Timer(§1x§,0);
               this.§0!z§.addEventListener(TimerEvent.TIMER,this.§-6§);
            }
            else
            {
               this.§0!z§.stop();
            }
            this.§0!z§.start();
         }
         return this.§"!U§.length > 0;
      }
      
      private function §[!_§(param1:§3S§) : void
      {
         var _loc2_:§<p§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§<p§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§`§ = null;
         var _loc3_:Vector.<§<p§> = new Vector.<§<p§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§><§)
         {
            _loc2_ = param1.§3P§(_loc4_);
            if(_loc2_.§+!M§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§5&§(_loc3_,this.§3]§,§>!Y§,§>!Y§,§!""§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§3]§.§2k§);
            _loc7_ = getNextPowerOfTwo(this.§3]§.§<!d§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§]!U§(_loc3_,this.§3]§,_loc8_);
            _loc10_ = this.§2!8§(_loc8_);
            this.§[j§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§+!M§)
            {
               _loc12_ = _loc9_.§?"3§(_loc11_);
               this.§?!H§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §?!H§(param1:§`§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§3k§ = null;
         var _loc5_:§=!T§;
         if(!(_loc5_ = this.§,"3§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §3k§(param2,_loc6_,false);
            _loc5_ = new §=!T§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§,"3§[param1.name] = _loc5_;
         }
      }
      
      public function §%"§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§%!%§.§4G§)
         {
            for(bd in this.§%a§)
            {
               try
               {
                  texture = this.§%a§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §^"§(param1:String) : §=!T§
      {
         return this.§,"3§[param1];
      }
      
      public function §2!8§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§%a§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §%!%§.§2!l§(param1,param2);
         this.§%a§[param1] = _loc3_;
         this.§3!i§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §3!i§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§[!N§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§2!a§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §`!-§() : Texture
      {
         if(!this.§!b§)
         {
            this.§!b§ = this.§2!8§(new BitmapData(40,40,false,16711935));
         }
         return this.§!b§;
      }
      
      public function §1!#§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§%a§)
         {
            if(this.§%a§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§3!i§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§[j§.indexOf(_loc3_)) >= 0)
                  {
                     this.§[j§.splice(_loc4_,1);
                  }
               }
               delete this.§%a§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §'!6§() : int
      {
         return this.§[j§.length;
      }
      
      public function §6!&§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§'!6§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§[j§[param1];
         var _loc3_:ByteArray = §5N§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
