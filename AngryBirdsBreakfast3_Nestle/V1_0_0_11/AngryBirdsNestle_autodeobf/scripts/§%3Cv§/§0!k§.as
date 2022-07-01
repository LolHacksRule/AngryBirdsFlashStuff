package §<v§
{
   import §&h§.§@"%§;
   import §&h§.§]t§;
   import §0!_§.§%;§;
   import §3-§.§ !Z§;
   import §3-§.§#s§;
   import §3-§.§3!!§;
   import §3-§.§6f§;
   import §3-§.§;"2§;
   import §3-§.§^y§;
   import §`!s§.§!!o§;
   import §`!s§.§[S§;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §0!k§ extends EventDispatcher implements §<x§
   {
      
      protected static const §`I§:Number = 100;
      
      protected static const §'!l§:Number = 20;
       
      
      protected var §%!T§:int;
      
      protected var §]!"§:Object;
      
      protected var §8d§:String;
      
      protected var §"!a§:int = 0;
      
      protected var §!8§:§6f§;
      
      protected var §6"6§:Timer;
      
      protected var §,!n§:Object;
      
      protected var §2X§:Vector.<String>;
      
      public function §0!k§()
      {
         this.§]!"§ = {};
         super();
         this.§!8§ = new §6f§("packageManager");
      }
      
      public function get §'8§() : §#s§
      {
         return this.§!8§;
      }
      
      public function get §;f§() : Boolean
      {
         return this.§"!a§ == 0 && (!this.§2X§ || this.§2X§.length == 0);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.§!8§.dispose();
      }
      
      protected function clear() : void
      {
         if(this.§6"6§)
         {
            this.§6"6§.stop();
            this.§6"6§.removeEventListener(TimerEvent.TIMER,this.§3`§);
            this.§6"6§ = null;
         }
         this.§,!n§ = null;
         this.§2X§ = null;
      }
      
      protected function §="0§(param1:String, param2:String) : String
      {
         return param2 + "/" + param1;
      }
      
      protected function §#!3§(param1:String, param2:String) : §@"%§
      {
         return this.§]!"§[this.§="0§(param1,param2)] as §@"%§;
      }
      
      protected function §8!2§(param1:String, param2:String, param3:§@"%§) : void
      {
         this.§]!"§[this.§="0§(param1,param2)] = param3;
      }
      
      protected function §2!S§(param1:String, param2:String = null) : String
      {
         if(param2 == null)
         {
            param2 = this.§8d§;
         }
         var _loc3_:§@"%§ = this.§#!3§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§="0§(param1,param2) + " not found",§!!o§.§^!;§);
         }
         return _loc3_.§#"4§(false);
      }
      
      protected function §`!@§(param1:String, param2:String = null) : ByteArray
      {
         if(param2 == null)
         {
            param2 = this.§8d§;
         }
         var _loc3_:§@"%§ = this.§#!3§(param1,param2);
         if(!_loc3_)
         {
            throw new Error("File " + this.§="0§(param1,param2) + " not found",§!!o§.§^!;§);
         }
         return _loc3_.content;
      }
      
      protected function §5"1§(param1:String, param2:Function) : void
      {
         return §[S§.§2!U§(this.§`!@§(param1),param2);
      }
      
      public function §`!X§(param1:ByteArray, param2:String, param3:Boolean = true) : void
      {
         var _loc7_:§@"%§ = null;
         if(!this.§;f§)
         {
            throw new Error("Can\'t load another package - need to wait for previous one to complete !!!");
         }
         if(param3)
         {
            this.§>!6§(param1);
         }
         this.§8d§ = param2;
         var _loc4_:§]t§;
         (_loc4_ = new §]t§()).loadBytes(param1);
         var _loc5_:Object = {};
         var _loc6_:int = _loc4_.§9o§() - 1;
         while(_loc6_ >= 0)
         {
            if((_loc7_ = _loc4_.§ !H§(_loc6_)).§'r§.substr(-1) != "/")
            {
               if(this.§#!3§(_loc7_.§'r§,this.§8d§))
               {
                  _loc5_[_loc7_.§'r§] = this.§#!3§(_loc7_.§'r§,this.§8d§);
               }
               else
               {
                  _loc5_[_loc7_.§'r§] = _loc7_;
                  this.§8!2§(_loc7_.§'r§,this.§8d§,_loc7_);
               }
            }
            _loc6_--;
         }
         this.§9!`§(_loc5_);
      }
      
      public function §1!Q§() : void
      {
         this.clear();
      }
      
      protected function §3!$§(param1:String) : void
      {
         var jsonObject:Object = null;
         var fileName:String = param1;
         try
         {
            jsonObject = JSON.parse(this.§2!S§(fileName));
         }
         catch(e:Error)
         {
            throw new Error("Can\'t convert file \'" + fileName + "\' to object; invalid JSON.",§!!o§.§?N§);
         }
         this.§@!@§(jsonObject);
      }
      
      protected function initializeFile(param1:String) : void
      {
         if(param1.search(/^sprite_sheets\/(.*)\.json$/i) != -1)
         {
            this.§3!$§(param1);
         }
         var _loc2_:Array = param1.match(/composites\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§;!5§(param1);
         }
         _loc2_ = param1.match(/sprite_sheets\/data\/(.*)\.xml$/i);
         if(_loc2_)
         {
            this.§;!5§(param1);
         }
         var _loc3_:Array = param1.match(/composites\/main\/(.*)\.xml$/i);
         if(_loc3_)
         {
            this.§>!I§(param1);
         }
      }
      
      protected function §9!`§(param1:Object) : void
      {
         this.§ _§(param1);
         if(this.§ set§())
         {
            if(!this.§6"6§)
            {
               this.§6"6§ = new Timer(§'!l§,0);
               this.§6"6§.addEventListener(TimerEvent.TIMER,this.§3`§);
            }
            else
            {
               this.§6"6§.stop();
            }
            this.§6"6§.start();
         }
      }
      
      private function § _§(param1:Object) : void
      {
         var _loc2_:* = null;
         this.§2X§ = new Vector.<String>();
         for(_loc2_ in param1)
         {
            this.§2X§.push(_loc2_);
         }
         this.§,!n§ = param1;
      }
      
      private function § set§() : Boolean
      {
         var _loc1_:int = getTimer();
         while(getTimer() - _loc1_ < §`I§ / 2)
         {
            if(!this.§2!m§())
            {
               break;
            }
         }
         var _loc2_:* = this.§2X§.length > 0;
         if(this.§;f§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         return _loc2_;
      }
      
      private function §2!m§() : Boolean
      {
         var _loc1_:String = null;
         if(this.§2X§.length > 0)
         {
            _loc1_ = this.§2X§[0];
            this.§2X§.splice(0,1);
            this.initializeFile(_loc1_);
            return true;
         }
         return false;
      }
      
      private function §3`§(param1:Event) : void
      {
         if(!this.§ set§())
         {
            if(this.§6"6§)
            {
               this.§6"6§.stop();
            }
         }
      }
      
      protected function §>!I§(param1:String) : void
      {
         var _loc2_:XML = new XML(this.§2!S§(param1));
         §%;§.§3!I§(_loc2_);
      }
      
      protected function §;!5§(param1:String) : void
      {
         var activePackageName:String = null;
         var filePath:String = param1;
         activePackageName = this.§8d§;
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
            var _loc2_:XML = new XML(§2!S§(filePath,activePackageName));
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
                  if(§#!3§(_loc13_,activePackageName) == null)
                  {
                     _loc9_ = _loc8_[_loc8_.length - 2] + "/" + _loc8_[_loc8_.length - 1];
                     _loc13_ = _loc11_ + "source/" + _loc9_ + ".xml";
                  }
                  if(_loc3_.indexOf(_loc9_) < 0)
                  {
                     _loc3_.push(_loc9_);
                     _loc14_ = §2!S§(_loc13_,activePackageName);
                     _loc4_.push(new XML(_loc14_));
                  }
               }
            }
            §-W§(new § !Z§(_loc2_,_loc4_,param1.bitmapData));
            §`!L§();
         };
         ++this.§"!a§;
         var imagePath:String = filePath.substr(0,filePath.length - 3) + "png";
         this.§5"1§(imagePath,onComplete);
      }
      
      protected function §-W§(param1:§3!!§) : void
      {
         this.§!8§.§@!k§(param1);
      }
      
      protected function §`!L§() : void
      {
         --this.§"!a§;
         if(this.§;f§)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §@!@§(param1:Object) : void
      {
         var spriteSheetClass:Class = null;
         var dataObject:Object = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            §-W§(new spriteSheetClass(dataObject,param1.bitmapData));
            §`!L§();
         };
         ++this.§"!a§;
         if(dataObject.image)
         {
            spriteSheetClass = §^y§;
            this.§5"1§("sprite_sheets/" + dataObject.image,onComplete);
         }
         else
         {
            if(!(dataObject.name && dataObject.charCount))
            {
               throw new Error("Invalid sprite sheet data.");
            }
            spriteSheetClass = §;"2§;
            this.§5"1§("sprite_sheets/" + dataObject.name + ".png",onComplete);
         }
      }
      
      protected function §>!6§(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         this.§%!T§ = 56895 & 25147 >> 1;
         _loc2_ = Math.min(param1.length,65536) - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§1!A§() * 255);
            _loc2_ -= 2;
         }
         _loc2_ = param1.length - 1;
         while(_loc2_ >= 0)
         {
            param1[_loc2_] -= int(this.§1!A§() * 255);
            _loc2_ -= int(this.§1!A§() * 255);
         }
         var _loc3_:int = Math.max(param1.length,65536) - 65536;
         _loc2_ = param1.length - 1;
         while(_loc2_ >= _loc3_)
         {
            param1[_loc2_] -= int(this.§1!A§() * 255);
            _loc2_ -= 2;
         }
         param1.inflate();
      }
      
      protected function §1!A§() : Number
      {
         this.§%!T§ ^= this.§%!T§ << 21;
         this.§%!T§ ^= this.§%!T§ >>> 35;
         this.§%!T§ ^= this.§%!T§ << 4;
         if(this.§%!T§ < 0)
         {
            this.§%!T§ &= 2147483647;
         }
         return this.§%!T§ / 2147483647;
      }
   }
}
