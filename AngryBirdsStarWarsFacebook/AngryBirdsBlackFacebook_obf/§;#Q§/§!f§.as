package §;#Q§
{
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §!f§ extends §^"O§
   {
       
      
      protected var dispose:Function;
      
      protected var result:§>#I§;
      
      public function §!f§(param1:Function, param2:Function, param3:§>#I§ = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1);
            while(true)
            {
               this.dispose = param2;
               while(_loc5_ || param2)
               {
                  this.result = param3;
                  if(_loc4_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function delegate(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:URLLoader = URLLoader(param1.currentTarget);
         if(_loc3_)
         {
            §§push(this.result);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  callBack(_loc2_.data);
                  loop0:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           if(!(_loc4_ && param1))
                           {
                              continue loop0;
                           }
                        }
                        continue;
                        addr73:
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.result);
               }
            }
            while(true)
            {
               §§pop().init(_loc2_.data);
               §§goto(addr101);
            }
         }
         §§goto(addr67);
      }
   }
}
