package §^"[§
{
   import §""'§.§<"A§;
   import §""'§.Texture;
   import §#"l§.getNextPowerOfTwo;
   import §4h§.§##W§;
   import §5$>§.§4!O§;
   import §="l§.§"!t§;
   import §="l§.§0Y§;
   import §="l§.§;#f§;
   import §]"P§.Starling;
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
   
   public class §=#;§ extends EventDispatcher
   {
      
      protected static const §@#[§:Number = 20;
      
      private static const §%t§:int = 2048;
      
      private static const § #P§:int = 8;
      
      private static var §8R§:§=#;§;
       
      
      private var §%!W§:Dictionary;
      
      private var §""g§:Vector.<String>;
      
      private var §%!-§:Vector.<§0Y§>;
      
      private var §8"c§:Dictionary;
      
      private var §?#`§:Boolean;
      
      private var §-"#§:Boolean;
      
      private var §@"x§:int;
      
      private var mId:String;
      
      private var §`"Y§:Texture;
      
      private var §3"?§:int;
      
      private var §^#[§:int;
      
      private var §]A§:§##W§;
      
      private var §'v§:Timer;
      
      private var §4$<§:Vector.<BitmapData>;
      
      public function §=#;§(param1:String = null)
      {
         this.§4$<§ = new Vector.<BitmapData>();
         super();
         this.§%!-§ = new Vector.<§0Y§>();
         this.§%!W§ = new Dictionary();
         this.§""g§ = new Vector.<String>();
         this.§8"c§ = new Dictionary();
         this.mId = param1;
         this.§]A§ = new §##W§(§%t§,§%t§);
      }
      
      public static function get §?q§() : §=#;§
      {
         if(!§8R§)
         {
            §8R§ = new §=#;§("main");
         }
         return §8R§;
      }
      
      private static function §;#9§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §-!P§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §;#1§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §&#e§() : int
      {
         return this.§3"?§;
      }
      
      public function get §@$2§() : int
      {
         return this.§^#[§;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^!8§ = null;
         var _loc2_:§0Y§ = null;
         if(this.§%!W§)
         {
            for each(_loc1_ in this.§%!W§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§%!W§ = null;
         }
         this.§""g§ = null;
         if(this.§%!-§)
         {
            for each(_loc2_ in this.§%!-§)
            {
               _loc2_.dispose();
            }
            this.§%!-§ = null;
         }
         if(this.§8"c§)
         {
            this.§8"c§ = null;
         }
         if(this.§4$<§)
         {
            this.§4$<§ = null;
         }
         if(this.§`"Y§)
         {
            this.§`"Y§.dispose();
            this.§`"Y§ = null;
         }
         if(this.§'v§)
         {
            this.§'v§.stop();
            this.§'v§.removeEventListener(TimerEvent.TIMER,this.§ J§);
            this.§'v§ = null;
         }
         this.§%!-§ = new Vector.<§0Y§>();
         this.§%!W§ = new Dictionary();
         this.§8"c§ = new Dictionary();
      }
      
      protected function §+#t§(param1:String) : §0Y§
      {
         var _loc2_:§0Y§ = null;
         for each(_loc2_ in this.§%!-§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §-$1§(param1:§;#f§, param2:int) : void
      {
         if(this.§-"#§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§0Y§;
         if(!(_loc4_ = this.§+#t§(_loc3_)))
         {
            _loc4_ = new §0Y§(_loc3_);
            this.§%!-§.push(_loc4_);
         }
         _loc4_.§!#&§(param1);
      }
      
      private function §=#P§(param1:Vector.<§;#f§>, param2:§##W§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:§;#f§ = null;
         var _loc11_:int = 0;
         var _loc12_:§"!t§ = null;
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
               while(_loc11_ < _loc10_.§%!i§)
               {
                  _loc12_ = _loc10_.§&!o§(_loc11_);
                  _loc13_ = Math.ceil(_loc12_.rect.width / param5) * param5;
                  _loc14_ = Math.ceil(_loc12_.rect.height / param5) * param5;
                  param2.§@"!§(_loc13_,_loc14_,§;#1§(_loc11_,_loc6_));
                  _loc9_++;
                  _loc11_++;
               }
               _loc6_++;
            }
         }
         while(int(param2.§ L§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §^"x§(param1:Vector.<§;#f§>, param2:§##W§, param3:BitmapData) : §;#f§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§;#f§ = null;
         var sprite:§"!t§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§"!t§ = null;
         var spriteSheetCollection:Vector.<§;#f§> = param1;
         var rectanglePacker:§##W§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§;"y§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§;#f§ = new §;#f§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§="L§(i,null);
            rectangleId = rectanglePacker.§;#1§(i);
            sheetIndex = §;#9§(rectangleId);
            rectangleIndex = §-!P§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§&!o§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§>=§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §"!t§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            packedSprite.§^#^§ = sprite.§^#^§;
            combinedSheet.§3#>§(packedSprite);
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
      
      private function §>=§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §4d§() : Boolean
      {
         if(!Starling.§]#<§())
         {
            return false;
         }
         if(this.§-"#§)
         {
            return false;
         }
         this.§-"#§ = true;
         this.§@"x§ = getTimer();
         return !this.§%#!§();
      }
      
      private function §1!u§() : void
      {
         int(this.§&#e§ / 1024);
         int(this.§@$2§ / 1024);
         int(getTimer());
         this.§%!-§ = new Vector.<§0Y§>();
         this.§?#`§ = true;
         this.§-"#§ = false;
         if(this.§'v§)
         {
            this.§'v§.stop();
            this.§'v§.removeEventListener(TimerEvent.TIMER,this.§ J§);
            this.§'v§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function § J§(param1:Event) : void
      {
         this.§%#!§();
      }
      
      private function §%#!§() : Boolean
      {
         var _loc2_:§0Y§ = null;
         if(this.§%!-§.length > 0)
         {
            int(getTimer());
            _loc2_ = this.§%!-§.pop();
            this.§3$0§(_loc2_);
            _loc2_.dispose();
            int(getTimer());
         }
         if(this.§%!-§.length == 0)
         {
            this.§1!u§();
         }
         else
         {
            if(!this.§'v§)
            {
               this.§'v§ = new Timer(§@#[§,0);
               this.§'v§.addEventListener(TimerEvent.TIMER,this.§ J§);
            }
            else
            {
               this.§'v§.stop();
            }
            this.§'v§.start();
         }
         return this.§%!-§.length > 0;
      }
      
      private function §3$0§(param1:§0Y§) : void
      {
         var spriteSheet:§;#f§ = null;
         var spriteSheetCollection:Vector.<§;#f§> = null;
         var bitmapWidth:int = 0;
         var bitmapHeight:int = 0;
         var combinedBitmapData:BitmapData = null;
         var combinedSpriteSheet:§;#f§ = null;
         var texture:Texture = null;
         var j:int = 0;
         var sprite:§"!t§ = null;
         var sheetGroup:§0Y§ = param1;
         spriteSheetCollection = new Vector.<§;#f§>();
         var i:int = 0;
         while(i < sheetGroup.§<!>§)
         {
            spriteSheet = sheetGroup.§5o§(i);
            if(spriteSheet.§%!i§ > 0)
            {
               spriteSheetCollection.push(spriteSheet);
            }
            i++;
         }
         var textureCount:int = 0;
         while(spriteSheetCollection.length > 0)
         {
            if(this.§=#P§(spriteSheetCollection,this.§]A§,§%t§,§%t§,§ #P§) == 0)
            {
               throw new Error("Found too large sprite sheet image for sprite sheet collection \'" + this.§"#g§(spriteSheetCollection) + "\'!");
            }
            bitmapWidth = getNextPowerOfTwo(this.§]A§.§?7§);
            bitmapHeight = getNextPowerOfTwo(this.§]A§.§`$$§);
            if(bitmapWidth <= 0 || bitmapHeight <= 0)
            {
               throw new Error("Invalid size results from rectangle packer, " + bitmapWidth + "x" + bitmapHeight + " for sprite sheet collection \'" + this.§"#g§(spriteSheetCollection) + "\'.");
            }
            try
            {
               combinedBitmapData = new BitmapData(bitmapWidth,bitmapHeight,true,16777215);
               combinedSpriteSheet = this.§^"x§(spriteSheetCollection,this.§]A§,combinedBitmapData);
               texture = this.getTextureFromBitmapData(combinedBitmapData,true,1);
               this.§4$<§.push(combinedBitmapData);
               j = 0;
            }
            catch(e:Error)
            {
               throw new Error("Could not create bitmapdata sprite sheet (" + bitmapWidth + "x" + bitmapHeight + ") for collection \'" + §"#g§(spriteSheetCollection) + "\' (error: " + e.toString() + ").\n" + "Free memory: " + System.freeMemory + ", Used total memory: " + System.totalMemoryNumber + ", Private memory: " + System.privateMemory + ".",e.errorID);
            }
            while(j < combinedSpriteSheet.§%!i§)
            {
               sprite = combinedSpriteSheet.§&!o§(j);
               this.§0!$§(sprite,texture,combinedBitmapData,sprite.§^#^§);
               j++;
            }
            textureCount++;
         }
         if(textureCount > 1)
         {
         }
      }
      
      private function §"#g§(param1:Vector.<§;#f§>) : String
      {
         var _loc3_:§;#f§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_.name);
         }
         return _loc2_.join(", ");
      }
      
      private function §0!$§(param1:§"!t§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§<"A§ = null;
         var _loc5_:§^!8§;
         if(!(_loc5_ = this.§%!W§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §<"A§(param2,_loc6_,false);
            _loc5_ = new §^!8§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§%!W§[param1.name] = _loc5_;
            this.§""g§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!Starling.§^!S§)
         {
            for(bd in this.§8"c§)
            {
               try
               {
                  texture = this.§8"c§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §^!8§
      {
         return this.§%!W§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§""g§.length;
      }
      
      public function §8!6§(param1:int) : §^!8§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§%!W§[this.§""g§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true, param3:Number = 1.0) : Texture
      {
         var _loc4_:Texture;
         if(_loc4_ = this.§8"c§[param1])
         {
            return _loc4_;
         }
         _loc4_ = Starling.§6`§(param1,param2,false,param3);
         this.§8"c§[param1] = _loc4_;
         this.§,"4§(_loc4_,param1,true);
         return _loc4_;
      }
      
      protected function §,"4§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§^#[§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§3"?§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §5!^§() : Texture
      {
         if(!this.§`"Y§)
         {
            this.§`"Y§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§`"Y§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§8"c§)
         {
            if(this.§8"c§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§,"4§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§4$<§.indexOf(_loc3_)) >= 0)
                  {
                     this.§4$<§.splice(_loc4_,1);
                  }
               }
               delete this.§8"c§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §>#V§() : int
      {
         return this.§4$<§.length;
      }
      
      public function §+#U§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§>#V§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§4$<§[param1];
         var _loc3_:ByteArray = §4!O§.encode(_loc2_);
         new FileReference().save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
