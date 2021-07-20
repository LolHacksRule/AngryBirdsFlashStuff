package §^!U§
{
   import §#S§.§!K§;
   import §%!'§.§-!s§;
   import §%!'§.§8!J§;
   import §%!'§.§8o§;
   import §+x§.ParticleManager;
   import §3D§.§%!x§;
   import §9!I§.§6!J§;
   import §9!I§.§@5§;
   import §=v§.§,=§;
   import §=v§.§`!'§;
   import §^"7§.§+!V§;
   import §^"7§.§7!q§;
   import §^"7§.§=!e§;
   import §^"7§.§>K§;
   import §^"7§.§^!0§;
   import §`!n§.§#!s§;
   import §`!n§.LevelManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §9S§ extends EventDispatcher implements §@5§
   {
       
      
      protected var §=!u§:int;
      
      protected var §-`§:Object;
      
      protected var §9`§:int = 0;
      
      protected var §6!O§:§+!V§;
      
      protected var §=2§:Vector.<XML>;
      
      protected var §?"<§:Loader;
      
      private var §8l§:String;
      
      public function §9S§()
      {
         this.§-`§ = {};
         this.§=2§ = new Vector.<XML>();
         super();
         this.§6!O§ = new §+!V§();
      }
      
      public function §"b§(param1:String) : void
      {
         this.§8l§ = param1;
      }
      
      public function get §9!e§() : §^!0§
      {
         return this.§6!O§;
      }
      
      public function get §<N§() : Boolean
      {
         return this.§9`§ == 0;
      }
      
      public function dispose() : void
      {
         this.§6!O§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§-`§[param1] as §`!'§).§1"I§(false);
      }
      
      public function §-"6§(param1:String) : ByteArray
      {
         return (this.§-`§[param1] as §`!'§).content;
      }
      
      public function §=8§(param1:String, param2:Function) : void
      {
         return §-!s§.§;!D§(this.§-"6§(param1),param2);
      }
      
      public function §>x§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§`!'§ = null;
         if(param2)
         {
            this.§3!!§(param1);
         }
         var _loc3_:§,=§ = new §,=§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§!L§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§'"4§(_loc5_)).§%!V§.substr(-1) != "/")
            {
               if(!this.§-`§[_loc6_.§%!V§])
               {
               }
               this.§-`§[_loc6_.§%!V§] = _loc4_[_loc6_.§%!V§] = _loc6_;
            }
            _loc5_--;
         }
         this.§[W§(_loc4_);
      }
      
      protected function §[W§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §`!'§).§1"I§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§8o§.§1!d§);
               }
               this.§1!C§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               LevelManager.§'g§(levelNameResults[1].toLowerCase(),§#!s§.§!""§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§8n§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§2§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§'"1§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§,c§(fileName);
            }
            swfCutSceneNameResults = fileName.match(/cutscene.swf$/i);
            if(swfCutSceneNameResults)
            {
               this.§`!7§(fileName,this.§8l§);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§4!A§(fileName);
            }
         }
         if(this.§9`§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §4!A§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§9`§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§=2§.push(_loc2_);
         if(this.§=2§.length == 1)
         {
            this.§?"<§ = new Loader();
            this.§?"<§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§!S§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§?"<§.loadBytes(this.§-"6§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §!S§(param1:Event) : void
      {
         this.§?"<§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§!S§);
         var _loc2_:XML = this.§=2§.shift();
         §6!J§.§5"$§(this.§?"<§,_loc2_.Library[0]);
         if(this.§=2§.length > 0)
         {
            this.§?"<§ = new Loader();
            this.§?"<§.contentLoaderInfo.addEventListener(Event.INIT,this.§!S§);
            this.§?"<§.loadBytes(this.§-"6§(this.§=2§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§;W§();
      }
      
      private function §,c§(param1:String) : void
      {
         var _loc2_:Object = §8!J§.§[!Y§(this.getFileAsString(param1));
         §%!x§.§#$§(_loc2_);
      }
      
      private function §`!7§(param1:String, param2:String) : void
      {
         §%!x§.§&!9§(param2,this.§-"6§(param1));
      }
      
      protected function §'"1§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §!K§.§5"2§(_loc2_);
      }
      
      protected function §2§(param1:String) : void
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
                  if(§-`§[_loc13_] == null)
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
            §6!O§.§&!o§(new §7!q§(_loc2_,_loc4_,param1.bitmapData));
            §;W§();
         };
         ++this.§9`§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§=8§(imagePath,onComplete);
      }
      
      protected function §;W§() : void
      {
         --this.§9`§;
         if(this.§9`§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §8n§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§`"E§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§=8§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §1!C§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §6!O§.§&!o§(new spriteSheetClass(dataObject,param1.bitmapData));
            §;W§();
         };
         ++this.§9`§;
         if(dataObject.image)
         {
            spriteSheetClass = §>K§;
            this.§=8§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §=!e§;
            this.§=8§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §3!!§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§=!u§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§&S§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§&S§() * 255);
            _loc2_ -= int(this.§&S§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§&S§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §&S§() : Number
      {
         this.§=!u§ ^= this.§=!u§ << 21;
         this.§=!u§ ^= this.§=!u§ >>> 35;
         this.§=!u§ ^= this.§=!u§ << 4;
         if(this.§=!u§ < 0)
         {
            this.§=!u§ &= 2147483647;
         }
         return this.§=!u§ / 2147483647;
      }
   }
}
