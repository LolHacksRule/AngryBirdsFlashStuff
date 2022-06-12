package §-#z§
{
   import §!g§.§;"L§;
   import §'!?§.§`!'§;
   import §'!?§.§with§;
   import §+#m§.§ %§;
   import §+#m§.§1!q§;
   import §+#m§.§4b§;
   import §+#m§.§=#S§;
   import §+#m§.§??§;
   import §+#m§.§^!8§;
   import §+#m§.§^#j§;
   import §>!#§.§,&§;
   import §>!#§.§@"$§;
   import §@"§.§'!u§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §0#p§ extends EventDispatcher implements §5#2§
   {
      
      protected static const §>"i§:Number = 100;
      
      protected static const §," §:Number = 20;
       
      
      protected var §17§:int;
      
      protected var §8S§:Object;
      
      protected var §5"i§:String;
      
      protected var §5#g§:XML;
      
      protected var §^#u§:int = 0;
      
      protected var §9#=§:§??§;
      
      protected var §?"i§:Timer;
      
      protected var §+!`§:Object;
      
      protected var §=#+§:Vector.<String>;
      
      public function §0#p§()
      {
         this.§8S§ = {};
         super();
         this.§9#=§ = new §??§("packageManager");
      }
      
      public function get §]!!§() : §^#j§
      {
         return this.§9#=§;
      }
      
      public function get §;!V§() : Boolean
      {
         return this.§^#u§ == 0 && (!this.§=#+§ || this.§=#+§.length == 0);
      }
      
      public function §`""§(param1:String, param2:String) : String
      {
         return this.§+$$§(param1,param2);
      }
      
      public function §""4§(param1:String, param2:String) : Boolean
      {
         return this.§8S§[this.§5!@§(param1,param2)] != null;
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§9#=§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§?"i§)
         {
            this.§?"i§.stop();
            this.§?"i§.removeEventListener(TimerEvent.TIMER,this.§'!;§);
            this.§?"i§ = null;
         }
         this.§+!`§ = null;
         this.§=#+§ = null;
      }
      
      protected function §5!@§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §0"W§(param1:String, param2:String) : §with§
      {
         return this.§8S§[this.§5!@§(param1,param2)] as §with§;
      }
      
      protected function §?!`§(param1:String, param2:String, param3:§with§) : void
      {
         this.§8S§[this.§5!@§(param1,param2)] = param3;
      }
      
      protected function §+$$§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§5"i§;
         }
         var _loc3_:§with§ = this.§0"W§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§5!@§(param1,param2) + " not found",§@"$§.§^$;§);
         }
         return _loc3_.§-!t§(false);
      }
      
      protected function §>"C§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§5"i§;
         }
         var _loc3_:§with§ = this.§0"W§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§5!@§(param1,param2) + " not found",§@"$§.§^$;§);
         }
         return _loc3_.content;
      }
      
      protected function §3"j§(param1:String, param2:Function) : void
      {
         return §,&§.§1J§(this.§>"C§(param1),param2);
      }
      
      public function §""=§(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void
      {
         var _loc8_:§with§ = null;
         if(!this.§;!V§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§ #,§(param1);
         }
         this.§5"i§ = param2;
         this.§5#g§ = param4;
         var _loc5_:§`!'§;
         (_loc5_ = new §`!'§()).loadBytes(param1);
         var _loc6_:Object = {};
         var _loc7_:int = _loc5_.§6$-§() - 1;
         while(_loc7_ >= 0)
         {
            if((_loc8_ = _loc5_.§4!!§(_loc7_)).filename.substr(-1) != "/")
            {
               if(this.§0"W§(_loc8_.filename,this.§5"i§))
               {
                  _loc6_[_loc8_.filename] = this.§0"W§(_loc8_.filename,this.§5"i§);
               }
               else
               {
                  _loc6_[_loc8_.filename] = _loc8_;
                  this.§?!`§(_loc8_.filename,this.§5"i§,_loc8_);
               }
            }
            _loc7_--;
         }
         this.§<"z§(_loc6_);
      }
      
      public function §!#t§() : void
      {
         this.clear();
      }
      
      protected function §9"O§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§+$$§(fileName));
            this.§?R§(jsonObject);
            return;
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§@"$§.§3"t§);
         }
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§9"O§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§`"-§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§`"-§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§1!R§(param1);
         }
      }
      
      protected function §<"z§(param1:Object) : void
      {
         this.§+!A§(param1);
         if(this.§2"k§())
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
      }
      
      private function §+!A§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§=#+§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§=#+§.push(_loc2_);
         }
         this.§+!`§ = param1;
      }
      
      private function §2"k§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §>"i§ / 2)
         {
            if(!this.§?"d§())
            {
               break;
            }
         }
         var _loc2_:* = this.§=#+§.length > 0;
         if(this.§;!V§)
         {
            this.§]#R§();
         }
         return _loc2_;
      }
      
      private function §]#R§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §?"d§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§=#+§.length > 0)
         {
            _loc1_ = this.§=#+§[0];
            this.§=#+§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §'!;§(param1:Event) : void
      {
         if(!this.§2"k§())
         {
            if(this.§?"i§)
            {
               this.§?"i§.stop();
            }
         }
      }
      
      protected function §1!R§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§+$$§(param1));
         §'!u§.§6"w§(_loc2_);
      }
      
      protected function §`"-§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§5"i§;
         var onComplete:Function = function(param1:Bitmap):void
         {
            var _loc7_:String = null;
            var _loc8_:Array = null;
            var _loc9_:String = null;
            var _loc10_:Array = null;
            var _loc11_:String = null;
            var _loc12_:int = 0;
            var _loc13_:* = null;
            var _loc14_:String = null;
            var _loc2_:XML = new XML(§+$$§(filePath,activePackageName));
            var _loc3_:Array = [];
            var _loc4_:Vector.<XML> = new Vector.<XML>();
            var _loc5_:XMLList = _loc2_.child("sprite");
            var _loc15_:int = 0;
            var _loc16_:* = _loc5_;
            while(§§hasnext(_loc16_,_loc15_))
            {
               if(_loc7_ = (§§nextvalue(_loc15_,_loc16_)).@file)
               {
                  _loc8_ = _loc7_.split("\\");
                  _loc9_ = _loc8_[_loc8_.length - 1];
                  _loc10_ = filePath.split("/");
                  _loc11_ = "";
                  _loc12_ = 0;
                  while(_loc12_ < _loc10_.length - 2)
                  {
                     _loc11_ += _loc10_[_loc12_] + "/";
                     _loc12_++;
                  }
                  _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  if(§0"W§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §+$$§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new § %§(_loc2_,_loc4_,param1.bitmapData));
            §^v§();
         };
         ++this.§^#u§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§3"j§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§=#S§) : void
      {
         this.§9#=§.§=!i§(param1);
      }
      
      protected function §^v§() : void
      {
         --this.§^#u§;
         if(this.§;!V§)
         {
            this.§]#R§();
         }
      }
      
      protected function §?R§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var sheetObject:Object = null;
         var imageName:String = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §^v§();
         };
         ++this.§^#u§;
         if(dataObject.image)
         {
            spriteSheetClass = §4b§;
            this.§3"j§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else if(dataObject.name && dataObject.charCount)
         {
            spriteSheetClass = §1!q§;
            this.§3"j§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
         else if(dataObject.spriteSheets)
         {
            spriteSheetClass = §^!8§;
            if(dataObject.spriteSheets.length != 1)
            {
               throw new Error("Only one sheet per JSON supported.");
            }
            sheetObject = dataObject.spriteSheets[0];
            imageName = sheetObject.meta.image;
            this.§3"j§("sprite_sheets/" + imageName,onComplete);
         }
         else
         {
            this.§^!;§(dataObject);
         }
      }
      
      protected function §^!;§(param1:Object) : void
      {
         throw new Error("Invalid sprite sheet data.");
      }
      
      protected function § #,§(param1:ByteArray) : void
      {
         var checkSum:String = null;
         var i:int = 0;
         var bytes:ByteArray = param1;
         checkSum = §;"L§.§7"C§(bytes);
         var size:int = bytes.length;
         this.§17§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§>g§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§>g§() * 255);
            i -= int(this.§>g§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§>g§() * 255);
            i -= 2;
         }
         try
         {
            bytes.inflate();
            return;
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing package \'" + §5"i§ + "\', checksum: " + checkSum + ",size:" + length + ", " + e.toString(),e.errorID);
         }
      }
      
      protected function §>g§() : Number
      {
         this.§17§ ^= this.§17§ << 21;
         this.§17§ ^= this.§17§ >>> 35;
         this.§17§ ^= this.§17§ << 4;
         if(this.§17§ < 0)
         {
            this.§17§ &= 2147483647;
         }
         return this.§17§ / 2147483647;
      }
   }
}
