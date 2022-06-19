package §_-dd§
{
   import §_-3z§.§_-BP§;
   import §_-3z§.§_-E1§;
   import §_-DN§.§_-2X§;
   import §_-DN§.§_-8j§;
   import §_-DN§.§_-9H§;
   import §_-DN§.§_-WM§;
   import §_-DN§.§_-b3§;
   import §_-MP§.§_-BI§;
   import §_-MP§.§_-N5§;
   import §_-Me§.§_-2r§;
   import §_-Me§.§_-Dd§;
   import §_-Me§.§_-QO§;
   import §_-Rd§.§_-Az§;
   import §_-Vr§.§_-Gj§;
   import §_-Vr§.§_-HN§;
   import §_-my§.§_-W5§;
   import §_-qU§.§_-0U§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class §_-k2§ extends EventDispatcher implements §_-Gj§
   {
       
      
      protected var §_-5B§:int;
      
      protected var §_-JC§:Object;
      
      protected var §_-0-U§:int = 0;
      
      protected var §_-bc§:§_-8j§;
      
      protected var §_-xF§:Vector.<XML>;
      
      protected var §_-AT§:Loader;
      
      public function §_-k2§()
      {
         this.§_-JC§ = {};
         this.§_-xF§ = new Vector.<XML>();
         super();
         this.§_-bc§ = new §_-8j§();
      }
      
      public function get §_-nx§() : §_-2X§
      {
         return this.§_-bc§;
      }
      
      public function get §_-fH§() : Boolean
      {
         return this.§_-0-U§ == 0;
      }
      
      public function dispose() : void
      {
         this.§_-bc§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§_-JC§[param1] as §_-E1§).§_-b5§(false);
      }
      
      public function §_-0-y§(param1:String) : ByteArray
      {
         return (this.§_-JC§[param1] as §_-E1§).content;
      }
      
      public function §_-ew§(param1:String, param2:Function) : void
      {
         return §_-2r§.§_-ha§(this.§_-0-y§(param1),param2);
      }
      
      public function §_-kT§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§_-E1§ = null;
         if(param2)
         {
            this.§_-vV§(param1);
         }
         var _loc3_:§_-BP§ = new §_-BP§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§_-Rl§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§var§(_loc5_)).§_-fQ§.substr(-1) != "/")
            {
               if(!this.§_-JC§[_loc6_.§_-fQ§])
               {
               }
               this.§_-JC§[_loc6_.§_-fQ§] = _loc4_[_loc6_.§_-fQ§] = _loc6_;
            }
            _loc5_--;
         }
         this.§_-mh§(_loc4_);
      }
      
      protected function §_-mh§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §_-E1§).§_-b5§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§_-Dd§.§_-5b§);
               }
               this.§_-8n§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §_-N5§.§_-1F§(levelNameResults[1].toLowerCase(),§_-BI§.§_-10§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§_-Ac§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§_-qM§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§_-29§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§_-4I§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§_-sS§(fileName);
            }
         }
         if(this.§_-0-U§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §_-sS§(param1:String) : void
      {
         ++this.§_-0-U§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§_-xF§.push(_loc2_);
         if(this.§_-xF§.length == 1)
         {
            this.§_-AT§ = new Loader();
            this.§_-AT§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-m6§);
            this.§_-AT§.loadBytes(this.§_-0-y§(_loc2_.Library.@swf));
         }
      }
      
      private function §_-m6§(param1:Event) : void
      {
         this.§_-AT§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-m6§);
         var _loc2_:XML = this.§_-xF§.shift();
         §_-HN§.§_-Hh§(this.§_-AT§,_loc2_.Library[0]);
         if(this.§_-xF§.length > 0)
         {
            this.§_-AT§ = new Loader();
            this.§_-AT§.contentLoaderInfo.addEventListener(Event.INIT,this.§_-m6§);
            this.§_-AT§.loadBytes(this.§_-0-y§(this.§_-xF§[0].Library.@swf));
         }
         this.§_-DF§();
      }
      
      private function §_-4I§(param1:String) : void
      {
         var _loc2_:Object = §_-QO§.§_-2m§(this.getFileAsString(param1));
         §_-0U§.§_-LN§(_loc2_);
      }
      
      protected function §_-29§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §_-W5§.§_-TM§(_loc2_);
      }
      
      protected function §_-qM§(param1:String) : void
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
                  if(§_-JC§[_loc13_] == null)
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
            §_-bc§.§_-97§(new §_-WM§(_loc2_,_loc4_,param1.bitmapData));
            §_-DF§();
         };
         ++this.§_-0-U§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§_-ew§(imagePath,onComplete);
      }
      
      protected function §_-DF§() : void
      {
         --this.§_-0-U§;
         if(this.§_-0-U§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §_-Ac§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-Az§.§_-oY§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§_-ew§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §_-8n§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §_-bc§.§_-97§(new spriteSheetClass(dataObject,param1.bitmapData));
            §_-DF§();
         };
         ++this.§_-0-U§;
         if(dataObject.image)
         {
            spriteSheetClass = §_-9H§;
            this.§_-ew§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §_-b3§;
            this.§_-ew§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §_-vV§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§_-5B§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-gT§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§_-gT§() * 255);
            _loc2_ -= int(this.§_-gT§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§_-gT§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §_-gT§() : Number
      {
         this.§_-5B§ ^= this.§_-5B§ << 21;
         this.§_-5B§ ^= this.§_-5B§ >>> 35;
         this.§_-5B§ ^= this.§_-5B§ << 4;
         if(this.§_-5B§ < 0)
         {
            this.§_-5B§ &= 2147483647;
         }
         return this.§_-5B§ / 2147483647;
      }
   }
}
