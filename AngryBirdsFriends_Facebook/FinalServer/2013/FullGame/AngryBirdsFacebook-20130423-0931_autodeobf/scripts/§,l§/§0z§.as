package §,l§
{
   import §#"A§.§'"U§;
   import §#"A§.§^!8§;
   import §%!g§.ParticleManager;
   import §,"R§.§,! §;
   import §,"R§.§0"G§;
   import §,"R§.§4"@§;
   import §,"R§.§81§;
   import §,"R§.§>!E§;
   import §4;§.§=!^§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §9@§.§1!j§;
   import §9@§.§["X§;
   import §9@§.§]o§;
   import §<T§.§?!Z§;
   import §<a§.§;L§;
   import §<a§.§]G§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §0z§ extends EventDispatcher implements §^!8§
   {
       
      
      protected var §-Q§:int;
      
      protected var §>8§:Object;
      
      protected var §-R§:int = 0;
      
      protected var §`J§:§0"G§;
      
      protected var §1"6§:Vector.<XML>;
      
      protected var §2!H§:Loader;
      
      private var §9![§:String;
      
      public function §0z§()
      {
         this.§>8§ = {};
         this.§1"6§ = new Vector.<XML>();
         super();
         this.§`J§ = new §0"G§();
      }
      
      public function §[T§(param1:String) : void
      {
         this.§9![§ = param1;
      }
      
      public function get §#!y§() : §>!E§
      {
         return this.§`J§;
      }
      
      public function get §'!@§() : Boolean
      {
         return this.§-R§ == 0;
      }
      
      public function dispose() : void
      {
         this.§`J§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§>8§[param1] as §;L§).§["Z§(false);
      }
      
      public function §1+§(param1:String) : ByteArray
      {
         return (this.§>8§[param1] as §;L§).content;
      }
      
      public function §6v§(param1:String, param2:Function) : void
      {
         return §]o§.§]B§(this.§1+§(param1),param2);
      }
      
      public function §'S§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§;L§ = null;
         if(param2)
         {
            this.§ "J§(param1);
         }
         var _loc3_:§]G§ = new §]G§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§6"A§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§=![§(_loc5_)).§@"2§.substr(-1) != "/")
            {
               if(!this.§>8§[_loc6_.§@"2§])
               {
               }
               this.§>8§[_loc6_.§@"2§] = _loc4_[_loc6_.§@"2§] = _loc6_;
            }
            _loc5_--;
         }
         this.§%!@§(_loc4_);
      }
      
      protected function §%!@§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §;L§).§["Z§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§1!j§.§%e§);
               }
               this.§,Y§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§4M§(levelNameResults[1].toLowerCase(),§0"T§.§7"K§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§ >§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§4!a§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§#"@§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§?J§(fileName);
            }
            swfCutSceneNameResults = fileName.match(/cutscene.swf$/i);
            if(swfCutSceneNameResults)
            {
               this.§@_§(fileName,this.§9![§);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§8!k§(fileName);
            }
         }
         if(this.§-R§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §8!k§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§-R§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§1"6§.push(_loc2_);
         if(this.§1"6§.length == 1)
         {
            this.§2!H§ = new Loader();
            this.§2!H§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§@-§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§2!H§.loadBytes(this.§1+§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §@-§(param1:Event) : void
      {
         this.§2!H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§@-§);
         var _loc2_:XML = this.§1"6§.shift();
         §'"U§.§!,§(this.§2!H§,_loc2_.Library[0]);
         if(this.§1"6§.length > 0)
         {
            this.§2!H§ = new Loader();
            this.§2!H§.contentLoaderInfo.addEventListener(Event.INIT,this.§@-§);
            this.§2!H§.loadBytes(this.§1+§(this.§1"6§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§"!2§();
      }
      
      private function §?J§(param1:String) : void
      {
         var _loc2_:Object = §["X§.§ ">§(this.getFileAsString(param1));
         §=!^§.§[W§(_loc2_);
      }
      
      private function §@_§(param1:String, param2:String) : void
      {
         §=!^§.§3!E§(param2,this.§1+§(param1));
      }
      
      protected function §#"@§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §?!Z§.§#!m§(_loc2_);
      }
      
      protected function §4!a§(param1:String) : void
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
                  if(§>8§[_loc13_] == null)
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
            §`J§.§default§(new §4"@§(_loc2_,_loc4_,param1.bitmapData));
            §"!2§();
         };
         ++this.§-R§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§6v§(imagePath,onComplete);
      }
      
      protected function §"!2§() : void
      {
         --this.§-R§;
         if(this.§-R§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function § >§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§4!z§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§6v§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §,Y§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §`J§.§default§(new spriteSheetClass(dataObject,param1.bitmapData));
            §"!2§();
         };
         ++this.§-R§;
         if(dataObject.image)
         {
            spriteSheetClass = §,! §;
            this.§6v§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §81§;
            this.§6v§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function § "J§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§-Q§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§0"Z§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§0"Z§() * 255);
            _loc2_ -= int(this.§0"Z§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§0"Z§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §0"Z§() : Number
      {
         this.§-Q§ ^= this.§-Q§ << 21;
         this.§-Q§ ^= this.§-Q§ >>> 35;
         this.§-Q§ ^= this.§-Q§ << 4;
         if(this.§-Q§ < 0)
         {
            this.§-Q§ &= 2147483647;
         }
         return this.§-Q§ / 2147483647;
      }
   }
}
