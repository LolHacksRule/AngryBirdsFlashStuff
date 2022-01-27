package §^e§
{
   import §&!y§.§+!v§;
   import §'@§.§ ^§;
   import §'@§.Texture;
   import §1f§.§9H§;
   import §>"$§.§'!u§;
   import §>"$§.§0!!§;
   import §>"$§.§6e§;
   import §[4§.getNextPowerOfTwo;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §0"1§ extends EventDispatcher
   {
      
      protected static const §#!m§:Number = 20;
      
      private static const §#F§:int = 2048;
      
      private static const §[!j§:int = 8;
      
      private static var §@!p§:§0"1§;
       
      
      private var §]!e§:Dictionary;
      
      private var §<!0§:Vector.<§6e§>;
      
      private var §7!g§:Dictionary;
      
      private var §<A§:Boolean;
      
      private var §0"§:Boolean;
      
      private var §!"6§:int;
      
      private var §?I§:String;
      
      private var §4!e§:Texture;
      
      private var §;g§:int;
      
      private var §1!,§:int;
      
      private var §<I§:§+!v§;
      
      private var §@!q§:Timer;
      
      public function §0"1§(param1:String = null)
      {
         super();
         this.§<!0§ = new Vector.<§6e§>();
         this.§]!e§ = new Dictionary();
         this.§7!g§ = new Dictionary();
         this.§?I§ = param1;
         this.§<I§ = new §+!v§(§#F§,§#F§);
      }
      
      public static function get §8!J§() : §0"1§
      {
         if(!§@!p§)
         {
            §@!p§ = new §0"1§("main");
         }
         return §@!p§;
      }
      
      private static function §-z§(param1:int) : int
      {
         return param1 / 1000000;
      }
      
      private static function §""H§(param1:int) : int
      {
         return param1 % 1000000;
      }
      
      private static function §&!t§(param1:int, param2:int) : int
      {
         return param2 * 1000000 + param1;
      }
      
      public function get §>"A§() : int
      {
         return this.§;g§;
      }
      
      public function get §^!=§() : int
      {
         return this.§1!,§;
      }
      
      public function get id() : String
      {
         return this.§?I§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7!R§ = null;
         var _loc2_:§6e§ = null;
         if(this.§]!e§)
         {
            for each(_loc1_ in this.§]!e§)
            {
               this.unregisterBitmapDataTexture(_loc1_.texture.parent);
               _loc1_.dispose();
            }
            this.§]!e§ = null;
         }
         if(this.§<!0§)
         {
            for each(_loc2_ in this.§<!0§)
            {
               _loc2_.dispose();
            }
            this.§<!0§ = null;
         }
         if(this.§7!g§)
         {
            this.§7!g§ = null;
         }
         if(this.§4!e§)
         {
            this.§4!e§.dispose();
            this.§4!e§ = null;
         }
         if(this.§@!q§)
         {
            this.§@!q§.stop();
            this.§@!q§.removeEventListener(TimerEvent.TIMER,this.§30§);
            this.§@!q§ = null;
         }
         this.§<!0§ = new Vector.<§6e§>();
         this.§]!e§ = new Dictionary();
         this.§7!g§ = new Dictionary();
      }
      
      protected function §8">§(param1:String) : §6e§
      {
         var _loc2_:§6e§ = null;
         for each(_loc2_ in this.§<!0§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §-!$§(param1:§0!!§, param2:int) : void
      {
         if(this.§<A§)
         {
            return;
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§6e§;
         if(!(_loc4_ = this.§8">§(_loc3_)))
         {
            _loc4_ = new §6e§(_loc3_);
            this.§<!0§.push(_loc4_);
         }
         _loc4_.§ j§(param1);
      }
      
      private function §2"A§(param1:Vector.<§0!!§>, param2:§+!v§, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:§0!!§ = null;
         var _loc12_:int = 0;
         var _loc13_:§'!u§ = null;
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
               while(_loc12_ < _loc11_.§4j§)
               {
                  _loc13_ = _loc11_.§-!#§(_loc12_);
                  _loc14_ = Math.ceil(_loc13_.rect.width / param5) * param5;
                  _loc15_ = Math.ceil(_loc13_.rect.height / param5) * param5;
                  param2.§80§(_loc14_,_loc15_,§&!t§(_loc12_,_loc6_));
                  _loc9_++;
                  _loc12_++;
               }
               _loc6_++;
            }
         }
         while((_loc8_ = param2.§"!]§()) < _loc9_);
         
         return _loc6_;
      }
      
      private function §1"C§(param1:Vector.<§0!!§>, param2:§+!v§, param3:BitmapData) : §0!!§
      {
         var i:int = 0;
         var rect:Rectangle = null;
         var rectangleId:int = 0;
         var sheetIndex:int = 0;
         var rectangleIndex:int = 0;
         var spriteSheet:§0!!§ = null;
         var sprite:§'!u§ = null;
         var bitmap:BitmapData = null;
         var packedSprite:§'!u§ = null;
         var spriteSheetCollection:Vector.<§0!!§> = param1;
         var rectanglePacker:§+!v§ = param2;
         var targetBitmap:BitmapData = param3;
         var packedCount:int = rectanglePacker.§]!K§;
         var packedIds:Vector.<int> = new Vector.<int>();
         var combinedSheet:§0!!§ = new §0!!§(targetBitmap);
         i = 0;
         while(i < packedCount)
         {
            rect = rectanglePacker.§4!4§(i,null);
            rectangleId = rectanglePacker.§&!t§(i);
            sheetIndex = §-z§(rectangleId);
            rectangleIndex = §""H§(rectangleId);
            if(packedIds.indexOf(sheetIndex) < 0)
            {
               packedIds.push(sheetIndex);
            }
            spriteSheet = spriteSheetCollection[sheetIndex];
            combinedSheet.scale = spriteSheet.scale;
            sprite = spriteSheet.§-!#§(rectangleIndex);
            bitmap = spriteSheet.bitmapData;
            this.§0d§(bitmap,targetBitmap,sprite.rect,rect);
            packedSprite = new §'!u§();
            packedSprite.rect = new Rectangle(rect.x,rect.y,sprite.rect.width,sprite.rect.height);
            packedSprite.pivotX = sprite.pivotX;
            packedSprite.pivotY = sprite.pivotY;
            packedSprite.name = sprite.name;
            combinedSheet.§8!m§(packedSprite);
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
      
      private function §0d§(param1:BitmapData, param2:BitmapData, param3:Rectangle, param4:Rectangle) : void
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
      
      public function §[![§() : Boolean
      {
         if(!§9H§.§9o§())
         {
            return false;
         }
         if(this.§0"§)
         {
            return false;
         }
         this.§0"§ = true;
         this.§!"6§ = getTimer();
         return !this.§+I§();
      }
      
      private function §#!T§() : void
      {
         var _loc1_:int = this.§>"A§ / 1024;
         var _loc2_:int = this.§^!=§ / 1024;
         var _loc3_:int = getTimer();
         this.§<!0§ = new Vector.<§6e§>();
         this.§<A§ = true;
         if(this.§@!q§)
         {
            this.§@!q§.stop();
            this.§@!q§.removeEventListener(TimerEvent.TIMER,this.§30§);
            this.§@!q§ = null;
         }
         dispatchEvent(new Event(Event.INIT));
      }
      
      private function §30§(param1:Event) : void
      {
         this.§+I§();
      }
      
      private function §+I§() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:§6e§ = null;
         var _loc3_:int = 0;
         if(this.§<!0§.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = this.§<!0§.pop();
            this.§`!$§(_loc2_);
            _loc2_.dispose();
            _loc3_ = getTimer();
         }
         if(this.§<!0§.length == 0)
         {
            this.§#!T§();
         }
         else
         {
            if(!this.§@!q§)
            {
               this.§@!q§ = new Timer(§#!m§,0);
               this.§@!q§.addEventListener(TimerEvent.TIMER,this.§30§);
            }
            else
            {
               this.§@!q§.stop();
            }
            this.§@!q§.start();
         }
         return this.§<!0§.length > 0;
      }
      
      private function §`!$§(param1:§6e§) : void
      {
         var _loc2_:§0!!§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BitmapData = null;
         var _loc9_:§0!!§ = null;
         var _loc10_:Texture = null;
         var _loc11_:int = 0;
         var _loc12_:§'!u§ = null;
         var _loc3_:Vector.<§0!!§> = new Vector.<§0!!§>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§%z§)
         {
            _loc2_ = param1.§`;§(_loc4_);
            if(_loc2_.§4j§ > 0)
            {
               _loc3_.push(_loc2_);
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc3_.length > 0)
         {
            if(this.§2"A§(_loc3_,this.§<I§,§#F§,§#F§,§[!j§) == 0)
            {
               throw new Error("Found too large sprite sheet image!");
            }
            _loc6_ = getNextPowerOfTwo(this.§<I§.§5!A§);
            _loc7_ = getNextPowerOfTwo(this.§<I§.§2#§);
            _loc8_ = new BitmapData(_loc6_,_loc7_,true,16777215);
            _loc9_ = this.§1"C§(_loc3_,this.§<I§,_loc8_);
            _loc10_ = this.getTextureFromBitmapData(_loc8_);
            _loc11_ = 0;
            while(_loc11_ < _loc9_.§4j§)
            {
               _loc12_ = _loc9_.§-!#§(_loc11_);
               this.§!!l§(_loc12_,_loc10_,_loc8_,_loc2_.scale);
               _loc11_++;
            }
            _loc5_++;
         }
         if(_loc5_ > 1)
         {
         }
      }
      
      private function §!!l§(param1:§'!u§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc6_:Rectangle = null;
         var _loc7_:§ ^§ = null;
         var _loc5_:§7!R§;
         if(!(_loc5_ = this.§]!e§[param1.name]))
         {
            _loc6_ = param1.rect.clone();
            _loc7_ = new § ^§(param2,_loc6_,false);
            _loc5_ = new §7!R§(_loc7_,param3,_loc6_,param1.pivotX,param1.pivotY,param4);
            this.§]!e§[param1.name] = _loc5_;
         }
      }
      
      public function §'z§() : void
      {
         var bd:Object = null;
         var texture:Texture = null;
         if(!§9H§.§4b§)
         {
            for(bd in this.§7!g§)
            {
               try
               {
                  texture = this.§7!g§[bd];
                  texture.requestBaseTextureUpdate(bd as BitmapData);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function getTexture(param1:String) : §7!R§
      {
         return this.§]!e§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc3_:Texture = this.§7!g§[param1];
         if(_loc3_)
         {
            return _loc3_;
         }
         _loc3_ = §9H§.§&!-§(param1,param2);
         this.§7!g§[param1] = _loc3_;
         this.§5E§(_loc3_,param1,true);
         return _loc3_;
      }
      
      protected function §5E§(param1:Texture, param2:BitmapData, param3:Boolean) : void
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
            this.§1!,§ += _loc4_ * param2.width * param2.height * 4;
         }
         if(param1)
         {
            _loc5_ = int(param1.width);
            _loc6_ = int(param1.height);
            while(_loc5_ >= 1 && _loc6_ >= 1)
            {
               this.§;g§ += _loc4_ * _loc5_ * _loc6_ * 4;
               _loc5_ >>= 1;
               _loc6_ >>= 1;
            }
         }
      }
      
      public function §1![§() : Texture
      {
         if(!this.§4!e§)
         {
            this.§4!e§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
         }
         return this.§4!e§;
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         for(_loc2_ in this.§7!g§)
         {
            if(this.§7!g§[_loc2_] == param1)
            {
               _loc3_ = _loc2_ as BitmapData;
               this.§5E§(param1,_loc3_,false);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               delete this.§7!g§[_loc2_];
               param1.dispose();
               return;
            }
         }
      }
   }
}
