package §-!D§
{
   import §&-§.§0A§;
   import §&-§.§<h§;
   import §+!G§.§!Y§;
   import §+!G§.§6!!§;
   import §+4§.ParticleManager;
   import §1a§.§"v§;
   import §6!L§.§#!M§;
   import §6!L§.§&u§;
   import §7!A§.§#g§;
   import §7!A§.§-r§;
   import §7!A§.§>!<§;
   import §7!A§.§>M§;
   import §7!A§.§`g§;
   import §<A§.§^!9§;
   import §`!8§.§<3§;
   import §`!8§.§[q§;
   import §`!8§.§`X§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §>d§ extends EventDispatcher implements §0A§
   {
       
      
      protected var §%>§:int;
      
      protected var §;G§:Object;
      
      protected var §-%§:int = 0;
      
      protected var §,Z§:§>M§;
      
      protected var §,o§:Vector.<XML>;
      
      protected var §;U§:Loader;
      
      public function §>d§()
      {
         this.§;G§ = {};
         this.§,o§ = new Vector.<XML>();
         super();
         this.§,Z§ = new §>M§();
      }
      
      public function get §9-§() : §>!<§
      {
         return this.§,Z§;
      }
      
      public function get §>!M§() : Boolean
      {
         return this.§-%§ == 0;
      }
      
      public function dispose() : void
      {
         this.§,Z§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§;G§[param1] as §6!!§).§77§(false);
      }
      
      public function §,!P§(param1:String) : ByteArray
      {
         return (this.§;G§[param1] as §6!!§).content;
      }
      
      public function §3!&§(param1:String, param2:Function) : void
      {
         return §`X§.§5d§(this.§,!P§(param1),param2);
      }
      
      public function §[^§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§6!!§ = null;
         if(param2)
         {
            this.§7-§(param1);
         }
         var _loc3_:§!Y§ = new §!Y§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§#r§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§^K§(_loc5_)).§!!H§.substr(-1) != "/")
            {
               if(!this.§;G§[_loc6_.§!!H§])
               {
               }
               this.§;G§[_loc6_.§!!H§] = _loc4_[_loc6_.§!!H§] = _loc6_;
            }
            _loc5_--;
         }
         this.§0!I§(_loc4_);
      }
      
      protected function §0!I§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §6!!§).§77§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§[q§.§,_§);
               }
               this.§,-§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §&u§.§5j§(levelNameResults[1].toLowerCase(),§#!M§.§`!6§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§6!>§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§%G§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§-!"§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§>G§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§#'§(fileName);
            }
         }
         if(this.§-%§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §#'§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§-%§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§,o§.push(_loc2_);
         if(this.§,o§.length == 1)
         {
            this.§;U§ = new Loader();
            this.§;U§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§var §);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§;U§.loadBytes(this.§,!P§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §var §(param1:Event) : void
      {
         this.§;U§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§var §);
         var _loc2_:XML = this.§,o§.shift();
         §<h§.§78§(this.§;U§,_loc2_.Library[0]);
         if(this.§,o§.length > 0)
         {
            this.§;U§ = new Loader();
            this.§;U§.contentLoaderInfo.addEventListener(Event.INIT,this.§var §);
            this.§;U§.loadBytes(this.§,!P§(this.§,o§[0].Library.@swf));
         }
         this.§`>§();
      }
      
      private function §>G§(param1:String) : void
      {
         var _loc2_:Object = §<3§.§,H§(this.getFileAsString(param1));
         §"v§.§&O§(_loc2_);
      }
      
      protected function §-!"§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §^!9§.§]!3§(_loc2_);
      }
      
      protected function §%G§(param1:String) : void
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
                  if(§;G§[_loc13_] == null)
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
            §,Z§.§'!@§(new §#g§(_loc2_,_loc4_,param1.bitmapData));
            §`>§();
         };
         ++this.§-%§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§3!&§(imagePath,onComplete);
      }
      
      protected function §`>§() : void
      {
         --this.§-%§;
         if(this.§-%§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §6!>§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§%!M§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§3!&§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §,-§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §,Z§.§'!@§(new spriteSheetClass(dataObject,param1.bitmapData));
            §`>§();
         };
         ++this.§-%§;
         if(dataObject.image)
         {
            spriteSheetClass = §`g§;
            this.§3!&§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §-r§;
            this.§3!&§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §7-§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§%>§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>!N§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>!N§() * 255);
            _loc2_ -= int(this.§>!N§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§>!N§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §>!N§() : Number
      {
         this.§%>§ ^= this.§%>§ << 21;
         this.§%>§ ^= this.§%>§ >>> 35;
         this.§%>§ ^= this.§%>§ << 4;
         if(this.§%>§ < 0)
         {
            this.§%>§ &= 2147483647;
         }
         return this.§%>§ / 2147483647;
      }
   }
}
