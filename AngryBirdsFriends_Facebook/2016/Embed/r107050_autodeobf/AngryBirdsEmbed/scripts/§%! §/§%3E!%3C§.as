package §%! §
{
   import §#?§.§%C§;
   import §&`§.ParticleManager;
   import §'9§.§,J§;
   import §'9§.§3!§;
   import §2!!§.§+!L§;
   import §2!!§.§+W§;
   import §2!!§.§0X§;
   import §2!!§.§<6§;
   import §2!!§.set;
   import §3y§.§2!%§;
   import §3y§.§5!E§;
   import §3y§.§7!;§;
   import §?j§.§9?§;
   import §?j§.§`R§;
   import §[4§.§+;§;
   import §[4§.§>!3§;
   import §`@§.§@6§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §>!<§ extends EventDispatcher implements §,J§
   {
       
      
      protected var §'=§:int;
      
      protected var §8t§:Object;
      
      protected var §7o§:int = 0;
      
      protected var §[W§:§+W§;
      
      protected var §>T§:Vector.<XML>;
      
      protected var §>!8§:Loader;
      
      private var § i§:String;
      
      public function §>!<§()
      {
         this.§8t§ = {};
         this.§>T§ = new Vector.<XML>();
         super();
         this.§[W§ = new §+W§();
      }
      
      public function §'!+§(param1:String) : void
      {
         this.§ i§ = param1;
      }
      
      public function get §5!K§() : §<6§
      {
         return this.§[W§;
      }
      
      public function get §?'§() : Boolean
      {
         return this.§7o§ == 0;
      }
      
      public function dispose() : void
      {
         this.§[W§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§8t§[param1] as §>!3§).§'!N§(false);
      }
      
      public function §+h§(param1:String) : ByteArray
      {
         return (this.§8t§[param1] as §>!3§).content;
      }
      
      public function §;d§(param1:String, param2:Function) : void
      {
         return §2!%§.§'?§(this.§+h§(param1),param2);
      }
      
      public function §null §(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§>!3§ = null;
         if(param2)
         {
            this.§"!2§(param1);
         }
         var _loc3_:§+;§ = new §+;§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§7X§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§2!§(_loc5_)).§>d§.substr(-1) != "/")
            {
               if(!this.§8t§[_loc6_.§>d§])
               {
               }
               this.§8t§[_loc6_.§>d§] = _loc4_[_loc6_.§>d§] = _loc6_;
            }
            _loc5_--;
         }
         this.§'3§(_loc4_);
      }
      
      protected function §'3§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §>!3§).§'!N§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§5!E§.§@]§);
               }
               this.§]!3§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §`R§.§!m§(levelNameResults[1].toLowerCase(),§9?§.§`x§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§'!!§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§7j§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§9e§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§%r§(fileName);
            }
            swfCutSceneNameResults = fileName.match(/cutscene.swf$/i);
            if(swfCutSceneNameResults)
            {
               this.§4b§(fileName,this.§ i§);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§25§(fileName);
            }
         }
         if(this.§7o§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §25§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§7o§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§>T§.push(_loc2_);
         if(this.§>T§.length == 1)
         {
            this.§>!8§ = new Loader();
            this.§>!8§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§1P§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§>!8§.loadBytes(this.§+h§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §1P§(param1:Event) : void
      {
         this.§>!8§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§1P§);
         var _loc2_:XML = this.§>T§.shift();
         §3!§.§6!O§(this.§>!8§,_loc2_.Library[0]);
         if(this.§>T§.length > 0)
         {
            this.§>!8§ = new Loader();
            this.§>!8§.contentLoaderInfo.addEventListener(Event.INIT,this.§1P§);
            this.§>!8§.loadBytes(this.§+h§(this.§>T§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§2!H§();
      }
      
      private function §%r§(param1:String) : void
      {
         var _loc2_:Object = §7!;§.§=D§(this.getFileAsString(param1));
         §@6§.§9c§(_loc2_);
      }
      
      private function §4b§(param1:String, param2:String) : void
      {
         §@6§.§"m§(param2,this.§+h§(param1));
      }
      
      protected function §9e§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §%C§.§<S§(_loc2_);
      }
      
      protected function §7j§(param1:String) : void
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
                  if(§8t§[_loc13_] == null)
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
            §[W§.§@'§(new set(_loc2_,_loc4_,param1.bitmapData));
            §2!H§();
         };
         ++this.§7o§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§;d§(imagePath,onComplete);
      }
      
      protected function §2!H§() : void
      {
         --this.§7o§;
         if(this.§7o§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §'!!§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§ !L§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§;d§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §]!3§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §[W§.§@'§(new spriteSheetClass(dataObject,param1.bitmapData));
            §2!H§();
         };
         ++this.§7o§;
         if(dataObject.image)
         {
            spriteSheetClass = §0X§;
            this.§;d§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §+!L§;
            this.§;d§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §"!2§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§'=§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>!!§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>!!§() * 255);
            _loc2_ -= int(this.§>!!§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§>!!§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §>!!§() : Number
      {
         this.§'=§ ^= this.§'=§ << 21;
         this.§'=§ ^= this.§'=§ >>> 35;
         this.§'=§ ^= this.§'=§ << 4;
         if(this.§'=§ < 0)
         {
            this.§'=§ &= 2147483647;
         }
         return this.§'=§ / 2147483647;
      }
   }
}
