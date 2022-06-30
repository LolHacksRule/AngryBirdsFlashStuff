package §2=§
{
   import §,z§.§0R§;
   import §3!§.§`!Z§;
   import §3!N§.§9!X§;
   import §3!N§.§?6§;
   import §3r§.§2!<§;
   import §3r§.§6P§;
   import §3r§.§7!O§;
   import §8! §.§#z§;
   import §8! §.§1_§;
   import §>0§.§%6§;
   import §>0§.§0o§;
   import §>0§.§4!J§;
   import §>0§.§;!H§;
   import §>0§.§;-§;
   import §>X§.§ !C§;
   import §@?§.§,<§;
   import §@?§.§;d§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §>q§ extends EventDispatcher implements §?6§
   {
       
      
      protected var §<!"§:int;
      
      protected var §@!P§:Object;
      
      protected var §&6§:int = 0;
      
      protected var §!E§:§;!H§;
      
      protected var §>$§:Vector.<XML>;
      
      protected var §;!T§:Loader;
      
      public function §>q§()
      {
         this.§@!P§ = {};
         this.§>$§ = new Vector.<XML>();
         super();
         this.§!E§ = new §;!H§();
      }
      
      public function get §9!G§() : §;-§
      {
         return this.§!E§;
      }
      
      public function get §#!Z§() : Boolean
      {
         return this.§&6§ == 0;
      }
      
      public function dispose() : void
      {
         this.§!E§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§@!P§[param1] as §,<§).§&v§(false);
      }
      
      public function §"&§(param1:String) : ByteArray
      {
         return (this.§@!P§[param1] as §,<§).content;
      }
      
      public function §'!U§(param1:String, param2:Function) : void
      {
         return §7!O§.§[;§(this.§"&§(param1),param2);
      }
      
      public function §+!E§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§,<§ = null;
         if(param2)
         {
            this.§4§(param1);
         }
         var _loc3_:§;d§ = new §;d§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§,h§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§#S§(_loc5_)).§<H§.substr(-1) != "/")
            {
               if(!this.§@!P§[_loc6_.§<H§])
               {
               }
               this.§@!P§[_loc6_.§<H§] = _loc4_[_loc6_.§<H§] = _loc6_;
            }
            _loc5_--;
         }
         this.§%!F§(_loc4_);
      }
      
      protected function §%!F§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §,<§).§&v§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§2!<§.§]!#§);
               }
               this.§4!3§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §#z§.§,S§(levelNameResults[1].toLowerCase(),§1_§.§39§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§@R§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§=!-§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§56§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§@!J§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§?"§(fileName);
            }
         }
         if(this.§&6§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §?"§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§&6§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§>$§.push(_loc2_);
         if(this.§>$§.length == 1)
         {
            this.§;!T§ = new Loader();
            this.§;!T§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§<f§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§;!T§.loadBytes(this.§"&§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §<f§(param1:Event) : void
      {
         this.§;!T§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§<f§);
         var _loc2_:XML = this.§>$§.shift();
         §9!X§.§'T§(this.§;!T§,_loc2_.Library[0]);
         if(this.§>$§.length > 0)
         {
            this.§;!T§ = new Loader();
            this.§;!T§.contentLoaderInfo.addEventListener(Event.INIT,this.§<f§);
            this.§;!T§.loadBytes(this.§"&§(this.§>$§[0].Library.@swf));
         }
         this.§0!=§();
      }
      
      private function §@!J§(param1:String) : void
      {
         var _loc2_:Object = §6P§.§50§(this.getFileAsString(param1));
         § !C§.§4_§(_loc2_);
      }
      
      protected function §56§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §`!Z§.§1!&§(_loc2_);
      }
      
      protected function §=!-§(param1:String) : void
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
                  if(§@!P§[_loc13_] == null)
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
            §!E§.§6!M§(new §4!J§(_loc2_,_loc4_,param1.bitmapData));
            §0!=§();
         };
         ++this.§&6§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§'!U§(imagePath,onComplete);
      }
      
      protected function §0!=§() : void
      {
         --this.§&6§;
         if(this.§&6§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §@R§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §0R§.§6v§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§'!U§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §4!3§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §!E§.§6!M§(new spriteSheetClass(dataObject,param1.bitmapData));
            §0!=§();
         };
         ++this.§&6§;
         if(dataObject.image)
         {
            spriteSheetClass = §%6§;
            this.§'!U§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §0o§;
            this.§'!U§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §4§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§<!"§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§18§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§18§() * 255);
            _loc2_ -= int(this.§18§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§18§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §18§() : Number
      {
         this.§<!"§ ^= this.§<!"§ << 21;
         this.§<!"§ ^= this.§<!"§ >>> 35;
         this.§<!"§ ^= this.§<!"§ << 4;
         if(this.§<!"§ < 0)
         {
            this.§<!"§ &= 2147483647;
         }
         return this.§<!"§ / 2147483647;
      }
   }
}
