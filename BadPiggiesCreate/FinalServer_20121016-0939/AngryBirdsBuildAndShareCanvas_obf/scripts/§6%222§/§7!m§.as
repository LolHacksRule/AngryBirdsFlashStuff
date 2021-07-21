package §6"2§
{
   import §1!k§.§"U§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   
   public class §7!m§ extends §"U§
   {
       
      
      private var §+!G§:Number;
      
      private var §?R§:uint;
      
      public function §7!m§(param1:§?H§, param2:uint)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,0);
            while(true)
            {
               this.§+!G§ = param1.duration;
               while(!_loc3_)
               {
                  while(_loc4_ || _loc3_)
                  {
                     §§push(§§findproperty(§[m§));
                     §§push(this.§+!G§);
                     if(!(_loc3_ && param1))
                     {
                        §§push(§§pop() * param2);
                     }
                     §§pop().§[m§ = §§pop();
                     if(_loc4_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§?R§ = param2;
            §§goto(addr55);
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() >= 0)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§push(param1);
                        if(_loc2_ || this)
                        {
                           if(§§pop() < §[m§)
                           {
                              if(_loc2_)
                              {
                                 addr78:
                                 §§push(this.§+!G§);
                                 if(!_loc3_)
                                 {
                                    addr123:
                                    §§push(§§pop() * int(param1 / this.§+!G§) - (_loc2_ || _loc2_ ? §§pop() : §§pop()));
                                    if(_loc2_ || param1)
                                    {
                                       addr121:
                                       §§push(Number(§§pop()));
                                    }
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       §§goto(addr28);
                                    }
                                    addr123:
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr121);
                           }
                           else
                           {
                              §§push(§[m§ - this.§+!G§);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr123);
               }
               addr28:
               while(true)
               {
                  §>d§.update(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     break;
                  }
                  continue loop1;
               }
               return;
            }
            §§goto(addr121);
         }
         §§goto(addr123);
      }
      
      public function get §5"<§() : uint
      {
         return this.§?R§;
      }
      
      override protected function newInstance() : §^!B§
      {
         return new §7!m§(§>d§.clone() as §?H§,this.§5"<§);
      }
   }
}
