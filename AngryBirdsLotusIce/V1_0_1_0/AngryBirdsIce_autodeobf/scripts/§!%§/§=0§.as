package §!%§
{
   import §'V§.§>!8§;
   import §'V§.§@!"§;
   import §0!!§.§%!"§;
   import §0!!§.§+!%§;
   import §0!!§.§4C§;
   import §0R§.§ for§;
   import §1n§.§"#§;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §9!3§.§;G§;
   import §9!3§.§=!6§;
   import §<<§.ParticleManager;
   import §`g§.§0K§;
   import §`g§.§=X§;
   import §`g§.§>!7§;
   import §`g§.§[N§;
   import §`g§.set;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class §=0§ extends EventDispatcher implements §@!"§
   {
       
      
      protected var §+R§:int;
      
      protected var §?X§:Object;
      
      protected var §'w§:int = 0;
      
      protected var §!"§:§=X§;
      
      protected var §5S§:Vector.<XML>;
      
      protected var §-?§:Loader;
      
      public function §=0§()
      {
         this.§?X§ = {};
         this.§5S§ = new Vector.<XML>();
         super();
         this.§!"§ = new §=X§();
      }
      
      public function get §->§() : §[N§
      {
         return this.§!"§;
      }
      
      public function get §>!0§() : Boolean
      {
         return this.§'w§ == 0;
      }
      
      public function dispose() : void
      {
         this.§!"§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§?X§[param1] as §;G§).§5r§(false);
      }
      
      public function §@H§(param1:String) : ByteArray
      {
         return (this.§?X§[param1] as §;G§).content;
      }
      
      public function §!<§(param1:String, param2:Function) : void
      {
         return §4C§.§9!G§(this.§@H§(param1),param2);
      }
      
      public function §6=§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§;G§ = null;
         if(param2)
         {
            this.§!w§(param1);
         }
         var _loc3_:§=!6§ = new §=!6§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§#!,§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§1!D§(_loc5_)).§;V§.substr(-1) != "/")
            {
               if(!this.§?X§[_loc6_.§;V§])
               {
               }
               this.§?X§[_loc6_.§;V§] = _loc4_[_loc6_.§;V§] = _loc6_;
            }
            _loc5_--;
         }
         this.§8m§(_loc4_);
      }
      
      protected function §8m§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §;G§).§5r§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§%!"§.§0G§);
               }
               this.§-M§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §0$§.§-,§(levelNameResults[1].toLowerCase(),§8+§.§0Q§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§!B§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§^!8§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§@!<§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§#Z§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§finally§(fileName);
            }
         }
         if(this.§'w§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §finally§(param1:String) : void
      {
         ++this.§'w§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§5S§.push(_loc2_);
         if(this.§5S§.length == 1)
         {
            this.§-?§ = new Loader();
            this.§-?§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0Z§);
            this.§-?§.loadBytes(this.§@H§(_loc2_.Library.@swf));
         }
      }
      
      private function §0Z§(param1:Event) : void
      {
         this.§-?§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0Z§);
         var _loc2_:XML = this.§5S§.shift();
         §>!8§.§3!§(this.§-?§,_loc2_.Library[0]);
         if(this.§5S§.length > 0)
         {
            this.§-?§ = new Loader();
            this.§-?§.contentLoaderInfo.addEventListener(Event.INIT,this.§0Z§);
            this.§-?§.loadBytes(this.§@H§(this.§5S§[0].Library.@swf));
         }
         this.§6u§();
      }
      
      private function §#Z§(param1:String) : void
      {
         var _loc2_:Object = §+!%§.§>7§(this.getFileAsString(param1));
         § for§.§-x§(_loc2_);
      }
      
      protected function §@!<§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §"#§.§`b§(_loc2_);
      }
      
      protected function §^!8§(param1:String) : void
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
                  if(§?X§[_loc13_] == null)
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
            §!"§.§^l§(new §0K§(_loc2_,_loc4_,param1.bitmapData));
            §6u§();
         };
         ++this.§'w§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§!<§(imagePath,onComplete);
      }
      
      protected function §6u§() : void
      {
         --this.§'w§;
         if(this.§'w§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §!B§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§while§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§!<§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §-M§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §!"§.§^l§(new spriteSheetClass(dataObject,param1.bitmapData));
            §6u§();
         };
         ++this.§'w§;
         if(dataObject.image)
         {
            spriteSheetClass = §>!7§;
            this.§!<§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = set;
            this.§!<§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §!w§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§+R§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6J§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§6J§() * 255);
            _loc2_ -= int(this.§6J§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§6J§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §6J§() : Number
      {
         this.§+R§ ^= this.§+R§ << 21;
         this.§+R§ ^= this.§+R§ >>> 35;
         this.§+R§ ^= this.§+R§ << 4;
         if(this.§+R§ < 0)
         {
            this.§+R§ &= 2147483647;
         }
         return this.§+R§ / 2147483647;
      }
   }
}
