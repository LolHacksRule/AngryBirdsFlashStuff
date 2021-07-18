package §1!k§
{
   import §2p§.§`2§;
   import §8=§.§+?§;
   import §=b§.§%"2§;
   
   public class §#!9§ extends §^!B§ implements §@A§
   {
       
      
      protected var §!i§:§`2§;
      
      protected var §#!7§:§+?§;
      
      public function §#!9§(param1:§%"2§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super(param1,0);
         }
      }
      
      public function set time(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §[m§ = param1;
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(!(_loc3_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               if(§§pop() > 0)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(param1);
                     loop0:
                     while(§§pop() >= §[m§)
                     {
                        §§push(Number(1));
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              _loc2_ = §§pop();
                              loop2:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                    addr83:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                    addr123:
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr122:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 §§goto(addr123);
                              }
                              break loop0;
                           }
                           addr121:
                        }
                        §§goto(addr122);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr121);
                  }
               }
               §§goto(addr39);
            }
            §§goto(addr122);
         }
         §§goto(addr83);
      }
      
      public function get §1q§() : §+?§
      {
         return this.§#!7§;
      }
      
      public function get §!!T§() : §`2§
      {
         return this.§!i§;
      }
      
      override protected function copyFrom(param1:§^!B§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§#!9§ = param1 as §#!9§;
         if(!_loc4_)
         {
            this.§!i§ = _loc2_.§!i§;
            do
            {
               this.§#!7§ = _loc2_.§#!7§.clone();
            }
            while(_loc4_);
            
         }
      }
      
      override protected function newInstance() : §^!B§
      {
         return new §#!9§(§1!I§);
      }
      
      public function set §!!T§(param1:§`2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!i§ = param1;
         }
      }
      
      public function get target() : Object
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§#!7§);
            if(!_loc2_)
            {
               return §§pop() != null ? this.§#!7§.target : null;
            }
         }
         §§goto(addr46);
      }
      
      public function set §1q§(param1:§+?§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#!7§ = param1;
         }
      }
      
      public function get time() : Number
      {
         return §[m§;
      }
   }
}
