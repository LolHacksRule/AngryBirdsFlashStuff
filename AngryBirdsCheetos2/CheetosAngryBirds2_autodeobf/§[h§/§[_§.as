package §[h§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   
   public class §[_§ extends EventDispatcher
   {
       
      
      private var §]W§:Loader;
      
      private var §'D§:MovieClip;
      
      public function §[_§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§]W§ = new Loader();
         }
         while(!_loc2_);
         
      }
      
      public function load(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[1] = param1;
            if(!(_loc4_ && _loc2_))
            {
               addr34:
               var loadOk:Boolean = true;
            }
            try
            {
               this.§]W§.load(new URLRequest(cutSceneName));
               if(!_loc4_)
               {
                  addr64:
                  §§push(loadOk);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§push(false);
                           if(!(_loc4_ && param1))
                           {
                              return §§pop();
                           }
                           §§goto(addr110);
                        }
                        do
                        {
                           this.§]W§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
                           while(true)
                           {
                              if(!(_loc4_ && this))
                              {
                                 continue;
                              }
                           }
                        }
                        while(_loc4_);
                        
                        addr110:
                        return §§pop();
                        §§push(true);
                        addr153:
                        §§goto(addr110);
                     }
                     else
                     {
                        this.§]W§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2!X§);
                     }
                     while(true)
                     {
                        this.§]W§.contentLoaderInfo.addEventListener(Event.INIT,this.§!x§);
                        §§goto(addr153);
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr143);
            }
            catch(e:Error)
            {
               var _loc3_:* = e;
               if(_loc5_)
               {
                  loadOk = false;
               }
            }
            §§goto(addr64);
         }
         §§goto(addr34);
      }
      
      private function §2!X§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§'D§ = MovieClip(this.§]W§.content);
            do
            {
               dispatchEvent(new §3!c§(§3!c§.§%!g§));
            }
            while(!_loc3_);
            
         }
      }
      
      private function §!x§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new §3!c§(§3!c§.§ F§));
         }
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new §3!c§(§3!c§.§;d§));
         }
      }
      
      private function §97§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new §3!c§(§3!c§.§`!O§));
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§]W§)
            {
               loop0:
               while(true)
               {
                  this.§]W§.unloadAndStop();
                  addr71:
                  while(true)
                  {
                     this.§]W§ = null;
                     continue loop0;
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr47);
      }
      
      public function get content() : MovieClip
      {
         return this.§'D§;
      }
   }
}
