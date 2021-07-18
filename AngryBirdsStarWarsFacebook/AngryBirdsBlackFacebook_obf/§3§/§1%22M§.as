package §3§#7
{
   import §6"G§.§[#R§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1"M§ extends Sprite
   {
      
      public static const § #C§:String = "star";
      
      public static const §2#X§:String = "smoke";
      
      public static const §&!y§:String = "coin";
      
      public static const §-!g§:String = "all";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            § #C§ = "star";
            while(true)
            {
               §2#X§ = "smoke";
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     §&!y§ = "coin";
                     do
                     {
                        §-!g§ = "all";
                     }
                     while(_loc1_ && §1"M§);
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      private var §9"z§:Sprite;
      
      private var §8"4§:Number;
      
      private var §4!`§:Number;
      
      private var §]k§:§[#R§;
      
      public function §1"M§(param1:Number, param2:String = "all")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         if(!_loc7_)
         {
            super();
         }
         var _loc5_:* = param2;
         if(_loc6_)
         {
            §§push(§ #C§);
            if(!_loc7_)
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || _loc3_)
                     {
                        addr141:
                        §§push(0);
                        if(!(_loc7_ && param1))
                        {
                           addr227:
                           if(!(_loc7_ && _loc3_))
                           {
                              loop0:
                              while(true)
                              {
                                 switch(§§pop())
                                 {
                                    case 0:
                                       addr115:
                                       _loc3_ = int(this.§=@§(0,3));
                                       addr114:
                                       break;
                                    case 1:
                                       addr95:
                                       §§push(this.§=@§(4,6));
                                       if(!_loc7_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc6_ || this)
                                          {
                                             _loc3_ = §§pop();
                                             addr67:
                                             break loop0;
                                             addr106:
                                          }
                                          addr559:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc4_ = "P_STAR_4";
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                return;
                                                addr577:
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
                                                addr251:
                                                break;
                                             case 6:
                                                _loc4_ = "P_SMOKE_1";
                                                break;
                                             case 7:
                                             case 8:
                                             case 9:
                                                _loc4_ = "P_COIN_1";
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr251);
                                          }
                                          addr631:
                                          this.§9"z§ = this.§]"-§(_loc4_);
                                          loop1:
                                          while(true)
                                          {
                                             addChild(this.§9"z§);
                                             while(true)
                                             {
                                                this.mouseEnabled = false;
                                                while(_loc6_ || _loc3_)
                                                {
                                                   continue loop1;
                                                   while(!(_loc7_ && param2))
                                                   {
                                                      this.§9"z§.y = -this.§9"z§.height / 2;
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr577);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr114);
                                       }
                                       break;
                                    case 2:
                                       addr74:
                                       §§push(int(this.§=@§(7,9)));
                                       if(_loc6_)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(!_loc7_)
                                             {
                                                break loop0;
                                             }
                                             break;
                                          }
                                          break loop0;
                                       }
                                       continue;
                                    case 3:
                                       §§push(this.§=@§(0,6));
                                       if(!(_loc7_ && param2))
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             §§push(int(§§pop()));
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             if(!_loc7_)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc6_ || this)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr106);
                                                   }
                                                   §§goto(addr67);
                                                }
                                                else
                                                {
                                                   §§goto(addr631);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr95);
                                          }
                                          §§goto(addr115);
                                       }
                                       else
                                       {
                                          §§goto(addr74);
                                       }
                                 }
                                 break;
                              }
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 addr300:
                                 _loc5_ = §§pop();
                                 if(_loc6_)
                                 {
                                    §§push(0);
                                    if(_loc6_)
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc7_ && this))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(0);
                                                if(_loc7_ && param1)
                                                {
                                                   addr446:
                                                   §§push(_loc5_);
                                                   if(!(_loc7_ && this))
                                                   {
                                                      addr454:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(5);
                                                            if(_loc6_ || this)
                                                            {
                                                               addr558:
                                                               §§goto(addr559);
                                                            }
                                                            else
                                                            {
                                                               addr534:
                                                               §§goto(addr558);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr545:
                                                            §§push(9);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               addr553:
                                                            }
                                                            §§goto(addr558);
                                                         }
                                                         §§goto(addr558);
                                                      }
                                                      else
                                                      {
                                                         §§push(6);
                                                         if(!_loc7_)
                                                         {
                                                            addr469:
                                                            §§push(_loc5_);
                                                            if(_loc6_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(6);
                                                                     if(_loc7_ && param1)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr526:
                                                                     §§push(8);
                                                                     if(_loc7_ && param1)
                                                                     {
                                                                        addr543:
                                                                        if(§§pop() === _loc5_)
                                                                        {
                                                                           §§goto(addr545);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr558);
                                                                           §§push(10);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr558);
                                                               }
                                                               else
                                                               {
                                                                  §§push(7);
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr492:
                                                                     §§push(_loc5_);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr495:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(7);
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 addr506:
                                                                              }
                                                                              §§goto(addr558);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr526);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(8);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 addr518:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr526);
                                                                                    }
                                                                                    §§goto(addr545);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(9);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §§goto(addr543);
                                                                                    }
                                                                                    §§goto(addr558);
                                                                                 }
                                                                              }
                                                                              §§goto(addr543);
                                                                           }
                                                                        }
                                                                        §§goto(addr534);
                                                                     }
                                                                     §§goto(addr518);
                                                                  }
                                                                  §§goto(addr506);
                                                               }
                                                            }
                                                            §§goto(addr518);
                                                         }
                                                         §§goto(addr543);
                                                      }
                                                   }
                                                   §§goto(addr495);
                                                }
                                                §§goto(addr558);
                                             }
                                             §§goto(addr545);
                                          }
                                          else
                                          {
                                             §§push(1);
                                             if(!(_loc7_ && param2))
                                             {
                                                §§push(_loc5_);
                                                if(_loc6_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(1);
                                                         if(_loc7_ && _loc3_)
                                                         {
                                                            addr437:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr526);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(2);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc7_ && this))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  addr383:
                                                                  §§push(2);
                                                                  if(_loc7_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr406:
                                                                  §§push(3);
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr558);
                                                               if(!_loc7_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        §§push(4);
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           §§goto(addr437);
                                                                        }
                                                                        §§goto(addr558);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr526);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(5);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§goto(addr446);
                                                                     }
                                                                     §§goto(addr492);
                                                                  }
                                                                  §§goto(addr558);
                                                               }
                                                               §§goto(addr454);
                                                            }
                                                            else
                                                            {
                                                               §§push(3);
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§push(_loc5_);
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr406);
                                                                        }
                                                                        §§goto(addr545);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(4);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr418);
                                                                        }
                                                                     }
                                                                     §§goto(addr437);
                                                                  }
                                                                  §§goto(addr495);
                                                               }
                                                            }
                                                            §§goto(addr534);
                                                         }
                                                         §§goto(addr543);
                                                      }
                                                      §§goto(addr469);
                                                   }
                                                   §§goto(addr558);
                                                }
                                                §§goto(addr454);
                                             }
                                          }
                                          §§goto(addr506);
                                       }
                                       §§goto(addr518);
                                    }
                                    §§goto(addr553);
                                 }
                                 §§goto(addr383);
                              }
                              §§goto(addr559);
                           }
                           §§goto(addr300);
                        }
                     }
                     else
                     {
                        addr202:
                        §§push(2);
                        if(_loc7_ && param2)
                        {
                           addr222:
                        }
                     }
                     §§goto(addr227);
                  }
                  else
                  {
                     §§push(§2#X§);
                     if(!(_loc7_ && this))
                     {
                        addr158:
                        §§push(_loc5_);
                        if(!(_loc7_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || param2)
                              {
                                 §§push(1);
                                 if(_loc6_ || param2)
                                 {
                                 }
                                 §§goto(addr227);
                              }
                              else
                              {
                                 §§goto(addr202);
                              }
                           }
                           else
                           {
                              §§push(§&!y§);
                              if(!(_loc7_ && this))
                              {
                                 addr191:
                                 §§push(_loc5_);
                                 if(_loc6_ || param2)
                                 {
                                    addr199:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr202);
                                       }
                                    }
                                    else
                                    {
                                       addr213:
                                       if(§-!g§ !== _loc5_)
                                       {
                                          §§goto(addr227);
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr227);
                                    §§goto(addr227);
                                 }
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr191);
                  }
               }
               §§goto(addr199);
            }
            §§goto(addr158);
         }
         §§goto(addr141);
      }
      
      private function §=@§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §%!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§]k§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr88:
                  while(true)
                  {
                     §§push(this.§]k§);
                     addr90:
                     while(true)
                     {
                        §§pop().stop();
                        addr91:
                        while(true)
                        {
                           this.§]k§ = null;
                           addr72:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  removeChild(this.§9"z§);
                  while(!(_loc1_ && _loc1_))
                  {
                     if(!(_loc1_ && this))
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           this.§9"z§ = null;
                           if(!_loc1_)
                           {
                              return;
                           }
                           continue;
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr88);
      }
      
      public function §]"-§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §5_§.§`"G§(param1);
         _loc2_ = new _loc3_();
         if(!(_loc5_ && _loc2_))
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(!(_loc4_ || param1));
            
         }
         return _loc2_;
      }
      
      public function set §,#0§(param1:§[#R§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]k§ = param1;
         }
      }
      
      public function get §,#0§() : §[#R§
      {
         return this.§]k§;
      }
      
      public function get §6#3§() : Number
      {
         return this.§8"4§;
      }
      
      public function set §6#3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8"4§ = param1;
         }
      }
      
      public function get §+!P§() : Number
      {
         return this.§4!`§;
      }
      
      public function set §+!P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§4!`§ = param1;
         }
      }
   }
}
