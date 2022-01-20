package §#a§
{
   import §"!B§.§&,§;
   import §"!B§.§;o§;
   import §#!1§.§<n§;
   import §#!1§.§>!"§;
   import §#!1§.§>D§;
   import §,4§.§0B§;
   import §,4§.§;_§;
   import §2!5§.§"O§;
   import §5!&§.§=!,§;
   import §5!&§.§`!1§;
   import §8%§.§[!7§;
   import §8]§.§,!_§;
   import §8]§.§,,§;
   import §8]§.§1w§;
   import §8]§.§5!0§;
   import §8]§.§^Q§;
   import §9`§.§^p§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class § get§ extends EventDispatcher implements §`!1§
   {
       
      
      protected var §8E§:int;
      
      protected var §@§:Object;
      
      protected var §1!R§:int = 0;
      
      protected var §?!l§:§,!_§;
      
      protected var §1!c§:Vector.<XML>;
      
      protected var §6$§:Loader;
      
      public function § get§()
      {
         this.§@§ = {};
         this.§1!c§ = new Vector.<XML>();
         super();
         this.§?!l§ = new §,!_§();
      }
      
      public function get §1!M§() : §^Q§
      {
         return this.§?!l§;
      }
      
      public function get §#f§() : Boolean
      {
         return this.§1!R§ == 0;
      }
      
      public function dispose() : void
      {
         this.§?!l§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§@§[param1] as §;o§).§-!Y§(false);
      }
      
      public function §%!e§(param1:String) : ByteArray
      {
         return (this.§@§[param1] as §;o§).content;
      }
      
      public function §`!W§(param1:String, param2:Function) : void
      {
         return §>!"§.§?!h§(this.§%!e§(param1),param2);
      }
      
      public function §#!0§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§;o§ = null;
         if(param2)
         {
            this.§4!^§(param1);
         }
         var _loc3_:§&,§ = new §&,§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§6!W§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§=;§(_loc5_)).§#!G§.substr(-1) != "/")
            {
               if(!this.§@§[_loc6_.§#!G§])
               {
               }
               this.§@§[_loc6_.§#!G§] = _loc4_[_loc6_.§#!G§] = _loc6_;
            }
            _loc5_--;
         }
         this.§&K§(_loc4_);
      }
      
      protected function §&K§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §;o§).§-!Y§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§>D§.§ 8§);
               }
               this.§ P§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §;_§.§9?§(levelNameResults[1].toLowerCase(),§0B§.§1N§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§3V§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§@@§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§"A§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§"3§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§=_§(fileName);
            }
         }
         if(this.§1!R§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §=_§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§1!R§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§1!c§.push(_loc2_);
         if(this.§1!c§.length == 1)
         {
            this.§6$§ = new Loader();
            this.§6$§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§"T§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§6$§.loadBytes(this.§%!e§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §"T§(param1:Event) : void
      {
         this.§6$§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§"T§);
         var _loc2_:XML = this.§1!c§.shift();
         §=!,§.§]!H§(this.§6$§,_loc2_.Library[0]);
         if(this.§1!c§.length > 0)
         {
            this.§6$§ = new Loader();
            this.§6$§.contentLoaderInfo.addEventListener(Event.INIT,this.§"T§);
            this.§6$§.loadBytes(this.§%!e§(this.§1!c§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§[$§();
      }
      
      private function §"3§(param1:String) : void
      {
         var _loc2_:Object = §<n§.§&C§(this.getFileAsString(param1));
         §[!7§.§87§(_loc2_);
      }
      
      protected function §"A§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §^p§.§&W§(_loc2_);
      }
      
      protected function §@@§(param1:String) : void
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
                  if(§@§[_loc13_] == null)
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
            §?!l§.§2!W§(new §1w§(_loc2_,_loc4_,param1.bitmapData));
            §[$§();
         };
         ++this.§1!R§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§`!W§(imagePath,onComplete);
      }
      
      protected function §[$§() : void
      {
         --this.§1!R§;
         if(this.§1!R§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §3V§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §"O§.§^2§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§`!W§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function § P§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §?!l§.§2!W§(new spriteSheetClass(dataObject,param1.bitmapData));
            §[$§();
         };
         ++this.§1!R§;
         if(dataObject.image)
         {
            spriteSheetClass = §,,§;
            this.§`!W§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §5!0§;
            this.§`!W§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §4!^§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§8E§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>S§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§>S§() * 255);
            _loc2_ -= int(this.§>S§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§>S§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §>S§() : Number
      {
         this.§8E§ ^= this.§8E§ << 21;
         this.§8E§ ^= this.§8E§ >>> 35;
         this.§8E§ ^= this.§8E§ << 4;
         if(this.§8E§ < 0)
         {
            this.§8E§ &= 2147483647;
         }
         return this.§8E§ / 2147483647;
      }
   }
}
