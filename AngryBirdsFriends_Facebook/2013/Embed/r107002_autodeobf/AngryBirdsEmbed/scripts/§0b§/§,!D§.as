package §0b§
{
   import §+!'§.ParticleManager;
   import §,!M§.§2v§;
   import §-!3§.§!S§;
   import §-!3§.§2!&§;
   import §3V§.§,!§;
   import §3V§.§,2§;
   import §3V§.§2M§;
   import §6Z§.§"!;§;
   import §6Z§.§'?§;
   import §<1§.§ 8§;
   import §<1§.§8!A§;
   import §<1§.§=!H§;
   import §<1§.§[o§;
   import §<1§.§^e§;
   import §[H§.§9N§;
   import §[H§.§>m§;
   import §[v§.§<D§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §,!D§ extends EventDispatcher implements §2!&§
   {
       
      
      protected var §8m§:int;
      
      protected var §1!<§:Object;
      
      protected var §#P§:int = 0;
      
      protected var §>N§:§ 8§;
      
      protected var §]l§:Vector.<XML>;
      
      protected var §false§:Loader;
      
      private var §'Q§:String;
      
      public function §,!D§()
      {
         this.§1!<§ = {};
         this.§]l§ = new Vector.<XML>();
         super();
         this.§>N§ = new § 8§();
      }
      
      public function §0M§(param1:String) : void
      {
         this.§'Q§ = param1;
      }
      
      public function get §4V§() : §=!H§
      {
         return this.§>N§;
      }
      
      public function get §9a§() : Boolean
      {
         return this.§#P§ == 0;
      }
      
      public function dispose() : void
      {
         this.§>N§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§1!<§[param1] as §>m§).§2!@§(false);
      }
      
      public function §#!5§(param1:String) : ByteArray
      {
         return (this.§1!<§[param1] as §>m§).content;
      }
      
      public function §^#§(param1:String, param2:Function) : void
      {
         return §,!§.§3A§(this.§#!5§(param1),param2);
      }
      
      public function §-!'§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§>m§ = null;
         if(param2)
         {
            this.§5q§(param1);
         }
         var _loc3_:§9N§ = new §9N§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§'d§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§%=§(_loc5_)).§4^§.substr(-1) != "/")
            {
               if(!this.§1!<§[_loc6_.§4^§])
               {
               }
               this.§1!<§[_loc6_.§4^§] = _loc4_[_loc6_.§4^§] = _loc6_;
            }
            _loc5_--;
         }
         this.§6!2§(_loc4_);
      }
      
      protected function §6!2§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §>m§).§2!@§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§2M§.§'1§);
               }
               this.§8H§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §'?§.§'!%§(levelNameResults[1].toLowerCase(),§"!;§.§!X§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§]!;§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§@$§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§=!$§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§=!9§(fileName);
            }
            swfCutSceneNameResults = fileName.match(/cutscene.swf$/i);
            if(swfCutSceneNameResults)
            {
               this.§%e§(fileName,this.§'Q§);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§ true§(fileName);
            }
         }
         if(this.§#P§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function § true§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§#P§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§]l§.push(_loc2_);
         if(this.§]l§.length == 1)
         {
            this.§false§ = new Loader();
            this.§false§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5C§);
            _loc3_ = new LoaderContext(false,ApplicationDomain.currentDomain);
            _loc3_.allowCodeImport = true;
            this.§false§.loadBytes(this.§#!5§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §5C§(param1:Event) : void
      {
         this.§false§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5C§);
         var _loc2_:XML = this.§]l§.shift();
         §!S§.§2'§(this.§false§,_loc2_.Library[0]);
         if(this.§]l§.length > 0)
         {
            this.§false§ = new Loader();
            this.§false§.contentLoaderInfo.addEventListener(Event.INIT,this.§5C§);
            this.§false§.loadBytes(this.§#!5§(this.§]l§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§7!I§();
      }
      
      private function §=!9§(param1:String) : void
      {
         var _loc2_:Object = §,2§.§"§(this.getFileAsString(param1));
         §2v§.§%!5§(_loc2_);
      }
      
      private function §%e§(param1:String, param2:String) : void
      {
         §2v§.§!2§(param2,this.§#!5§(param1));
      }
      
      protected function §=!$§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §<D§.§#v§(_loc2_);
      }
      
      protected function §@$§(param1:String) : void
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
                  if(§1!<§[_loc13_] == null)
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
            §>N§.§ L§(new §[o§(_loc2_,_loc4_,param1.bitmapData));
            §7!I§();
         };
         ++this.§#P§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§^#§(imagePath,onComplete);
      }
      
      protected function §7!I§() : void
      {
         --this.§#P§;
         if(this.§#P§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §]!;§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§`7§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§^#§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §8H§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §>N§.§ L§(new spriteSheetClass(dataObject,param1.bitmapData));
            §7!I§();
         };
         ++this.§#P§;
         if(dataObject.image)
         {
            spriteSheetClass = §8!A§;
            this.§^#§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §^e§;
            this.§^#§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §5q§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§8m§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§%&§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§%&§() * 255);
            _loc2_ -= int(this.§%&§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§%&§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §%&§() : Number
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
