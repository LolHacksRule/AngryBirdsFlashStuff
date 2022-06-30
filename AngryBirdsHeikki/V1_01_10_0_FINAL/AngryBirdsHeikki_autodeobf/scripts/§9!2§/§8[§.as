package §9!2§
{
   import § in§.§[!U§;
   import §,-§.§ set§;
   import §,-§.§0!M§;
   import §,-§.§3!f§;
   import §,-§.§<!&§;
   import §,-§.§?"§;
   import §7Z§.§5!>§;
   import §<N§.§'M§;
   import §<N§.§8]§;
   import §=! §.§0!!§;
   import §=! §.§1!O§;
   import §=! §.§?;§;
   import §=!<§.§`[§;
   import §?!G§.§#<§;
   import §?!G§.§?!^§;
   import §^!5§.§&!E§;
   import §^!5§.§,4§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §8[§ extends EventDispatcher implements §8]§
   {
       
      
      protected var §<!F§:int;
      
      protected var §3!-§:Object;
      
      protected var §'e§:int = 0;
      
      protected var §+W§:§0!M§;
      
      protected var §9,§:Vector.<XML>;
      
      protected var §',§:Loader;
      
      public function §8[§()
      {
         this.§3!-§ = {};
         this.§9,§ = new Vector.<XML>();
         super();
         this.§+W§ = new §0!M§();
      }
      
      public function get §1!=§() : §3!f§
      {
         return this.§+W§;
      }
      
      public function get §-!4§() : Boolean
      {
         return this.§'e§ == 0;
      }
      
      public function dispose() : void
      {
         this.§+W§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§3!-§[param1] as §#<§).§!!§(false);
      }
      
      public function §4g§(param1:String) : ByteArray
      {
         return (this.§3!-§[param1] as §#<§).content;
      }
      
      public function §24§(param1:String, param2:Function) : void
      {
         return §1!O§.§#!9§(this.§4g§(param1),param2);
      }
      
      public function §'#§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§#<§ = null;
         if(param2)
         {
            this.§9!^§(param1);
         }
         var _loc3_:§?!^§ = new §?!^§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§;!M§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§ n§(_loc5_)).§<l§.substr(-1) != "/")
            {
               if(!this.§3!-§[_loc6_.§<l§])
               {
               }
               this.§3!-§[_loc6_.§<l§] = _loc4_[_loc6_.§<l§] = _loc6_;
            }
            _loc5_--;
         }
         this.§;!T§(_loc4_);
      }
      
      protected function §;!T§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §#<§).§!!§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§?;§.§8!J§);
               }
               this.§@!0§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §,4§.§]!+§(levelNameResults[1].toLowerCase(),§&!E§.§8!_§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§[>§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§7!e§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§+e§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§-c§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§8!E§(fileName);
            }
         }
         if(this.§'e§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §8!E§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§'e§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§9,§.push(_loc2_);
         if(this.§9,§.length == 1)
         {
            this.§',§ = new Loader();
            this.§',§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§38§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§',§.loadBytes(this.§4g§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §38§(param1:Event) : void
      {
         this.§',§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§38§);
         var _loc2_:XML = this.§9,§.shift();
         §'M§.§"!5§(this.§',§,_loc2_.Library[0]);
         if(this.§9,§.length > 0)
         {
            this.§',§ = new Loader();
            this.§',§.contentLoaderInfo.addEventListener(Event.INIT,this.§38§);
            this.§',§.loadBytes(this.§4g§(this.§9,§[0].Library.@swf));
         }
         this.§>Q§();
      }
      
      private function §-c§(param1:String) : void
      {
         var _loc2_:Object = §0!!§.§4$§(this.getFileAsString(param1));
         §5!>§.§;!2§(_loc2_);
      }
      
      protected function §+e§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §`[§.§ e§(_loc2_);
      }
      
      protected function §7!e§(param1:String) : void
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
                  if(§3!-§[_loc13_] == null)
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
            §+W§.§3u§(new § set§(_loc2_,_loc4_,param1.bitmapData));
            §>Q§();
         };
         ++this.§'e§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§24§(imagePath,onComplete);
      }
      
      protected function §>Q§() : void
      {
         --this.§'e§;
         if(this.§'e§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §[>§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §[!U§.§5Q§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§24§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §@!0§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §+W§.§3u§(new spriteSheetClass(dataObject,param1.bitmapData));
            §>Q§();
         };
         ++this.§'e§;
         if(dataObject.image)
         {
            spriteSheetClass = §<!&§;
            this.§24§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §?"§;
            this.§24§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §9!^§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§<!F§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§9W§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§9W§() * 255);
            _loc2_ -= int(this.§9W§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§9W§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §9W§() : Number
      {
         this.§<!F§ ^= this.§<!F§ << 21;
         this.§<!F§ ^= this.§<!F§ >>> 35;
         this.§<!F§ ^= this.§<!F§ << 4;
         if(this.§<!F§ < 0)
         {
            this.§<!F§ &= 2147483647;
         }
         return this.§<!F§ / 2147483647;
      }
   }
}
