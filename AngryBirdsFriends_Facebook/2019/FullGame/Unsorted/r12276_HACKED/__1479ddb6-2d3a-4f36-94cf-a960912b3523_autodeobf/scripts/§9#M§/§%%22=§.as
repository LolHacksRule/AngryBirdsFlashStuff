package §9#M§
{
   import §""4§.§!r§;
   import §""4§.Texture;
   import §&§.Starling;
   import §0"D§.getNextPowerOfTwo;
   import §5#E§.§;B§;
   import §[!&§.§""B§;
   import §[!&§.§;"f§;
   import §[!&§.§`#D§;
   import §^,§.§^#v§;
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
   
   public class §%"=§ extends EventDispatcher
   {
      
      protected static const §,C§:Number = 20;
      
      private static const §2#O§:int = 2048;
      
      private static const § each§:int = 8;
      
      private static var §'#J§:§%"=§;
       
      
      private var §'B§:Dictionary;
      
      private var §<"_§:Vector.<String>;
      
      private var §2#J§:Vector.<§;"f§>;
      
      private var §9#S§:Dictionary;
      
      private var §;!h§:Boolean;
      
      private var §+!I§:Boolean;
      
      private var §5#Z§:int;
      
      private var mId:String;
      
      private var §7j§:Texture;
      
      private var §'<§:int;
      
      private var §<#"§:int;
      
      private var §%#`§:§;B§;
      
      private var §7$;§:Timer;
      
      private var §^!V§:Vector.<BitmapData>;
      
      public function §%"=§(param1:String = null)
      {
         this.§^!V§ = new Vector.<BitmapData>();
         super();
         this.§2#J§ = new Vector.<§;"f§>();
         this.§'B§ = new Dictionary();
         this.§<"_§ = new Vector.<String>();
         this.§9#S§ = new Dictionary();
         this.mId = param1;
         this.§%#`§ = new §;B§(§2#O§,§2#O§);
      }
      
      public static function get §3"1§() : §%"=§
      {
         if(!§'#J§)
         {
            §'#J§ = new §%"=§("main");
         }
         return §'#J§;
      }
      
      private static function §7#[§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §2"#§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §2"[§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §#!g§() : int
      {
         return this.§'<§;
      }
      
      public function get §5#z§() : int
      {
         return this.§<#"§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!-§ = null;
         var _loc2_:§;"f§ = null;
         if(this.§'B§)
         {
            for each(_loc1_ in this.§'B§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§'B§ = null;
         }
         this.§<"_§ = null;
         if(this.§2#J§)
         {
            for each(_loc2_ in this.§2#J§)
            {
               _loc2_.dispose();
            }
            this.§2#J§ = null;
         }
         if(this.§9#S§)
         {
            this.§9#S§ = null;
         }
         if(this.§^!V§)
         {
            this.§^!V§ = null;
         }
         if(this.§7j§)
         {
            this.§7j§.dispose();
            this.§7j§ = null;
         }
         if(this.§7$;§)
         {
            this.§7$;§.stop();
            this.§7$;§.removeEventListener(TimerEvent.TIMER,this.§5#g§);
            this.§7$;§ = null;
         }
         this.§2#J§ = new Vector.<§;"f§>();
         this.§'B§ = new Dictionary();
         this.§9#S§ = new Dictionary();
      }
      
      protected function §5!U§(param1:String) : §;"f§
      {
         var _loc2_:§;"f§ = null;
         for each(_loc2_ in this.§2#J§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §>#4§(param1:§`#D§, param2:int) : void
      {
         if(this.§+!I§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§;"f§;
         if(!(_loc4_ = this.§5!U§(_loc3_)))
         {
            _loc4_ = new §;"f§(_loc3_);
            this.§2#J§.push(_loc4_);
         }
         _loc4_.§-!d§(param1);
      }
      
      private function §@![§(param1:Vector.<§`#D§>, param2:§;B§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:§`#D§ = null;
         var _loc11_:int = 0;
         var _loc12_:§""B§ = null;
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
               while(_loc11_ < _loc10_.§;"X§)
               {
                  _loc12_ = _loc10_.§7"P§(_loc11_);
                  _loc13_ = Math.ceil(_loc12_.rect.width / param5) * param5;
                  _loc14_ = Math.ceil(_loc12_.rect.height / param5) * param5;
                  param2.§1y§(_loc13_,_loc14_,§2"[§(_loc11_,_loc6_));
                  _loc9_++;
                  _loc11_++;
               }
               _loc6_++;
            }
         }
         while(int(param2.§?"e§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §##t§(param1:Vector.<§`#D§>, param2:§;B§, param3:BitmapData) : §`#D§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§`#D§ = null;
         var sprite:§""B§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§""B§ = null;
         var spriteSheetCollection:Vector.<§`#D§> = param1;
         var rectanglePacker:§;B§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§;!o§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§`#D§ = new §`#D§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§5##§(i,null);
            rectangleId = rectanglePacker.§2"[§(i);
            sheetIndex = §7#[§(rectangleId);
            rectangleIndex = §2"#§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§7"P§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§0#P§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §""B§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            packedSprite.§%#a§ = sprite.§%#a§;
            combinedSheet.§+!@§(packedSprite);
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
      
      private function §0#P§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function § $ §() : Boolean
      {
         if(!Starling.§6O§())
         {
            return false;
         }
         if(this.§+!I§)
         {
            return false;
         }
         this.§+!I§ = true;
         this.§5#Z§ = getTimer();
         return !this.§?K§();
      }
      
      private function §]#P§() : void
      {
         int(this.§#!g§ / 1024);
         int(this.§5#z§ / 1024);
         int(getTimer());
         this.§2#J§ = new Vector.<§;"f§>();
         this.§;!h§ = true;
         this.§+!I§ = false;
         if(this.§7$;§)
         {
            this.§7$;§.stop();
            this.§7$;§.removeEventListener(TimerEvent.TIMER,this.§5#g§);
            this.§7$;§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §5#g§(param1:Event) : void
      {
         this.§?K§();
      }
      
      private function §?K§() : Boolean
      {
         var _loc2_:§;"f§ = null;
         if(this.§2#J§.length > 0)
         {
            int(getTimer());
            _loc2_ = this.§2#J§.pop();
            this.§;"o§(_loc2_);
            _loc2_.dispose();
            int(getTimer());
         }
         if(this.§2#J§.length == 0)
         {
            this.§]#P§();
         }
         else
         {
            if(!this.§7$;§)
            {
               this.§7$;§ = new Timer(§,C§,0);
               this.§7$;§.addEventListener(TimerEvent.TIMER,this.§5#g§);
            }
            else
            {
               this.§7$;§.stop();
            }
            this.§7$;§.start();
         }
         return this.§2#J§.length > 0;
      }
      
      private function §;"o§(param1:§;"f§) : void
      {
         var spriteSheet:§`#D§ = null;
         var spriteSheetCollection:Vector.<§`#D§> = null;
         var bitmapWidth:int = 0;
         var bitmapHeight:int = 0;
         var combinedBitmapData:BitmapData = null;
         var combinedSpriteSheet:§`#D§ = null;
         var texture:Texture = null;
         var j:int = 0;
         var sprite:§""B§ = null;
         var sheetGroup:§;"f§ = param1;
         spriteSheetCollection = new Vector.<§`#D§>();
         var i:int = 0;
         while(i < sheetGroup.§"!=§)
         {
            spriteSheet = sheetGroup.§;F§(i);
            if(spriteSheet.§;"X§ > 0)
            {
               spriteSheetCollection.push(spriteSheet);
            }
            i++;
         }
         var textureCount:int = 0;
         while(spriteSheetCollection.length > 0)
         {
            if(this.§@![§(spriteSheetCollection,this.§%#`§,§2#O§,§2#O§,§ each§) == 0)
            {
               throw new Error("Found too large sprite sheet image for sprite sheet collection \'" + this.§7$3§(spriteSheetCollection) + "\'!");
            }
            bitmapWidth = getNextPowerOfTwo(this.§%#`§.§0#G§);
            bitmapHeight = getNextPowerOfTwo(this.§%#`§.§4"Q§);
            if(bitmapWidth <= 0 || bitmapHeight <= 0)
            {
               throw new Error("Invalid size results from rectangle packer, " + bitmapWidth + "x" + bitmapHeight + " for sprite sheet collection \'" + this.§7$3§(spriteSheetCollection) + "\'.");
            }
            try
            {
               combinedBitmapData = new BitmapData(bitmapWidth,bitmapHeight,true,16777215);
               combinedSpriteSheet = this.§##t§(spriteSheetCollection,this.§%#`§,combinedBitmapData);
               texture = this.getTextureFromBitmapData(combinedBitmapData,true,1);
               this.§^!V§.push(combinedBitmapData);
               j = 0;
            }
            catch(e:Error)
            {
               throw new Error("Could not create bitmapdata sprite sheet (" + bitmapWidth + "x" + bitmapHeight + ") for collection \'" + §7$3§(spriteSheetCollection) + "\' (error: " + e.toString() + ").\n" + "Free memory: " + System.freeMemory + ", Used total memory: " + System.totalMemoryNumber + ", Private memory: " + System.privateMemory + ".",e.errorID);
            }
            while(j < combinedSpriteSheet.§;"X§)
            {
               sprite = combinedSpriteSheet.§7"P§(j);
               this.§6t§(sprite,texture,combinedBitmapData,sprite.§%#a§);
               j++;
            }
            textureCount++;
         }
         if(textureCount > 1)
         {
         }
      }
      
      private function §7$3§(param1:Vector.<§`#D§>) : String
      {
         var _loc3_:§`#D§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_.name);
         }
         return _loc2_.join(", ");
      }
      
      private function §6t§(param1:§""B§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§!r§ = null;
         var _loc5_:§'!-§;
         if(!(_loc5_ = this.§'B§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §!r§(param2,_loc6_,false);
            _loc5_ = new §'!-§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§'B§[param1.name] = _loc5_;
            this.§<"_§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§=!X§)
         {
            for(bd in this.§9#S§)
            {
               try
               {
                  texture = this.§9#S§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §'!-§
      {
         return this.§'B§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§<"_§.length;
      }
      
      public function §0" §(param1:int) : §'!-§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§'B§[this.§<"_§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Number = 1.0) : Texture
      {
         var _loc4_:Texture;
         if(_loc4_ = this.§9#S§[param1])
         {
            return _loc4_;
         }
         _loc4_ = Starling.§^!D§(param1,param2,false,param3);
         this.§9#S§[param1] = _loc4_;
         this.§9"y§(_loc4_,param1,true);
         return _loc4_;
      }
      
      protected function §9"y§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§<#"§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§'<§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §`"$§() : Texture
      {
         if(!this.§7j§)
         {
            this.§7j§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§7j§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§9#S§)
         {
            if(this.§9#S§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§9"y§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§^!V§.indexOf(_loc3_)) >= 0)
                  {
                     this.§^!V§.splice(_loc4_,1);
                  }
               }
               delete this.§9#S§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §5$ §() : int
      {
         return this.§^!V§.length;
      }
      
      public function §8"6§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§5$ §)
         {
            return;
         }
         var _loc2_:BitmapData = this.§^!V§[param1];
         var _loc3_:ByteArray = §^#v§.encode(_loc2_);
         new FileReference().save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
