package §^"#§
{
   import §=u§.§5!9§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §?M§ extends Sprite
   {
      
      public static const §-!_§:String = "star";
      
      public static const §4V§:String = "smoke";
      
      public static const §`!=§:String = "coin";
      
      public static const §]!o§:String = "all";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!_§ = "star";
            while(true)
            {
               §4V§ = "smoke";
               while(!(_loc2_ && §?M§))
               {
                  §`!=§ = "coin";
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        §]!o§ = "all";
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      private var §>3§:Sprite;
      
      private var §?"$§:Number;
      
      private var §8!s§:Number;
      
      private var §[>§:§5!9§;
      
      public function §?M§(param1:Number, param2:String = "all")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         if(_loc6_)
         {
            super();
         }
         var _loc5_:* = param2;
         if(_loc6_)
         {
            §§push(§-!_§);
            if(_loc6_)
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                        }
                     }
                     else
                     {
                        addr154:
                        §§push(1);
                        if(!(_loc6_ || this))
                        {
                           addr190:
                        }
                     }
                  }
                  else
                  {
                     §§push(§4V§);
                     if(_loc6_ || param2)
                     {
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc7_ && this))
                              {
                                 §§goto(addr154);
                              }
                              else
                              {
                                 addr182:
                                 §§push(2);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§goto(addr190);
                                 }
                              }
                           }
                           else
                           {
                              §§push(§`!=§);
                              if(!(_loc7_ && param1))
                              {
                                 addr171:
                                 §§push(_loc5_);
                                 if(!(_loc7_ && param2))
                                 {
                                    addr179:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr182);
                                       }
                                       addr202:
                                       if(_loc6_ || param1)
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   addr102:
                                                   §§push(int(this.§6!_§(0,3)));
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr111:
                                                      break;
                                                      addr111:
                                                   }
                                                   break loop0;
                                                case 1:
                                                   addr91:
                                                   _loc3_ = int(this.§6!_§(4,6));
                                                   if(!_loc7_)
                                                   {
                                                      addr62:
                                                      break;
                                                   }
                                                   addr613:
                                                   this.§>3§ = this.§3!f§(_loc4_);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      addChild(this.§>3§);
                                                      while(true)
                                                      {
                                                         this.mouseEnabled = false;
                                                         addr589:
                                                         addr596:
                                                         addr575:
                                                         while(!(_loc6_ || this))
                                                         {
                                                            continue loop5;
                                                         }
                                                         this.§>3§.x = -this.§>3§.width / 2;
                                                         §§goto(addr584);
                                                      }
                                                   }
                                                   break;
                                                case 2:
                                                   addr69:
                                                   §§push(this.§6!_§(7,9));
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      _loc3_ = §§pop();
                                                      addr80:
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr102);
                                                   }
                                                   §§goto(addr111);
                                                case 3:
                                                   §§push(this.§6!_§(0,6));
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr80);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr91);
                                                            }
                                                            §§goto(addr62);
                                                         }
                                                         addr287:
                                                         _loc5_ = §§pop();
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc7_ && this)
                                                                        {
                                                                           addr442:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr490:
                                                                        §§push(7);
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           addr498:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr540:
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr545:
                                                                                    break loop0;
                                                                                 }
                                                                                 addr382:
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!(_loc7_ && this))
                                                                                       {
                                                                                          addr393:
                                                                                          §§push(3);
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             §§goto(addr545);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr474:
                                                                                             §§push(_loc5_);
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                addr482:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr490);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr518:
                                                                                                      §§push(8);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr521:
                                                                                                      }
                                                                                                      §§goto(addr545);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(8);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc7_ && param1)
                                                                                                      {
                                                                                                      }
                                                                                                      addr531:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         addr532:
                                                                                                         §§push(9);
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            §§goto(addr540);
                                                                                                         }
                                                                                                         §§goto(addr545);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr545);
                                                                                                         §§push(10);
                                                                                                      }
                                                                                                      §§goto(addr545);
                                                                                                   }
                                                                                                   §§goto(addr521);
                                                                                                }
                                                                                                §§goto(addr521);
                                                                                             }
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   §§goto(addr518);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr532);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(9);
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   addr530:
                                                                                                   §§goto(addr531);
                                                                                                   §§push(_loc5_);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr540);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr532);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(4);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   addr421:
                                                                                                   §§push(4);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr462:
                                                                                                   §§push(6);
                                                                                                   if(!(_loc6_ || param2))
                                                                                                   {
                                                                                                      §§goto(addr540);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr545);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(5);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      addr436:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(5);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§goto(addr442);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr521);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr545);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(6);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(!(_loc7_ && param1))
                                                                                                            {
                                                                                                               addr454:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(_loc6_ || param2)
                                                                                                                  {
                                                                                                                     §§goto(addr462);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr518);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(7);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§goto(addr474);
                                                                                                                  }
                                                                                                                  §§goto(addr498);
                                                                                                               }
                                                                                                               §§goto(addr545);
                                                                                                            }
                                                                                                            §§goto(addr482);
                                                                                                         }
                                                                                                         §§goto(addr530);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr454);
                                                                                                }
                                                                                                §§goto(addr474);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr454);
                                                                                       }
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr531);
                                                                                 §§goto(addr545);
                                                                              }
                                                                              §§goto(addr393);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(2);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(2);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§goto(addr545);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr521);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr518);
                                                                                       }
                                                                                       §§goto(addr521);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(3);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          §§goto(addr382);
                                                                                       }
                                                                                       §§goto(addr530);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr474);
                                                                              }
                                                                              §§goto(addr545);
                                                                           }
                                                                        }
                                                                        §§goto(addr436);
                                                                     }
                                                                     §§goto(addr382);
                                                                  }
                                                                  §§goto(addr545);
                                                               }
                                                               §§goto(addr454);
                                                            }
                                                            §§goto(addr521);
                                                         }
                                                         §§goto(addr421);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr91);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr69);
                                                   }
                                                   §§goto(addr111);
                                             }
                                             §§push(_loc3_);
                                             if(!_loc7_)
                                             {
                                                §§goto(addr287);
                                             }
                                             break;
                                          }
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc4_ = "P_STAR_4";
                                                if(_loc6_ || param1)
                                                {
                                                   break;
                                                }
                                                addr584:
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr577:
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   §§goto(addr589);
                                                   §§goto(addr596);
                                                }
                                                while(true)
                                                {
                                                   this.§>3§.y = -this.§>3§.height / 2;
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr575);
                                                   §§goto(addr577);
                                                }
                                                return;
                                             case 1:
                                                _loc4_ = "P_STAR_3";
                                                break;
                                             case 2:
                                                _loc4_ = "P_STAR_2";
                                                break;
                                             case 3:
                                                _loc4_ = "P_STAR_1";
                                                break;
                                             case 4:
                                                _loc4_ = "P_SMOKE_3";
                                                break;
                                             case 5:
                                                _loc4_ = "P_SMOKE_2";
                                                break;
                                             case 6:
                                                _loc4_ = "P_SMOKE_1";
                                                break;
                                             case 7:
                                                _loc4_ = "P_COIN_3";
                                                addr221:
                                                break;
                                             case 8:
                                                _loc4_ = "P_COIN_2";
                                                break;
                                             case 9:
                                                _loc4_ = "P_COIN_1";
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr221);
                                          }
                                          §§goto(addr613);
                                       }
                                       §§goto(addr287);
                                    }
                                    else
                                    {
                                       addr193:
                                       if(§]!o§ !== _loc5_)
                                       {
                                          §§goto(addr202);
                                          §§push(4);
                                       }
                                       §§goto(addr202);
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr193);
                           }
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr202);
               }
               §§goto(addr179);
            }
            §§goto(addr171);
         }
         §§goto(addr182);
      }
      
      private function §6!_§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §;"F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§[>§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§[>§);
                     addr95:
                     while(true)
                     {
                        §§pop().stop();
                        addr96:
                        addr72:
                        loop3:
                        while(true)
                        {
                           this.§[>§ = null;
                           addr70:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 break loop3;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  removeChild(this.§>3§);
                  loop2:
                  for(; !(_loc1_ && this); while(true)
                  {
                     this.§>3§ = null;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop2;
                  },return)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr70);
                  §§goto(addr72);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr65);
      }
      
      public function §3!f§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = § !h§.§["3§(param1);
         _loc2_ = new _loc3_();
         if(!_loc4_)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(!_loc5_);
            
         }
         return _loc2_;
      }
      
      public function set §^!5§(param1:§5!9§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[>§ = param1;
         }
      }
      
      public function get §^!5§() : §5!9§
      {
         return this.§[>§;
      }
      
      public function get §&n§() : Number
      {
         return this.§?"$§;
      }
      
      public function set §&n§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§?"$§ = param1;
         }
      }
      
      public function get §7!S§() : Number
      {
         return this.§8!s§;
      }
      
      public function set §7!S§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!s§ = param1;
         }
      }
   }
}
