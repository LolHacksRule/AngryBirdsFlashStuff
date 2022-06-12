package §-u§
{
   import §"!z§.§<!l§;
   import §"!z§.§^a§;
   import §&!_§.§+!3§;
   import §&!_§.§+#`§;
   import §'G§.§0!d§;
   import §;"H§.SHA1;
   import §;$<§.§%#w§;
   import §;$<§.§+$<§;
   import §;$<§.§,T§;
   import §;$<§.§2#$§;
   import §;$<§.§5"§;
   import §;$<§.§>!I§;
   import §;$<§.§^#O§;
   import §;$<§.§finally§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §0"E§ extends EventDispatcher implements §1#w§
   {
      
      protected static const §!7§:Number = 100;
      
      protected static const §4d§:Number = 20;
       
      
      protected var §",§:int;
      
      protected var §2#,§:Object;
      
      protected var §5"]§:String;
      
      protected var §9+§:XML;
      
      protected var §'"4§:int = 0;
      
      protected var §!"K§:§>!I§;
      
      protected var §%"<§:Timer;
      
      protected var §<f§:Object;
      
      protected var §%j§:Vector.<String>;
      
      public function §0"E§()
      {
         this.§2#,§ = {};
         super();
         this.§!"K§ = new §>!I§("packageManager");
      }
      
      public function get §35§() : §2#$§
      {
         return this.§!"K§;
      }
      
      public function get §8"§() : Boolean
      {
         return this.§'"4§ == 0 && (!this.§%j§ || this.§%j§.length == 0);
      }
      
      public function §,l§(param1:String, param2:String) : String
      {
         return this.§;-§(param1,param2);
      }
      
      public function §="@§(param1:String, param2:String) : Boolean
      {
         return this.§2#,§[this.§7"_§(param1,param2)] != null;
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§!"K§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§%"<§)
         {
            this.§%"<§.stop();
            this.§%"<§.removeEventListener(TimerEvent.TIMER,this.§,!#§);
            this.§%"<§ = null;
         }
         this.§<f§ = null;
         this.§%j§ = null;
      }
      
      protected function §7"_§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §=#R§(param1:String, param2:String) : §^a§
      {
         return this.§2#,§[this.§7"_§(param1,param2)] as §^a§;
      }
      
      protected function §9#R§(param1:String, param2:String, param3:§^a§) : void
      {
         this.§2#,§[this.§7"_§(param1,param2)] = param3;
      }
      
      protected function §;-§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§5"]§;
         }
         var _loc3_:§^a§ = this.§=#R§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§7"_§(param1,param2) + " not found",§+#`§.§=$1§);
         }
         return _loc3_.§1$6§(false);
      }
      
      protected function §1!I§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§5"]§;
         }
         var _loc3_:§^a§ = this.§=#R§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§7"_§(param1,param2) + " not found",§+#`§.§=$1§);
         }
         return _loc3_.content;
      }
      
      protected function §-"X§(param1:String, param2:Function) : void
      {
         return §+!3§.§3#>§(this.§1!I§(param1),param2);
      }
      
      public function §6"m§(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void
      {
         var _loc8_:§^a§ = null;
         if(!this.§8"§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§!#=§(param1);
         }
         this.§5"]§ = param2;
         this.§9+§ = param4;
         var _loc5_:§<!l§;
         (_loc5_ = new §<!l§()).loadBytes(param1);
         var _loc6_:Object = {};
         var _loc7_:int = _loc5_.§4!f§() - 1;
         while(_loc7_ >= 0)
         {
            if((_loc8_ = _loc5_.§?"=§(_loc7_)).filename.substr(-1) != "/")
            {
               if(this.§=#R§(_loc8_.filename,this.§5"]§))
               {
                  _loc6_[_loc8_.filename] = this.§=#R§(_loc8_.filename,this.§5"]§);
               }
               else
               {
                  _loc6_[_loc8_.filename] = _loc8_;
                  this.§9#R§(_loc8_.filename,this.§5"]§,_loc8_);
               }
            }
            _loc7_--;
         }
         this.§!"s§(_loc6_);
      }
      
      public function §5!y§() : void
      {
         this.clear();
      }
      
      protected function §"#?§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§;-§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§+#`§.§ !R§);
         }
         this.§][§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§"#?§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§8Z§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§8Z§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§7" §(param1);
         }
      }
      
      protected function §!"s§(param1:Object) : void
      {
         this.§9#d§(param1);
         if(this.§<"f§())
         {
            if(!this.§%"<§)
            {
               this.§%"<§ = new Timer(§4d§,0);
               this.§%"<§.addEventListener(TimerEvent.TIMER,this.§,!#§);
            }
            else
            {
               this.§%"<§.stop();
            }
            this.§%"<§.start();
         }
      }
      
      private function §9#d§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§%j§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§%j§.push(_loc2_);
         }
         this.§<f§ = param1;
      }
      
      private function §<"f§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §!7§ / 2)
         {
            if(!this.§+U§())
            {
               break;
            }
         }
         var _loc2_:* = this.§%j§.length > 0;
         if(this.§8"§)
         {
            this.§6"=§();
         }
         return _loc2_;
      }
      
      private function §6"=§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §+U§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§%j§.length > 0)
         {
            _loc1_ = this.§%j§[0];
            this.§%j§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §,!#§(param1:Event) : void
      {
         if(!this.§<"f§())
         {
            if(this.§%"<§)
            {
               this.§%"<§.stop();
            }
         }
      }
      
      protected function §7" §(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§;-§(param1));
         §0!d§.§;"J§(_loc2_);
      }
      
      protected function §8Z§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§5"]§;
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
            var _loc2_:XML = new XML(§;-§(filePath,activePackageName));
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
                  if(§=#R§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §;-§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new §,T§(_loc2_,_loc4_,param1.bitmapData));
            §%m§();
         };
         ++this.§'"4§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§-"X§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§%#w§) : void
      {
         this.§!"K§.§&!;§(param1);
      }
      
      protected function §%m§() : void
      {
         --this.§'"4§;
         if(this.§8"§)
         {
            this.§6"=§();
         }
      }
      
      protected function §][§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var sheetObject:Object = null;
         var imageName:String = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §%m§();
         };
         ++this.§'"4§;
         if(dataObject.image)
         {
            spriteSheetClass = §5"§;
            this.§-"X§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else if(dataObject.name && dataObject.charCount)
         {
            spriteSheetClass = §+$<§;
            this.§-"X§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
         else if(dataObject.spriteSheets)
         {
            spriteSheetClass = §^#O§;
            if(dataObject.spriteSheets.length != 1)
            {
               throw new Error("Only one sheet per JSON supported.");
            }
            sheetObject = dataObject.spriteSheets[0];
            imageName = sheetObject.meta.image;
            this.§-"X§("sprite_sheets/" + imageName,onComplete);
         }
         else if(dataObject.meta && dataObject.meta.app == "ArtPacker")
         {
            spriteSheetClass = §finally§;
            this.§-"X§("sprite_sheets/" + dataObject.meta.image,onComplete);
         }
         else
         {
            this.§=$D§(dataObject);
         }
      }
      
      protected function §=$D§(param1:Object) : void
      {
         throw new Error("Invalid sprite sheet data.");
      }
      
      protected function §!#=§(param1:ByteArray) : void
      {
         var checkSum:String = null;
         var i:int = 0;
         var bytes:ByteArray = param1;
         checkSum = SHA1.hashBytes(bytes);
         var size:int = bytes.length;
         this.§",§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§ !!§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§ !!§() * 255);
            i -= int(this.§ !!§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§ !!§() * 255);
            i -= 2;
         }
         try
         {
            bytes.inflate();
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing package \'" + §5"]§ + "\', checksum: " + checkSum + ",size:" + length + ", " + e.toString(),e.errorID);
         }
      }
      
      protected function § !!§() : Number
      {
         this.§",§ ^= this.§",§ << 21;
         this.§",§ ^= this.§",§ >>> 35;
         this.§",§ ^= this.§",§ << 4;
         if(this.§",§ < 0)
         {
            this.§",§ &= 2147483647;
         }
         return this.§",§ / 2147483647;
      }
   }
}
