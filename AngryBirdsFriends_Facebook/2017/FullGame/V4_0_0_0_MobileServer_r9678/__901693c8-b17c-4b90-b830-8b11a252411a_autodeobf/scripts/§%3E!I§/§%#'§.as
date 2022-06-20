package §>!I§
{
   import §##-§.SHA1;
   import §5$=§.§%#v§;
   import §5$=§.§+!P§;
   import §6V§.§ §;
   import §6V§.§4!v§;
   import §7!j§.§[#%§;
   import §?$9§.§##B§;
   import §?$9§.§##r§;
   import §?$9§.§2§;
   import §?$9§.§5!T§;
   import §?$9§.§6§;
   import §?$9§.§7!E§;
   import §?$9§.§7"H§;
   import §?$9§.§@">§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §%#'§ extends EventDispatcher implements §##s§
   {
      
      protected static const §[>§:Number = 100;
      
      protected static const §#!n§:Number = 20;
       
      
      protected var §,!X§:int;
      
      protected var §3!v§:Object;
      
      protected var § "L§:String;
      
      protected var §@#J§:XML;
      
      protected var §-#F§:int = 0;
      
      protected var §?f§:§@">§;
      
      protected var §`#^§:Timer;
      
      protected var §^"5§:Object;
      
      protected var §`"A§:Vector.<String>;
      
      public function §%#'§()
      {
         this.§3!v§ = {};
         super();
         this.§?f§ = new §@">§("packageManager");
      }
      
      public function get §'$3§() : §5!T§
      {
         return this.§?f§;
      }
      
      public function get §^>§() : Boolean
      {
         return this.§-#F§ == 0 && (!this.§`"A§ || this.§`"A§.length == 0);
      }
      
      public function §'G§(param1:String, param2:String) : String
      {
         return this.§2#[§(param1,param2);
      }
      
      public function §'p§(param1:String, param2:String) : Boolean
      {
         return this.§3!v§[this.§,#F§(param1,param2)] != null;
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§?f§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§`#^§)
         {
            this.§`#^§.stop();
            this.§`#^§.removeEventListener(TimerEvent.TIMER,this.§""W§);
            this.§`#^§ = null;
         }
         this.§^"5§ = null;
         this.§`"A§ = null;
      }
      
      protected function §,#F§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §9#`§(param1:String, param2:String) : §+!P§
      {
         return this.§3!v§[this.§,#F§(param1,param2)] as §+!P§;
      }
      
      protected function §%!_§(param1:String, param2:String, param3:§+!P§) : void
      {
         this.§3!v§[this.§,#F§(param1,param2)] = param3;
      }
      
      protected function §2#[§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§ "L§;
         }
         var _loc3_:§+!P§ = this.§9#`§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§,#F§(param1,param2) + " not found",§4!v§.§0#K§);
         }
         return _loc3_.§6!#§(false);
      }
      
      protected function §1#u§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§ "L§;
         }
         var _loc3_:§+!P§ = this.§9#`§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§,#F§(param1,param2) + " not found",§4!v§.§0#K§);
         }
         return _loc3_.content;
      }
      
      protected function §,e§(param1:String, param2:Function) : void
      {
         return § #8§.§=#g§(this.§1#u§(param1),param2);
      }
      
      public function §7@§(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void
      {
         var _loc8_:§+!P§ = null;
         if(!this.§^>§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§0!+§(param1);
         }
         this.§ "L§ = param2;
         this.§@#J§ = param4;
         var _loc5_:§%#v§;
         (_loc5_ = new §%#v§()).loadBytes(param1);
         var _loc6_:Object = {};
         var _loc7_:int = _loc5_.§0#4§() - 1;
         while(_loc7_ >= 0)
         {
            if((_loc8_ = _loc5_.§2#,§(_loc7_)).filename.substr(-1) != "/")
            {
               if(this.§9#`§(_loc8_.filename,this.§ "L§))
               {
                  _loc6_[_loc8_.filename] = this.§9#`§(_loc8_.filename,this.§ "L§);
               }
               else
               {
                  _loc6_[_loc8_.filename] = _loc8_;
                  this.§%!_§(_loc8_.filename,this.§ "L§,_loc8_);
               }
            }
            _loc7_--;
         }
         this.§7!'§(_loc6_);
      }
      
      public function §<!z§() : void
      {
         this.clear();
      }
      
      protected function §<#o§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§2#[§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§4!v§.§&"a§);
         }
         this.§3!;§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§<#o§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§?"d§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§?"d§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§-#I§(param1);
         }
      }
      
      protected function §7!'§(param1:Object) : void
      {
         this.§?$ §(param1);
         if(this.§#!D§())
         {
            if(!this.§`#^§)
            {
               this.§`#^§ = new Timer(§#!n§,0);
               this.§`#^§.addEventListener(TimerEvent.TIMER,this.§""W§);
            }
            else
            {
               this.§`#^§.stop();
            }
            this.§`#^§.start();
         }
      }
      
      private function §?$ §(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§`"A§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§`"A§.push(_loc2_);
         }
         this.§^"5§ = param1;
      }
      
      private function §#!D§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §[>§ / 2)
         {
            if(!this.§"$+§())
            {
               break;
            }
         }
         var _loc2_:* = this.§`"A§.length > 0;
         if(this.§^>§)
         {
            this.§`#@§();
         }
         return _loc2_;
      }
      
      private function §`#@§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §"$+§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§`"A§.length > 0)
         {
            _loc1_ = this.§`"A§[0];
            this.§`"A§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §""W§(param1:Event) : void
      {
         if(!this.§#!D§())
         {
            if(this.§`#^§)
            {
               this.§`#^§.stop();
            }
         }
      }
      
      protected function §-#I§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§2#[§(param1));
         §[#%§.§"!_§(_loc2_);
      }
      
      protected function §?"d§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§ "L§;
         var onComplete:Function = function(param1:Bitmap):void
         {
            var _loc6_:XML = null;
            var _loc7_:String = null;
            var _loc8_:Array = null;
            var _loc9_:String = null;
            var _loc10_:Array = null;
            var _loc11_:String = null;
            var _loc12_:int = 0;
            var _loc13_:* = null;
            var _loc14_:String = null;
            var _loc2_:XML = new XML(§2#[§(filePath,activePackageName));
            var _loc3_:Array = [];
            var _loc4_:Vector.<XML> = new Vector.<XML>();
            var _loc5_:XMLList = _loc2_.child("sprite");
            for each(_loc6_ in _loc5_)
            {
               if(_loc7_ = _loc6_.@file)
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
                  if(§9#`§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §2#[§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new §2#1§(_loc2_,_loc4_,param1.bitmapData));
            §@#7§();
         };
         ++this.§-#F§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§,e§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§7"H§) : void
      {
         this.§?f§.§@#&§(param1);
      }
      
      protected function §@#7§() : void
      {
         --this.§-#F§;
         if(this.§^>§)
         {
            this.§`#@§();
         }
      }
      
      protected function §3!;§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var sheetObject:Object = null;
         var imageName:String = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §@#7§();
         };
         ++this.§-#F§;
         if(dataObject.image)
         {
            spriteSheetClass = §6§;
            this.§,e§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else if(dataObject.name && dataObject.charCount)
         {
            spriteSheetClass = §##B§;
            this.§,e§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
         else if(dataObject.spriteSheets)
         {
            spriteSheetClass = §##r§;
            if(dataObject.spriteSheets.length != 1)
            {
               throw new Error("Only one sheet per JSON supported.");
            }
            sheetObject = dataObject.spriteSheets[0];
            imageName = sheetObject.meta.image;
            this.§,e§("sprite_sheets/" + imageName,onComplete);
         }
         else if(dataObject.meta && dataObject.meta.app == "ArtPacker")
         {
            spriteSheetClass = §7!E§;
            this.§,e§("sprite_sheets/" + dataObject.meta.image,onComplete);
         }
         else
         {
            this.§,#i§(dataObject);
         }
      }
      
      protected function §,#i§(param1:Object) : void
      {
         throw new Error("Invalid sprite sheet data.");
      }
      
      protected function §0!+§(param1:ByteArray) : void
      {
         var checkSum:String = null;
         var i:int = 0;
         var bytes:ByteArray = param1;
         checkSum = SHA1.hashBytes(bytes);
         var size:int = bytes.length;
         this.§,!X§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§?#f§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§?#f§() * 255);
            i -= int(this.§?#f§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§?#f§() * 255);
            i -= 2;
         }
         try
         {
            bytes.inflate();
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing package \'" + § "L§ + "\', checksum: " + checkSum + ",size:" + length + ", " + e.toString(),e.errorID);
         }
      }
      
      protected function §?#f§() : Number
      {
         this.§,!X§ ^= this.§,!X§ << 21;
         this.§,!X§ ^= this.§,!X§ >>> 35;
         this.§,!X§ ^= this.§,!X§ << 4;
         if(this.§,!X§ < 0)
         {
            this.§,!X§ &= 2147483647;
         }
         return this.§,!X§ / 2147483647;
      }
   }
}
