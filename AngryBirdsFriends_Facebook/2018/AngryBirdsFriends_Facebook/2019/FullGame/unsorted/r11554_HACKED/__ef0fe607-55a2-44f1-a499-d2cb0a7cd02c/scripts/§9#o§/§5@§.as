package §9#o§
{
   import §+#B§.§ "f§;
   import §+#B§.§-!n§;
   import §2"_§.§3§;
   import §2"_§.§6!L§;
   import §="l§.§#u§;
   import §="l§.§0Y§;
   import §="l§.§2$A§;
   import §="l§.§;"t§;
   import §="l§.§;#f§;
   import §="l§.§<#o§;
   import §="l§.§?B§;
   import §="l§.§[§;
   import §]#+§.SHA1;
   import §^"[§.§6"M§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §5@§ extends EventDispatcher implements §6!u§
   {
      
      protected static const §^"w§:Number = 100;
      
      protected static const §@#[§:Number = 20;
       
      
      protected var §"#b§:int;
      
      protected var §3E§:Object;
      
      protected var §2$9§:String;
      
      protected var §"!T§:XML;
      
      protected var §>$#§:int = 0;
      
      protected var §;"%§:§0Y§;
      
      protected var §'v§:Timer;
      
      protected var §[<§:Object;
      
      protected var §2=§:Vector.<String>;
      
      public function §5@§()
      {
         this.§3E§ = {};
         super();
         this.§;"%§ = new §0Y§("packageManager");
      }
      
      public function get §9"K§() : §#u§
      {
         return this.§;"%§;
      }
      
      public function get §-!i§() : Boolean
      {
         return this.§>$#§ == 0 && (!this.§2=§ || this.§2=§.length == 0);
      }
      
      public function §4!H§(param1:String, param2:String) : String
      {
         return this.§&"P§(param1,param2);
      }
      
      public function §7_§(param1:String, param2:String) : Boolean
      {
         return this.§3E§[this.§>Q§(param1,param2)] != null;
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§;"%§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§'v§)
         {
            this.§'v§.stop();
            this.§'v§.removeEventListener(TimerEvent.TIMER,this.§ J§);
            this.§'v§ = null;
         }
         this.§[<§ = null;
         this.§2=§ = null;
      }
      
      protected function §>Q§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §&#p§(param1:String, param2:String) : §3#8§
      {
         return this.§3E§[this.§>Q§(param1,param2)] as §3#8§;
      }
      
      protected function §=$B§(param1:String, param2:String, param3:§3#8§) : void
      {
         this.§3E§[this.§>Q§(param1,param2)] = param3;
      }
      
      protected function §&"P§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§2$9§;
         }
         var _loc3_:§3#8§ = this.§&#p§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§>Q§(param1,param2) + " not found",§ "f§.§6$1§);
         }
         return _loc3_.§"$4§(false);
      }
      
      protected function §>#w§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§2$9§;
         }
         var _loc3_:§3#8§ = this.§&#p§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§>Q§(param1,param2) + " not found",§ "f§.§6$1§);
         }
         return _loc3_.content;
      }
      
      protected function §?9§(param1:String, param2:Function) : void
      {
         return §-!n§.§!!D§(this.§>#w§(param1),param2);
      }
      
      public function §7"V§(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void
      {
         var _loc8_:§3#8§ = null;
         if(!this.§-!i§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§9!,§(param1);
         }
         this.§2$9§ = param2;
         this.§"!T§ = param4;
         var _loc5_:§6!L§;
         (_loc5_ = new §6!L§()).loadBytes(param1);
         var _loc6_:Object = {};
         var _loc7_:int = _loc5_.§!!Q§() - 1;
         while(_loc7_ >= 0)
         {
            if((_loc8_ = _loc5_.§-$+§(_loc7_)).filename.substr(-1) != "/")
            {
               if(this.§&#p§(_loc8_.filename,this.§2$9§))
               {
                  _loc6_[_loc8_.filename] = this.§&#p§(_loc8_.filename,this.§2$9§);
               }
               else
               {
                  _loc6_[_loc8_.filename] = _loc8_;
                  this.§=$B§(_loc8_.filename,this.§2$9§,_loc8_);
               }
            }
            _loc7_--;
         }
         this.§&V§(_loc6_);
      }
      
      public function §1"b§() : void
      {
         this.clear();
      }
      
      protected function §2#A§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§&"P§(fileName));
            this.§5R§(jsonObject);
            return;
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§ "f§.§[$3§);
         }
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§2#A§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§]&§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§]&§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§7f§(param1);
         }
      }
      
      protected function §&V§(param1:Object) : void
      {
         this.§3#F§(param1);
         if(this.§+u§())
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
      }
      
      private function §3#F§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§2=§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§2=§.push(_loc2_);
         }
         this.§[<§ = param1;
      }
      
      private function §+u§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §^"w§ / 2)
         {
            if(!this.§>`§())
            {
               break;
            }
         }
         var _loc2_:* = this.§2=§.length > 0;
         if(this.§-!i§)
         {
            this.§'I§();
         }
         return _loc2_;
      }
      
      private function §'I§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §>`§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§2=§.length > 0)
         {
            _loc1_ = this.§2=§[0];
            this.§2=§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function § J§(param1:Event) : void
      {
         if(!this.§+u§())
         {
            if(this.§'v§)
            {
               this.§'v§.stop();
            }
         }
      }
      
      protected function §7f§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§&"P§(param1));
         §6"M§.§-#k§(_loc2_);
      }
      
      protected function §]&§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§2$9§;
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
            var _loc2_:XML = new XML(§&"P§(filePath,activePackageName));
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
                  if(§&#p§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §&"P§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new §;"t§(_loc2_,_loc4_,param1.bitmapData));
            § E§();
         };
         ++this.§>$#§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§?9§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§;#f§) : void
      {
         this.§;"%§.§!#&§(param1);
      }
      
      protected function § E§() : void
      {
         --this.§>$#§;
         if(this.§-!i§)
         {
            this.§'I§();
         }
      }
      
      protected function §5R§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var sheetObject:Object = null;
         var imageName:String = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            § E§();
         };
         ++this.§>$#§;
         if(dataObject.image)
         {
            spriteSheetClass = §?B§;
            this.§?9§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else if(dataObject.name && dataObject.charCount)
         {
            spriteSheetClass = §2$A§;
            this.§?9§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
         else if(dataObject.spriteSheets)
         {
            spriteSheetClass = §<#o§;
            if(dataObject.spriteSheets.length != 1)
            {
               throw new Error("Only one sheet per JSON supported.");
            }
            sheetObject = dataObject.spriteSheets[0];
            imageName = sheetObject.meta.image;
            this.§?9§("sprite_sheets/" + imageName,onComplete);
         }
         else if(dataObject.meta && dataObject.meta.app == "ArtPacker")
         {
            spriteSheetClass = §[#2§;
            this.§?9§("sprite_sheets/" + dataObject.meta.image,onComplete);
         }
         else
         {
            this.§8g§(dataObject);
         }
      }
      
      protected function §8g§(param1:Object) : void
      {
         throw new Error("Invalid sprite sheet data.");
      }
      
      protected function §9!,§(param1:ByteArray) : void
      {
         var checkSum:String = null;
         var i:int = 0;
         var bytes:ByteArray = param1;
         checkSum = SHA1.hashBytes(bytes);
         var size:int = bytes.length;
         this.§"#b§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§`$!§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§`$!§() * 255);
            i -= int(this.§`$!§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§`$!§() * 255);
            i -= 2;
         }
         try
         {
            bytes.inflate();
            return;
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing package \'" + §2$9§ + "\', checksum: " + checkSum + ",size:" + length + ", " + e.toString(),e.errorID);
         }
      }
      
      protected function §`$!§() : Number
      {
         this.§"#b§ ^= this.§"#b§ << 21;
         this.§"#b§ ^= this.§"#b§ >>> 35;
         this.§"#b§ ^= this.§"#b§ << 4;
         if(this.§"#b§ < 0)
         {
            this.§"#b§ &= 2147483647;
         }
         return this.§"#b§ / 2147483647;
      }
   }
}
