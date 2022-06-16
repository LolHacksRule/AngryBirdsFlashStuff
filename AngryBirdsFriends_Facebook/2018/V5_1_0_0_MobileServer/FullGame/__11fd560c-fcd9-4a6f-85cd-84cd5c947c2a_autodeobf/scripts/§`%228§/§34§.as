package §`"8§
{
   import §#">§.§&R§;
   import §1#Y§.§&#J§;
   import §5!D§.getNextPowerOfTwo;
   import §9$;§.§5"i§;
   import §9$;§.Texture;
   import §?"#§.§""o§;
   import §?"#§.§#$5§;
   import §?"#§.§=!I§;
   import §?"e§.Starling;
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
   
   public class §34§ extends EventDispatcher
   {
      
      protected static const §3d§:Number = 20;
      
      private static const §`"t§:int = 2048;
      
      private static const §5!t§:int = 8;
      
      private static var §%f§:§34§;
       
      
      private var §!%§:Dictionary;
      
      private var §,#G§:Vector.<String>;
      
      private var §8"@§:Vector.<§""o§>;
      
      private var §9!l§:Dictionary;
      
      private var §0"Z§:Boolean;
      
      private var §>#"§:Boolean;
      
      private var § "f§:int;
      
      private var mId:String;
      
      private var §%F§:Texture;
      
      private var §-""§:int;
      
      private var §`#V§:int;
      
      private var §1Z§:§&#J§;
      
      private var §each §:Timer;
      
      private var §]!b§:Vector.<BitmapData>;
      
      public function §34§(param1:String = null)
      {
         this.§]!b§ = new Vector.<BitmapData>();
         super();
         this.§8"@§ = new Vector.<§""o§>();
         this.§!%§ = new Dictionary();
         this.§,#G§ = new Vector.<String>();
         this.§9!l§ = new Dictionary();
         this.mId = param1;
         this.§1Z§ = new §&#J§(§`"t§,§`"t§);
      }
      
      public static function get §6!§() : §34§
      {
         if(!§%f§)
         {
            §%f§ = new §34§("main");
         }
         return §%f§;
      }
      
      private static function §"#w§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §6"_§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §5#f§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §;"P§() : int
      {
         return this.§-""§;
      }
      
      public function get §;§() : int
      {
         return this.§`#V§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`"X§ = null;
         var _loc2_:§""o§ = null;
         if(this.§!%§)
         {
            for each(_loc1_ in this.§!%§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§!%§ = null;
         }
         this.§,#G§ = null;
         if(this.§8"@§)
         {
            for each(_loc2_ in this.§8"@§)
            {
               _loc2_.dispose();
            }
            this.§8"@§ = null;
         }
         if(this.§9!l§)
         {
            this.§9!l§ = null;
         }
         if(this.§]!b§)
         {
            this.§]!b§ = null;
         }
         if(this.§%F§)
         {
            this.§%F§.dispose();
            this.§%F§ = null;
         }
         if(this.§each §)
         {
            this.§each §.stop();
            this.§each §.removeEventListener(TimerEvent.TIMER,this.§^#x§);
            this.§each § = null;
         }
         this.§8"@§ = new Vector.<§""o§>();
         this.§!%§ = new Dictionary();
         this.§9!l§ = new Dictionary();
      }
      
      protected function §4"]§(param1:String) : §""o§
      {
         var _loc2_:§""o§ = null;
         for each(_loc2_ in this.§8"@§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §5#I§(param1:§=!I§, param2:int) : void
      {
         if(this.§>#"§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§""o§;
         if(!(_loc4_ = this.§4"]§(_loc3_)))
         {
            _loc4_ = new §""o§(_loc3_);
            this.§8"@§.push(_loc4_);
         }
         _loc4_.§?!l§(param1);
      }
      
      private function §?O§(param1:Vector.<§=!I§>, param2:§&#J§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:§=!I§ = null;
         var _loc11_:int = 0;
         var _loc12_:§#$5§ = null;
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
               while(_loc11_ < _loc10_.§'#w§)
               {
                  _loc12_ = _loc10_.§,5§(_loc11_);
                  _loc13_ = Math.ceil(_loc12_.rect.width / param5) * param5;
                  _loc14_ = Math.ceil(_loc12_.rect.height / param5) * param5;
                  param2.§?#H§(_loc13_,_loc14_,§5#f§(_loc11_,_loc6_));
                  _loc9_++;
                  _loc11_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§1$3§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §8!Z§(param1:Vector.<§=!I§>, param2:§&#J§, param3:BitmapData) : §=!I§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§=!I§ = null;
         var sprite:§#$5§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§#$5§ = null;
         var spriteSheetCollection:Vector.<§=!I§> = param1;
         var rectanglePacker:§&#J§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§<#v§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§=!I§ = new §=!I§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§1#Q§(i,null);
            rectangleId = rectanglePacker.§5#f§(i);
            sheetIndex = §"#w§(rectangleId);
            rectangleIndex = §6"_§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§,5§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§8"+§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §#$5§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            packedSprite.§@"K§ = sprite.§@"K§;
            combinedSheet.§+"c§(packedSprite);
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
      
      private function §8"+§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §`"Q§() : Boolean
      {
         if(!Starling.§1#H§())
         {
            return false;
         }
         if(this.§>#"§)
         {
            return false;
         }
         this.§>#"§ = true;
         this.§ "f§ = getTimer();
         return !this.§7"O§();
      }
      
      private function §<!x§() : void
      {
         var _loc1_:int = this.§;"P§ / 1024;
         var _loc2_:int = this.§;§ / 1024;
         var _loc3_:int = getTimer();
         this.§8"@§ = new Vector.<§""o§>();
         this.§0"Z§ = true;
         this.§>#"§ = false;
         if(this.§each §)
         {
            this.§each §.stop();
            this.§each §.removeEventListener(TimerEvent.TIMER,this.§^#x§);
            this.§each § = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §^#x§(param1:Event) : void
      {
         this.§7"O§();
      }
      
      private function §7"O§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§""o§ = null;
         var _loc3_:int = 0;
         if(this.§8"@§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§8"@§.pop();
            this.§!"W§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§8"@§.length == 0)
         {
            this.§<!x§();
         }
         else
         {
            if(!this.§each §)
            {
               this.§each § = new Timer(§3d§,0);
               this.§each §.addEventListener(TimerEvent.TIMER,this.§^#x§);
            }
            else
            {
               this.§each §.stop();
            }
            this.§each §.start();
         }
         return this.§8"@§.length > 0;
      }
      
      private function §!"W§(param1:§""o§) : void
      {
         var spriteSheet:§=!I§ = null;
         var spriteSheetCollection:Vector.<§=!I§> = null;
         var bitmapWidth:int = 0;
         var bitmapHeight:int = 0;
         var combinedBitmapData:BitmapData = null;
         var combinedSpriteSheet:§=!I§ = null;
         var texture:Texture = null;
         var j:int = 0;
         var sprite:§#$5§ = null;
         var sheetGroup:§""o§ = param1;
         spriteSheetCollection = new Vector.<§=!I§>();
         var i:int = 0;
         while(i < sheetGroup.§ #0§)
         {
            spriteSheet = sheetGroup.§+!u§(i);
            if(spriteSheet.§'#w§ > 0)
            {
               spriteSheetCollection.push(spriteSheet);
            }
            i++;
         }
         var textureCount:int = 0;
         while(spriteSheetCollection.length > 0)
         {
            if(this.§?O§(spriteSheetCollection,this.§1Z§,§`"t§,§`"t§,§5!t§) == 0)
            {
               throw new Error("Found too large sprite sheet image for sprite sheet collection \'" + this.§]#@§(spriteSheetCollection) + "\'!");
            }
            bitmapWidth = getNextPowerOfTwo(this.§1Z§.§7!]§);
            bitmapHeight = getNextPowerOfTwo(this.§1Z§.§,#H§);
            if(bitmapWidth <= 0 || bitmapHeight <= 0)
            {
               throw new Error("Invalid size results from rectangle packer, " + bitmapWidth + "x" + bitmapHeight + " for sprite sheet collection \'" + this.§]#@§(spriteSheetCollection) + "\'.");
            }
            try
            {
               combinedBitmapData = new BitmapData(bitmapWidth,bitmapHeight,true,16777215);
            }
            catch(e:Error)
            {
               throw new Error("Could not create bitmapdata sprite sheet (" + bitmapWidth + "x" + bitmapHeight + ") for collection \'" + §]#@§(spriteSheetCollection) + "\' (error: " + e.toString() + ").\n" + "Free memory: " + System.freeMemory + ", Used total memory: " + System.totalMemoryNumber + ", Private memory: " + System.privateMemory + ".",e.errorID);
            }
            combinedSpriteSheet = this.§8!Z§(spriteSheetCollection,this.§1Z§,combinedBitmapData);
            texture = this.getTextureFromBitmapData(combinedBitmapData,true,1);
            this.§]!b§.push(combinedBitmapData);
            j = 0;
            while(j < combinedSpriteSheet.§'#w§)
            {
               sprite = combinedSpriteSheet.§,5§(j);
               this.§0R§(sprite,texture,combinedBitmapData,sprite.§@"K§);
               j++;
            }
            textureCount++;
         }
         if(textureCount > 1)
         {
         }
      }
      
      private function §]#@§(param1:Vector.<§=!I§>) : String
      {
         var _loc3_:§=!I§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_.name);
         }
         return _loc2_.join(", ");
      }
      
      private function §0R§(param1:§#$5§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§5"i§ = null;
         var _loc5_:§`"X§;
         if(!(_loc5_ = this.§!%§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §5"i§(param2,_loc6_,false);
            _loc5_ = new §`"X§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§!%§[param1.name] = _loc5_;
            this.§,#G§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§7#'§)
         {
            for(bd in this.§9!l§)
            {
               try
               {
                  texture = this.§9!l§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §`"X§
      {
         return this.§!%§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§,#G§.length;
      }
      
      public function §4#!§(param1:int) : §`"X§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§!%§[this.§,#G§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Number = 1.0) : Texture
      {
         var _loc4_:Texture;
         if(_loc4_ = this.§9!l§[param1])
         {
            return _loc4_;
         }
         _loc4_ = Starling.§8T§(param1,param2,false,param3);
         this.§9!l§[param1] = _loc4_;
         this.§7!O§(_loc4_,param1,true);
         return _loc4_;
      }
      
      protected function §7!O§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§`#V§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§-""§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §?i§() : Texture
      {
         if(!this.§%F§)
         {
            this.§%F§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§%F§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§9!l§)
         {
            if(this.§9!l§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§7!O§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§]!b§.indexOf(_loc3_)) >= 0)
                  {
                     this.§]!b§.splice(_loc4_,1);
                  }
               }
               delete this.§9!l§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §1#?§() : int
      {
         return this.§]!b§.length;
      }
      
      public function § !j§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§1#?§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§]!b§[param1];
         var _loc3_:ByteArray = §&R§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
