package §%R§
{
   import §1!i§.§8"x§;
   import §1!i§.§^a§;
   import §2d§.§ "5§;
   import §2d§.§+!g§;
   import §2d§.§1"[§;
   import §2d§.§3!R§;
   import §2d§.§3"_§;
   import §2d§.§;H§;
   import §7!F§.§^"U§;
   import §;"j§.§4"W§;
   import §;"j§.§[h§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §@"F§ extends EventDispatcher implements §[!a§
   {
      
      protected static const §'#X§:Number = 100;
      
      protected static const §6#G§:Number = 20;
       
      
      protected var §+"u§:int;
      
      protected var §-#!§:Object;
      
      protected var §5"O§:String;
      
      protected var §7!u§:XML;
      
      protected var §5c§:int = 0;
      
      protected var §5W§:§+!g§;
      
      protected var §1J§:Timer;
      
      protected var §-"Y§:Object;
      
      protected var §!!;§:Vector.<String>;
      
      public function §@"F§()
      {
         this.§-#!§ = {};
         super();
         this.§5W§ = new §+!g§("packageManager");
      }
      
      public function get §!"$§() : §3!R§
      {
         return this.§5W§;
      }
      
      public function get §^!p§() : Boolean
      {
         return this.§5c§ == 0 && (!this.§!!;§ || this.§!!;§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§5W§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§1J§)
         {
            this.§1J§.stop();
            this.§1J§.removeEventListener(TimerEvent.TIMER,this.§-K§);
            this.§1J§ = null;
         }
         this.§-"Y§ = null;
         this.§!!;§ = null;
      }
      
      protected function §+"1§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §`#;§(param1:String, param2:String) : §4"W§
      {
         return this.§-#!§[this.§+"1§(param1,param2)] as §4"W§;
      }
      
      protected function §+!<§(param1:String, param2:String, param3:§4"W§) : void
      {
         this.§-#!§[this.§+"1§(param1,param2)] = param3;
      }
      
      protected function §^k§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§5"O§;
         }
         var _loc3_:§4"W§ = this.§`#;§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§+"1§(param1,param2) + " not found",§8"x§.§"!D§);
         }
         return _loc3_.§7#E§(false);
      }
      
      protected function §2h§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§5"O§;
         }
         var _loc3_:§4"W§ = this.§`#;§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§+"1§(param1,param2) + " not found",§8"x§.§"!D§);
         }
         return _loc3_.content;
      }
      
      protected function §<F§(param1:String, param2:Function) : void
      {
         return §^a§.§]#E§(this.§2h§(param1),param2);
      }
      
      public function §[#!§(param1:ByteArray, param2:String, param3:Boolean = true, param4:XML = null) : void
      {
         var _loc8_:§4"W§ = null;
         if(!this.§^!p§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§3!u§(param1);
         }
         this.§5"O§ = param2;
         this.§7!u§ = param4;
         var _loc5_:§[h§;
         (_loc5_ = new §[h§()).loadBytes(param1);
         var _loc6_:Object = {};
         var _loc7_:int = _loc5_.§[B§() - 1;
         while(_loc7_ >= 0)
         {
            if((_loc8_ = _loc5_.§[!<§(_loc7_)).§1"n§.substr(-1) != "/")
            {
               if(this.§`#;§(_loc8_.§1"n§,this.§5"O§))
               {
                  _loc6_[_loc8_.§1"n§] = this.§`#;§(_loc8_.§1"n§,this.§5"O§);
               }
               else
               {
                  _loc6_[_loc8_.§1"n§] = _loc8_;
                  this.§+!<§(_loc8_.§1"n§,this.§5"O§,_loc8_);
               }
            }
            _loc7_--;
         }
         this.§#!T§(_loc6_);
      }
      
      public function §6q§() : void
      {
         this.clear();
      }
      
      protected function §2!;§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§^k§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§8"x§.§`4§);
         }
         this.§;"0§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§2!;§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§2"c§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§2"c§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§^"z§(param1);
         }
      }
      
      protected function §#!T§(param1:Object) : void
      {
         this.§<"U§(param1);
         if(this.§9"]§())
         {
            if(!this.§1J§)
            {
               this.§1J§ = new Timer(§6#G§,0);
               this.§1J§.addEventListener(TimerEvent.TIMER,this.§-K§);
            }
            else
            {
               this.§1J§.stop();
            }
            this.§1J§.start();
         }
      }
      
      private function §<"U§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§!!;§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§!!;§.push(_loc2_);
         }
         this.§-"Y§ = param1;
      }
      
      private function §9"]§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §'#X§ / 2)
         {
            if(!this.§;!w§())
            {
               break;
            }
         }
         var _loc2_:* = this.§!!;§.length > 0;
         if(this.§^!p§)
         {
            this.§@!j§();
         }
         return _loc2_;
      }
      
      private function §@!j§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §;!w§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§!!;§.length > 0)
         {
            _loc1_ = this.§!!;§[0];
            this.§!!;§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §-K§(param1:Event) : void
      {
         if(!this.§9"]§())
         {
            if(this.§1J§)
            {
               this.§1J§.stop();
            }
         }
      }
      
      protected function §^"z§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§^k§(param1));
         §^"U§.§8B§(_loc2_);
      }
      
      protected function §2"c§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§5"O§;
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
            var _loc2_:XML = new XML(§^k§(filePath,activePackageName));
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
                  if(§`#;§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §^k§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            addSpriteSheet(new §1"[§(_loc2_,_loc4_,param1.bitmapData));
            §5"V§();
         };
         ++this.§5c§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§<F§(imagePath,onComplete);
      }
      
      protected function addSpriteSheet(param1:§;H§) : void
      {
         this.§5W§.§-5§(param1);
      }
      
      protected function §5"V§() : void
      {
         --this.§5c§;
         if(this.§^!p§)
         {
            this.§@!j§();
         }
      }
      
      protected function §;"0§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            addSpriteSheet(new spriteSheetClass(dataObject,param1.bitmapData));
            §5"V§();
         };
         ++this.§5c§;
         if(dataObject.image)
         {
            spriteSheetClass = §3"_§;
            this.§<F§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = § "5§;
            this.§<F§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §3!u§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§+"u§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§@"7§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§@"7§() * 255);
            _loc2_ -= int(this.§@"7§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§@"7§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §@"7§() : Number
      {
         this.§+"u§ ^= this.§+"u§ << 21;
         this.§+"u§ ^= this.§+"u§ >>> 35;
         this.§+"u§ ^= this.§+"u§ << 4;
         if(this.§+"u§ < 0)
         {
            this.§+"u§ &= 2147483647;
         }
         return this.§+"u§ / 2147483647;
      }
   }
}
