package §21§
{
   import §4!4§.§'2§;
   import §4!4§.§+§;
   import §6!S§.§<!^§;
   import §7!0§.§1!H§;
   import §7!0§.§5!3§;
   import §7!0§.§`!W§;
   import §7!0§.§`[§;
   import §7!0§.§`g§;
   import §8!P§.§]4§;
   import §8K§.§@j§;
   import §=q§.§<!,§;
   import §=q§.§?X§;
   import §?!$§.§"X§;
   import §?!$§.§#!=§;
   import §^3§.§!!0§;
   import §^3§.§%Z§;
   import §^3§.§9!G§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §5z§ extends EventDispatcher implements §+§
   {
       
      
      protected var §<^§:int;
      
      protected var §#!S§:Object;
      
      protected var §#i§:int = 0;
      
      protected var §0!7§:§5!3§;
      
      protected var §9!O§:Vector.<XML>;
      
      protected var §[3§:Loader;
      
      public function §5z§()
      {
         this.§#!S§ = {};
         this.§9!O§ = new Vector.<XML>();
         super();
         this.§0!7§ = new §5!3§();
      }
      
      public function get §9&§() : §`g§
      {
         return this.§0!7§;
      }
      
      public function get §1@§() : Boolean
      {
         return this.§#i§ == 0;
      }
      
      public function dispose() : void
      {
         this.§0!7§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§#!S§[param1] as §#!=§).§5!?§(false);
      }
      
      public function §7y§(param1:String) : ByteArray
      {
         return (this.§#!S§[param1] as §#!=§).content;
      }
      
      public function §,%§(param1:String, param2:Function) : void
      {
         return §%Z§.§^s§(this.§7y§(param1),param2);
      }
      
      public function §>_§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§#!=§ = null;
         if(param2)
         {
            this.§!w§(param1);
         }
         var _loc3_:§"X§ = new §"X§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§^H§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§@!_§(_loc5_)).§!!M§.substr(-1) != "/")
            {
               if(!this.§#!S§[_loc6_.§!!M§])
               {
               }
               this.§#!S§[_loc6_.§!!M§] = _loc4_[_loc6_.§!!M§] = _loc6_;
            }
            _loc5_--;
         }
         this.§`!P§(_loc4_);
      }
      
      protected function §`!P§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §#!=§).§5!?§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§9!G§.§#J§);
               }
               this.§7o§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §<!,§.§>!1§(levelNameResults[1].toLowerCase(),§?X§.§68§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§9n§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§5H§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§!`§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§]Q§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§2u§(fileName);
            }
         }
         if(this.§#i§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §2u§(param1:String) : void
      {
         var _loc3_:LoaderContext = null;
         ++this.§#i§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§9!O§.push(_loc2_);
         if(this.§9!O§.length == 1)
         {
            this.§[3§ = new Loader();
            this.§[3§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§0t§);
            _loc3_ = new LoaderContext();
            _loc3_.allowCodeImport = true;
            this.§[3§.loadBytes(this.§7y§(_loc2_.Library.@swf),_loc3_);
         }
      }
      
      private function §0t§(param1:Event) : void
      {
         this.§[3§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§0t§);
         var _loc2_:XML = this.§9!O§.shift();
         §'2§.§!d§(this.§[3§,_loc2_.Library[0]);
         if(this.§9!O§.length > 0)
         {
            this.§[3§ = new Loader();
            this.§[3§.contentLoaderInfo.addEventListener(Event.INIT,this.§0t§);
            this.§[3§.loadBytes(this.§7y§(this.§9!O§[0].Library.@swf));
         }
         this.§ c§();
      }
      
      private function §]Q§(param1:String) : void
      {
         var _loc2_:Object = §!!0§.§#D§(this.getFileAsString(param1));
         §]4§.§?!+§(_loc2_);
      }
      
      protected function §!`§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §@j§.§default§(_loc2_);
      }
      
      protected function §5H§(param1:String) : void
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
                  if(§#!S§[_loc13_] == null)
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
            §0!7§.§<!L§(new §`[§(_loc2_,_loc4_,param1.bitmapData));
            § c§();
         };
         ++this.§#i§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§,%§(imagePath,onComplete);
      }
      
      protected function § c§() : void
      {
         --this.§#i§;
         if(this.§#i§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §9n§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §<!^§.§=E§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§,%§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §7o§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §0!7§.§<!L§(new spriteSheetClass(dataObject,param1.bitmapData));
            § c§();
         };
         ++this.§#i§;
         if(dataObject.image)
         {
            spriteSheetClass = §`!W§;
            this.§,%§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §1!H§;
            this.§,%§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §!w§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§<^§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§,?§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§,?§() * 255);
            _loc2_ -= int(this.§,?§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§,?§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §,?§() : Number
      {
         this.§<^§ ^= this.§<^§ << 21;
         this.§<^§ ^= this.§<^§ >>> 35;
         this.§<^§ ^= this.§<^§ << 4;
         if(this.§<^§ < 0)
         {
            this.§<^§ &= 2147483647;
         }
         return this.§<^§ / 2147483647;
      }
   }
}
