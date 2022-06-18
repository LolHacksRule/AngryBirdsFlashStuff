package §<L§
{
   import §&@§.§6c§;
   import §&@§.§;d§;
   import §0!H§.§-_§;
   import §0!H§.§>&§;
   import §1!4§.ParticleManager;
   import §2r§.§5l§;
   import §3;§.§"]§;
   import §3;§.§&!§;
   import §3;§.§<§;
   import §3;§.§?g§;
   import §3;§.§@!§;
   import §8!=§.§"!,§;
   import §8!=§.§#!&§;
   import §8!=§.§#%§;
   import §<!M§.§1!&§;
   import §<!M§.§[i§;
   import §=!K§.§?;§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §]!"§ extends EventDispatcher implements §6c§
   {
       
      
      protected var include:int;
      
      protected var §7!G§:Object;
      
      protected var §>l§:int = 0;
      
      protected var §11§:§@!§;
      
      protected var §&j§:Vector.<XML>;
      
      protected var §7G§:Loader;
      
      private var §&P§:String;
      
      public function §]!"§()
      {
         this.§7!G§ = {};
         this.§&j§ = new Vector.<XML>();
         super();
         this.§11§ = new §@!§();
      }
      
      public function §"L§(param1:String) : void
      {
         this.§&P§ = param1;
      }
      
      public function get §^I§() : §&!§
      {
         return this.§11§;
      }
      
      public function get §2!<§() : Boolean
      {
         return this.§>l§ == 0;
      }
      
      public function dispose() : void
      {
         this.§11§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§7!G§[param1] as §>&§).§6!M§(false);
      }
      
      public function §5H§(param1:String) : ByteArray
      {
         return (this.§7!G§[param1] as §>&§).content;
      }
      
      public function §0%§(param1:String, param2:Function) : void
      {
         return §"!,§.§@!J§(this.§5H§(param1),param2);
      }
      
      public function §%4§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§>&§ = null;
         if(param2)
         {
            this.§?3§(param1);
         }
         var _loc3_:§-_§ = new §-_§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§+M§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§%#§(_loc5_)).§[u§.substr(-1) != "/")
            {
               if(!this.§7!G§[_loc6_.§[u§])
               {
               }
               this.§7!G§[_loc6_.§[u§] = _loc4_[_loc6_.§[u§] = _loc6_;
            }
            _loc5_--;
         }
         this.§9!0§(_loc4_);
      }
      
      protected function §9!0§(param1:Object) : void
      {
         var fileName:String = null;
         var levelNameResults:Array = null;
         var particleNameResults:Array = null;
         var compositeSpriteSheetNameResults:Array = null;
         var compositeNameResults:Array = null;
         var cutSceneNameResults:Array = null;
         var swfCutSceneNameResults:Array = null;
         var jsonObject:Object = null;
         var packageFiles:Object = param1;
         for(fileName in packageFiles)
         {
            if(fileName.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
            {
               try
               {
                  jsonObject = JSON.parse((packageFiles[fileName] as §>&§).§6!M§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§#!&§.§5s§);
               }
               this.§4[§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §[i§.§2=§(levelNameResults[1].toLowerCase(),§1!&§.§#Z§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§'g§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§`§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§=s§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§ A§(fileName);
            }
            swfCutSceneNameResults = fileName.match(/cutscene.swf$/i);
            if(swfCutSceneNameResults)
            {
               this.§09§(fileName,this.§&P§);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§ !9§(fileName);
            }
         }
         if(this.§>l§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function § !9§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§>l§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§&j§.push(_loc2_);
         if(this.§&j§.length == 1)
         {
            this.§7G§ = new Loader();
            this.§7G§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§-7§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§7G§.loadBytes(this.§5H§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §-7§(param1:Event) : void
      {
         this.§7G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-7§);
         var _loc2_:XML = this.§&j§.shift();
         §;d§.§@E§(this.§7G§,_loc2_.Library[0]);
         if(this.§&j§.length > 0)
         {
            this.§7G§ = new Loader();
            this.§7G§.contentLoaderInfo.addEventListener(Event.INIT,this.§-7§);
            this.§7G§.loadBytes(this.§5H§(this.§&j§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§'!B§();
      }
      
      private function § A§(param1:String) : void
      {
         var _loc2_:Object = §#%§.§7%§(this.getFileAsString(param1));
         §5l§.§6!7§(_loc2_);
      }
      
      private function §09§(param1:String, param2:String) : void
      {
         §5l§.§+!+§(param2,this.§5H§(param1));
      }
      
      protected function §=s§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §?;§.§&w§(_loc2_);
      }
      
      protected function §`§(param1:String) : void
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
                  if(§7!G§[_loc13_] == null)
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
            §11§.§'u§(new §"]§(_loc2_,_loc4_,param1.bitmapData));
            §'!B§();
         };
         ++this.§>l§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§0%§(imagePath,onComplete);
      }
      
      protected function §'!B§() : void
      {
         --this.§>l§;
         if(this.§>l§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §'g§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§#!+§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§0%§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §4[§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §11§.§'u§(new spriteSheetClass(dataObject,param1.bitmapData));
            §'!B§();
         };
         ++this.§>l§;
         if(dataObject.image)
         {
            spriteSheetClass = §<§;
            this.§0%§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §?g§;
            this.§0%§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §?3§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.include = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§^!K§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§^!K§() * 255);
            _loc2_ -= int(this.§^!K§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§^!K§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §^!K§() : Number
      {
         this.include ^= this.include << 21;
         this.include ^= this.include >>> 35;
         this.include ^= this.include << 4;
         if(this.include < 0)
         {
            this.include &= 2147483647;
         }
         return this.include / 2147483647;
      }
   }
}
