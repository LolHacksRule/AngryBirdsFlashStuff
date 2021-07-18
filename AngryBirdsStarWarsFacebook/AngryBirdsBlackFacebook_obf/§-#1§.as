package
{
   import flash.display.InteractiveObject;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public final class §-#1§ extends EventDispatcher
   {
      
      private static var §8o§:§-#1§;
       
      
      private var §2m§:InteractiveObject = null;
      
      public function §-#1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function get §%!E§() : §-#1§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§8o§);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && §-#1§))
                  {
                     §8o§ = new §-#1§();
                     addr64:
                     §§push(§8o§);
                  }
               }
               §§goto(addr64);
            }
            return §§pop();
         }
         §§goto(addr64);
      }
      
      public function §-!D§(param1:InteractiveObject) : void
      {
         try
         {
         }
         catch(e:Error)
         {
         }
      }
      
      public function shutdown() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §,I§.§%!E§.§1S§();
            do
            {
               §9N§.§%!E§.§1S§();
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function §3"%§(param1:uint, param2:uint, param3:Function, param4:Boolean = false) : Boolean
      {
         return §9N§.§%!E§.add(param1,param2,param3,param4);
      }
      
      public function §27§(param1:uint, param2:uint) : Boolean
      {
         return §9N§.§%!E§.§>"k§(param1,param2);
      }
      
      public function §1S§(param1:Object = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §,I§.§%!E§.§1S§();
         }
         do
         {
            §9N§.§%!E§.§1S§();
         }
         while(_loc2_ && param1);
         
      }
      
      public function §1§(param1:uint, param2:uint) : Boolean
      {
         return §9N§.§%!E§.§9;§(param1,param2);
      }
      
      public function § #1§(param1:Array, param2:Function, param3:Boolean = false) : Boolean
      {
         return §,I§.§%!E§.add(param1,param2,param3);
      }
      
      public function §!v§(param1:Array) : Boolean
      {
         return §,I§.§%!E§.§>"k§(param1);
      }
      
      public function §+M§(param1:Array) : Boolean
      {
         return §,I§.§%!E§.§+M§(param1);
      }
      
      public function §>7§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(§,I§.§%!E§.§?B§(param1));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr118:
                        while(true)
                        {
                           §§push(§9N§.§%!E§.§?B§(param1));
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc2_)
                           {
                              continue;
                           }
                        }
                        continue loop0;
                     }
                     addr117:
                  }
                  while(§§pop())
                  {
                     if(!_loc3_)
                     {
                        trace("Stop!");
                     }
                     loop2:
                     while(true)
                     {
                        param1.stopImmediatePropagation();
                        loop3:
                        while(true)
                        {
                           param1.stopPropagation();
                           addr73:
                           while(true)
                           {
                              param1.preventDefault();
                              if(!(_loc3_ && this))
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr117);
            }
         }
         §§goto(addr73);
      }
      
      public function §^!5§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §,I§.§%!E§.§ "O§(param1);
         }
         do
         {
            §9N§.§%!E§.§ "O§(param1);
         }
         while(_loc2_);
         
      }
   }
}
