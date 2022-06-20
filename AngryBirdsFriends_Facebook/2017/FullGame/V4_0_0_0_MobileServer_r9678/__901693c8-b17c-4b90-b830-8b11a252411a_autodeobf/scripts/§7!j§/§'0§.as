package §7!j§
{
   import §+#W§.§6!!§;
   import §-"+§.§<!@§;
   import §-"+§.Texture;
   import §9+§.Starling;
   import §<M§.§2W§;
   import §>l§.getNextPowerOfTwo;
   import §?$9§.§3#z§;
   import §?$9§.§7"H§;
   import §?$9§.§@">§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileReference;
   import flash.system.System;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §'0§ extends EventDispatcher
   {
      
      protected static const §#!n§:Number = 20;
      
      private static const §+"A§:int = 2048;
      
      private static const §0"+§:int = 8;
      
      private static var §`!#§:§'0§;
       
      
      private var §=;§:Dictionary;
      
      private var §3"[§:Vector.<String>;
      
      private var §!""§:Vector.<§@">§>;
      
      private var §-"`§:Dictionary;
      
      private var §=#§:Boolean;
      
      private var §!"Y§:Boolean;
      
      private var §'&§:int;
      
      private var mId:String;
      
      private var §4!x§:Texture;
      
      private var §=!3§:int;
      
      private var §7!6§:int;
      
      private var §"!'§:§2W§;
      
      private var §`#^§:Timer;
      
      private var §8"2§:Vector.<BitmapData>;
      
      public function §'0§(param1:String = null)
      {
         this.§8"2§ = new Vector.<BitmapData>();
         super();
         this.§!""§ = new Vector.<§@">§>();
         this.§=;§ = new Dictionary();
         this.§3"[§ = new Vector.<String>();
         this.§-"`§ = new Dictionary();
         this.mId = param1;
         this.§"!'§ = new §2W§(§+"A§,§+"A§);
      }
      
      public static function get § "D§() : §'0§
      {
         if(!§`!#§)
         {
            §`!#§ = new §'0§("main");
         }
         return §`!#§;
      }
      
      private static function §8""§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §>#6§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §'$!§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §8$8§() : int
      {
         return this.§=!3§;
      }
      
      public function get §,$$§() : int
      {
         return this.§7!6§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'#'§ = null;
         var _loc2_:§@">§ = null;
         if(this.§=;§)
         {
            for each(_loc1_ in this.§=;§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§=;§ = null;
         }
         this.§3"[§ = null;
         if(this.§!""§)
         {
            for each(_loc2_ in this.§!""§)
            {
               _loc2_.dispose();
            }
            this.§!""§ = null;
         }
         if(this.§-"`§)
         {
            this.§-"`§ = null;
         }
         if(this.§8"2§)
         {
            this.§8"2§ = null;
         }
         if(this.§4!x§)
         {
            this.§4!x§.dispose();
            this.§4!x§ = null;
         }
         if(this.§`#^§)
         {
            this.§`#^§.stop();
            this.§`#^§.removeEventListener(TimerEvent.TIMER,this.§""W§);
            this.§`#^§ = null;
         }
         this.§!""§ = new Vector.<§@">§>();
         this.§=;§ = new Dictionary();
         this.§-"`§ = new Dictionary();
      }
      
      protected function §=#u§(param1:String) : §@">§
      {
         var _loc2_:§@">§ = null;
         for each(_loc2_ in this.§!""§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §]#`§(param1:§7"H§, param2:int) : void
      {
         if(this.§!"Y§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§@">§;
         if(!(_loc4_ = this.§=#u§(_loc3_)))
         {
            _loc4_ = new §@">§(_loc3_);
            this.§!""§.push(_loc4_);
         }
         _loc4_.§@#&§(param1);
      }
      
      private function §>$0§(param1:Vector.<§7"H§>, param2:§2W§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:§7"H§ = null;
         var _loc11_:int = 0;
         var _loc12_:§3#z§ = null;
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
               while(_loc11_ < _loc10_.§"J§)
               {
                  _loc12_ = _loc10_.§`!v§(_loc11_);
                  _loc13_ = Math.ceil(_loc12_.rect.width / param5) * param5;
                  _loc14_ = Math.ceil(_loc12_.rect.height / param5) * param5;
                  param2.§["6§(_loc13_,_loc14_,§'$!§(_loc11_,_loc6_));
                  _loc9_++;
                  _loc11_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§8!5§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §3#1§(param1:Vector.<§7"H§>, param2:§2W§, param3:BitmapData) : §7"H§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§7"H§ = null;
         var sprite:§3#z§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§3#z§ = null;
         var spriteSheetCollection:Vector.<§7"H§> = param1;
         var rectanglePacker:§2W§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§0I§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§7"H§ = new §7"H§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§0"K§(i,null);
            rectangleId = rectanglePacker.§'$!§(i);
            sheetIndex = §8""§(rectangleId);
            rectangleIndex = §>#6§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§`!v§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§9#3§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §3#z§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            packedSprite.§6!I§ = sprite.§6!I§;
            combinedSheet.§!r§(packedSprite);
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
      
      private function §9#3§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §&!d§() : Boolean
      {
         if(!Starling.§&!#§())
         {
            return false;
         }
         if(this.§!"Y§)
         {
            return false;
         }
         this.§!"Y§ = true;
         this.§'&§ = getTimer();
         return !this.§?"h§();
      }
      
      private function §!"S§() : void
      {
         var _loc1_:int = this.§8$8§ / 1024;
         var _loc2_:int = this.§,$$§ / 1024;
         var _loc3_:int = getTimer();
         this.§!""§ = new Vector.<§@">§>();
         this.§=#§ = true;
         this.§!"Y§ = false;
         if(this.§`#^§)
         {
            this.§`#^§.stop();
            this.§`#^§.removeEventListener(TimerEvent.TIMER,this.§""W§);
            this.§`#^§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §""W§(param1:Event) : void
      {
         this.§?"h§();
      }
      
      private function §?"h§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§@">§ = null;
         var _loc3_:int = 0;
         if(this.§!""§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§!""§.pop();
            this.§1#_§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§!""§.length == 0)
         {
            this.§!"S§();
         }
         else
         {
            if(!this.§`#^§)
            {
               this.§`#^§ = new Timer(§#!n§,0);
               this.§`#^§.addEventListener(TimerEvent.TIMER,this.§""W§);
            }
            else
            {
               this.§`#^§.stop();
            }
            this.§`#^§.start();
         }
         return this.§!""§.length > 0;
      }
      
      private function §1#_§(param1:§@">§) : void
      {
         var spriteSheet:§7"H§ = null;
         var spriteSheetCollection:Vector.<§7"H§> = null;
         var bitmapWidth:int = 0;
         var bitmapHeight:int = 0;
         var combinedBitmapData:BitmapData = null;
         var combinedSpriteSheet:§7"H§ = null;
         var texture:Texture = null;
         var j:int = 0;
         var sprite:§3#z§ = null;
         var sheetGroup:§@">§ = param1;
         spriteSheetCollection = new Vector.<§7"H§>();
         var i:int = 0;
         while(i < sheetGroup.§8"_§)
         {
            spriteSheet = sheetGroup.§?"q§(i);
            if(spriteSheet.§"J§ > 0)
            {
               spriteSheetCollection.push(spriteSheet);
            }
            i++;
         }
         var textureCount:int = 0;
         while(spriteSheetCollection.length > 0)
         {
            if(this.§>$0§(spriteSheetCollection,this.§"!'§,§+"A§,§+"A§,§0"+§) == 0)
            {
               throw new Error("Found too large sprite sheet image for sprite sheet collection \'" + this.§6k§(spriteSheetCollection) + "\'!");
            }
            bitmapWidth = getNextPowerOfTwo(this.§"!'§.§["@§);
            bitmapHeight = getNextPowerOfTwo(this.§"!'§.§"#[§);
            if(bitmapWidth <= 0 || bitmapHeight <= 0)
            {
               throw new Error("Invalid size results from rectangle packer, " + bitmapWidth + "x" + bitmapHeight + " for sprite sheet collection \'" + this.§6k§(spriteSheetCollection) + "\'.");
            }
            try
            {
               combinedBitmapData = new BitmapData(bitmapWidth,bitmapHeight,true,16777215);
            }
            catch(e:Error)
            {
               throw new Error("Could not create bitmapdata sprite sheet (" + bitmapWidth + "x" + bitmapHeight + ") for collection \'" + §6k§(spriteSheetCollection) + "\' (error: " + e.toString() + ").\n" + "Free memory: " + System.freeMemory + ", Used total memory: " + System.totalMemoryNumber + ", Private memory: " + System.privateMemory + ".",e.errorID);
            }
            combinedSpriteSheet = this.§3#1§(spriteSheetCollection,this.§"!'§,combinedBitmapData);
            texture = this.getTextureFromBitmapData(combinedBitmapData,true,1);
            this.§8"2§.push(combinedBitmapData);
            j = 0;
            while(j < combinedSpriteSheet.§"J§)
            {
               sprite = combinedSpriteSheet.§`!v§(j);
               this.§<$!§(sprite,texture,combinedBitmapData,sprite.§6!I§);
               j++;
            }
            textureCount++;
         }
         if(textureCount > 1)
         {
         }
      }
      
      private function §6k§(param1:Vector.<§7"H§>) : String
      {
         var _loc3_:§7"H§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_.name);
         }
         return _loc2_.join(", ");
      }
      
      private function §<$!§(param1:§3#z§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§<!@§ = null;
         var _loc5_:§'#'§;
         if(!(_loc5_ = this.§=;§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §<!@§(param2,_loc6_,false);
            _loc5_ = new §'#'§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§=;§[param1.name] = _loc5_;
            this.§3"[§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§^2§)
         {
            for(bd in this.§-"`§)
            {
               try
               {
                  texture = this.§-"`§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §'#'§
      {
         return this.§=;§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§3"[§.length;
      }
      
      public function §'1§(param1:int) : §'#'§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§=;§[this.§3"[§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Number = 1.0) : Texture
      {
         var _loc4_:Texture;
         if(_loc4_ = this.§-"`§[param1])
         {
            return _loc4_;
         }
         _loc4_ = Starling.§-$#§(param1,param2,false,param3);
         this.§-"`§[param1] = _loc4_;
         this.§##n§(_loc4_,param1,true);
         return _loc4_;
      }
      
      protected function §##n§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§7!6§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§=!3§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §;"E§() : Texture
      {
         if(!this.§4!x§)
         {
            this.§4!x§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§4!x§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§-"`§)
         {
            if(this.§-"`§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§##n§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§8"2§.indexOf(_loc3_)) >= 0)
                  {
                     this.§8"2§.splice(_loc4_,1);
                  }
               }
               delete this.§-"`§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §6`§() : int
      {
         return this.§8"2§.length;
      }
      
      public function §5!y§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§6`§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§8"2§[param1];
         var _loc3_:ByteArray = §6!!§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
