package §6`§
{
   import §"!t§.getNextPowerOfTwo;
   import §&!;§.§<x§;
   import §&!;§.Texture;
   import §-!4§.§,w§;
   import §5;§.§%"#§;
   import §5;§.§<!j§;
   import §5;§.§]!y§;
   import §=!6§.§+8§;
   import §>x§.§@"1§;
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
   
   public class §2a§ extends EventDispatcher
   {
      
      protected static const §5!f§:Number = 20;
      
      private static const §?`§:int = 2048;
      
      private static const §6!T§:int = 8;
      
      private static var §1!7§:§2a§;
       
      
      private var §="'§:Dictionary;
      
      private var §-!S§:Vector.<§<!j§>;
      
      private var §?;§:Dictionary;
      
      private var §2j§:Boolean;
      
      private var §=!u§:Boolean;
      
      private var §&!S§:int;
      
      private var §3!J§:String;
      
      private var §26§:Texture;
      
      private var §]M§:int;
      
      private var §7!l§:int;
      
      private var §"m§:§,w§;
      
      private var §-!`§:Timer;
      
      private var §2!%§:Vector.<BitmapData>;
      
      public function §2a§(param1:String = null)
      {
         this.§2!%§ = new Vector.<BitmapData>();
         super();
         this.§-!S§ = new Vector.<§<!j§>();
         this.§="'§ = new Dictionary();
         this.§?;§ = new Dictionary();
         this.§3!J§ = param1;
         this.§"m§ = new §,w§(§?`§,§?`§);
      }
      
      public static function get §"e§() : §2a§
      {
         if(!§1!7§)
         {
            §1!7§ = new §2a§("main");
         }
         return §1!7§;
      }
      
      private static function §<!c§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §[!2§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §8"3§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §?A§() : int
      {
         return this.§]M§;
      }
      
      public function get §<!x§() : int
      {
         return this.§7!l§;
      }
      
      public function get id() : String
      {
         return this.§3!J§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8"&§ = null;
         var _loc2_:§<!j§ = null;
         if(this.§="'§)
         {
            for each(_loc1_ in this.§="'§)
            {
               this.§1!H§(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§="'§ = null;
         }
         if(this.§-!S§)
         {
            for each(_loc2_ in this.§-!S§)
            {
               _loc2_.dispose();
            }
            this.§-!S§ = null;
         }
         if(this.§?;§)
         {
            this.§?;§ = null;
         }
         if(this.§2!%§)
         {
            this.§2!%§ = null;
         }
         if(this.§26§)
         {
            this.§26§.dispose();
            this.§26§ = null;
         }
         if(this.§-!`§)
         {
            this.§-!`§.stop();
            this.§-!`§.removeEventListener(TimerEvent.TIMER,this.§@!1§);
            this.§-!`§ = null;
         }
         this.§-!S§ = new Vector.<§<!j§>();
         this.§="'§ = new Dictionary();
         this.§?;§ = new Dictionary();
      }
      
      protected function §1a§(param1:String) : §<!j§
      {
         var _loc2_:§<!j§ = null;
         for each(_loc2_ in this.§-!S§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §0!6§(param1:§]!y§, param2:int) : void
      {
         if(this.§2j§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§<!j§;
         if(!(_loc4_ = this.§1a§(_loc3_)))
         {
            _loc4_ = new §<!j§(_loc3_);
            this.§-!S§.push(_loc4_);
         }
         _loc4_.§2H§(param1);
      }
      
      private function §`!@§(param1:Vector.<§]!y§>, param2:§,w§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§]!y§ = null;
         var _loc12_:int = 0;
         var _loc13_:§%"#§ = null;
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
               while(_loc12_ < _loc11_.§]9§)
               {
                  _loc13_ = _loc11_.§,p§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§;!g§(_loc14_,_loc15_,§8"3§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§-H§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §-<§(param1:Vector.<§]!y§>, param2:§,w§, param3:BitmapData) : §]!y§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§]!y§ = null;
         var sprite:§%"#§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§%"#§ = null;
         var spriteSheetCollection:Vector.<§]!y§> = param1;
         var rectanglePacker:§,w§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§;!p§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§]!y§ = new §]!y§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§+!F§(i,null);
            rectangleId = rectanglePacker.§8"3§(i);
            sheetIndex = §<!c§(rectangleId);
            rectangleIndex = §[!2§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§,p§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§;![§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §%"#§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§[!,§(packedSprite);
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
      
      private function §;![§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §,!'§() : Boolean
      {
         if(!§+8§.§,<§())
         {
            return false;
         }
         if(this.§=!u§)
         {
            return false;
         }
         this.§=!u§ = true;
         this.§&!S§ = getTimer();
         return !this.§2!k§();
      }
      
      private function §?q§() : void
      {
         var _loc1_:int = this.§?A§ / 1024;
         var _loc2_:int = this.§<!x§ / 1024;
         var _loc3_:int = getTimer();
         this.§-!S§ = new Vector.<§<!j§>();
         this.§2j§ = true;
         if(this.§-!`§)
         {
            this.§-!`§.stop();
            this.§-!`§.removeEventListener(TimerEvent.TIMER,this.§@!1§);
            this.§-!`§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §@!1§(param1:Event) : void
      {
         this.§2!k§();
      }
      
      private function §2!k§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§<!j§ = null;
         var _loc3_:int = 0;
         if(this.§-!S§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§-!S§.pop();
            this.§3!§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§-!S§.length == 0)
         {
            this.§?q§();
         }
         else
         {
            if(!this.§-!`§)
            {
               this.§-!`§ = new Timer(§5!f§,0);
               this.§-!`§.addEventListener(TimerEvent.TIMER,this.§@!1§);
            }
            else
            {
               this.§-!`§.stop();
            }
            this.§-!`§.start();
         }
         return this.§-!S§.length > 0;
      }
      
      private function §3!§(param1:§<!j§) : void
      {
         var _loc2_:§]!y§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§]!y§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§%"#§ = null;
         var _loc3_:Vector.<§]!y§> = new Vector.<§]!y§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§;-§)
         {
            _loc2_ = param1.§%3§(_loc4_);
            if(_loc2_.§]9§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§`!@§(_loc3_,this.§"m§,§?`§,§?`§,§6!T§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§"m§.§`!I§);
            _loc7_ = getNextPowerOfTwo(this.§"m§.§6!c§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§-<§(_loc3_,this.§"m§,_loc8_);
            _loc10_ = this.§6"8§(_loc8_);
            this.§2!%§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§]9§)
            {
               _loc12_ = _loc9_.§,p§(_loc11_);
               this.§?,§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §?,§(param1:§%"#§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§<x§ = null;
         var _loc5_:§8"&§;
         if(!(_loc5_ = this.§="'§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §<x§(param2,_loc6_,false);
            _loc5_ = new §8"&§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§="'§[param1.name] = _loc5_;
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§+8§.§`8§)
         {
            for(bd in this.§?;§)
            {
               try
               {
                  texture = this.§?;§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function §&l§(param1:String) : §8"&§
      {
         return this.§="'§[param1];
      }
      
      public function §6"8§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§?;§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §+8§.§1!@§(param1,param2);
         this.§?;§[param1] = _loc3_;
         this.§+[§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §+[§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§7!l§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§]M§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §,!B§() : Texture
      {
         if(!this.§26§)
         {
            this.§26§ = this.§6"8§(new BitmapData(40,40,false,16711935));
         }
         return this.§26§;
      }
      
      public function §1!H§(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§?;§)
         {
            if(this.§?;§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§+[§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§2!%§.indexOf(_loc3_)) >= 0)
                  {
                     this.§2!%§.splice(_loc4_,1);
                  }
               }
               delete this.§?;§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §,!b§() : int
      {
         return this.§2!%§.length;
      }
      
      public function §0""§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§,!b§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§2!%§[param1];
         var _loc3_:ByteArray = §@"1§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
