package §&?§
{
   import §#"4§.§@#e§;
   import §#"4§.§@$7§;
   import §5#D§.SHA1;
   import §7"T§.§,o§;
   import §9!o§.§""y§;
   import §9!o§.§%$ §;
   import §9!o§.§;"v§;
   import §9!o§.§;$,§;
   import §9!o§.§=!B§;
   import §9!o§.§=!n§;
   import §9!o§.§[!<§;
   import §9!o§.§]!6§;
   import §`!P§.§%#D§;
   import §`!P§.§+#u§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §!M§ extends EventDispatcher implements §`'§
   {
      
      protected static const §<%§:Number = 100;
      
      protected static const §""D§:Number = 20;
       
      
      protected var §6!!§:int;
      
      protected var §=^§:Object;
      
      protected var §!""§:String;
      
      protected var §1#"§:XML;
      
      protected var §]#H§:int = 0;
      
      protected var §+=§:§]!6§;
      
      protected var §3%§:Timer;
      
      protected var §<!Q§:Object;
      
      protected var §`"r§:Vector.<String>;
      
      public function §!M§()
      {
         this.§=^§ = {};
         super();
         this.§+=§ = new §]!6§("packageManager");
      }
      
      public function get §-#<§() : §=!B§
      {
         return this.§+=§;
      }
      
      public function get §8J§() : Boolean
      {
         return this.§]#H§ == 0 && (!this.§`"r§ || this.§`"r§.length == 0);
      }
      
      public function §5"=§(param1:String, param2:String) : String
      {
         return this.§3"t§(param1,param2);
      }
      
      public function §3"f§(param1:String, param2:String) : Boolean
      {
         return this.§=^§[this.§0#$§(param1,param2)] != null;
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§+=§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§3%§)
         {
            this.§3%§.stop();
            this.§3%§.removeEventListener(TimerEvent.TIMER,this.§5=§);
            this.§3%§ = null;
         }
         this.§<!Q§ = null;
         this.§`"r§ = null;
      }
      
      protected function §0#$§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §,!c§(param1:String, param2:String) : §+#u§
      {
         return this.§=^§[this.§0#$§(param1,param2)] as §+#u§;
      }
      
      protected function §7"t§(param1:String, param2:String, param3:§+#u§) : void
      {
         this.§=^§[this.§0#$§(param1,param2)] = param3;
      }
      
      protected function §3"t§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§!""§;
         }
         var _loc3_:§+#u§ = this.§,!c§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§0#$§(param1,param2) + " not found",§@$7§.§'!<§);
         }
         return _loc3_.§>!s§(false);
      }
      
      protected function §9"V§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§!""§;
         }
         var _loc3_:§+#u§ = this.§,!c§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§0#$§(param1,param2) + " not found",§@$7§.§'!<§);
         }
         return _loc3_.content;
      }
      
      protected function §^!5§(param1:String, param2:Function) : void
      {
         return §@#e§.§!$C§(this.§9"V§(param1),param2);
      }
      
      public function §5t§(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void
      {
         var _loc8_:§+#u§ = null;
         if(!this.§8J§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§=#S§(param1);
         }
         this.§!""§ = param2;
         this.§1#"§ = param4;
         var _loc5_:§%#D§;
         (_loc5_ = new §%#D§()).loadBytes(param1);
         var _loc6_:Object = {};
         var _loc7_:int = _loc5_.§%"2§() - 1;
         while(_loc7_ >= 0)
         {
            if((_loc8_ = _loc5_.§""T§(_loc7_)).filename.substr(-1) != "/")
            {
               if(this.§,!c§(_loc8_.filename,this.§!""§))
               {
                  _loc6_[_loc8_.filename] = this.§,!c§(_loc8_.filename,this.§!""§);
               }
               else
               {
                  _loc6_[_loc8_.filename] = _loc8_;
                  this.§7"t§(_loc8_.filename,this.§!""§,_loc8_);
               }
            }
            _loc7_--;
         }
         this.§[#u§(_loc6_);
      }
      
      public function §=#F§() : void
      {
         this.clear();
      }
      
      protected function §""B§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§3"t§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§@$7§.§8A§);
         }
         this.§;$#§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§""B§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§6#0§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§6#0§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§76§(param1);
         }
      }
      
      protected function §[#u§(param1:Object) : void
      {
         this.§=#6§(param1);
         if(this.§;=§())
         {
            if(!this.§3%§)
            {
               this.§3%§ = new Timer(§""D§,0);
               this.§3%§.addEventListener(TimerEvent.TIMER,this.§5=§);
            }
            else
            {
               this.§3%§.stop();
            }
            this.§3%§.start();
         }
      }
      
      private function §=#6§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§`"r§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§`"r§.push(_loc2_);
         }
         this.§<!Q§ = param1;
      }
      
      private function §;=§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §<%§ / 2)
         {
            if(!this.§;!,§())
            {
               break;
            }
         }
         var _loc2_:* = this.§`"r§.length > 0;
         if(this.§8J§)
         {
            this.§-"`§();
         }
         return _loc2_;
      }
      
      private function §-"`§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §;!,§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§`"r§.length > 0)
         {
            _loc1_ = this.§`"r§[0];
            this.§`"r§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §5=§(param1:Event) : void
      {
         if(!this.§;=§())
         {
            if(this.§3%§)
            {
               this.§3%§.stop();
            }
         }
      }
      
      protected function §76§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§3"t§(param1));
         §,o§.§9#^§(_loc2_);
      }
      
      protected function §6#0§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§!""§;
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
            var _loc2_:XML = new XML(§3"t§(filePath,activePackageName));
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
                  if(§,!c§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §3"t§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new §[!<§(_loc2_,_loc4_,param1.bitmapData));
            §>"`§();
         };
         ++this.§]#H§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§^!5§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§;"v§) : void
      {
         this.§+=§.§,#]§(param1);
      }
      
      protected function §>"`§() : void
      {
         --this.§]#H§;
         if(this.§8J§)
         {
            this.§-"`§();
         }
      }
      
      protected function §;$#§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var sheetObject:Object = null;
         var imageName:String = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §>"`§();
         };
         ++this.§]#H§;
         if(dataObject.image)
         {
            spriteSheetClass = §;$,§;
            this.§^!5§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else if(dataObject.name && dataObject.charCount)
         {
            spriteSheetClass = §=!n§;
            this.§^!5§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
         else if(dataObject.spriteSheets)
         {
            spriteSheetClass = §%$ §;
            if(dataObject.spriteSheets.length != 1)
            {
               throw new Error("Only one sheet per JSON supported.");
            }
            sheetObject = dataObject.spriteSheets[0];
            imageName = sheetObject.meta.image;
            this.§^!5§("sprite_sheets/" + imageName,onComplete);
         }
         else if(dataObject.meta && dataObject.meta.app == "ArtPacker")
         {
            spriteSheetClass = §""y§;
            this.§^!5§("sprite_sheets/" + dataObject.meta.image,onComplete);
         }
         else
         {
            this.§6"T§(dataObject);
         }
      }
      
      protected function §6"T§(param1:Object) : void
      {
         throw new Error("Invalid sprite sheet data.");
      }
      
      protected function §=#S§(param1:ByteArray) : void
      {
         var checkSum:String = null;
         var i:int = 0;
         var bytes:ByteArray = param1;
         checkSum = SHA1.hashBytes(bytes);
         var size:int = bytes.length;
         this.§6!!§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§6"N§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§6"N§() * 255);
            i -= int(this.§6"N§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§6"N§() * 255);
            i -= 2;
         }
         try
         {
            bytes.inflate();
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing package \'" + §!""§ + "\', checksum: " + checkSum + ",size:" + length + ", " + e.toString(),e.errorID);
         }
      }
      
      protected function §6"N§() : Number
      {
         this.§6!!§ ^= this.§6!!§ << 21;
         this.§6!!§ ^= this.§6!!§ >>> 35;
         this.§6!!§ ^= this.§6!!§ << 4;
         if(this.§6!!§ < 0)
         {
            this.§6!!§ &= 2147483647;
         }
         return this.§6!!§ / 2147483647;
      }
   }
}
