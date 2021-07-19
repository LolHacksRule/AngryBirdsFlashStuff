package §^z§
{
   import §"a§.§6#!§;
   import §,"N§.§6"w§;
   import §7P§.§=1§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import §^#>§.§#_§;
   import §^#>§.§8"f§;
   import §^#>§.§;x§;
   import §^#>§.§>f§;
   import com.angrybirds.§,!q§;
   import flash.events.MouseEvent;
   
   public class §5S§ extends §6#!§
   {
       
      
      public function §5S§(param1:§#_§, param2:§+"2§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override protected function get isAllowedToWin() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§>f§ = §2#G§.slingshot as §>f§;
         if(!_loc2_)
         {
            §§push(this.§`T§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr110:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr113:
                        while(true)
                        {
                           §§push(Boolean(_loc1_));
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop());
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(!§§pop())
                                 {
                                    break loop2;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr63:
                  return §§pop();
               }
            }
         }
         §§goto(addr113);
      }
      
      override protected function isSpecialUsed() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§=1§ = this.§&#+§();
         if(_loc2_ || _loc1_)
         {
            if(_loc1_)
            {
               if(!(_loc3_ && this))
               {
                  §§push(true);
                  if(_loc2_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr65:
                  return super.isSpecialUsed();
               }
               return §§pop();
            }
         }
         §§goto(addr65);
      }
      
      private function §&#+§() : §=1§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=1§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < §2#G§.objects.objectCount)
         {
            _loc2_ = §2#G§.objects.getObject(_loc1_) as §=1§;
            if(!_loc4_)
            {
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                     return _loc2_;
                  }
               }
               _loc1_++;
            }
         }
         return null;
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!§8"f§(§2#G§).§8%§(§6"w§.§+!G§))
            {
               if(!_loc3_)
               {
                  return 0;
                  addr28:
               }
            }
            var _loc1_:Number = §+!b§.getLevelForId(§+!b§.currentLevel).getEagleScore(§2#G§.levelItemManager,§2#G§.damageScoreMultiplier);
            var _loc2_:Number = Math.min(100,getScore(10) / _loc1_ * 100);
            return Math.round(_loc2_);
         }
         §§goto(addr28);
      }
      
      override protected function playWinningSoundVictory1() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?!r§.§0"#§();
            do
            {
               §?!r§.§"#_§("level_complete_episode_iv","5");
            }
            while(_loc1_);
            
         }
      }
      
      override protected function playWinningSoundVictory2() : void
      {
      }
      
      override protected function playFailSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§[F§ != §7!T§)
            {
               if(_loc2_ || this)
               {
                  §?!r§.§0"#§();
               }
               do
               {
                  §?!r§.§"#_§("level_fail_episode_iv","5");
               }
               while(!_loc2_);
               
               addr41:
            }
            return;
         }
         §§goto(addr41);
      }
      
      override public function isGameOverBlocked() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(super.isGameOverBlocked());
         if(_loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop11:
                        while(true)
                        {
                           §§pop();
                           addr163:
                           while(true)
                           {
                              §§push(§8"f§(§2#G§).§=j§.§6!4§());
                              addr134:
                              while(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop11;
                           }
                        }
                        addr162:
                     }
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop());
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   _loc1_ = §§pop();
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr163);
                                                }
                                             }
                                             addr125:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(this.§`T§);
                                                if(_loc3_ && this)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc2_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   continue loop6;
                                                }
                                                §§goto(addr134);
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr125);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               §§goto(addr162);
            }
         }
         §§goto(addr163);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Boolean = §@!m§(§4#;§.singleton).§""s§.hitTestPoint(param1.stageX,param1.stageY);
         if(!_loc4_)
         {
            §§push(param1.delta == 0);
            if(_loc3_ || this)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  addr104:
                  if(§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc3_ || param1)
                           {
                              §§push(!§§pop());
                           }
                           if(_loc4_ && _loc3_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 break loop1;
                              }
                              if(_loc3_ || _loc2_)
                              {
                                 §8"a§(param1.delta > 0);
                              }
                              if(!_loc4_)
                              {
                                 addr79:
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        return;
                     }
                     addr106:
                  }
                  §§goto(addr62);
               }
               §§goto(addr106);
            }
            §§goto(addr104);
         }
         §§goto(addr79);
      }
      
      protected function get §`T§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;x§ = §,!q§.§9!,§.slingshot;
         if(_loc3_ || _loc2_)
         {
            §§push(_loc1_.§,!?§.length > 0);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     addr61:
                     return _loc1_.§,!?§[_loc1_.§72§].levelItem.itemName == §=1§.§+"§;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function get §`"o§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§,!q§.§9!,§);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop().levelObjects);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop().activeObject);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr76:
                           §§push(§,!q§.§9!,§.levelObjects.activeObject.itemName == §=1§.§+"§);
                           if(!_loc1_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr83:
                           return false;
                        }
                        return §§pop();
                     }
                     §§goto(addr83);
                  }
               }
            }
         }
         §§goto(addr76);
      }
   }
}
