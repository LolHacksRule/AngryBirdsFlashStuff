package §%!P§
{
   import § !"§.§^p§;
   import §#"5§.§'!S§;
   import §#"5§.§`c§;
   import §0i§.§""F§;
   import §1z§.§2#§;
   import §1z§.§^!@§;
   import §4u§.§"!+§;
   import §4u§.§1"0§;
   import §4u§.§]!c§;
   import §9!v§.§8M§;
   import §;!^§.§!0§;
   import §;!^§.§"7§;
   import §;!^§.§8!"§;
   import §;!^§.§;!f§;
   import §;!^§.§@!§;
   import §;!^§.§[G§;
   import §`!`§.§-"B§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §;"H§ extends EventDispatcher implements §^p§
   {
      
      protected static const §#c§:Number = 100;
      
      protected static const §^>§:Number = 20;
       
      
      protected var §?!i§:int;
      
      protected var §6d§:Object;
      
      protected var §2b§:String;
      
      protected var §^!?§:int = 0;
      
      protected var §`!K§:§!0§;
      
      protected var §<!z§:Vector.<XML>;
      
      protected var §,!6§:Loader;
      
      protected var §#"=§:§^!@§;
      
      protected var §;!2§:Timer;
      
      protected var §^%§:Object;
      
      protected var §%!U§:Vector.<String>;
      
      public function §;"H§(param1:§^!@§)
      {
         this.§6d§ = {};
         this.§<!z§ = new Vector.<XML>();
         super();
         this.§#"=§ = param1;
         this.§`!K§ = new §!0§("packageManager");
      }
      
      public function get §6@§() : §"7§
      {
         return this.§`!K§;
      }
      
      public function get §+J§() : Boolean
      {
         return this.§^!?§ == 0 && (!this.§%!U§ || this.§%!U§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§#"=§ = null;
         this.§`!K§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§;!2§)
         {
            this.§;!2§.stop();
            this.§;!2§.removeEventListener(TimerEvent.TIMER,this.§;",§);
            this.§;!2§ = null;
         }
         if(this.§,!6§)
         {
            this.§,!6§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?!j§);
            this.§,!6§ = null;
         }
         this.§^%§ = null;
         this.§%!U§ = null;
      }
      
      protected function §9"§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §<z§(param1:String, param2:String) : §'!S§
      {
         return this.§6d§[this.§9"§(param1,param2)] as §'!S§;
      }
      
      protected function §1!b§(param1:String, param2:String, param3:§'!S§) : void
      {
         this.§6d§[this.§9"§(param1,param2)] = param3;
      }
      
      protected function §9!=§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§2b§;
         }
         var _loc3_:§'!S§ = this.§<z§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§9"§(param1,param2) + " not found",§]!c§.§!"7§);
         }
         return _loc3_.§]!L§(false);
      }
      
      protected function §=o§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§2b§;
         }
         var _loc3_:§'!S§ = this.§<z§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§9"§(param1,param2) + " not found",§]!c§.§!"7§);
         }
         return _loc3_.content;
      }
      
      protected function §-!#§(param1:String, param2:Function) : void
      {
         return §1"0§.§@!!§(this.§=o§(param1),param2);
      }
      
      public function §'l§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§'!S§ = null;
         if(!this.§+J§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§5!u§(param1);
         }
         this.§2b§ = param2;
         var _loc4_:§`c§;
         (_loc4_ = new §`c§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§5"=§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§-7§(_loc6_)).§&"§.substr(-1) != "/")
            {
               if(this.§<z§(_loc7_.§&"§,this.§2b§))
               {
                  _loc5_[_loc7_.§&"§] = this.§<z§(_loc7_.§&"§,this.§2b§);
               }
               else
               {
                  _loc5_[_loc7_.§&"§] = _loc7_;
                  this.§1!b§(_loc7_.§&"§,this.§2b§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§"!d§(_loc5_);
      }
      
      public function §%M§() : void
      {
         this.clear();
      }
      
      protected function §;"3§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§9!=§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§]!c§.§;!a§);
         }
         this.§#!,§(jsonObject);
      }
      
      protected function §5"2§(param1:String, param2:String) : void
      {
         if(!this.§#"=§.getLevelForId(param1))
         {
            this.§#"=§.addLevel(param1,§2#§.§+3§(this.§9!=§(param2)));
         }
      }
      
      protected function §="G§(param1:String) : void
      {
         this.§#"=§.§0%§(JSON.parse(this.§9!=§(param1)));
      }
      
      protected function initializeFile(param1:String) : void
      {
         var _loc8_:String = null;
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§;"3§(param1);
         }
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc8_ = _loc2_[1].toLowerCase();
            this.§5"2§(_loc8_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§]l§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/composites\/data\/(.*)\.xml$/i))
         {
            this.§'M§(param1);
         }
         if(_loc4_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i))
         {
            this.§'M§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/composites\/main\/(.*)\.xml$/i))
         {
            this.§>a§(param1);
         }
         var _loc6_:Array;
         if(_loc6_ = param1.match(/cutscenes.lua$/i))
         {
            this.§'!Z§(param1);
         }
         var _loc7_:Array;
         if(_loc7_ = param1.match(/cutscene.swf$/i))
         {
            this.§8"9§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§'!^§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§="G§(param1);
         }
      }
      
      protected function §"!d§(param1:Object) : void
      {
         this.§7k§(param1);
         if(this.§^!N§())
         {
            if(!this.§;!2§)
            {
               this.§;!2§ = new Timer(§^>§,0);
               this.§;!2§.addEventListener(TimerEvent.TIMER,this.§;",§);
            }
            else
            {
               this.§;!2§.stop();
            }
            this.§;!2§.start();
         }
      }
      
      private function §7k§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§%!U§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§%!U§.push(_loc2_);
         }
         this.§^%§ = param1;
      }
      
      private function §^!N§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §#c§ / 2)
         {
            if(!this.§""#§())
            {
               break;
            }
         }
         var _loc2_:* = this.§%!U§.length > 0;
         if(this.§+J§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §""#§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§%!U§.length > 0)
         {
            _loc1_ = this.§%!U§[0];
            this.§%!U§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §;",§(param1:Event) : void
      {
         if(!this.§^!N§())
         {
            if(this.§;!2§)
            {
               this.§;!2§.stop();
            }
         }
      }
      
      private function §'!^§(param1:String) : void
      {
         ++this.§^!?§;
         var _loc2_:XML = new XML(this.§9!=§(param1));
         this.§<!z§.push(_loc2_);
         if(this.§<!z§.length == 1)
         {
            this.§,!6§ = new Loader();
            this.§,!6§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§?!j§);
            this.§,!6§.loadBytes(this.§=o§(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §?!j§(param1:Event) : void
      {
         this.§,!6§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§?!j§);
         var _loc2_:XML = this.§<!z§.shift();
         if(this.§<!z§.length > 0)
         {
            this.§,!6§ = new Loader();
            this.§,!6§.contentLoaderInfo.addEventListener(Event.INIT,this.§?!j§);
            this.§,!6§.loadBytes(this.§=o§(this.§<!z§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§!A§();
      }
      
      private function §'!Z§(param1:String) : void
      {
         var _loc2_:Object = §"!+§.§%$§(this.§9!=§(param1));
         §-"B§.§'!Z§(_loc2_);
      }
      
      private function §8"9§(param1:String) : void
      {
         §-"B§.§6!_§(this.§2b§,this.§=o§(param1,this.§2b§));
      }
      
      protected function §>a§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§9!=§(param1));
         §8M§.§,!K§(_loc2_);
      }
      
      protected function §'M§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§2b§;
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
            var _loc2_:XML = new XML(§9!=§(filePath,activePackageName));
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
                  if(§<z§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §9!=§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new §@!§(_loc2_,_loc4_,param1.bitmapData));
            §!A§();
         };
         ++this.§^!?§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§-!#§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§;!f§) : void
      {
         this.§`!K§.§0d§(param1);
      }
      
      protected function §!A§() : void
      {
         --this.§^!?§;
         if(this.§+J§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §]l§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §""F§.§3!>§(id,XML(§9!=§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §!A§();
         };
         ++this.§^!?§;
         this.§-!#§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §#!,§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §!A§();
         };
         ++this.§^!?§;
         if(dataObject.image)
         {
            spriteSheetClass = §8!"§;
            this.§-!#§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §[G§;
            this.§-!#§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §5!u§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§?!i§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§`!e§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§`!e§() * 255);
            _loc2_ -= int(this.§`!e§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§`!e§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §`!e§() : Number
      {
         this.§?!i§ ^= this.§?!i§ << 21;
         this.§?!i§ ^= this.§?!i§ >>> 35;
         this.§?!i§ ^= this.§?!i§ << 4;
         if(this.§?!i§ < 0)
         {
            this.§?!i§ &= 2147483647;
         }
         return this.§?!i§ / 2147483647;
      }
   }
}
