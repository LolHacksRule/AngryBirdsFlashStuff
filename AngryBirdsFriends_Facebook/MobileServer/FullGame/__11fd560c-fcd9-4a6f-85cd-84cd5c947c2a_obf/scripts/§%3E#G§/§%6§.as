package §>#G§
{
   import §+!W§.SHA1;
   import §9!N§.§1" §;
   import §9!N§.§["]§;
   import §?"#§.§!!B§;
   import §?"#§.§""o§;
   import §?"#§.§-#d§;
   import §?"#§.§1!'§;
   import §?"#§.§1!C§;
   import §?"#§.§=!I§;
   import §?"#§.§=#n§;
   import §?"#§.§`#B§;
   import §`"8§.§="?§;
   import §`7§.§8"n§;
   import §`7§.§[$-§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §%6§ extends EventDispatcher implements §="§
   {
      
      protected static const §#"6§:Number = 100;
      
      protected static const §3d§:Number = 20;
       
      
      protected var §;f§:int;
      
      protected var §,"c§:Object;
      
      protected var §&#%§:String;
      
      protected var §!#+§:XML;
      
      protected var §5!m§:int = 0;
      
      protected var §9!-§:§""o§;
      
      protected var §each §:Timer;
      
      protected var §4"u§:Object;
      
      protected var §23§:Vector.<String>;
      
      public function §%6§()
      {
         this.§,"c§ = {};
         super();
         this.§9!-§ = new §""o§("packageManager");
      }
      
      public function get §?[§() : §1!C§
      {
         return this.§9!-§;
      }
      
      public function get §+"y§() : Boolean
      {
         return this.§5!m§ == 0 && (!this.§23§ || this.§23§.length == 0);
      }
      
      public function §>!6§(param1:String, param2:String) : String
      {
         return this.§ #'§(param1,param2);
      }
      
      public function §7"t§(param1:String, param2:String) : Boolean
      {
         return this.§,"c§[this.§6"k§(param1,param2)] != null;
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§9!-§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§each §)
         {
            this.§each §.stop();
            this.§each §.removeEventListener(TimerEvent.TIMER,this.§^#x§);
            this.§each § = null;
         }
         this.§4"u§ = null;
         this.§23§ = null;
      }
      
      protected function §6"k§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §0!2§(param1:String, param2:String) : §1" §
      {
         return this.§,"c§[this.§6"k§(param1,param2)] as §1" §;
      }
      
      protected function §]#W§(param1:String, param2:String, param3:§1" §) : void
      {
         this.§,"c§[this.§6"k§(param1,param2)] = param3;
      }
      
      protected function § #'§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§&#%§;
         }
         var _loc3_:§1" § = this.§0!2§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§6"k§(param1,param2) + " not found",§[$-§.§="#§);
         }
         return _loc3_.§<"N§(false);
      }
      
      protected function §^=§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§&#%§;
         }
         var _loc3_:§1" § = this.§0!2§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§6"k§(param1,param2) + " not found",§[$-§.§="#§);
         }
         return _loc3_.content;
      }
      
      protected function §8#f§(param1:String, param2:Function) : void
      {
         return §8"n§.§="-§(this.§^=§(param1),param2);
      }
      
      public function §=!c§(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void
      {
         var _loc8_:§1" § = null;
         if(!this.§+"y§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§;!G§(param1);
         }
         this.§&#%§ = param2;
         this.§!#+§ = param4;
         var _loc5_:§["]§;
         (_loc5_ = new §["]§()).loadBytes(param1);
         var _loc6_:Object = {};
         var _loc7_:int = _loc5_.§3]§() - 1;
         while(_loc7_ >= 0)
         {
            if((_loc8_ = _loc5_.§?c§(_loc7_)).filename.substr(-1) != "/")
            {
               if(this.§0!2§(_loc8_.filename,this.§&#%§))
               {
                  _loc6_[_loc8_.filename] = this.§0!2§(_loc8_.filename,this.§&#%§);
               }
               else
               {
                  _loc6_[_loc8_.filename] = _loc8_;
                  this.§]#W§(_loc8_.filename,this.§&#%§,_loc8_);
               }
            }
            _loc7_--;
         }
         this.§1v§(_loc6_);
      }
      
      public function §^#2§() : void
      {
         this.clear();
      }
      
      protected function §>!-§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§ #'§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§[$-§.§&!X§);
         }
         this.§2$;§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§>!-§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§&5§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§&5§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§0d§(param1);
         }
      }
      
      protected function §1v§(param1:Object) : void
      {
         this.§>!m§(param1);
         if(this.§4]§())
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
      }
      
      private function §>!m§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§23§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§23§.push(_loc2_);
         }
         this.§4"u§ = param1;
      }
      
      private function §4]§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §#"6§ / 2)
         {
            if(!this.§9"z§())
            {
               break;
            }
         }
         var _loc2_:* = this.§23§.length > 0;
         if(this.§+"y§)
         {
            this.§=$%§();
         }
         return _loc2_;
      }
      
      private function §=$%§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §9"z§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§23§.length > 0)
         {
            _loc1_ = this.§23§[0];
            this.§23§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §^#x§(param1:Event) : void
      {
         if(!this.§4]§())
         {
            if(this.§each §)
            {
               this.§each §.stop();
            }
         }
      }
      
      protected function §0d§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§ #'§(param1));
         §="?§.§5R§(_loc2_);
      }
      
      protected function §&5§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§&#%§;
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
            var _loc2_:XML = new XML(§ #'§(filePath,activePackageName));
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
                  if(§0!2§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = § #'§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new §`#B§(_loc2_,_loc4_,param1.bitmapData));
            §=2§();
         };
         ++this.§5!m§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§8#f§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§=!I§) : void
      {
         this.§9!-§.§?!l§(param1);
      }
      
      protected function §=2§() : void
      {
         --this.§5!m§;
         if(this.§+"y§)
         {
            this.§=$%§();
         }
      }
      
      protected function §2$;§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var sheetObject:Object = null;
         var imageName:String = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §=2§();
         };
         ++this.§5!m§;
         if(dataObject.image)
         {
            spriteSheetClass = §!!B§;
            this.§8#f§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else if(dataObject.name && dataObject.charCount)
         {
            spriteSheetClass = §-#d§;
            this.§8#f§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
         else if(dataObject.spriteSheets)
         {
            spriteSheetClass = §1!'§;
            if(dataObject.spriteSheets.length != 1)
            {
               throw new Error("Only one sheet per JSON supported.");
            }
            sheetObject = dataObject.spriteSheets[0];
            imageName = sheetObject.meta.image;
            this.§8#f§("sprite_sheets/" + imageName,onComplete);
         }
         else if(dataObject.meta && dataObject.meta.app == "ArtPacker")
         {
            spriteSheetClass = §=#n§;
            this.§8#f§("sprite_sheets/" + dataObject.meta.image,onComplete);
         }
         else
         {
            this.§ K§(dataObject);
         }
      }
      
      protected function § K§(param1:Object) : void
      {
         throw new Error("Invalid sprite sheet data.");
      }
      
      protected function §;!G§(param1:ByteArray) : void
      {
         var checkSum:String = null;
         var i:int = 0;
         var bytes:ByteArray = param1;
         checkSum = SHA1.hashBytes(bytes);
         var size:int = bytes.length;
         this.§;f§ = 56895 & 25147 >> 1;
         i = Math.min(bytes.length,65536) - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§-$6§() * 255);
            i -= 2;
         }
         i = bytes.length - 1;
         while(i >= 0)
         {
            bytes[i] -= int(this.§-$6§() * 255);
            i -= int(this.§-$6§() * 255);
         }
         var startByte:int = Math.max(bytes.length,65536) - 65536;
         i = bytes.length - 1;
         while(i >= startByte)
         {
            bytes[i] -= int(this.§-$6§() * 255);
            i -= 2;
         }
         try
         {
            bytes.inflate();
         }
         catch(e:Error)
         {
            throw new Error("Error uncompressing package \'" + §&#%§ + "\', checksum: " + checkSum + ",size:" + length + ", " + e.toString(),e.errorID);
         }
      }
      
      protected function §-$6§() : Number
      {
         this.§;f§ ^= this.§;f§ << 21;
         this.§;f§ ^= this.§;f§ >>> 35;
         this.§;f§ ^= this.§;f§ << 4;
         if(this.§;f§ < 0)
         {
            this.§;f§ &= 2147483647;
         }
         return this.§;f§ / 2147483647;
      }
   }
}
