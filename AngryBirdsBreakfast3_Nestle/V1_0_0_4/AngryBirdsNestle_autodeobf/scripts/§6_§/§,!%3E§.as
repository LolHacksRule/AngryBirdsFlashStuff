package §6_§
{
   import §%"!§.§0!o§;
   import §%^§.§'!%§;
   import §%^§.§3"'§;
   import §%^§.§?9§;
   import §4X§.§`!w§;
   import §6!4§.§<!D§;
   import §7"+§.§,!x§;
   import §7"+§.Texture;
   import §<C§.getNextPowerOfTwo;
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
   
   public class §,!>§ extends EventDispatcher
   {
      
      protected static const §0!-§:Number = 20;
      
      private static const §9W§:int = 2048;
      
      private static const §?!I§:int = 8;
      
      private static var §&!t§:§,!>§;
       
      
      private var §@!r§:Dictionary;
      
      private var §%!U§:Vector.<§3"'§>;
      
      private var §,u§:Dictionary;
      
      private var §[K§:Boolean;
      
      private var §>Q§:Boolean;
      
      private var §7<§:int;
      
      private var §[![§:String;
      
      private var §1'§:Texture;
      
      private var static:int;
      
      private var §7"%§:int;
      
      private var §["$§:§0!o§;
      
      private var §!!u§:Timer;
      
      private var §^!l§:Vector.<BitmapData>;
      
      public function §,!>§(param1:String = null)
      {
         this.§^!l§ = new Vector.<BitmapData>();
         super();
         this.§%!U§ = new Vector.<§3"'§>();
         this.§@!r§ = new Dictionary();
         this.§,u§ = new Dictionary();
         this.§[![§ = param1;
         this.§["$§ = new §0!o§(§9W§,§9W§);
      }
      
      public static function get §?!+§() : §,!>§
      {
         if(!§&!t§)
         {
            §&!t§ = new §,!>§("main");
         }
         return §&!t§;
      }
      
      private static function §3!V§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §<`§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §<!C§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §<!3§() : int
      {
         return this.static;
      }
      
      public function get §@,§() : int
      {
         return this.§7"%§;
      }
      
      public function get id() : String
      {
         return this.§[![§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7W§ = null;
         var _loc2_:§3"'§ = null;
         if(this.§@!r§)
         {
            for each(_loc1_ in this.§@!r§)
            {
               this.§'!y§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§@!r§ = null;
         }
         if(this.§%!U§)
         {
            for each(_loc2_ in this.§%!U§)
            {
               _loc2_.dispose();
            }
            this.§%!U§ = null;
         }
         if(this.§,u§)
         {
            this.§,u§ = null;
         }
         if(this.§^!l§)
         {
            this.§^!l§ = null;
         }
         if(this.§1'§)
         {
            this.§1'§.dispose();
            this.§1'§ = null;
         }
         if(this.§!!u§)
         {
            this.§!!u§.stop();
            this.§!!u§.removeEventListener(TimerEvent.TIMER,this.§'!x§);
            this.§!!u§ = null;
         }
         this.§%!U§ = new Vector.<§3"'§>();
         this.§@!r§ = new Dictionary();
         this.§,u§ = new Dictionary();
      }
      
      protected function §>!x§(param1:String) : §3"'§
      {
         var _loc2_:§3"'§ = null;
         for each(_loc2_ in this.§%!U§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §0A§(param1:§'!%§, param2:int) : void
      {
         if(this.§[K§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§3"'§;
         if(!(_loc4_ = this.§>!x§(_loc3_)))
         {
            _loc4_ = new §3"'§(_loc3_);
            this.§%!U§.push(_loc4_);
         }
         _loc4_.§^z§(param1);
      }
      
      private function §"!H§(param1:Vector.<§'!%§>, param2:§0!o§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§'!%§ = null;
         var _loc12_:int = 0;
         var _loc13_:§?9§ = null;
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
               while(_loc12_ < _loc11_.§%!D§)
               {
                  _loc13_ = _loc11_.§6!9§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§[N§(_loc14_,_loc15_,§<!C§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§0!f§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §<Z§(param1:Vector.<§'!%§>, param2:§0!o§, param3:BitmapData) : §'!%§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§'!%§ = null;
         var sprite:§?9§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§?9§ = null;
         var spriteSheetCollection:Vector.<§'!%§> = param1;
         var rectanglePacker:§0!o§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§?+§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§'!%§ = new §'!%§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§=!2§(i,null);
            rectangleId = rectanglePacker.§<!C§(i);
            sheetIndex = §3!V§(rectangleId);
            rectangleIndex = §<`§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§6!9§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§[!h§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §?9§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§0!E§(packedSprite);
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
      
      private function §[!h§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §`c§() : Boolean
      {
         if(!§<!D§.§7i§())
         {
            return false;
         }
         if(this.§>Q§)
         {
            return false;
         }
         this.§>Q§ = true;
         this.§7<§ = getTimer();
         return !this.§]"#§();
      }
      
      private function §@!-§() : void
      {
         var _loc1_:int = this.§<!3§ / 1024;
         var _loc2_:int = this.§@,§ / 1024;
         var _loc3_:int = getTimer();
         this.§%!U§ = new Vector.<§3"'§>();
         this.§[K§ = true;
         if(this.§!!u§)
         {
            this.§!!u§.stop();
            this.§!!u§.removeEventListener(TimerEvent.TIMER,this.§'!x§);
            this.§!!u§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §'!x§(param1:Event) : void
      {
         this.§]"#§();
      }
      
      private function §]"#§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§3"'§ = null;
         var _loc3_:int = 0;
         if(this.§%!U§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§%!U§.pop();
            this.§1!X§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§%!U§.length == 0)
         {
            this.§@!-§();
         }
         else
         {
            if(!this.§!!u§)
            {
               this.§!!u§ = new Timer(§0!-§,0);
               this.§!!u§.addEventListener(TimerEvent.TIMER,this.§'!x§);
            }
            else
            {
               this.§!!u§.stop();
            }
            this.§!!u§.start();
         }
         return this.§%!U§.length > 0;
      }
      
      private function §1!X§(param1:§3"'§) : void
      {
         var _loc2_:§'!%§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§'!%§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§?9§ = null;
         var _loc3_:Vector.<§'!%§> = new Vector.<§'!%§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§+"§)
         {
            _loc2_ = param1.§>4§(_loc4_);
            if(_loc2_.§%!D§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§"!H§(_loc3_,this.§["$§,§9W§,§9W§,§?!I§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§["$§.§8#§);
            _loc7_ = getNextPowerOfTwo(this.§["$§.§2"'§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§<Z§(_loc3_,this.§["$§,_loc8_);
            _loc10_ = this.§ ![§(_loc8_);
            this.§^!l§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§%!D§)
            {
               _loc12_ = _loc9_.§6!9§(_loc11_);
               this.§=!T§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §=!T§(param1:§?9§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§,!x§ = null;
         var _loc5_:§7W§;
         if(!(_loc5_ = this.§@!r§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §,!x§(param2,_loc6_,false);
            _loc5_ = new §7W§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§@!r§[param1.name] = _loc5_;
         }
      }
      
      public function §&s§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§<!D§.§6!0§)
         {
            for(bd in this.§,u§)
            {
               try
               {
                  texture = this.§,u§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §^!$§(param1:String) : §7W§
      {
         return this.§@!r§[param1];
      }
      
      public function § ![§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§,u§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §<!D§.§ 1§(param1,param2);
         this.§,u§[param1] = _loc3_;
         this.§#!T§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §#!T§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§7"%§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.static += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §3!<§() : Texture
      {
         if(!this.§1'§)
         {
            this.§1'§ = this.§ ![§(new BitmapData(40,40,false,16711935));
         }
         return this.§1'§;
      }
      
      public function §'!y§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§,u§)
         {
            if(this.§,u§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§#!T§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§^!l§.indexOf(_loc3_)) >= 0)
                  {
                     this.§^!l§.splice(_loc4_,1);
                  }
               }
               delete this.§,u§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §<A§() : int
      {
         return this.§^!l§.length;
      }
      
      public function §%!n§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§<A§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§^!l§[param1];
         var _loc3_:ByteArray = §`!w§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
