package §1"H§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §7!8§.Sprite;
   import §]">§.§<!=§;
   
   public class §+>§ extends §<!=§
   {
       
      
      public function §+>§(param1:Sprite, param2:b2World, param3:§8X§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      protected function §!9§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(isNaN(param1))
            {
               loop0:
               while(true)
               {
                  §§push(0);
                  addr120:
                  addr97:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr121:
                     while(true)
                     {
                        param1 = §§pop();
                        addr122:
                        while(true)
                        {
                        }
                     }
                  }
                  loop5:
                  while(true)
                  {
                     if(_loc4_ && param2)
                     {
                        continue loop0;
                     }
                     loop6:
                     while(true)
                     {
                        §§push(param1);
                        if(!(_loc4_ && param2))
                        {
                           if(!(_loc4_ && param1))
                           {
                              addr51:
                              §§push(param2);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop() - param1);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() * Math.random());
                                 }
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr65);
                                 }
                                 break loop5;
                              }
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr88:
                           }
                           while(true)
                           {
                              if(!(_loc3_ || param2))
                              {
                                 break loop6;
                              }
                              continue loop5;
                           }
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr120);
               }
            }
            while(true)
            {
               if(isNaN(param2))
               {
                  if(!(_loc4_ && this))
                  {
                     if(_loc4_ && param2)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr97);
               }
               §§goto(addr19);
            }
            addr65:
            return §§pop();
         }
         §§goto(addr87);
      }
   }
}
