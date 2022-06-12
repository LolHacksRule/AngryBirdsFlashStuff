package §@"§
{
   import §"!T§.§""^§;
   import §+#m§.§%D§;
   import §+#m§.§=#S§;
   import §+#m§.§??§;
   import §1&§.Texture;
   import §1&§.§`#G§;
   import §4"D§.getNextPowerOfTwo;
   import §<"K§.§-#x§;
   import §^a§.Starling;
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
   
   public class §&!=§ extends EventDispatcher
   {
      
      protected static const §," §:Number = 20;
      
      private static const §8#m§:int = 2048;
      
      private static const §-"y§:int = 8;
      
      private static var §@"O§:§&!=§;
       
      
      private var §&y§:Dictionary;
      
      private var §+?§:Vector.<String>;
      
      private var §!"'§:Vector.<§??§>;
      
      private var §4!o§:Dictionary;
      
      private var §#";§:Boolean;
      
      private var §+"l§:Boolean;
      
      private var §'!+§:int;
      
      private var mId:String;
      
      private var §8!`§:Texture;
      
      private var §[""§:int;
      
      private var §="n§:int;
      
      private var §]#]§:§-#x§;
      
      private var §?"i§:Timer;
      
      private var §2#N§:Vector.<BitmapData>;
      
      public function §&!=§(param1:String = null)
      {
         this.§2#N§ = new Vector.<BitmapData>();
         super();
         this.§!"'§ = new Vector.<§??§>();
         this.§&y§ = new Dictionary();
         this.§+?§ = new Vector.<String>();
         this.§4!o§ = new Dictionary();
         this.mId = param1;
         this.§]#]§ = new §-#x§(§8#m§,§8#m§);
      }
      
      public static function get §3!]§() : §&!=§
      {
         if(!§@"O§)
         {
            §@"O§ = new §&!=§("main");
         }
         return §@"O§;
      }
      
      private static function §!"f§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §'!&§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §^K§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §^"§() : int
      {
         return this.§[""§;
      }
      
      public function get §["Z§() : int
      {
         return this.§="n§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+!3§ = null;
         var _loc2_:§??§ = null;
         if(this.§&y§)
         {
            for each(_loc1_ in this.§&y§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§&y§ = null;
         }
         this.§+?§ = null;
         if(this.§!"'§)
         {
            for each(_loc2_ in this.§!"'§)
            {
               _loc2_.dispose();
            }
            this.§!"'§ = null;
         }
         if(this.§4!o§)
         {
            this.§4!o§ = null;
         }
         if(this.§2#N§)
         {
            this.§2#N§ = null;
         }
         if(this.§8!`§)
         {
            this.§8!`§.dispose();
            this.§8!`§ = null;
         }
         if(this.§?"i§)
         {
            this.§?"i§.stop();
            this.§?"i§.removeEventListener(TimerEvent.TIMER,this.§'!;§);
            this.§?"i§ = null;
         }
         this.§!"'§ = new Vector.<§??§>();
         this.§&y§ = new Dictionary();
         this.§4!o§ = new Dictionary();
      }
      
      protected function §3$<§(param1:String) : §??§
      {
         var _loc2_:§??§ = null;
         for each(_loc2_ in this.§!"'§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §-#]§(param1:§=#S§, param2:int) : void
      {
         if(this.§+"l§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§??§;
         if(!(_loc4_ = this.§3$<§(_loc3_)))
         {
            _loc4_ = new §??§(_loc3_);
            this.§!"'§.push(_loc4_);
         }
         _loc4_.§=!i§(param1);
      }
      
      private function §-!@§(param1:Vector.<§=#S§>, param2:§-#x§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:§=#S§ = null;
         var _loc11_:int = 0;
         var _loc12_:§%D§ = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc7_:int = param1.length + 1;
         var _loc9_:int = 0;
         do
         {
            _loc9_ = 0;
            _loc7_--;
            param2.reset(param3,param4,param5);
            _loc6_ = 0;
            while(_loc6_ < _loc7_)
            {
               _loc10_ = param1[_loc6_];
               _loc11_ = 0;
               while(_loc11_ < _loc10_.§+$0§)
               {
                  _loc12_ = _loc10_.§!#<§(_loc11_);
                  _loc13_ = Math.ceil(_loc12_.rect.width / param5) * param5;
                  _loc14_ = Math.ceil(_loc12_.rect.height / param5) * param5;
                  param2.§1#-§(_loc13_,_loc14_,§^K§(_loc11_,_loc6_));
                  _loc9_++;
                  _loc11_++;
               }
               _loc6_++;
            }
         }
         while(int(param2.§["n§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §8"n§(param1:Vector.<§=#S§>, param2:§-#x§, param3:BitmapData) : §=#S§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§=#S§ = null;
         var sprite:§%D§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§%D§ = null;
         var spriteSheetCollection:Vector.<§=#S§> = param1;
         var rectanglePacker:§-#x§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§5#o§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§=#S§ = new §=#S§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§@!;§(i,null);
            rectangleId = rectanglePacker.§^K§(i);
            sheetIndex = §!"f§(rectangleId);
            rectangleIndex = §'!&§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§!#<§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§`!7§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §%D§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            packedSprite.§'J§ = sprite.§'J§;
            combinedSheet.§!#!§(packedSprite);
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
      
      private function §`!7§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §8o§() : Boolean
      {
         if(!Starling.§]">§())
         {
            return false;
         }
         if(this.§+"l§)
         {
            return false;
         }
         this.§+"l§ = true;
         this.§'!+§ = getTimer();
         return !this.§6=§();
      }
      
      private function § !]§() : void
      {
         int(this.§^"§ / 1024);
         int(this.§["Z§ / 1024);
         int(getTimer());
         this.§!"'§ = new Vector.<§??§>();
         this.§#";§ = true;
         this.§+"l§ = false;
         if(this.§?"i§)
         {
            this.§?"i§.stop();
            this.§?"i§.removeEventListener(TimerEvent.TIMER,this.§'!;§);
            this.§?"i§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §'!;§(param1:Event) : void
      {
         this.§6=§();
      }
      
      private function §6=§() : Boolean
      {
         var _loc2_:§??§ = null;
         if(this.§!"'§.length > 0)
         {
            int(getTimer());
            _loc2_ = this.§!"'§.pop();
            this.§]$#§(_loc2_);
            _loc2_.dispose();
            int(getTimer());
         }
         if(this.§!"'§.length == 0)
         {
            this.§ !]§();
         }
         else
         {
            if(!this.§?"i§)
            {
               this.§?"i§ = new Timer(§," §,0);
               this.§?"i§.addEventListener(TimerEvent.TIMER,this.§'!;§);
            }
            else
            {
               this.§?"i§.stop();
            }
            this.§?"i§.start();
         }
         return this.§!"'§.length > 0;
      }
      
      private function §]$#§(param1:§??§) : void
      {
         var spriteSheet:§=#S§ = null;
         var spriteSheetCollection:Vector.<§=#S§> = null;
         var bitmapWidth:int = 0;
         var bitmapHeight:int = 0;
         var combinedBitmapData:BitmapData = null;
         var combinedSpriteSheet:§=#S§ = null;
         var texture:Texture = null;
         var j:int = 0;
         var sprite:§%D§ = null;
         var sheetGroup:§??§ = param1;
         spriteSheetCollection = new Vector.<§=#S§>();
         var i:int = 0;
         while(i < sheetGroup.§#!e§)
         {
            spriteSheet = sheetGroup.§^#q§(i);
            if(spriteSheet.§+$0§ > 0)
            {
               spriteSheetCollection.push(spriteSheet);
            }
            i++;
         }
         var textureCount:int = 0;
         while(spriteSheetCollection.length > 0)
         {
            if(this.§-!@§(spriteSheetCollection,this.§]#]§,§8#m§,§8#m§,§-"y§) == 0)
            {
               throw new Error("Found too large sprite sheet image for sprite sheet collection \'" + this.§]"x§(spriteSheetCollection) + "\'!");
            }
            bitmapWidth = getNextPowerOfTwo(this.§]#]§.§+!t§);
            bitmapHeight = getNextPowerOfTwo(this.§]#]§.§>"#§);
            if(bitmapWidth <= 0 || bitmapHeight <= 0)
            {
               throw new Error("Invalid size results from rectangle packer, " + bitmapWidth + "x" + bitmapHeight + " for sprite sheet collection \'" + this.§]"x§(spriteSheetCollection) + "\'.");
            }
            try
            {
               combinedBitmapData = new BitmapData(bitmapWidth,bitmapHeight,true,16777215);
               combinedSpriteSheet = this.§8"n§(spriteSheetCollection,this.§]#]§,combinedBitmapData);
               texture = this.getTextureFromBitmapData(combinedBitmapData,true,1);
               this.§2#N§.push(combinedBitmapData);
               j = 0;
            }
            catch(e:Error)
            {
               throw new Error("Could not create bitmapdata sprite sheet (" + bitmapWidth + "x" + bitmapHeight + ") for collection \'" + §]"x§(spriteSheetCollection) + "\' (error: " + e.toString() + ").\n" + "Free memory: " + System.freeMemory + ", Used total memory: " + System.totalMemoryNumber + ", Private memory: " + System.privateMemory + ".",e.errorID);
            }
            while(j < combinedSpriteSheet.§+$0§)
            {
               sprite = combinedSpriteSheet.§!#<§(j);
               this.§9#O§(sprite,texture,combinedBitmapData,sprite.§'J§);
               j++;
            }
            textureCount++;
         }
         if(textureCount > 1)
         {
         }
      }
      
      private function §]"x§(param1:Vector.<§=#S§>) : String
      {
         var _loc3_:§=#S§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_.name);
         }
         return _loc2_.join(", ");
      }
      
      private function §9#O§(param1:§%D§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§`#G§ = null;
         var _loc5_:§+!3§;
         if(!(_loc5_ = this.§&y§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §`#G§(param2,_loc6_,false);
            _loc5_ = new §+!3§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§&y§[param1.name] = _loc5_;
            this.§+?§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§!!b§)
         {
            for(bd in this.§4!o§)
            {
               try
               {
                  texture = this.§4!o§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §+!3§
      {
         return this.§&y§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§+?§.length;
      }
      
      public function §1#S§(param1:int) : §+!3§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§&y§[this.§+?§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Number = 1.0) : Texture
      {
         var _loc4_:Texture;
         if(_loc4_ = this.§4!o§[param1])
         {
            return _loc4_;
         }
         _loc4_ = Starling.§&# §(param1,param2,false,param3);
         this.§4!o§[param1] = _loc4_;
         this.§@" §(_loc4_,param1,true);
         return _loc4_;
      }
      
      protected function §@" §(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§="n§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§[""§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §7#'§() : Texture
      {
         if(!this.§8!`§)
         {
            this.§8!`§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§8!`§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§4!o§)
         {
            if(this.§4!o§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§@" §(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§2#N§.indexOf(_loc3_)) >= 0)
                  {
                     this.§2#N§.splice(_loc4_,1);
                  }
               }
               delete this.§4!o§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §?$!§() : int
      {
         return this.§2#N§.length;
      }
      
      public function §0"x§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§?$!§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§2#N§[param1];
         var _loc3_:ByteArray = §""^§.encode(_loc2_);
         new FileReference().save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
