package §?!v§
{
   import § !T§.§ q§;
   import § !T§.§7@§;
   import §!!^§.§-^§;
   import §-!b§.§[!3§;
   import §0b§.§=!n§;
   import §0m§.§3S§;
   import §0m§.§5!>§;
   import §0m§.§<p§;
   import §0m§.§=!G§;
   import §0m§.§=",§;
   import §0m§.§`!K§;
   import §2W§.§5=§;
   import §2W§.§;u§;
   import §2W§.§`J§;
   import §5[§.§-"4§;
   import §5_§.§2w§;
   import §5_§.§<o§;
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
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class § "4§ extends EventDispatcher implements §=!n§
   {
      
      protected static const §&z§:Number = 100;
      
      protected static const §1x§:Number = 20;
       
      
      protected var §3""§:int;
      
      protected var §!!!§:Object;
      
      protected var §7G§:String;
      
      protected var §^!h§:int = 0;
      
      protected var §3Z§:§3S§;
      
      protected var §extends§:Vector.<XML>;
      
      protected var §+S§:Loader;
      
      protected var §="4§:§ q§;
      
      protected var §0!z§:Timer;
      
      protected var §]!g§:Object;
      
      protected var §[!7§:Vector.<String>;
      
      public function § "4§(param1:§ q§)
      {
         this.§!!!§ = {};
         this.§extends§ = new Vector.<XML>();
         super();
         this.§="4§ = param1;
         this.§3Z§ = new §3S§("packageManager");
      }
      
      public function get §!!,§() : §`!K§
      {
         return this.§3Z§;
      }
      
      public function get §@O§() : Boolean
      {
         return this.§^!h§ == 0 && (!this.§[!7§ || this.§[!7§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§="4§ = null;
         this.§3Z§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§0!z§)
         {
            this.§0!z§.stop();
            this.§0!z§.removeEventListener(TimerEvent.TIMER,this.§-6§);
            this.§0!z§ = null;
         }
         if(this.§+S§)
         {
            this.§+S§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§9!1§);
            this.§+S§ = null;
         }
         this.§]!g§ = null;
         this.§[!7§ = null;
      }
      
      protected function §<k§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §!!?§(param1:String, param2:String) : §2w§
      {
         return this.§!!!§[this.§<k§(param1,param2)] as §2w§;
      }
      
      protected function § !f§(param1:String, param2:String, param3:§2w§) : void
      {
         this.§!!!§[this.§<k§(param1,param2)] = param3;
      }
      
      protected function §58§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§7G§;
         }
         var _loc3_:§2w§ = this.§!!?§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§<k§(param1,param2) + " not found",§`J§.§>T§);
         }
         return _loc3_.§>k§(false);
      }
      
      protected function native(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§7G§;
         }
         var _loc3_:§2w§ = this.§!!?§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§<k§(param1,param2) + " not found",§`J§.§>T§);
         }
         return _loc3_.content;
      }
      
      protected function §9!j§(param1:String, param2:Function) : void
      {
         return §;u§.§=s§(this.native(param1),param2);
      }
      
      public function §5!s§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§2w§ = null;
         if(!this.§@O§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§0!]§(param1);
         }
         this.§7G§ = param2;
         var _loc4_:§<o§;
         (_loc4_ = new §<o§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§'t§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§]!t§(_loc6_)).§ !P§.substr(-1) != "/")
            {
               if(this.§!!?§(_loc7_.§ !P§,this.§7G§))
               {
                  _loc5_[_loc7_.§ !P§] = this.§!!?§(_loc7_.§ !P§,this.§7G§);
               }
               else
               {
                  _loc5_[_loc7_.§ !P§] = _loc7_;
                  this.§ !f§(_loc7_.§ !P§,this.§7G§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.set(_loc5_);
      }
      
      public function §2x§() : void
      {
         this.clear();
      }
      
      protected function §=V§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§58§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§`J§.§"!&§);
         }
         this.§%"%§(jsonObject);
      }
      
      protected function §"!Q§(param1:String, param2:String) : void
      {
         if(!this.§="4§.getLevelForId(param1))
         {
            this.§="4§.§2U§(param1,§7@§.§6"1§(this.§58§(param2)));
         }
      }
      
      protected function §%#§(param1:String) : void
      {
         this.§="4§.§7!f§(JSON.parse(this.§58§(param1)));
      }
      
      protected function §=!Q§(param1:String) : void
      {
         var _loc8_:String = null;
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§=V§(param1);
         }
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc8_ = _loc2_[1].toLowerCase().substr("level".length);
            this.§"!Q§(_loc8_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.§!C§(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/composites\/data\/(.*)\.xml$/i))
         {
            this.§1!o§(param1);
         }
         if(_loc4_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i))
         {
            this.§1!o§(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/composites\/main\/(.*)\.xml$/i))
         {
            this.§0!;§(param1);
         }
         var _loc6_:Array;
         if(_loc6_ = param1.match(/cutscenes.lua$/i))
         {
            this.§`!C§(param1);
         }
         var _loc7_:Array;
         if(_loc7_ = param1.match(/cutscene.swf$/i))
         {
            this.§-]§(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.§'"5§(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.§%#§(param1);
         }
      }
      
      protected function set(param1:Object) : void
      {
         this.§[d§(param1);
         if(this.§2q§())
         {
            if(!this.§0!z§)
            {
               this.§0!z§ = new Timer(§1x§,0);
               this.§0!z§.addEventListener(TimerEvent.TIMER,this.§-6§);
            }
            else
            {
               this.§0!z§.stop();
            }
            this.§0!z§.start();
         }
      }
      
      private function §[d§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§[!7§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§[!7§.push(_loc2_);
         }
         this.§]!g§ = param1;
      }
      
      private function §2q§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §&z§ / 2)
         {
            if(!this.§4!U§())
            {
               break;
            }
         }
         var _loc2_:* = this.§[!7§.length > 0;
         if(this.§@O§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §4!U§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§[!7§.length > 0)
         {
            _loc1_ = this.§[!7§[0];
            this.§[!7§.splice(0,1);
            this.§=!Q§(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §-6§(param1:Event) : void
      {
         if(!this.§2q§())
         {
            if(this.§0!z§)
            {
               this.§0!z§.stop();
            }
         }
      }
      
      private function §'"5§(param1:String) : void
      {
         ++this.§^!h§;
         var _loc2_:XML = new XML(this.§58§(param1));
         this.§extends§.push(_loc2_);
         if(this.§extends§.length == 1)
         {
            this.§+S§ = new Loader();
            this.§+S§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§9!1§);
            this.§+S§.loadBytes(this.native(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function §9!1§(param1:Event) : void
      {
         this.§+S§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§9!1§);
         var _loc2_:XML = this.§extends§.shift();
         if(this.§extends§.length > 0)
         {
            this.§+S§ = new Loader();
            this.§+S§.contentLoaderInfo.addEventListener(Event.INIT,this.§9!1§);
            this.§+S§.loadBytes(this.native(this.§extends§[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         this.§<A§();
      }
      
      private function §`!C§(param1:String) : void
      {
         var _loc2_:Object = §5=§.§2!-§(this.§58§(param1));
         §-^§.§`!C§(_loc2_);
      }
      
      private function §-]§(param1:String) : void
      {
         §-^§.§!2§(this.§7G§,this.native(param1,this.§7G§));
      }
      
      protected function §0!;§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§58§(param1));
         §[!3§.§4!v§(_loc2_);
      }
      
      protected function §1!o§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§7G§;
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
            var _loc2_:XML = new XML(§58§(filePath,activePackageName));
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
                  if(§!!?§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §58§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §#!W§(new §5!>§(_loc2_,_loc4_,param1.bitmapData));
            §<A§();
         };
         ++this.§^!h§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§9!j§(imagePath,onComplete);
      }
      
      protected function §#!W§(param1:§<p§) : void
      {
         this.§3Z§.§,"-§(param1);
      }
      
      protected function §<A§() : void
      {
         --this.§^!h§;
         if(this.§@O§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §!C§(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §-"4§.§9w§(id,XML(§58§("particle_emitters/" + id + ".pex")),param1.bitmapData);
            §<A§();
         };
         ++this.§^!h§;
         this.§9!j§("particle_emitters/" + id + ".png",onComplete);
      }
      
      protected function §%"%§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §#!W§(new spriteSheetClass(dataObject,param1.bitmapData));
            §<A§();
         };
         ++this.§^!h§;
         if(dataObject.image)
         {
            spriteSheetClass = §=",§;
            this.§9!j§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §=!G§;
            this.§9!j§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §0!]§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§3""§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§?!P§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§?!P§() * 255);
            _loc2_ -= int(this.§?!P§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§?!P§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §?!P§() : Number
      {
         this.§3""§ ^= this.§3""§ << 21;
         this.§3""§ ^= this.§3""§ >>> 35;
         this.§3""§ ^= this.§3""§ << 4;
         if(this.§3""§ < 0)
         {
            this.§3""§ &= 2147483647;
         }
         return this.§3""§ / 2147483647;
      }
   }
}
