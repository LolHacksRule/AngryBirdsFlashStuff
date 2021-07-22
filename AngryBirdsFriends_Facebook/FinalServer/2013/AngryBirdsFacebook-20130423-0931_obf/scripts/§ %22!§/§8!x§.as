package § "!§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class §8!x§ extends Sprite
   {
       
      
      protected var §2!H§:Loader;
      
      protected var §"!a§:String;
      
      private var §3!p§:int = 0;
      
      private var §2!6§:int = 0;
      
      protected var §!"I§:int = 3;
      
      public function §8!x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get §#";§() : int
      {
         return this.§3!p§;
      }
      
      public function get § %§() : int
      {
         return this.§2!6§;
      }
      
      public function get loader() : Loader
      {
         return this.§2!H§;
      }
      
      protected function load() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§2!H§ = new Loader();
         }
         loop0:
         do
         {
            this.§2!H§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§2!H§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
               while(_loc1_)
               {
                  this.§2!H§.load(new URLRequest(this.§"!a§),new LoaderContext(true));
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_);
         
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var e:Event = param1;
         loop0:
         while(true)
         {
            this.§2!H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            addr108:
            addr130:
            while(true)
            {
               this.§2!H§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
               if(_loc4_ || _loc3_)
               {
                  this.§3!p§ = this.loader.width;
                  if(!(_loc4_ || _loc3_))
                  {
                     break;
                  }
                  while(true)
                  {
                     this.§2!6§ = this.loader.height;
                     continue loop0;
                  }
               }
               break;
            }
            dispatchEvent(new Event(Event.COMPLETE));
            return;
         }
      }
      
      protected function get isVisible() : Boolean
      {
         return true;
      }
      
      protected function §]!^§(param1:IOErrorEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            this.§2!H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            if(_loc4_)
            {
               this.§2!H§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
               if(_loc4_)
               {
                  addr53:
                  var _loc2_:*;
                  §§push((_loc2_ = this).§!"I§);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && param1))
                  {
                     _loc2_.§!"I§ = _loc3_;
                  }
                  if(_loc4_ || param1)
                  {
                  }
                  §§goto(addr103);
               }
               if(this.§!"I§ > 0)
               {
                  if(_loc4_)
                  {
                     this.load();
                  }
               }
            }
            addr103:
            return;
         }
         §§goto(addr53);
      }
   }
}
