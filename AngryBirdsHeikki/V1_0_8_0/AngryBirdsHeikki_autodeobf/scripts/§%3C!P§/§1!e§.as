package §<!P§
{
   import § !W§.§ Q§;
   import § !W§.§!#§;
   import §"`§.§&d§;
   import §%!c§.§3h§;
   import §%!c§.§7!R§;
   import §0!&§.§!'§;
   import §0!&§.§@=§;
   import §9!?§.§,<§;
   import §9!?§.§=!O§;
   import §9!?§.§@!Q§;
   import §>[§.§ v§;
   import §]!C§.§@!0§;
   import §`!L§.§+I§;
   import §`!L§.§1L§;
   import §`!L§.§2^§;
   import §`!L§.§3N§;
   import §`!L§.§]!L§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §1!e§ extends EventDispatcher implements §7!R§
   {
       
      
      protected var §8!^§:int;
      
      protected var §^!S§:Object;
      
      protected var §3t§:int = 0;
      
      protected var §4!Z§:§2^§;
      
      protected var §2S§:Vector.<XML>;
      
      protected var §]D§:Loader;
      
      public function §1!e§()
      {
         this.§^!S§ = {};
         this.§2S§ = new Vector.<XML>();
         super();
         this.§4!Z§ = new §2^§();
      }
      
      public function get §#^§() : §]!L§
      {
         return this.§4!Z§;
      }
      
      public function get §[c§() : Boolean
      {
         return this.§3t§ == 0;
      }
      
      public function dispose() : void
      {
         this.§4!Z§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§^!S§[param1] as §!#§).§9o§(false);
      }
      
      public function §"?§(param1:String) : ByteArray
      {
         return (this.§^!S§[param1] as §!#§).content;
      }
      
      public function §#!9§(param1:String, param2:Function) : void
      {
         return §,<§.§+!]§(this.§"?§(param1),param2);
      }
      
      public function §2!=§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§!#§ = null;
         if(param2)
         {
            this.§]g§(param1);
         }
         var _loc3_:§ Q§ = new § Q§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§^U§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§8`§(_loc5_)).§+!<§.substr(-1) != "/")
            {
               if(!this.§^!S§[_loc6_.§+!<§])
               {
               }
               this.§^!S§[_loc6_.§+!<§] = _loc4_[_loc6_.§+!<§] = _loc6_;
            }
            _loc5_--;
         }
         this.§?9§(_loc4_);
      }
      
      protected function §?9§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §!#§).§9o§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§=!O§.§+'§);
               }
               this.§=!!§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §@=§.§0!`§(levelNameResults[1].toLowerCase(),§!'§.§4!?§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§53§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§^!5§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§5!E§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§#5§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§3V§(fileName);
            }
         }
         if(this.§3t§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §3V§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§3t§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§2S§.push(_loc2_);
         if(this.§2S§.length == 1)
         {
            this.§]D§ = new Loader();
            this.§]D§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§5?§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§]D§.loadBytes(this.§"?§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §5?§(param1:Event) : void
      {
         this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§5?§);
         var _loc2_:XML = this.§2S§.shift();
         §3h§.§4!K§(this.§]D§,_loc2_.Library[0]);
         if(this.§2S§.length > 0)
         {
            this.§]D§ = new Loader();
            this.§]D§.contentLoaderInfo.addEventListener(Event.INIT,this.§5?§);
            this.§]D§.loadBytes(this.§"?§(this.§2S§[0].Library.@swf));
         }
         this.§ a§();
      }
      
      private function §#5§(param1:String) : void
      {
         var _loc2_:Object = §@!Q§.§8L§(this.getFileAsString(param1));
         § v§.§4?§(_loc2_);
      }
      
      protected function §5!E§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §@!0§.§+m§(_loc2_);
      }
      
      protected function §^!5§(param1:String) : void
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
                  if(§^!S§[_loc13_] == null)
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
            §4!Z§.§^0§(new §3N§(_loc2_,_loc4_,param1.bitmapData));
            § a§();
         };
         ++this.§3t§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§#!9§(imagePath,onComplete);
      }
      
      protected function § a§() : void
      {
         --this.§3t§;
         if(this.§3t§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §53§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §&d§.§""§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§#!9§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §=!!§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §4!Z§.§^0§(new spriteSheetClass(dataObject,param1.bitmapData));
            § a§();
         };
         ++this.§3t§;
         if(dataObject.image)
         {
            spriteSheetClass = §+I§;
            this.§#!9§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §1L§;
            this.§#!9§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §]g§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§8!^§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§52§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§52§() * 255);
            _loc2_ -= int(this.§52§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§52§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §52§() : Number
      {
         this.§8!^§ ^= this.§8!^§ << 21;
         this.§8!^§ ^= this.§8!^§ >>> 35;
         this.§8!^§ ^= this.§8!^§ << 4;
         if(this.§8!^§ < 0)
         {
            this.§8!^§ &= 2147483647;
         }
         return this.§8!^§ / 2147483647;
      }
   }
}
