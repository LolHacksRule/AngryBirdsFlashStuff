package §;!4§
{
   import §%!E§.§,f§;
   import §%!F§.§4G§;
   import §%!F§.§5!j§;
   import §+-§.§,K§;
   import §+-§.§3!5§;
   import §5!l§.§=!;§;
   import §9L§.§;!K§;
   import §;!j§.§0!i§;
   import §;!j§.§=!8§;
   import §;!j§.§`k§;
   import §@B§.§,=§;
   import §@B§.§`!'§;
   import §[r§.§!!Y§;
   import §[r§.§&!e§;
   import §[r§.§3!A§;
   import §[r§.§3=§;
   import §[r§.§@"§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §4!R§ extends EventDispatcher implements §4G§
   {
       
      
      protected var §1!;§:int;
      
      protected var §%q§:Object;
      
      protected var §?!D§:int = 0;
      
      protected var §&!f§:§&!e§;
      
      protected var §9K§:Vector.<XML>;
      
      protected var §;!0§:Loader;
      
      public function §4!R§()
      {
         this.§%q§ = {};
         this.§9K§ = new Vector.<XML>();
         super();
         this.§&!f§ = new §&!e§();
      }
      
      public function get §@!e§() : §3=§
      {
         return this.§&!f§;
      }
      
      public function get §!!D§() : Boolean
      {
         return this.§?!D§ == 0;
      }
      
      public function dispose() : void
      {
         this.§&!f§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§%q§[param1] as §`!'§).§1!,§(false);
      }
      
      public function §-O§(param1:String) : ByteArray
      {
         return (this.§%q§[param1] as §`!'§).content;
      }
      
      public function §7[§(param1:String, param2:Function) : void
      {
         return §`k§.§,!4§(this.§-O§(param1),param2);
      }
      
      public function §,E§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§`!'§ = null;
         if(param2)
         {
            this.§%8§(param1);
         }
         var _loc3_:§,=§ = new §,=§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§8!1§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§[!k§(_loc5_)).§0!+§.substr(-1) != "/")
            {
               if(!this.§%q§[_loc6_.§0!+§])
               {
               }
               this.§%q§[_loc6_.§0!+§] = _loc4_[_loc6_.§0!+§] = _loc6_;
            }
            _loc5_--;
         }
         this.§%!S§(_loc4_);
      }
      
      protected function §%!S§(param1:Object) : void
      {
         var fileName:String = null;
         var levelNameResults:Array = null;
         var particleNameResults:Array = null;
         var compositeSpriteSheetNameResults:Array = null;
         var compositeNameResults:Array = null;
         var cutSceneNameResults:Array = null;
         var jsonObject:Object = null;
         var packageFiles:Object = param1;
         for(fileName in packageFiles)
         {
            if(fileName.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
            {
               try
               {
                  jsonObject = JSON.parse((packageFiles[fileName] as §`!'§).§1!,§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§=!8§.§<0§);
               }
               this.§+Y§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §3!5§.§1!]§(levelNameResults[1].toLowerCase(),§,K§.§[Q§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§1!3§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§&!+§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§>E§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§1A§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§?n§(fileName);
            }
         }
         if(this.§?!D§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §?n§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§?!D§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§9K§.push(_loc2_);
         if(this.§9K§.length == 1)
         {
            this.§;!0§ = new Loader();
            this.§;!0§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§=&§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§;!0§.loadBytes(this.§-O§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §=&§(param1:Event) : void
      {
         this.§;!0§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=&§);
         var _loc2_:XML = this.§9K§.shift();
         §5!j§.§"!+§(this.§;!0§,_loc2_.Library[0]);
         if(this.§9K§.length > 0)
         {
            this.§;!0§ = new Loader();
            this.§;!0§.contentLoaderInfo.addEventListener(Event.INIT,this.§=&§);
            this.§;!0§.loadBytes(this.§-O§(this.§9K§[0].Library.@swf));
         }
         this.§`!L§();
      }
      
      private function §1A§(param1:String) : void
      {
         var _loc2_:Object = §0!i§.§`!O§(this.getFileAsString(param1));
         §;!K§.§+!'§(_loc2_);
      }
      
      protected function §>E§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §=!;§.§5!C§(_loc2_);
      }
      
      protected function §&!+§(param1:String) : void
      {
         var filePath:String = param1;
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
            var _loc2_:XML = new XML(getFileAsString(filePath));
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
                  if(§%q§[_loc13_] == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = getFileAsString(_loc13_);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §&!f§.§4!#§(new §3!A§(_loc2_,_loc4_,param1.bitmapData));
            §`!L§();
         };
         ++this.§?!D§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§7[§(imagePath,onComplete);
      }
      
      protected function §`!L§() : void
      {
         --this.§?!D§;
         if(this.§?!D§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §1!3§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §,f§.§;3§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§7[§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §+Y§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §&!f§.§4!#§(new spriteSheetClass(dataObject,param1.bitmapData));
            §`!L§();
         };
         ++this.§?!D§;
         if(dataObject.image)
         {
            spriteSheetClass = §@"§;
            this.§7[§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §!!Y§;
            this.§7[§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §%8§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§1!;§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§#!I§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§#!I§() * 255);
            _loc2_ -= int(this.§#!I§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§#!I§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §#!I§() : Number
      {
         this.§1!;§ ^= this.§1!;§ << 21;
         this.§1!;§ ^= this.§1!;§ >>> 35;
         this.§1!;§ ^= this.§1!;§ << 4;
         if(this.§1!;§ < 0)
         {
            this.§1!;§ &= 2147483647;
         }
         return this.§1!;§ / 2147483647;
      }
   }
}
