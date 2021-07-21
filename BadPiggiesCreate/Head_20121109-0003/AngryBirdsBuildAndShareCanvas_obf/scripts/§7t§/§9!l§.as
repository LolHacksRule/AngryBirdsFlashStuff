package §7t§
{
   import §&!P§.§^!!§;
   import §&!P§.§``§;
   import §,!0§.b2WeldJoint;
   import §6!A§.§%l§;
   import §[!P§.§8!z§;
   import §[!P§.§@R§;
   
   public class §9!l§
   {
       
      
      public function §9!l§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §6""§(param1:Vector.<§7a§>, param2:§^!!§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:§7a§ = null;
         var _loc5_:§7a§ = null;
         if(_loc10_ || _loc3_)
         {
            if(param1.length < 2)
            {
               if(_loc10_ || param1)
               {
                  §§goto(addr40);
               }
            }
            var _loc3_:* = true;
            for each(_loc4_ in param1)
            {
               if(_loc10_)
               {
                  var _loc8_:int = 0;
                  if(!(_loc11_ && §9!l§))
                  {
                     loop1:
                     for each(_loc5_ in param1)
                     {
                        if(_loc10_)
                        {
                           §§push(§5!?§(_loc4_,_loc5_,param2));
                           if(_loc10_)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc10_)
                              {
                                 §§push(param1.length == 2);
                                 if(_loc10_ || param1)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr161:
                                          while(true)
                                          {
                                             addr102:
                                             while(true)
                                             {
                                                §§push(§%l§.§ "-§(_loc4_.getObject().getBody(),_loc5_.getObject().getBody()).size.length > 0);
                                             }
                                          }
                                       }
                                       addr160:
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       loop3:
                                       while(§§pop())
                                       {
                                          if(!(_loc11_ && param2))
                                          {
                                             param2.§2"6§(§8!z§.§`,§,_loc4_.getObject() as §``§,_loc5_.getObject() as §``§);
                                          }
                                          while(true)
                                          {
                                             §§push(false);
                                             if(_loc11_)
                                             {
                                                continue loop3;
                                             }
                                             if(!_loc11_)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc10_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   if(true)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop2;
                                                }
                                                continue;
                                             }
                                          }
                                          §§goto(addr161);
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr161);
                     }
                  }
               }
            }
            if(_loc10_ || _loc3_)
            {
               if(_loc3_)
               {
                  if(_loc10_)
                  {
                     §;F§(param1,param2);
                  }
               }
            }
            return;
         }
         addr40:
      }
      
      private static function §5!?§(param1:§7a§, param2:§7a§, param3:§^!!§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1 != param2)
            {
               loop0:
               while(true)
               {
                  §§push(param1.getObject() is §``§);
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                     loop1:
                     while(_loc5_ || param2)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr107:
                              addr128:
                              while(!(_loc4_ && param2))
                              {
                                 §§push(param2.getObject() is §``§);
                                 while(!(_loc5_ || §9!l§))
                                 {
                                    continue loop5;
                                 }
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 continue loop5;
                              }
                              break loop1;
                           }
                           addr106:
                        }
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc4_ && param3))
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr87);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr107);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr20:
                                    while(true)
                                    {
                                       §§push(param3.§8b§(param1.getObject() as §``§,param2.getObject() as §``§));
                                       if(_loc5_)
                                       {
                                          if(_loc4_ && param3)
                                          {
                                             addr87:
                                             return false;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(!§§pop());
                                       }
                                       if(!_loc4_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                 }
                                 addr88:
                              }
                              §§goto(addr53);
                           }
                           §§goto(addr20);
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr106);
               }
            }
            §§goto(addr128);
         }
         §§goto(addr88);
      }
      
      public static function §;F§(param1:Vector.<§7a§>, param2:§^!!§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§7a§ = null;
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               param2.§=!&§(_loc3_.getObject() as §``§);
            }
         }
      }
      
      public static function §5D§(param1:§``§, param2:§^!!§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§@R§ = null;
         if(!_loc7_)
         {
            if(!param1)
            {
               if(_loc8_)
               {
                  §§goto(addr26);
               }
            }
            var _loc3_:Vector.<§@R§> = param2.§>!]§(param1);
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.§=!%§ is b2WeldJoint)
               {
                  if(!(_loc7_ && param1))
                  {
                     param2.§'K§(_loc4_);
                  }
               }
            }
            return;
         }
         addr26:
      }
      
      public static function §%1§(param1:§7a§, param2:§7a§, param3:§^!!§) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:§@R§ = null;
         var _loc6_:§``§ = null;
         var _loc7_:§``§ = null;
         var _loc8_:§``§ = null;
         var _loc4_:Vector.<§@R§> = param3.§>!]§(param1.getObject() as §``§);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = param3.getObject(_loc5_.index1 + 1);
            _loc7_ = param3.getObject(_loc5_.index2 + 1);
            if(!(_loc12_ && param1))
            {
               _loc8_ = _loc6_ == param1.getObject() ? _loc7_ : _loc6_;
               if(!(_loc12_ && §9!l§))
               {
                  param3.§2"6§(§8!z§.§`,§,param2.getObject() as §``§,_loc8_);
               }
               continue;
            }
            §§goto(addr85);
         }
      }
   }
}
