package §!b§
{
   import § !b§.§ &§;
   import § !b§.§&!'§;
   import § !b§.§+!<§;
   import § !b§.§,F§;
   import § !b§.§;-§;
   import §!2§.§`!2§;
   import §'6§.§[W§;
   import §,+§.§%§;
   import §,+§.§'!0§;
   import §,+§.§2-§;
   import §39§.§-W§;
   import §39§.§=R§;
   import §<-§.§1!W§;
   import §<-§.§]!%§;
   import §=!-§.§@m§;
   import §=!-§.§]#§;
   import §`n§.§`1§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §8!6§ extends EventDispatcher implements §1!W§
   {
       
      
      protected var §8m§:int;
      
      protected var §=5§:Object;
      
      protected var §;w§:int = 0;
      
      protected var §9'§:§,F§;
      
      protected var §#!+§:Vector.<XML>;
      
      protected var §!!E§:Loader;
      
      public function §8!6§()
      {
         this.§=5§ = {};
         this.§#!+§ = new Vector.<XML>();
         super();
         this.§9'§ = new §,F§();
      }
      
      public function get static() : §&!'§
      {
         return this.§9'§;
      }
      
      public function get §,=§() : Boolean
      {
         return this.§;w§ == 0;
      }
      
      public function dispose() : void
      {
         this.§9'§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§=5§[param1] as §@m§).§#q§(false);
      }
      
      public function §4I§(param1:String) : ByteArray
      {
         return (this.§=5§[param1] as §@m§).content;
      }
      
      public function §>!X§(param1:String, param2:Function) : void
      {
         return §2-§.§#!0§(this.§4I§(param1),param2);
      }
      
      public function §8!P§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§@m§ = null;
         if(param2)
         {
            this.§6n§(param1);
         }
         var _loc3_:§]#§ = new §]#§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§@!V§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§9J§(_loc5_)).§0k§.substr(-1) != "/")
            {
               if(!this.§=5§[_loc6_.§0k§])
               {
               }
               this.§=5§[_loc6_.§0k§] = _loc4_[_loc6_.§0k§] = _loc6_;
            }
            _loc5_--;
         }
         this.§8o§(_loc4_);
      }
      
      protected function §8o§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §@m§).§#q§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§%§.§',§);
               }
               this.§2r§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §-W§.§#^§(levelNameResults[1].toLowerCase(),§=R§.§2!P§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§'!^§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§0,§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§-!_§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§;D§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§0u§(fileName);
            }
         }
         if(this.§;w§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §0u§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§;w§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§#!+§.push(_loc2_);
         if(this.§#!+§.length == 1)
         {
            this.§!!E§ = new Loader();
            this.§!!E§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§=U§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§!!E§.loadBytes(this.§4I§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §=U§(param1:Event) : void
      {
         this.§!!E§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§=U§);
         var _loc2_:XML = this.§#!+§.shift();
         §]!%§.§]!#§(this.§!!E§,_loc2_.Library[0]);
         if(this.§#!+§.length > 0)
         {
            this.§!!E§ = new Loader();
            this.§!!E§.contentLoaderInfo.addEventListener(Event.INIT,this.§=U§);
            this.§!!E§.loadBytes(this.§4I§(this.§#!+§[0].Library.@swf));
         }
         this.§>!]§();
      }
      
      private function §;D§(param1:String) : void
      {
         var _loc2_:Object = §'!0§.§[Z§(this.getFileAsString(param1));
         §[W§.§+!N§(_loc2_);
      }
      
      protected function §-!_§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §`1§.§]Z§(_loc2_);
      }
      
      protected function §0,§(param1:String) : void
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
                  if(§=5§[_loc13_] == null)
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
            §9'§.§+I§(new § &§(_loc2_,_loc4_,param1.bitmapData));
            §>!]§();
         };
         ++this.§;w§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§>!X§(imagePath,onComplete);
      }
      
      protected function §>!]§() : void
      {
         --this.§;w§;
         if(this.§;w§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §'!^§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §`!2§.§-!S§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§>!X§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §2r§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §9'§.§+I§(new spriteSheetClass(dataObject,param1.bitmapData));
            §>!]§();
         };
         ++this.§;w§;
         if(dataObject.image)
         {
            spriteSheetClass = §+!<§;
            this.§>!X§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §;-§;
            this.§>!X§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §6n§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§8m§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§8b§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§8b§() * 255);
            _loc2_ -= int(this.§8b§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§8b§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §8b§() : Number
      {
         this.§8m§ ^= this.§8m§ << 21;
         this.§8m§ ^= this.§8m§ >>> 35;
         this.§8m§ ^= this.§8m§ << 4;
         if(this.§8m§ < 0)
         {
            this.§8m§ &= 2147483647;
         }
         return this.§8m§ / 2147483647;
      }
   }
}
