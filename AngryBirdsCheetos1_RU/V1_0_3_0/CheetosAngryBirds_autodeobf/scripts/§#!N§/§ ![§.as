package §#!N§
{
   import §%e§.§5>§;
   import §%e§.§@5§;
   import §&-§.§=B§;
   import §+R§.§"-§;
   import §+R§.§9]§;
   import §+R§.§9x§;
   import §+R§.§@!C§;
   import §+R§.§[!_§;
   import §+d§.§"S§;
   import §+d§.§#l§;
   import §+d§.§?k§;
   import §1V§.§9f§;
   import §=0§.§6j§;
   import §>T§.§=7§;
   import §>T§.§`z§;
   import §^9§.§3A§;
   import §^9§.§[!L§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class § ![§ extends EventDispatcher implements §=7§
   {
       
      
      protected var §@z§:int;
      
      protected var §;U§:Object;
      
      protected var §2$§:int = 0;
      
      protected var §#=§:§"-§;
      
      protected var §%!C§:Vector.<XML>;
      
      protected var §do §:Loader;
      
      public function § ![§()
      {
         this.§;U§ = {};
         this.§%!C§ = new Vector.<XML>();
         super();
         this.§#=§ = new §"-§();
      }
      
      public function get § C§() : §9x§
      {
         return this.§#=§;
      }
      
      public function get §=!V§() : Boolean
      {
         return this.§2$§ == 0;
      }
      
      public function dispose() : void
      {
         this.§#=§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§;U§[param1] as §5>§).§8!O§(false);
      }
      
      public function §2#§(param1:String) : ByteArray
      {
         return (this.§;U§[param1] as §5>§).content;
      }
      
      public function §<!F§(param1:String, param2:Function) : void
      {
         return §#l§.§@,§(this.§2#§(param1),param2);
      }
      
      public function §?P§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§5>§ = null;
         if(param2)
         {
            this.§+B§(param1);
         }
         var _loc3_:§@5§ = new §@5§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§2u§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§-E§(_loc5_)).§@!?§.substr(-1) != "/")
            {
               if(!this.§;U§[_loc6_.§@!?§])
               {
               }
               this.§;U§[_loc6_.§@!?§] = _loc4_[_loc6_.§@!?§] = _loc6_;
            }
            _loc5_--;
         }
         this.§5!N§(_loc4_);
      }
      
      protected function §5!N§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §5>§).§8!O§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§?k§.§#! §);
               }
               this.§&K§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §[!L§.§5?§(levelNameResults[1].toLowerCase(),§3A§.§0Y§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§<N§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§case §(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§[O§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§;@§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§<!2§(fileName);
            }
         }
         if(this.§2$§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §<!2§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§2$§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§%!C§.push(_loc2_);
         if(this.§%!C§.length == 1)
         {
            this.§do § = new Loader();
            this.§do §.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§;D§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§do §.loadBytes(this.§2#§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §;D§(param1:Event) : void
      {
         this.§do §.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§;D§);
         var _loc2_:XML = this.§%!C§.shift();
         §`z§.§,=§(this.§do §,_loc2_.Library[0]);
         if(this.§%!C§.length > 0)
         {
            this.§do § = new Loader();
            this.§do §.contentLoaderInfo.addEventListener(Event.INIT,this.§;D§);
            this.§do §.loadBytes(this.§2#§(this.§%!C§[0].Library.@swf));
         }
         this.§%! §();
      }
      
      private function §;@§(param1:String) : void
      {
         var _loc2_:Object = §"S§.§>@§(this.getFileAsString(param1));
         §=B§.§7M§(_loc2_);
      }
      
      protected function §[O§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §6j§.§5g§(_loc2_);
      }
      
      protected function §case §(param1:String) : void
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
                  if(§;U§[_loc13_] == null)
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
            §#=§.§6O§(new §9]§(_loc2_,_loc4_,param1.bitmapData));
            §%! §();
         };
         ++this.§2$§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§<!F§(imagePath,onComplete);
      }
      
      protected function §%! §() : void
      {
         --this.§2$§;
         if(this.§2$§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §<N§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §9f§.§^?§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§<!F§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §&K§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §#=§.§6O§(new spriteSheetClass(dataObject,param1.bitmapData));
            §%! §();
         };
         ++this.§2$§;
         if(dataObject.image)
         {
            spriteSheetClass = §[!_§;
            this.§<!F§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §@!C§;
            this.§<!F§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §+B§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§@z§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§8k§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§8k§() * 255);
            _loc2_ -= int(this.§8k§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§8k§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §8k§() : Number
      {
         this.§@z§ ^= this.§@z§ << 21;
         this.§@z§ ^= this.§@z§ >>> 35;
         this.§@z§ ^= this.§@z§ << 4;
         if(this.§@z§ < 0)
         {
            this.§@z§ &= 2147483647;
         }
         return this.§@z§ / 2147483647;
      }
   }
}
