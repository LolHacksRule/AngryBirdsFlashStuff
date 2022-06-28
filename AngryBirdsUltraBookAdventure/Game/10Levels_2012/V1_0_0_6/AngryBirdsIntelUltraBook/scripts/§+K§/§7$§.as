package §+K§
{
   import §0H§.§8h§;
   import §0H§.§?K§;
   import §3!G§.§ y§;
   import §3!G§.LevelManager;
   import §6!p§.ParticleManager;
   import §@!L§.§-`§;
   import §[!]§.§ !#§;
   import §[!]§.§ i§;
   import §]+§.§&!$§;
   import §]+§.§0j§;
   import §]+§.§@6§;
   import §]o§.§!T§;
   import §]o§.§"!Z§;
   import §]o§.§'A§;
   import §]o§.§>!^§;
   import §]o§.§^g§;
   import §^!Y§.§]p§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §7$§ extends EventDispatcher implements § i§
   {
       
      
      protected var §%!8§:int;
      
      protected var §[!q§:Object;
      
      protected var §77§:int = 0;
      
      protected var §0!g§:§!T§;
      
      protected var §3b§:Vector.<XML>;
      
      protected var §`!a§:Loader;
      
      public function §7$§()
      {
         this.§[!q§ = {};
         this.§3b§ = new Vector.<XML>();
         super();
         this.§0!g§ = new §!T§();
      }
      
      public function get §,!U§() : §"!Z§
      {
         return this.§0!g§;
      }
      
      public function get §<!l§() : Boolean
      {
         return this.§77§ == 0;
      }
      
      public function dispose() : void
      {
         this.§0!g§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§[!q§[param1] as §?K§).§'M§(false);
      }
      
      public function §6!W§(param1:String) : ByteArray
      {
         return (this.§[!q§[param1] as §?K§).content;
      }
      
      public function §`_§(param1:String, param2:Function) : void
      {
         return §@6§.§=8§(this.§6!W§(param1),param2);
      }
      
      public function §3O§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§?K§ = null;
         if(param2)
         {
            this.§8+§(param1);
         }
         var _loc3_:§8h§ = new §8h§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§5!5§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§-m§(_loc5_)).§-F§.substr(-1) != "/")
            {
               if(!this.§[!q§[_loc6_.§-F§])
               {
               }
               this.§[!q§[_loc6_.§-F§] = _loc4_[_loc6_.§-F§] = _loc6_;
            }
            _loc5_--;
         }
         this.§0l§(_loc4_);
      }
      
      protected function §0l§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §?K§).§'M§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§&!$§.§1!`§);
               }
               this.§@!j§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§=f§(levelNameResults[1].toLowerCase(),§ y§.§<3§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§[?§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§"!o§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§ !,§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§`>§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§=!"§(fileName);
            }
         }
         if(this.§77§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §=!"§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§77§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§3b§.push(_loc2_);
         if(this.§3b§.length == 1)
         {
            this.§`!a§ = new Loader();
            this.§`!a§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§>!!§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§`!a§.loadBytes(this.§6!W§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §>!!§(param1:Event) : void
      {
         this.§`!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§>!!§);
         var _loc2_:XML = this.§3b§.shift();
         § !#§.§>>§(this.§`!a§,_loc2_.Library[0]);
         if(this.§3b§.length > 0)
         {
            this.§`!a§ = new Loader();
            this.§`!a§.contentLoaderInfo.addEventListener(Event.INIT,this.§>!!§);
            this.§`!a§.loadBytes(this.§6!W§(this.§3b§[0].Library.@swf));
         }
         this.§>b§();
      }
      
      private function §`>§(param1:String) : void
      {
         var _loc2_:Object = §0j§.§^!E§(this.getFileAsString(param1));
         §-`§.§0r§(_loc2_);
      }
      
      protected function § !,§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §]p§.§1!2§(_loc2_);
      }
      
      protected function §"!o§(param1:String) : void
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
                  if(§[!q§[_loc13_] == null)
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
            §0!g§.§^f§(new §'A§(_loc2_,_loc4_,param1.bitmapData));
            §>b§();
         };
         ++this.§77§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§`_§(imagePath,onComplete);
      }
      
      protected function §>b§() : void
      {
         --this.§77§;
         if(this.§77§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §[?§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§?I§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§`_§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §@!j§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §0!g§.§^f§(new spriteSheetClass(dataObject,param1.bitmapData));
            §>b§();
         };
         ++this.§77§;
         if(dataObject.image)
         {
            spriteSheetClass = §^g§;
            this.§`_§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §>!^§;
            this.§`_§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §8+§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§%!8§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§ if§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§ if§() * 255);
            _loc2_ -= int(this.§ if§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§ if§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function § if§() : Number
      {
         this.§%!8§ ^= this.§%!8§ << 21;
         this.§%!8§ ^= this.§%!8§ >>> 35;
         this.§%!8§ ^= this.§%!8§ << 4;
         if(this.§%!8§ < 0)
         {
            this.§%!8§ &= 2147483647;
         }
         return this.§%!8§ / 2147483647;
      }
   }
}
