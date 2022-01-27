package §]p§
{
   import §#e§.§%Y§;
   import §'7§.§-!K§;
   import §+O§.§=F§;
   import §+O§.§?^§;
   import §0!E§.§+D§;
   import §0!E§.§5!K§;
   import §0!E§.§8E§;
   import §2!<§.§;!M§;
   import §2!<§.§`U§;
   import §4?§.ParticleManager;
   import §=I§.§#o§;
   import §=I§.§2i§;
   import §=I§.§70§;
   import §=I§.§^!!§;
   import §=I§.§^!@§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §%§ extends EventDispatcher implements §`U§
   {
       
      
      protected var §>O§:int;
      
      protected var §;!,§:Object;
      
      protected var §8!=§:int = 0;
      
      protected var §>!7§:§#o§;
      
      protected var §&-§:Vector.<XML>;
      
      protected var §3P§:Loader;
      
      public function §%§()
      {
         this.§;!,§ = {};
         this.§&-§ = new Vector.<XML>();
         super();
         this.§>!7§ = new §#o§();
      }
      
      public function get §;k§() : §2i§
      {
         return this.§>!7§;
      }
      
      public function get §9L§() : Boolean
      {
         return this.§8!=§ == 0;
      }
      
      public function dispose() : void
      {
         this.§>!7§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§;!,§[param1] as §=F§).§2o§(false);
      }
      
      public function § P§(param1:String) : ByteArray
      {
         return (this.§;!,§[param1] as §=F§).content;
      }
      
      public function §0i§(param1:String, param2:Function) : void
      {
         return §8E§.§"f§(this.§ P§(param1),param2);
      }
      
      public function §!$§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§=F§ = null;
         if(param2)
         {
            this.§14§(param1);
         }
         var _loc3_:§?^§ = new §?^§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§65§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§,!;§(_loc5_)).§26§.substr(-1) != "/")
            {
               if(!this.§;!,§[_loc6_.§26§])
               {
               }
               this.§;!,§[_loc6_.§26§] = _loc4_[_loc6_.§26§] = _loc6_;
            }
            _loc5_--;
         }
         this.§;P§(_loc4_);
      }
      
      protected function §;P§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §=F§).§2o§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§5!K§.§^y§);
               }
               this.§3!A§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §`!K§.§<R§(levelNameResults[1].toLowerCase(),§[z§.§@!2§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§&!5§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§continue§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§'%§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§7y§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§!!A§(fileName);
            }
         }
         if(this.§8!=§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §!!A§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§8!=§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§&-§.push(_loc2_);
         if(this.§&-§.length == 1)
         {
            this.§3P§ = new Loader();
            this.§3P§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§-!4§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§3P§.loadBytes(this.§ P§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §-!4§(param1:Event) : void
      {
         this.§3P§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-!4§);
         var _loc2_:XML = this.§&-§.shift();
         §;!M§.§6S§(this.§3P§,_loc2_.Library[0]);
         if(this.§&-§.length > 0)
         {
            this.§3P§ = new Loader();
            this.§3P§.contentLoaderInfo.addEventListener(Event.INIT,this.§-!4§);
            this.§3P§.loadBytes(this.§ P§(this.§&-§[0].Library.@swf));
         }
         this.§%[§();
      }
      
      private function §7y§(param1:String) : void
      {
         var _loc2_:Object = §+D§.§8!§(this.getFileAsString(param1));
         §-!K§.§&!E§(_loc2_);
      }
      
      protected function §'%§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §%Y§.§3!M§(_loc2_);
      }
      
      protected function §continue§(param1:String) : void
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
                  if(§;!,§[_loc13_] == null)
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
            §>!7§.§>!>§(new §70§(_loc2_,_loc4_,param1.bitmapData));
            §%[§();
         };
         ++this.§8!=§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§0i§(imagePath,onComplete);
      }
      
      protected function §%[§() : void
      {
         --this.§8!=§;
         if(this.§8!=§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §&!5§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§<&§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§0i§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §3!A§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §>!7§.§>!>§(new spriteSheetClass(dataObject,param1.bitmapData));
            §%[§();
         };
         ++this.§8!=§;
         if(dataObject.image)
         {
            spriteSheetClass = §^!!§;
            this.§0i§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §^!@§;
            this.§0i§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §14§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§>O§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§2v§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§2v§() * 255);
            _loc2_ -= int(this.§2v§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§2v§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §2v§() : Number
      {
         this.§>O§ ^= this.§>O§ << 21;
         this.§>O§ ^= this.§>O§ >>> 35;
         this.§>O§ ^= this.§>O§ << 4;
         if(this.§>O§ < 0)
         {
            this.§>O§ &= 2147483647;
         }
         return this.§>O§ / 2147483647;
      }
   }
}
