package §&!m§
{
   import §+]§.§"^§;
   import §>!'§.§'!Y§;
   import §>!'§.§<!3§;
   import §@_§.§1M§;
   import §@_§.§[F§;
   import §[h§.b2WeldJoint;
   
   public class §&m§
   {
       
      
      public function §&m§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §9_§(param1:Vector.<§;5§>, param2:§'!Y§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:§;5§ = null;
         var _loc4_:§;5§ = null;
         var _loc5_:§[F§ = null;
         if(_loc11_ || §&m§)
         {
            if(param1.length < 2)
            {
               if(!_loc10_)
               {
                  §§goto(addr39);
               }
            }
            for each(_loc3_ in param1)
            {
               if(_loc11_ || param1)
               {
                  var _loc8_:int = 0;
                  if(_loc11_ || param1)
                  {
                     for each(_loc4_ in param1)
                     {
                        §§push(_loc3_.getObject() is §<!3§);
                        if(_loc11_ || param2)
                        {
                           §§push(§§pop());
                           if(_loc11_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(!_loc10_)
                                 {
                                    §§pop();
                                    if(!(_loc10_ && param2))
                                    {
                                       addr122:
                                       §§push(_loc4_.getObject() is §<!3§);
                                       §§push(_loc4_.getObject() is §<!3§);
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             addr135:
                                             §§push(_loc3_ != _loc4_);
                                          }
                                          §§push(§§pop());
                                          if(!_loc11_)
                                          {
                                          }
                                          addr172:
                                          if(!§§pop())
                                          {
                                             addr173:
                                             §§pop();
                                             §§push(§"^§.§#h§(_loc3_.getObject().getBody(),_loc4_.getObject().getBody()).size.length > 0);
                                          }
                                          if(§§pop())
                                          {
                                             addr197:
                                             _loc5_ = param2.§3H§(§[F§.§"l§,_loc3_.getObject() as §<!3§,_loc4_.getObject() as §<!3§);
                                          }
                                          continue;
                                       }
                                       if(§§pop())
                                       {
                                          addr140:
                                          §§pop();
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             §§push(!param2.§%Y§(_loc3_.getObject() as §<!3§,_loc4_.getObject() as §<!3§));
                                          }
                                          §§goto(addr197);
                                       }
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       §§push(param1.length == 2);
                                       if(_loc11_ || param2)
                                       {
                                          §§goto(addr172);
                                          §§push(§§pop());
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr140);
                     }
                  }
               }
            }
            return;
         }
         addr39:
      }
      
      public static function §3c§(param1:Vector.<§;5§>, param2:§'!Y§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§;5§ = null;
         for each(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               param2.§[!;§(_loc3_.getObject() as §<!3§);
            }
         }
      }
      
      public static function §3i§(param1:§<!3§, param2:§'!Y§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§1M§ = null;
         if(_loc8_ || §&m§)
         {
            if(!param1)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
         }
         var _loc3_:Vector.<§1M§> = param2.§@!r§(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§0i§ is b2WeldJoint)
            {
               if(!(_loc7_ && §&m§))
               {
                  param2.§=r§(_loc4_);
               }
            }
         }
      }
   }
}
