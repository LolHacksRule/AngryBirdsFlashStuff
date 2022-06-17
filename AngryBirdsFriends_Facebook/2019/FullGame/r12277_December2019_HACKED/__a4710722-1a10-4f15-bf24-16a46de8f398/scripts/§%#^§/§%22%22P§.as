package §%#^§
{
   import §,!M§.SHA1;
   import §2E§.§3#c§;
   import §2E§.§=$3§;
   import §9#M§.§7!D§;
   import §9G§.§+$6§;
   import §9G§.§5# §;
   import §[!&§.§!!$§;
   import §[!&§.§%#P§;
   import §[!&§.§1#s§;
   import §[!&§.§2_§;
   import §[!&§.§6!Z§;
   import §[!&§.§;"f§;
   import §[!&§.§@!^§;
   import §[!&§.§`#D§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §""P§ extends EventDispatcher implements §<#o§
   {
      
      protected static const §8#Q§:Number = 100;
      
      protected static const §,C§:Number = 20;
       
      
      protected var §>!$§:int;
      
      protected var §0#>§:Object;
      
      protected var §4!L§:String;
      
      protected var §5§:XML;
      
      protected var §-1§:int = 0;
      
      protected var §;"^§:§;"f§;
      
      protected var §7$;§:Timer;
      
      protected var §##j§:Object;
      
      protected var §9$;§:Vector.<String>;
      
      public function §""P§()
      {
         this.§0#>§ = {};
         super();
         this.§;"^§ = new §;"f§("packageManager");
      }
      
      public function get §&!H§() : §6!Z§
      {
         return this.§;"^§;
      }
      
      public function get §4Y§() : Boolean
      {
         return this.§-1§ == 0 && (!this.§9$;§ || this.§9$;§.length == 0);
      }
      
      public function §5!§(param1:String, param2:String) : String
      {
         return this.§+2§(param1,param2);
      }
      
      public function §@$8§(param1:String, param2:String) : Boolean
      {
         return this.§0#>§[this.§-o§(param1,param2)] != null;
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§;"^§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§7$;§)
         {
            this.§7$;§.stop();
            this.§7$;§.removeEventListener(TimerEvent.TIMER,this.§5#g§);
            this.§7$;§ = null;
         }
         this.§##j§ = null;
         this.§9$;§ = null;
      }
      
      protected function §-o§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function § #I§(param1:String, param2:String) : §5# §
      {
         return this.§0#>§[this.§-o§(param1,param2)] as §5# §;
      }
      
      protected function §7X§(param1:String, param2:String, param3:§5# §) : void
      {
         this.§0#>§[this.§-o§(param1,param2)] = param3;
      }
      
      protected function §+2§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§4!L§;
         }
         var _loc3_:§5# § = this.§ #I§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§-o§(param1,param2) + " not found",§=$3§.§!!@§);
         }
         return _loc3_.§&!>§(false);
      }
      
      protected function §`!X§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§4!L§;
         }
         var _loc3_:§5# § = this.§ #I§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§-o§(param1,param2) + " not found",§=$3§.§!!@§);
         }
         return _loc3_.content;
      }
      
      protected function §7#"§(param1:String, param2:Function) : void
      {
         return §3#c§.§##N§(this.§`!X§(param1),param2);
      }
      
      public function §>#B§(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void
      {
         var _loc8_:§5# § = null;
         if(!this.§4Y§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§[#^§(param1);
         }
         this.§4!L§ = param2;
         this.§5§ = param4;
         var _loc5_:§+$6§;
         (_loc5_ = new §+$6§()).loadBytes(param1);
         var _loc6_:Object = {};
         var _loc7_:int = _loc5_.§[$-§() - 1;
         while(_loc7_ >= 0)
         {
            if((_loc8_ = _loc5_.§?+§(_loc7_)).filename.substr(-1) != "/")
            {
               if(this.§ #I§(_loc8_.filename,this.§4!L§))
               {
                  _loc6_[_loc8_.filename] = this.§ #I§(_loc8_.filename,this.§4!L§);
               }
               else
               {
                  _loc6_[_loc8_.filename] = _loc8_;
                  this.§7X§(_loc8_.filename,this.§4!L§,_loc8_);
               }
            }
            _loc7_--;
         }
         this.§5!`§(_loc6_);
      }
      
      public function §4"y§() : void
      {
         this.clear();
      }
      
      protected function §?!m§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§+2§(fileName));
            this.§!$ §(jsonObject);
            return;
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§=$3§.§!$5§);
         }
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§?!m§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§12§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§12§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§5"q§(param1);
         }
      }
      
      protected function §5!`§(param1:Object) : void
      {
         this.§5"H§(param1);
         if(this.§1]§())
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
      }
      
      private function §5"H§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§9$;§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§9$;§.push(_loc2_);
         }
         this.§##j§ = param1;
      }
      
      private function §1]§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §8#Q§ / 2)
         {
            if(!this.§;'§())
            {
               break;
            }
         }
         var _loc2_:* = this.§9$;§.length > 0;
         if(this.§4Y§)
         {
            this.§;$3§();
         }
         return _loc2_;
      }
      
      private function §;$3§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §;'§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§9$;§.length > 0)
         {
            _loc1_ = this.§9$;§[0];
            this.§9$;§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §5#g§(param1:Event) : void
      {
         if(!this.§1]§())
         {
            if(this.§7$;§)
            {
               this.§7$;§.stop();
            }
         }
      }
      
      protected function §5"q§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§+2§(param1));
         §7!D§.§9"U§(_loc2_);
      }
      
      protected function §12§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§4!L§;
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
            var _loc2_:XML = new XML(§+2§(filePath,activePackageName));
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
                  if(§ #I§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §+2§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new §@!^§(_loc2_,_loc4_,param1.bitmapData));
            §<$A§();
         };
         ++this.§-1§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§7#"§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§`#D§) : void
      {
         this.§;"^§.§-!d§(param1);
      }
      
      protected function §<$A§() : void
      {
         --this.§-1§;
         if(this.§4Y§)
         {
            this.§;$3§();
         }
      }
      
      protected function §!$ §(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var sheetObject:Object = null;
         var imageName:String = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §<$A§();
         };
         ++this.§-1§;
         if(dataObject.image)
         {
            spriteSheetClass = §2_§;
            this.§7#"§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else if(dataObject.name && dataObject.charCount)
         {
            spriteSheetClass = §!!$§;
            this.§7#"§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
         else if(dataObject.spriteSheets)
         {
            spriteSheetClass = §%#P§;
            if(dataObject.spriteSheets.length != 1)
            {
               throw new Error("Only one sheet per JSON supported.");
            }
            sheetObject = dataObject.spriteSheets[0];
            imageName = sheetObject.meta.image;
            this.§7#"§("sprite_sheets/" + imageName,onComplete);
         }
         else if(dataObject.meta && dataObject.meta.app == "ArtPacker")
         {
            spriteSheetClass = §1#s§;
            this.§7#"§("sprite_sheets/" + dataObject.meta.image,onComplete);
         }
         else
         {
            this.§[$;§(dataObject);
         }
      }
      
      protected function §[$;§(param1:Object) : void
      {
         throw new Error("Invalid sprite sheet data.");
      }
      
      protected function §[#^§(param1:ByteArray) : void
      {
         var checkSum:String = null;
         var i:int = 0;
         var bytes:ByteArray = param1;
         checkSum = SHA1.hashBytes(bytes);
         var size:int = bytes.length;
         this.§>!$§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§!!?§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§!!?§() * 255);
            i -= int(this.§!!?§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§!!?§() * 255);
            i -= 2;
         }
         try
         {
            bytes.inflate();
            return;
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing package \'" + §4!L§ + "\', checksum: " + checkSum + ",size:" + length + ", " + e.toString(),e.errorID);
         }
      }
      
      protected function §!!?§() : Number
      {
         this.§>!$§ ^= this.§>!$§ << 21;
         this.§>!$§ ^= this.§>!$§ >>> 35;
         this.§>!$§ ^= this.§>!$§ << 4;
         if(this.§>!$§ < 0)
         {
            this.§>!$§ &= 2147483647;
         }
         return this.§>!$§ / 2147483647;
      }
   }
}
