package §7!F§
{
   import §&#H§.§3#J§;
   import §&v§.Texture;
   import §&v§.§]O§;
   import §2d§.§%$§;
   import §2d§.§+!g§;
   import §2d§.§;H§;
   import §4G§.§ #"§;
   import §6!A§.§`!4§;
   import §=]§.getNextPowerOfTwo;
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
   
   public class §7#5§ extends EventDispatcher
   {
      
      protected static const §6#G§:Number = 20;
      
      private static const §@"o§:int = 2048;
      
      private static const §,"f§:int = 8;
      
      private static var §"#>§:§7#5§;
       
      
      private var §9!1§:Dictionary;
      
      private var §@n§:Vector.<String>;
      
      private var §%O§:Vector.<§+!g§>;
      
      private var §^"Z§:Dictionary;
      
      private var §5!S§:Boolean;
      
      private var §!!R§:Boolean;
      
      private var §<"i§:int;
      
      private var §6##§:String;
      
      private var §!"#§:Texture;
      
      private var §!"_§:int;
      
      private var §3"6§:int;
      
      private var §`""§:§ #"§;
      
      private var §1J§:Timer;
      
      private var §4$§:Vector.<BitmapData>;
      
      public function §7#5§(param1:String = null)
      {
         this.§4$§ = new Vector.<BitmapData>();
         super();
         this.§%O§ = new Vector.<§+!g§>();
         this.§9!1§ = new Dictionary();
         this.§@n§ = new Vector.<String>();
         this.§^"Z§ = new Dictionary();
         this.§6##§ = param1;
         this.§`""§ = new § #"§(§@"o§,§@"o§);
      }
      
      public static function get §%!E§() : §7#5§
      {
         if(!§"#>§)
         {
            §"#>§ = new §7#5§("main");
         }
         return §"#>§;
      }
      
      private static function §#!Q§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §#"p§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §3"w§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get textureMemoryUsage() : int
      {
         return this.§!"_§;
      }
      
      public function get bitmapMemoryUsage() : int
      {
         return this.§3"6§;
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8!W§ = null;
         var _loc2_:§+!g§ = null;
         if(this.§9!1§)
         {
            for each(_loc1_ in this.§9!1§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§9!1§ = null;
         }
         this.§@n§ = null;
         if(this.§%O§)
         {
            for each(_loc2_ in this.§%O§)
            {
               _loc2_.dispose();
            }
            this.§%O§ = null;
         }
         if(this.§^"Z§)
         {
            this.§^"Z§ = null;
         }
         if(this.§4$§)
         {
            this.§4$§ = null;
         }
         if(this.§!"#§)
         {
            this.§!"#§.dispose();
            this.§!"#§ = null;
         }
         if(this.§1J§)
         {
            this.§1J§.stop();
            this.§1J§.removeEventListener(TimerEvent.TIMER,this.§-K§);
            this.§1J§ = null;
         }
         this.§%O§ = new Vector.<§+!g§>();
         this.§9!1§ = new Dictionary();
         this.§^"Z§ = new Dictionary();
      }
      
      protected function §`z§(param1:String) : §+!g§
      {
         var _loc2_:§+!g§ = null;
         for each(_loc2_ in this.§%O§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §5j§(param1:§;H§, param2:int) : void
      {
         if(this.§5!S§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§+!g§;
         if(!(_loc4_ = this.§`z§(_loc3_)))
         {
            _loc4_ = new §+!g§(_loc3_);
            this.§%O§.push(_loc4_);
         }
         _loc4_.§-5§(param1);
      }
      
      private function §5"B§(param1:Vector.<§;H§>, param2:§ #"§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:§;H§ = null;
         var _loc11_:int = 0;
         var _loc12_:§%$§ = null;
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
               while(_loc11_ < _loc10_.§0#a§)
               {
                  _loc12_ = _loc10_.§4y§(_loc11_);
                  _loc13_ = Math.ceil(_loc12_.rect.width / param5) * param5;
                  _loc14_ = Math.ceil(_loc12_.rect.height / param5) * param5;
                  param2.§&"M§(_loc13_,_loc14_,§3"w§(_loc11_,_loc6_));
                  _loc9_++;
                  _loc11_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§+!_§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §<"g§(param1:Vector.<§;H§>, param2:§ #"§, param3:BitmapData) : §;H§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§;H§ = null;
         var sprite:§%$§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§%$§ = null;
         var spriteSheetCollection:Vector.<§;H§> = param1;
         var rectanglePacker:§ #"§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§'"u§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§;H§ = new §;H§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§^E§(i,null);
            rectangleId = rectanglePacker.§3"w§(i);
            sheetIndex = §#!Q§(rectangleId);
            rectangleIndex = §#"p§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§4y§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§6!o§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §%$§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            packedSprite.§#"?§ = sprite.§#"?§;
            combinedSheet.§9!t§(packedSprite);
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
      
      private function §6!o§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
         if(!§3#J§.§;[§())
         {
            return false;
         }
         if(this.§!!R§)
         {
            return false;
         }
         this.§!!R§ = true;
         this.§<"i§ = getTimer();
         return !this.§&t§();
      }
      
      private function §+!r§() : void
      {
         var _loc1_:int = this.textureMemoryUsage / 1024;
         var _loc2_:int = this.bitmapMemoryUsage / 1024;
         var _loc3_:int = getTimer();
         this.§%O§ = new Vector.<§+!g§>();
         this.§5!S§ = true;
         if(this.§1J§)
         {
            this.§1J§.stop();
            this.§1J§.removeEventListener(TimerEvent.TIMER,this.§-K§);
            this.§1J§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §-K§(param1:Event) : void
      {
         this.§&t§();
      }
      
      private function §&t§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§+!g§ = null;
         var _loc3_:int = 0;
         if(this.§%O§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§%O§.pop();
            this.§2"$§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§%O§.length == 0)
         {
            this.§+!r§();
         }
         else
         {
            if(!this.§1J§)
            {
               this.§1J§ = new Timer(§6#G§,0);
               this.§1J§.addEventListener(TimerEvent.TIMER,this.§-K§);
            }
            else
            {
               this.§1J§.stop();
            }
            this.§1J§.start();
         }
         return this.§%O§.length > 0;
      }
      
      private function §2"$§(param1:§+!g§) : void
      {
         var _loc2_:§;H§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§;H§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§%$§ = null;
         var _loc3_:Vector.<§;H§> = new Vector.<§;H§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§^"A§)
         {
            _loc2_ = param1.§"#B§(_loc4_);
            if(_loc2_.§0#a§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§5"B§(_loc3_,this.§`""§,§@"o§,§@"o§,§,"f§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§`""§.§@#E§);
            _loc7_ = getNextPowerOfTwo(this.§`""§.§9Q§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§<"g§(_loc3_,this.§`""§,_loc8_);
            _loc10_ = this.getTextureFromBitmapData(_loc8_,true,1);
            this.§4$§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§0#a§)
            {
               _loc12_ = _loc9_.§4y§(_loc11_);
               this.§&!,§(_loc12_,_loc10_,_loc8_,_loc12_.§#"?§);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §&!,§(param1:§%$§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§]O§ = null;
         var _loc5_:§8!W§;
         if(!(_loc5_ = this.§9!1§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §]O§(param2,_loc6_,false);
            _loc5_ = new §8!W§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§9!1§[param1.name] = _loc5_;
            this.§@n§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§3#J§.§0§)
         {
            for(bd in this.§^"Z§)
            {
               try
               {
                  texture = this.§^"Z§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §8!W§
      {
         return this.§9!1§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§@n§.length;
      }
      
      public function getTextureWithIndex(param1:int) : §8!W§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§9!1§[this.§@n§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Number = 1.0) : Texture
      {
         var _loc4_:Texture;
         if(_loc4_ = this.§^"Z§[param1])
         {
            return _loc4_;
         }
         _loc4_ = §3#J§.§%!"§(param1,param2,false,param3);
         this.§^"Z§[param1] = _loc4_;
         this.§9[§(_loc4_,param1,true);
         return _loc4_;
      }
      
      protected function §9[§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§3"6§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§!"_§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §,@§() : Texture
      {
         if(!this.§!"#§)
         {
            this.§!"#§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§!"#§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§^"Z§)
         {
            if(this.§^"Z§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§9[§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§4$§.indexOf(_loc3_)) >= 0)
                  {
                     this.§4$§.splice(_loc4_,1);
                  }
               }
               delete this.§^"Z§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §<"?§() : int
      {
         return this.§4$§.length;
      }
      
      public function §]!u§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§<"?§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§4$§[param1];
         var _loc3_:ByteArray = §`!4§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
