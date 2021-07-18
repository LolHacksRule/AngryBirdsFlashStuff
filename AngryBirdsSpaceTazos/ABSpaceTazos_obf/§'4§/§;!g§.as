package §'4§
{
   import §"!&§.§+W§;
   import §"!&§.§8X§;
   import §"!&§.§]!C§;
   import §7!8§.Sprite;
   import §]">§.§-%§;
   import §`!j§.§#b§;
   
   public class §;!g§ extends §3!n§
   {
       
      
      public function §;!g§(param1:§^g§, param2:§#b§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(this);
            §§push(param1);
            §§push(param2);
            §§push(param3);
            if(!_loc5_)
            {
               if(param2.hasGround)
               {
                  addr42:
                  §§push(Number(1));
                  if(!_loc4_)
                  {
                  }
               }
               else
               {
                  §§push(0.5);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               §§pop().super(§§pop(),§§pop(),§§pop(),§§pop(),param2.hasGround,param2.worldGravity > 0);
               §§goto(addr68);
            }
            §§goto(addr42);
         }
         addr68:
      }
      
      override protected function initializeSlingshotObject(param1:§8X§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §-T§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            if(param1 is §+W§)
            {
               if(!_loc6_)
               {
                  return new §1!+§(this,param5,param1.itemName,param1,param2,param3,param4);
               }
            }
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      override protected function showScoreForRemainingBird(param1:§-T§, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = true;
         var _loc4_:§]!C§;
         §§push(Boolean(_loc4_ = param1.levelItem as §]!C§));
         if(_loc5_)
         {
            if(§§pop())
            {
               if(!_loc6_)
               {
                  §§pop();
                  if(!_loc6_)
                  {
                     §§push(Boolean(_loc4_.spriteScore));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §?>§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§-%§.§;!J§,false,false,false,3,true);
                              addr114:
                              loop0:
                              while(true)
                              {
                                 §§push(false);
                                 if(_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr78:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       addr80:
                                    }
                                 }
                              }
                              §§goto(addr72);
                           }
                           addr85:
                        }
                        while(true)
                        {
                           §?>§.addScore(param2,§!!t§.§9j§,_loc3_,param1.x,param1.y - 3);
                           if(_loc5_ || _loc3_)
                           {
                              break;
                           }
                           §§goto(addr78);
                           §§goto(addr80);
                        }
                        if(!_loc5_)
                        {
                           §§goto(addr85);
                        }
                        addr72:
                        return;
                     }
                     addr84:
                  }
                  §§goto(addr114);
               }
               §§goto(addr77);
            }
            §§goto(addr84);
         }
         §§goto(addr77);
      }
      
      override protected function showDestructionParticles(param1:§-T§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = null;
         var _loc2_:§]!C§ = param1.levelItem as §]!C§;
         if(_loc5_ || _loc2_)
         {
            §§push(Boolean(_loc2_));
            if(_loc5_)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr154:
                     loop4:
                     while(true)
                     {
                        §§push(_loc2_.§5$§);
                        if(!_loc6_)
                        {
                           continue loop3;
                        }
                        addr128:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr129:
                           while(!(_loc5_ || _loc3_))
                           {
                              continue loop4;
                           }
                           addr35:
                           if(_loc3_ >= _loc2_.§5$§)
                           {
                              if(_loc6_ && param1)
                              {
                                 addr53:
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr35);
                                    }
                                    addr87:
                                    §?>§.objects.addObject(_loc4_,param1.x,param1.y,0,§-%§.§;!J§,false,true,false,1,true);
                                 }
                                 _loc3_++;
                                 §§goto(addr53);
                              }
                              §§goto(addr47);
                           }
                           §§push(_loc2_.§5<§(_loc3_));
                           if(_loc5_)
                           {
                              §§push(§§pop());
                              if(_loc5_)
                              {
                                 §§push(_loc4_ = §§pop());
                              }
                           }
                           if(§§pop())
                           {
                              §§goto(addr87);
                           }
                           §§goto(addr53);
                           continue loop4;
                        }
                     }
                  }
                  addr153:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        §§goto(addr128);
                        §§push(0);
                     }
                     §§goto(addr129);
                  }
                  break;
                  §§goto(addr109);
               }
               addr47:
               return;
            }
            §§goto(addr153);
         }
         §§goto(addr154);
      }
   }
}
