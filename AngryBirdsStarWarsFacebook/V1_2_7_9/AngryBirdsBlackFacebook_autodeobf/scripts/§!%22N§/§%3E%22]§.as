package §!"N§
{
   import §3"$§.§&§;
   import §5b§.§8"g§;
   import §5b§.§^!h§;
   import §7§.§%"z§;
   import §7§.§21§;
   import §7§.§3!,§;
   import §7§.§8V§;
   import §7§.§["&§;
   import §7§.§]!W§;
   import §7A§.§ <§;
   import §7A§.§<"M§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §>"]§ extends EventDispatcher implements §6#!§
   {
      
      protected static const §7=§:Number = 100;
      
      protected static const §&"[§:Number = 20;
       
      
      protected var §2!2§:int;
      
      protected var §4"_§:Object;
      
      protected var §[J§:String;
      
      protected var §"!Q§:int = 0;
      
      protected var §3y§:§]!W§;
      
      protected var §use§:Timer;
      
      protected var §"#4§:Object;
      
      protected var §+!H§:Vector.<String>;
      
      public function §>"]§()
      {
         this.§4"_§ = {};
         super();
         this.§3y§ = new §]!W§("packageManager");
      }
      
      public function get §7"k§() : §8V§
      {
         return this.§3y§;
      }
      
      public function get §6w§() : Boolean
      {
         return this.§"!Q§ == 0 && (!this.§+!H§ || this.§+!H§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§3y§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§use§)
         {
            this.§use§.stop();
            this.§use§.removeEventListener(TimerEvent.TIMER,this.§^"_§);
            this.§use§ = null;
         }
         this.§"#4§ = null;
         this.§+!H§ = null;
      }
      
      protected function §;#+§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function § !G§(param1:String, param2:String) : §8"g§
      {
         return this.§4"_§[this.§;#+§(param1,param2)] as §8"g§;
      }
      
      protected function §8U§(param1:String, param2:String, param3:§8"g§) : void
      {
         this.§4"_§[this.§;#+§(param1,param2)] = param3;
      }
      
      protected function §@I§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§[J§;
         }
         var _loc3_:§8"g§ = this.§ !G§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§;#+§(param1,param2) + " not found",§<"M§.§3!s§);
         }
         return _loc3_.§+!G§(false);
      }
      
      protected function §+t§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§[J§;
         }
         var _loc3_:§8"g§ = this.§ !G§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§;#+§(param1,param2) + " not found",§<"M§.§3!s§);
         }
         return _loc3_.content;
      }
      
      protected function §7! §(param1:String, param2:Function) : void
      {
         return § <§.§6!g§(this.§+t§(param1),param2);
      }
      
      public function §#"a§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§8"g§ = null;
         if(!this.§6w§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§-h§(param1);
         }
         this.§[J§ = param2;
         var _loc4_:§^!h§;
         (_loc4_ = new §^!h§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§^"E§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§8"<§(_loc6_)).§+V§.substr(-1) != "/")
            {
               if(this.§ !G§(_loc7_.§+V§,this.§[J§))
               {
                  _loc5_[_loc7_.§+V§] = this.§ !G§(_loc7_.§+V§,this.§[J§);
               }
               else
               {
                  _loc5_[_loc7_.§+V§] = _loc7_;
                  this.§8U§(_loc7_.§+V§,this.§[J§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§ !#§(_loc5_);
      }
      
      public function §3%§() : void
      {
         this.clear();
      }
      
      protected function §,I§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§@I§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§<"M§.§"c§);
         }
         this.§8^§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§,I§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§7"t§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§7"t§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§,"O§(param1);
         }
      }
      
      protected function § !#§(param1:Object) : void
      {
         this.§>!a§(param1);
         if(this.§?#2§())
         {
            if(!this.§use§)
            {
               this.§use§ = new Timer(§&"[§,0);
               this.§use§.addEventListener(TimerEvent.TIMER,this.§^"_§);
            }
            else
            {
               this.§use§.stop();
            }
            this.§use§.start();
         }
      }
      
      private function §>!a§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§+!H§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§+!H§.push(_loc2_);
         }
         this.§"#4§ = param1;
      }
      
      private function §?#2§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §7=§ / 2)
         {
            if(!this.§?"R§())
            {
               break;
            }
         }
         var _loc2_:* = this.§+!H§.length > 0;
         if(this.§6w§)
         {
            this.§4#4§();
         }
         return _loc2_;
      }
      
      private function §4#4§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §?"R§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§+!H§.length > 0)
         {
            _loc1_ = this.§+!H§[0];
            this.§+!H§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §^"_§(param1:Event) : void
      {
         if(!this.§?#2§())
         {
            if(this.§use§)
            {
               this.§use§.stop();
            }
         }
      }
      
      protected function §,"O§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§@I§(param1));
         §&#7§.§"J§(_loc2_);
      }
      
      protected function §7"t§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§[J§;
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
            var _loc2_:XML = new XML(§@I§(filePath,activePackageName));
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
                  if(§ !G§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §@I§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new §3!,§(_loc2_,_loc4_,param1.bitmapData));
            §?7§();
         };
         ++this.§"!Q§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§7! §(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§21§) : void
      {
         this.§3y§.§5"Y§(param1);
      }
      
      protected function §?7§() : void
      {
         --this.§"!Q§;
         if(this.§6w§)
         {
            this.§4#4§();
         }
      }
      
      protected function §8^§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §?7§();
         };
         ++this.§"!Q§;
         if(dataObject.image)
         {
            spriteSheetClass = §["&§;
            this.§7! §("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §%"z§;
            this.§7! §("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §-h§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§2!2§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§^# §() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§^# §() * 255);
            _loc2_ -= int(this.§^# §() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§^# §() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §^# §() : Number
      {
         this.§2!2§ ^= this.§2!2§ << 21;
         this.§2!2§ ^= this.§2!2§ >>> 35;
         this.§2!2§ ^= this.§2!2§ << 4;
         if(this.§2!2§ < 0)
         {
            this.§2!2§ &= 2147483647;
         }
         return this.§2!2§ / 2147483647;
      }
   }
}
