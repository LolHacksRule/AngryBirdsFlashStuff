package §7"T§
{
   import §"#k§.Starling;
   import §#S§.§'#a§;
   import §-#]§.§'!1§;
   import §-#]§.Texture;
   import §2$>§.§`!L§;
   import §8#p§.getNextPowerOfTwo;
   import §9!o§.§6Z§;
   import §9!o§.§;"v§;
   import §9!o§.§]!6§;
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
   
   public class §#"^§ extends EventDispatcher
   {
      
      protected static const §""D§:Number = 20;
      
      private static const § y§:int = 2048;
      
      private static const §1!t§:int = 8;
      
      private static var §`"D§:§#"^§;
       
      
      private var §#"1§:Dictionary;
      
      private var §[#5§:Vector.<String>;
      
      private var §>Q§:Vector.<§]!6§>;
      
      private var §[$1§:Dictionary;
      
      private var §?#;§:Boolean;
      
      private var §;!A§:Boolean;
      
      private var §;d§:int;
      
      private var mId:String;
      
      private var §+!0§:Texture;
      
      private var §[!!§:int;
      
      private var §'"o§:int;
      
      private var §>i§:§`!L§;
      
      private var §3%§:Timer;
      
      private var §`!%§:Vector.<BitmapData>;
      
      public function §#"^§(param1:String = null)
      {
         this.§`!%§ = new Vector.<BitmapData>();
         super();
         this.§>Q§ = new Vector.<§]!6§>();
         this.§#"1§ = new Dictionary();
         this.§[#5§ = new Vector.<String>();
         this.§[$1§ = new Dictionary();
         this.mId = param1;
         this.§>i§ = new §`!L§(§ y§,§ y§);
      }
      
      public static function get §+!,§() : §#"^§
      {
         if(!§`"D§)
         {
            §`"D§ = new §#"^§("main");
         }
         return §`"D§;
      }
      
      private static function §6#c§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §&"Y§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §!"1§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §?!'§() : int
      {
         return this.§[!!§;
      }
      
      public function get §8#!§() : int
      {
         return this.§'"o§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4!L§ = null;
         var _loc2_:§]!6§ = null;
         if(this.§#"1§)
         {
            for each(_loc1_ in this.§#"1§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§#"1§ = null;
         }
         this.§[#5§ = null;
         if(this.§>Q§)
         {
            for each(_loc2_ in this.§>Q§)
            {
               _loc2_.dispose();
            }
            this.§>Q§ = null;
         }
         if(this.§[$1§)
         {
            this.§[$1§ = null;
         }
         if(this.§`!%§)
         {
            this.§`!%§ = null;
         }
         if(this.§+!0§)
         {
            this.§+!0§.dispose();
            this.§+!0§ = null;
         }
         if(this.§3%§)
         {
            this.§3%§.stop();
            this.§3%§.removeEventListener(TimerEvent.TIMER,this.§5=§);
            this.§3%§ = null;
         }
         this.§>Q§ = new Vector.<§]!6§>();
         this.§#"1§ = new Dictionary();
         this.§[$1§ = new Dictionary();
      }
      
      protected function §&!F§(param1:String) : §]!6§
      {
         var _loc2_:§]!6§ = null;
         for each(_loc2_ in this.§>Q§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §#$8§(param1:§;"v§, param2:int) : void
      {
         if(this.§;!A§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§]!6§;
         if(!(_loc4_ = this.§&!F§(_loc3_)))
         {
            _loc4_ = new §]!6§(_loc3_);
            this.§>Q§.push(_loc4_);
         }
         _loc4_.§,#]§(param1);
      }
      
      private function §2"e§(param1:Vector.<§;"v§>, param2:§`!L§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:§;"v§ = null;
         var _loc11_:int = 0;
         var _loc12_:§6Z§ = null;
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
               while(_loc11_ < _loc10_.§<!C§)
               {
                  _loc12_ = _loc10_.§>#^§(_loc11_);
                  _loc13_ = Math.ceil(_loc12_.rect.width / param5) * param5;
                  _loc14_ = Math.ceil(_loc12_.rect.height / param5) * param5;
                  param2.§7"N§(_loc13_,_loc14_,§!"1§(_loc11_,_loc6_));
                  _loc9_++;
                  _loc11_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§ !H§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §'",§(param1:Vector.<§;"v§>, param2:§`!L§, param3:BitmapData) : §;"v§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§;"v§ = null;
         var sprite:§6Z§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§6Z§ = null;
         var spriteSheetCollection:Vector.<§;"v§> = param1;
         var rectanglePacker:§`!L§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§@"-§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§;"v§ = new §;"v§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§9!x§(i,null);
            rectangleId = rectanglePacker.§!"1§(i);
            sheetIndex = §6#c§(rectangleId);
            rectangleIndex = §&"Y§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§>#^§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§+$,§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §6Z§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            packedSprite.§3#y§ = sprite.§3#y§;
            combinedSheet.§!I§(packedSprite);
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
      
      private function §+$,§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function § v§() : Boolean
      {
         if(!Starling.§'8§())
         {
            return false;
         }
         if(this.§;!A§)
         {
            return false;
         }
         this.§;!A§ = true;
         this.§;d§ = getTimer();
         return !this.§^"F§();
      }
      
      private function §5"K§() : void
      {
         var _loc1_:int = this.§?!'§ / 1024;
         var _loc2_:int = this.§8#!§ / 1024;
         var _loc3_:int = getTimer();
         this.§>Q§ = new Vector.<§]!6§>();
         this.§?#;§ = true;
         this.§;!A§ = false;
         if(this.§3%§)
         {
            this.§3%§.stop();
            this.§3%§.removeEventListener(TimerEvent.TIMER,this.§5=§);
            this.§3%§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §5=§(param1:Event) : void
      {
         this.§^"F§();
      }
      
      private function §^"F§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§]!6§ = null;
         var _loc3_:int = 0;
         if(this.§>Q§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§>Q§.pop();
            this.§6#e§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§>Q§.length == 0)
         {
            this.§5"K§();
         }
         else
         {
            if(!this.§3%§)
            {
               this.§3%§ = new Timer(§""D§,0);
               this.§3%§.addEventListener(TimerEvent.TIMER,this.§5=§);
            }
            else
            {
               this.§3%§.stop();
            }
            this.§3%§.start();
         }
         return this.§>Q§.length > 0;
      }
      
      private function §6#e§(param1:§]!6§) : void
      {
         var spriteSheet:§;"v§ = null;
         var spriteSheetCollection:Vector.<§;"v§> = null;
         var bitmapWidth:int = 0;
         var bitmapHeight:int = 0;
         var combinedBitmapData:BitmapData = null;
         var combinedSpriteSheet:§;"v§ = null;
         var texture:Texture = null;
         var j:int = 0;
         var sprite:§6Z§ = null;
         var sheetGroup:§]!6§ = param1;
         spriteSheetCollection = new Vector.<§;"v§>();
         var i:int = 0;
         while(i < sheetGroup.§&![§)
         {
            spriteSheet = sheetGroup.§`$C§(i);
            if(spriteSheet.§<!C§ > 0)
            {
               spriteSheetCollection.push(spriteSheet);
            }
            i++;
         }
         var textureCount:int = 0;
         while(spriteSheetCollection.length > 0)
         {
            if(this.§2"e§(spriteSheetCollection,this.§>i§,§ y§,§ y§,§1!t§) == 0)
            {
               throw new Error("Found too large sprite sheet image for sprite sheet collection \'" + this.§8!u§(spriteSheetCollection) + "\'!");
            }
            bitmapWidth = getNextPowerOfTwo(this.§>i§.§3#t§);
            bitmapHeight = getNextPowerOfTwo(this.§>i§.§,@§);
            if(bitmapWidth <= 0 || bitmapHeight <= 0)
            {
               throw new Error("Invalid size results from rectangle packer, " + bitmapWidth + "x" + bitmapHeight + " for sprite sheet collection \'" + this.§8!u§(spriteSheetCollection) + "\'.");
            }
            try
            {
               combinedBitmapData = new BitmapData(bitmapWidth,bitmapHeight,true,16777215);
            }
            catch(e:Error)
            {
               throw new Error("Could not create bitmapdata sprite sheet (" + bitmapWidth + "x" + bitmapHeight + ") for collection \'" + §8!u§(spriteSheetCollection) + "\' (error: " + e.toString() + ").\n" + "Free memory: " + System.freeMemory + ", Used total memory: " + System.totalMemoryNumber + ", Private memory: " + System.privateMemory + ".",e.errorID);
            }
            combinedSpriteSheet = this.§'",§(spriteSheetCollection,this.§>i§,combinedBitmapData);
            texture = this.getTextureFromBitmapData(combinedBitmapData,true,1);
            this.§`!%§.push(combinedBitmapData);
            j = 0;
            while(j < combinedSpriteSheet.§<!C§)
            {
               sprite = combinedSpriteSheet.§>#^§(j);
               this.§,"!§(sprite,texture,combinedBitmapData,sprite.§3#y§);
               j++;
            }
            textureCount++;
         }
         if(textureCount > 1)
         {
         }
      }
      
      private function §8!u§(param1:Vector.<§;"v§>) : String
      {
         var _loc3_:§;"v§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_.name);
         }
         return _loc2_.join(", ");
      }
      
      private function §,"!§(param1:§6Z§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§'!1§ = null;
         var _loc5_:§4!L§;
         if(!(_loc5_ = this.§#"1§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §'!1§(param2,_loc6_,false);
            _loc5_ = new §4!L§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§#"1§[param1.name] = _loc5_;
            this.§[#5§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§'"K§)
         {
            for(bd in this.§[$1§)
            {
               try
               {
                  texture = this.§[$1§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §4!L§
      {
         return this.§#"1§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§[#5§.length;
      }
      
      public function §'#i§(param1:int) : §4!L§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§#"1§[this.§[#5§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Number = 1.0) : Texture
      {
         var _loc4_:Texture;
         if(_loc4_ = this.§[$1§[param1])
         {
            return _loc4_;
         }
         _loc4_ = Starling.§"!B§(param1,param2,false,param3);
         this.§[$1§[param1] = _loc4_;
         this.§@";§(_loc4_,param1,true);
         return _loc4_;
      }
      
      protected function §@";§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§'"o§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§[!!§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function § #1§() : Texture
      {
         if(!this.§+!0§)
         {
            this.§+!0§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§+!0§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§[$1§)
         {
            if(this.§[$1§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§@";§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§`!%§.indexOf(_loc3_)) >= 0)
                  {
                     this.§`!%§.splice(_loc4_,1);
                  }
               }
               delete this.§[$1§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §3"%§() : int
      {
         return this.§`!%§.length;
      }
      
      public function §0"u§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§3"%§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§`!%§[param1];
         var _loc3_:ByteArray = §'#a§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
