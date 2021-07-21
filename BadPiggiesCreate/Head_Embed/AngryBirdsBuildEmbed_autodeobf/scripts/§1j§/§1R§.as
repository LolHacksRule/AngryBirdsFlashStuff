package §1j§
{
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §5! §.§#!E§;
   import §5! §.§27§;
   import §7U§.§,!=§;
   import §7U§.§>Y§;
   import §7U§.§?!R§;
   import §7U§.§]!e§;
   import §7U§.§]'§;
   import §7v§.§%!M§;
   import §7v§.§2M§;
   import §8!Q§.§#R§;
   import §8!Q§.§<!R§;
   import §8!Q§.§?>§;
   import §9!$§.§,i§;
   import §;o§.ParticleManager;
   import §=U§.§<6§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   
   public class §1R§ extends EventDispatcher implements §2M§
   {
       
      
      protected var §#0§:int;
      
      protected var §&!T§:Object;
      
      protected var §&g§:int = 0;
      
      protected var §#!o§:§>Y§;
      
      protected var §+!"§:Vector.<XML>;
      
      protected var §&3§:Loader;
      
      public function §1R§()
      {
         this.§&!T§ = {};
         this.§+!"§ = new Vector.<XML>();
         super();
         this.§#!o§ = new §>Y§();
      }
      
      public function get §#!a§() : §?!R§
      {
         return this.§#!o§;
      }
      
      public function get §>!J§() : Boolean
      {
         return this.§&g§ == 0;
      }
      
      public function dispose() : void
      {
         this.§#!o§.dispose();
      }
      
      public function getFileAsString(param1:String) : String
      {
         return (this.§&!T§[param1] as §#!E§).§'!K§(false);
      }
      
      public function §]!!§(param1:String) : ByteArray
      {
         return (this.§&!T§[param1] as §#!E§).content;
      }
      
      public function §'!N§(param1:String, param2:Function) : void
      {
         return §<!R§.§ J§(this.§]!!§(param1),param2);
      }
      
      public function §83§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc6_:§#!E§ = null;
         if(param2)
         {
            this.§@!,§(param1);
         }
         var _loc3_:§27§ = new §27§();
         _loc3_.loadBytes(param1);
         var _loc4_:Object = {};
         var _loc5_:int = _loc3_.§-!p§() - 1;
         while(_loc5_ >= 0)
         {
            if((_loc6_ = _loc3_.§0!i§(_loc5_)).§%n§.substr(-1) != "/")
            {
               if(!this.§&!T§[_loc6_.§%n§])
               {
               }
               this.§&!T§[_loc6_.§%n§] = _loc4_[_loc6_.§%n§] = _loc6_;
            }
            _loc5_--;
         }
         this.§?!s§(_loc4_);
      }
      
      protected function §?!s§(param1:Object) : void
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
                  jsonObject = JSON.parse((packageFiles[fileName] as §#!E§).§'!K§(false));
               }
               catch(e:Error)
               {
                  throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§?>§.§!!T§);
               }
               this.§#!X§(jsonObject);
            }
            levelNameResults = fileName.match(/^levels\/Level(.*)\.json$/i);
            if(levelNameResults)
            {
               §1^§.§`'§(levelNameResults[1].toLowerCase(),§2! §.§@t§(this.getFileAsString(fileName)));
            }
            particleNameResults = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
            if(particleNameResults)
            {
               this.§3!n§(particleNameResults[1]);
            }
            compositeSpriteSheetNameResults = fileName.match(/composites\/data\/(.*)\.xml$/i);
            if(compositeSpriteSheetNameResults)
            {
               this.§5!j§(fileName);
            }
            compositeNameResults = fileName.match(/composites\/main\/(.*)\.xml$/i);
            if(compositeNameResults)
            {
               this.§-!_§(fileName);
            }
            cutSceneNameResults = fileName.match(/cutscenes.lua$/i);
            if(cutSceneNameResults)
            {
               this.§0§(fileName);
            }
            if(fileName.toLowerCase() == "assetmap.xml")
            {
               this.§,1§(fileName);
            }
         }
         if(this.§&g§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function §,1§(param1:String) : void
      {
         ++this.§&g§;
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         this.§+!"§.push(_loc2_);
         if(this.§+!"§.length == 1)
         {
            this.§&3§ = new Loader();
            this.§&3§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§+!e§);
            this.§&3§.loadBytes(this.§]!!§(_loc2_.Library.@swf));
         }
      }
      
      private function §+!e§(param1:Event) : void
      {
         this.§&3§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§+!e§);
         var _loc2_:XML = this.§+!"§.shift();
         §%!M§.§8N§(this.§&3§,_loc2_.Library[0]);
         if(this.§+!"§.length > 0)
         {
            this.§&3§ = new Loader();
            this.§&3§.contentLoaderInfo.addEventListener(Event.INIT,this.§+!e§);
            this.§&3§.loadBytes(this.§]!!§(this.§+!"§[0].Library.@swf));
         }
         this.§@G§();
      }
      
      private function §0§(param1:String) : void
      {
         var _loc2_:Object = §#R§.§2J§(this.getFileAsString(param1));
         §,i§.§6!m§(_loc2_);
      }
      
      protected function §-!_§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.getFileAsString(param1));
         §<6§.§1![§(_loc2_);
      }
      
      protected function §5!j§(param1:String) : void
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
                  if(§&!T§[_loc13_] == null)
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
            §#!o§.§ !n§(new §,!=§(_loc2_,_loc4_,param1.bitmapData));
            §@G§();
         };
         ++this.§&g§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§'!N§(imagePath,onComplete);
      }
      
      protected function §@G§() : void
      {
         --this.§&g§;
         if(this.§&g§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §3!n§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.§^!t§(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
         };
         this.§'!N§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §#!X§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §#!o§.§ !n§(new spriteSheetClass(dataObject,param1.bitmapData));
            §@G§();
         };
         ++this.§&g§;
         if(dataObject.image)
         {
            spriteSheetClass = §]'§;
            this.§'!N§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §]!e§;
            this.§'!N§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §@!,§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§#0§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§,e§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§,e§() * 255);
            _loc2_ -= int(this.§,e§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§,e§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §,e§() : Number
      {
         this.§#0§ ^= this.§#0§ << 21;
         this.§#0§ ^= this.§#0§ >>> 35;
         this.§#0§ ^= this.§#0§ << 4;
         if(this.§#0§ < 0)
         {
            this.§#0§ &= 2147483647;
         }
         return this.§#0§ / 2147483647;
      }
   }
}
