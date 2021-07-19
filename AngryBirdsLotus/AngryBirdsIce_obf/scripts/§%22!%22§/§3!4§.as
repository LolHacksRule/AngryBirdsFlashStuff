package §"!"§
{
   public class §3!4§
   {
       
      
      private var §"!C§:Boolean;
      
      private var value;
      
      private var §[F§:§<!#§;
      
      private var token:§"!-§;
      
      public function §3!4§(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            this.§"!C§ = param2;
            while(true)
            {
               this.§[F§ = new §<!#§(param1,param2);
            }
            addr114:
         }
         while(true)
         {
            this.§]v§();
            loop2:
            while(true)
            {
               this.value = this.§+!9§();
               loop3:
               while(true)
               {
                  if(!_loc4_)
                  {
                     §§push(param2);
                     if(!_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           addr74:
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 continue loop3;
                              }
                              addr54:
                              if(!§§pop())
                              {
                                 break loop2;
                              }
                              continue loop2;
                              addr86:
                           }
                           break;
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr74);
                  }
                  else
                  {
                     §§goto(addr114);
                  }
               }
               §§goto(addr54);
            }
            return;
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §]v§() : §"!-§
      {
         return this.token = this.§[F§.§ s§();
      }
      
      private function §8V§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Array = new Array();
         if(!_loc3_)
         {
            this.§]v§();
            §§push(this.token);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               loop1:
               while(true)
               {
                  §§push(§2!4§.§9!C§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                     }
                     §§push(this.§"!C§);
                     loop3:
                     while(true)
                     {
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 §§push(this.token);
                                 addr179:
                                 while(true)
                                 {
                                    §§push(§§pop().type);
                                    addr180:
                                    while(_loc2_ || _loc3_)
                                    {
                                       §§push(§2!4§.§-!"§);
                                       do
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       while(!_loc3_);
                                       
                                       continue loop3;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr219:
                           }
                           loop4:
                           while(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 this.§]v§();
                                 addr210:
                                 while(true)
                                 {
                                    §§push(this.token);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§§pop().type);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§2!4§.§9!C§);
                                          if(!_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   return _loc1_;
                                                }
                                                §§push(this.§[F§);
                                                §§push("Leading commas are not supported.  Expecting \']\' but found ");
                                                if(_loc2_ || _loc3_)
                                                {
                                                   §§push(§§pop() + this.token.value);
                                                }
                                                §§pop().parseError(§§pop());
                                                break loop4;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr179);
                                 }
                                 addr210:
                              }
                              §§goto(addr210);
                           }
                           loop10:
                           while(true)
                           {
                              _loc1_.push(this.§+!9§());
                              this.§]v§();
                              §§push(this.token);
                              loop11:
                              while(true)
                              {
                                 §§push(§§pop().type);
                                 loop12:
                                 while(true)
                                 {
                                    §§push(§2!4§.§9!C§);
                                    loop13:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(this.token);
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§§pop().type);
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§2!4§.§-!"§);
                                             loop16:
                                             while(true)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   addr29:
                                                   break loop15;
                                                }
                                                this.§]v§();
                                                while(!this.§"!C§)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.token);
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break loop16;
                                                         }
                                                         §§push(§§pop().type);
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§push(§2!4§.§9!C§);
                                                               if(_loc2_)
                                                               {
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        return _loc1_;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             continue loop11;
                                          }
                                          §§push(this.§[F§);
                                          §§push("Expecting ] or , but found ");
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop() + this.token.value);
                                          }
                                          §§pop().parseError(§§pop());
                                          if(_loc2_ || _loc3_)
                                          {
                                             continue loop10;
                                          }
                                          §§goto(addr29);
                                       }
                                    }
                                    return _loc1_;
                                 }
                              }
                           }
                        }
                        §§goto(addr219);
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr210);
      }
      
      private function §5;§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(_loc4_ || _loc3_)
         {
            this.§]v§();
            loop0:
            while(true)
            {
               §§push(this.token);
               while(true)
               {
                  §§push(§§pop().type);
                  addr412:
                  while(true)
                  {
                     §§push(§2!4§.§,!F§);
                     §§goto(addr414);
                  }
                  addr312:
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(§§pop().type);
                  if(!(_loc3_ && _loc1_))
                  {
                     if(_loc4_)
                     {
                        §§push(§2!4§.§,!F§);
                        if(_loc4_)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr341);
                              }
                              do
                              {
                                 §§push(this.§[F§);
                                 §§push("Leading commas are not supported.  Expecting \'}\' but found ");
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop() + this.token.value);
                                 }
                                 §§pop().parseError(§§pop());
                              }
                              while(!(_loc4_ || _loc2_));
                              
                              if(_loc3_)
                              {
                                 addr341:
                                 if(_loc3_ && _loc2_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.token);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr312);
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop().type);
                                          addr355:
                                          while(true)
                                          {
                                             §§push(§2!4§.§-!"§);
                                             addr357:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc4_)
                                                {
                                                   addr360:
                                                   if(!(_loc4_ || this))
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         if(!_loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr32:
                                                                     if(this.token.type == §2!4§.§"!F§)
                                                                     {
                                                                        _loc2_ = String(this.token.value);
                                                                        this.§]v§();
                                                                        addr251:
                                                                        if(this.token.type == §2!4§.§5u§)
                                                                        {
                                                                           this.§]v§();
                                                                           _loc1_[_loc2_] = this.§+!9§();
                                                                           this.§]v§();
                                                                           addr254:
                                                                           §§push(this.token.type);
                                                                           §§push(§2!4§.§,!F§);
                                                                           if(_loc4_)
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 §§goto(addr229);
                                                                              }
                                                                              addr193:
                                                                              §§push(this.token);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr208:
                                                                                    §§push(§§pop().type);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr214:
                                                                                          if(§§pop() == §2!4§.§-!"§)
                                                                                          {
                                                                                             §§goto(addr215);
                                                                                          }
                                                                                          addr127:
                                                                                          §§push(this.§[F§);
                                                                                          §§push("Expecting } or , but found ");
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr132:
                                                                                             §§push(§§pop() + this.token.value);
                                                                                          }
                                                                                          §§pop().parseError(§§pop());
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             §§goto(addr96);
                                                                                          }
                                                                                          §§goto(addr147);
                                                                                       }
                                                                                       §§goto(addr32);
                                                                                    }
                                                                                    §§goto(addr251);
                                                                                 }
                                                                                 §§goto(addr32);
                                                                              }
                                                                              §§goto(addr254);
                                                                           }
                                                                           §§goto(addr32);
                                                                        }
                                                                        addr101:
                                                                        §§push(this.§[F§);
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           addr113:
                                                                           §§pop().parseError("Expecting : but found " + this.token.value);
                                                                           addr109:
                                                                           addr111:
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              §§goto(addr38);
                                                                           }
                                                                           §§goto(addr193);
                                                                        }
                                                                        §§goto(addr127);
                                                                     }
                                                                     §§push(this.§[F§);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        §§push("Expecting string but found ");
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              §§push(this.token);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    addr83:
                                                                                    §§push(§§pop() + §§pop().value);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§pop().parseError(§§pop());
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             §§goto(addr32);
                                                                                          }
                                                                                          addr215:
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             this.§]v§();
                                                                                             if(!this.§"!C§)
                                                                                             {
                                                                                                addr147:
                                                                                                §§push(this.token);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop().type);
                                                                                                      if(!(_loc3_ && this))
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(§2!4§.§,!F§);
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               if(!(_loc3_ && _loc1_))
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(§§pop() != §§pop())
                                                                                                                     {
                                                                                                                        addr38:
                                                                                                                        §§goto(addr32);
                                                                                                                        addr122:
                                                                                                                        addr96:
                                                                                                                     }
                                                                                                                     return _loc1_;
                                                                                                                  }
                                                                                                                  §§goto(addr251);
                                                                                                               }
                                                                                                               §§goto(addr254);
                                                                                                            }
                                                                                                            §§goto(addr214);
                                                                                                         }
                                                                                                         §§goto(addr254);
                                                                                                      }
                                                                                                      §§goto(addr208);
                                                                                                   }
                                                                                                   §§goto(addr251);
                                                                                                }
                                                                                                §§goto(addr193);
                                                                                             }
                                                                                             §§goto(addr122);
                                                                                          }
                                                                                          addr229:
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr254);
                                                                                          }
                                                                                          return _loc1_;
                                                                                       }
                                                                                       §§goto(addr109);
                                                                                    }
                                                                                    §§goto(addr113);
                                                                                 }
                                                                                 §§goto(addr132);
                                                                              }
                                                                              §§goto(addr111);
                                                                           }
                                                                           §§goto(addr127);
                                                                        }
                                                                        §§goto(addr83);
                                                                     }
                                                                     §§goto(addr101);
                                                                     addr259:
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue;
                                                               addr367:
                                                            }
                                                            addr406:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                            }
                                                            addr406:
                                                            while(true)
                                                            {
                                                               continue loop10;
                                                               §§goto(addr406);
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr406);
                                                      }
                                                      addr401:
                                                   }
                                                   §§goto(addr367);
                                                }
                                                §§goto(addr406);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr412);
                                    addr397:
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr259);
                           }
                           addr414:
                           while(§§pop() != §§pop())
                           {
                           }
                           return _loc1_;
                        }
                        §§goto(addr357);
                     }
                     §§goto(addr412);
                  }
                  §§goto(addr355);
               }
            }
         }
         while(true)
         {
            §§goto(addr401);
         }
      }
      
      private function §+!9§() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.token == null)
            {
               if(!_loc3_)
               {
                  this.§[F§.parseError("Unexpected end of input");
                  addr121:
               }
               §§goto(addr121);
            }
            §§push(this.token);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               if(!(_loc3_ && this))
               {
                  var _loc1_:* = §§pop();
                  if(_loc2_)
                  {
                     §§push(§2!4§.§+S§);
                     if(!(_loc3_ && this))
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§§pop() === §§pop())
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                                 addr184:
                              }
                           }
                           else
                           {
                              §§push(§2!4§.§-J§);
                              if(_loc2_)
                              {
                                 §§push(_loc1_);
                                 if(!_loc3_)
                                 {
                                    addr175:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§goto(addr184);
                                          §§push(1);
                                       }
                                       else
                                       {
                                          addr196:
                                          §§push(2);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr278:
                                             loop6:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   return this.§5;§();
                                                case 1:
                                                   return this.§8V§();
                                                case 2:
                                                case 3:
                                                case 4:
                                                case 5:
                                                case 6:
                                                   §§push(this.token);
                                                   if(!_loc3_)
                                                   {
                                                      break loop0;
                                                   }
                                                   continue;
                                                case 7:
                                                   if(this.§"!C§)
                                                   {
                                                      break;
                                                   }
                                                   addr75:
                                                   §§push(this.token);
                                                   if(!_loc3_)
                                                   {
                                                      return §§pop().value;
                                                   }
                                                   continue;
                                                default:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(this.§[F§);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§push("Unexpected ");
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(this.token);
                                                               if(!_loc3_)
                                                               {
                                                                  addr45:
                                                                  §§pop().parseError(§§pop() + §§pop().value);
                                                                  if(_loc2_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        break loop6;
                                                                     }
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop().value);
                                                               }
                                                               addr63:
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().parseError(§§pop());
                                                               if(_loc3_)
                                                               {
                                                                  break loop1;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr75);
                                                            }
                                                            addr65:
                                                         }
                                                         §§goto(addr45);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push("Unexpected ");
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            §§goto(addr63);
                                                            §§push(this.token);
                                                         }
                                                         §§goto(addr65);
                                                      }
                                                   }
                                                   return null;
                                             }
                                             continue loop2;
                                             addr278:
                                             addr204:
                                          }
                                          else
                                          {
                                             addr242:
                                             §§goto(addr278);
                                          }
                                          §§goto(addr278);
                                       }
                                    }
                                    else if(§2!4§.§"!F§ === _loc1_)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr196);
                                       }
                                       else
                                       {
                                          addr239:
                                          §§push(5);
                                          if(!_loc2_)
                                          {
                                             addr270:
                                             if(§§pop() === _loc1_)
                                             {
                                                §§goto(addr278);
                                                §§push(7);
                                             }
                                             else
                                             {
                                                §§goto(addr278);
                                                §§push(8);
                                             }
                                          }
                                          §§goto(addr278);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§2!4§.§6!1§);
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§push(_loc1_);
                                          if(_loc2_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr278);
                                                §§push(3);
                                             }
                                             else
                                             {
                                                §§push(§2!4§.TRUE);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   addr230:
                                                   if(§§pop() === _loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr233:
                                                         §§push(4);
                                                      }
                                                      else
                                                      {
                                                         addr266:
                                                         §§goto(addr278);
                                                         §§push(6);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                   else if(§2!4§.FALSE === _loc1_)
                                                   {
                                                      §§goto(addr239);
                                                   }
                                                   else
                                                   {
                                                      §§push(§2!4§.NULL);
                                                      if(_loc2_)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr266);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr270);
                                                               §§push(§2!4§.§!!"§);
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr278);
                                 }
                                 §§goto(addr230);
                              }
                              §§goto(addr270);
                           }
                           §§goto(addr278);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr233);
               }
               §§goto(addr278);
            }
            return §§pop().value;
         }
         §§goto(addr121);
      }
   }
}
