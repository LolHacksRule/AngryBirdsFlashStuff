package §3"$§
{
   import §-Y§.§#`§;
   import §3"e§.getNextPowerOfTwo;
   import §7§.§%>§;
   import §7§.§21§;
   import §7§.§]!W§;
   import §9!!§.§=!S§;
   import §9$§.§=!§;
   import §<"L§.Texture;
   import §<"L§.§^m§;
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
   
   public class §&"0§ extends EventDispatcher
   {
      
      protected static const §&"[§:Number = 20;
      
      private static const §<!c§:int = 2048;
      
      private static const §+!f§:int = 8;
      
      private static var §'R§:§&"0§;
       
      
      private var §[§:Dictionary;
      
      private var §="9§:Vector.<String>;
      
      private var §#!_§:Vector.<§]!W§>;
      
      private var §?!B§:Dictionary;
      
      private var §]!c§:Boolean;
      
      private var §?!n§:Boolean;
      
      private var §2"J§:int;
      
      private var §[7§:String;
      
      private var §`!_§:Texture;
      
      private var §2W§:int;
      
      private var §="O§:int;
      
      private var §`!O§:§=!§;
      
      private var §use§:Timer;
      
      private var §6"j§:Vector.<BitmapData>;
      
      public function §&"0§(param1:String = null)
      {
         this.§6"j§ = new Vector.<BitmapData>();
         super();
         this.§#!_§ = new Vector.<§]!W§>();
         this.§[§ = new Dictionary();
         this.§="9§ = new Vector.<String>();
         this.§?!B§ = new Dictionary();
         this.§[7§ = param1;
         this.§`!O§ = new §=!§(§<!c§,§<!c§);
      }
      
      public static function get §-G§() : §&"0§
      {
         if(!§'R§)
         {
            §'R§ = new §&"0§("main");
         }
         return §'R§;
      }
      
      private static function §3"Y§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §?"j§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §!"U§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get textureMemoryUsage() : int
      {
         return this.§2W§;
      }
      
      public function get bitmapMemoryUsage() : int
      {
         return this.§="O§;
      }
      
      public function get id() : String
      {
         return this.§[7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]!h§ = null;
         var _loc2_:§]!W§ = null;
         if(this.§[§)
         {
            for each(_loc1_ in this.§[§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§[§ = null;
         }
         this.§="9§ = null;
         if(this.§#!_§)
         {
            for each(_loc2_ in this.§#!_§)
            {
               _loc2_.dispose();
            }
            this.§#!_§ = null;
         }
         if(this.§?!B§)
         {
            this.§?!B§ = null;
         }
         if(this.§6"j§)
         {
            this.§6"j§ = null;
         }
         if(this.§`!_§)
         {
            this.§`!_§.dispose();
            this.§`!_§ = null;
         }
         if(this.§use§)
         {
            this.§use§.stop();
            this.§use§.removeEventListener(TimerEvent.TIMER,this.§^"_§);
            this.§use§ = null;
         }
         this.§#!_§ = new Vector.<§]!W§>();
         this.§[§ = new Dictionary();
         this.§?!B§ = new Dictionary();
      }
      
      protected function §!J§(param1:String) : §]!W§
      {
         var _loc2_:§]!W§ = null;
         for each(_loc2_ in this.§#!_§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §>!j§(param1:§21§, param2:int) : void
      {
         if(this.§]!c§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§]!W§;
         if(!(_loc4_ = this.§!J§(_loc3_)))
         {
            _loc4_ = new §]!W§(_loc3_);
            this.§#!_§.push(_loc4_);
         }
         _loc4_.§5"Y§(param1);
      }
      
      private function §`3§(param1:Vector.<§21§>, param2:§=!§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§21§ = null;
         var _loc12_:int = 0;
         var _loc13_:§%>§ = null;
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
               while(_loc12_ < _loc11_.§+"c§)
               {
                  _loc13_ = _loc11_.§-"S§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§1"T§(_loc14_,_loc15_,§!"U§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§^?§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §&"A§(param1:Vector.<§21§>, param2:§=!§, param3:BitmapData) : §21§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§21§ = null;
         var sprite:§%>§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§%>§ = null;
         var spriteSheetCollection:Vector.<§21§> = param1;
         var rectanglePacker:§=!§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§0"V§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§21§ = new §21§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§2"w§(i,null);
            rectangleId = rectanglePacker.§!"U§(i);
            sheetIndex = §3"Y§(rectangleId);
            rectangleIndex = §?"j§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§-"S§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§+"p§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §%>§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§]H§(packedSprite);
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
      
      private function §+"p§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
         if(!§=!S§.§!!,§())
         {
            return false;
         }
         if(this.§?!n§)
         {
            return false;
         }
         this.§?!n§ = true;
         this.§2"J§ = getTimer();
         return !this.§2[§();
      }
      
      private function §8"Z§() : void
      {
         var _loc1_:int = this.textureMemoryUsage / 1024;
         var _loc2_:int = this.bitmapMemoryUsage / 1024;
         var _loc3_:int = getTimer();
         this.§#!_§ = new Vector.<§]!W§>();
         this.§]!c§ = true;
         if(this.§use§)
         {
            this.§use§.stop();
            this.§use§.removeEventListener(TimerEvent.TIMER,this.§^"_§);
            this.§use§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §^"_§(param1:Event) : void
      {
         this.§2[§();
      }
      
      private function §2[§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§]!W§ = null;
         var _loc3_:int = 0;
         if(this.§#!_§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§#!_§.pop();
            this.§4#3§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§#!_§.length == 0)
         {
            this.§8"Z§();
         }
         else
         {
            if(!this.§use§)
            {
               this.§use§ = new Timer(§&"[§,0);
               this.§use§.addEventListener(TimerEvent.TIMER,this.§^"_§);
            }
            else
            {
               this.§use§.stop();
            }
            this.§use§.start();
         }
         return this.§#!_§.length > 0;
      }
      
      private function §4#3§(param1:§]!W§) : void
      {
         var _loc2_:§21§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§21§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§%>§ = null;
         var _loc3_:Vector.<§21§> = new Vector.<§21§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§6§)
         {
            _loc2_ = param1.§2!E§(_loc4_);
            if(_loc2_.§+"c§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§`3§(_loc3_,this.§`!O§,§<!c§,§<!c§,§+!f§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§`!O§.§^#,§);
            _loc7_ = getNextPowerOfTwo(this.§`!O§.§<!E§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§&"A§(_loc3_,this.§`!O§,_loc8_);
            _loc10_ = this.getTextureFromBitmapData(_loc8_);
            this.§6"j§.push(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§+"c§)
            {
               _loc12_ = _loc9_.§-"S§(_loc11_);
               this.§2c§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §2c§(param1:§%>§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§^m§ = null;
         var _loc5_:§]!h§;
         if(!(_loc5_ = this.§[§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new §^m§(param2,_loc6_,false);
            _loc5_ = new §]!h§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§[§[param1.name] = _loc5_;
            this.§="9§.push(param1.name);
         }
      }
      
      public function reInitializeTextures() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§=!S§.§`!d§)
         {
            for(bd in this.§?!B§)
            {
               try
               {
                  texture = this.§?!B§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §]!h§
      {
         return this.§[§[param1];
      }
      
      public function get textureCount() : int
      {
         return this.§="9§.length;
      }
      
      public function getTextureWithIndex(param1:int) : §]!h§
      {
         if(param1 < 0 || param1 >= this.textureCount)
         {
            return null;
         }
         return this.§[§[this.§="9§[param1]];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§?!B§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §=!S§.§0X§(param1,param2);
         this.§?!B§[param1] = _loc3_;
         this.§%!V§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §%!V§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§="O§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§2W§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §-!u§() : Texture
      {
         if(!this.§`!_§)
         {
            this.§`!_§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§`!_§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         for(_loc2_ in this.§?!B§)
         {
            if(this.§?!B§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§%!V§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
                  if((_loc4_ = this.§6"j§.indexOf(_loc3_)) >= 0)
                  {
                     this.§6"j§.splice(_loc4_,1);
                  }
               }
               delete this.§?!B§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
      
      public function get §1#5§() : int
      {
         return this.§6"j§.length;
      }
      
      public function §@!F§(param1:int) : void
      {
         if(param1 < 0 || param1 >= this.§1#5§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§6"j§[param1];
         var _loc3_:ByteArray = §#`§.encode(_loc2_);
         var _loc4_:FileReference;
         (_loc4_ = new FileReference()).save(_loc3_,"texture_" + (param1 + 1) + ".png");
      }
   }
}
