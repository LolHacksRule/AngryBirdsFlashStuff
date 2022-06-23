package §?!7§
{
   public class §3z§
   {
       
      
      private var §#!C§:Boolean;
      
      private var value;
      
      private var §"s§:§9c§;
      
      private var token:§=u§;
      
      public function §3z§(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            this.§#!C§ = param2;
            if(_loc3_)
            {
               this.§"s§ = new §9c§(param1,param2);
               if(_loc3_ || _loc3_)
               {
                  this.§;!5§();
                  if(_loc3_)
                  {
                     addr52:
                     this.value = this.§"V§();
                  }
                  §§push(param2);
                  if(!(_loc4_ && this))
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr72);
                     }
                     §§goto(addr86);
                  }
                  addr72:
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr86:
                        §§pop();
                        §§goto(addr113);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.§"s§.parseError("Unexpected characters left in input stream");
                     }
                     §§goto(addr113);
                  }
                  addr113:
                  if(!(_loc4_ && param2))
                  {
                     addr94:
                     §§push(this.§;!5§() == null);
                     if(_loc3_ || param2)
                     {
                        §§push(!§§pop());
                     }
                  }
                  return;
               }
               §§goto(addr94);
            }
            §§goto(addr52);
         }
         §§goto(addr86);
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §;!5§() : §=u§
      {
         return this.token = this.§"s§.§0t§();
      }
      
      private function §1j§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = new Array();
         if(_loc3_)
         {
            this.§;!5§();
            §§push(this.token);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop().type);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§<a§.§#Z§);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           return _loc1_;
                        }
                        addr139:
                        §§push(this.§"s§);
                        §§push("Leading commas are not supported.  Expecting \']\' but found ");
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() + this.token.value);
                        }
                        §§pop().parseError(§§pop());
                     }
                     else
                     {
                        §§push(this.§#!C§);
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ && _loc1_)
                                 {
                                 }
                              }
                              §§goto(addr102);
                           }
                           §§pop();
                           §§push(this.token);
                           if(!_loc2_)
                           {
                              addr94:
                              §§push(§§pop().type);
                              if(!_loc2_)
                              {
                                 addr97:
                                 §§push(§<a§.§4v§);
                                 if(!_loc2_)
                                 {
                                    addr102:
                                    if(§§pop())
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          this.§;!5§();
                                          addr127:
                                          if(this.token.type == §<a§.§#Z§)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                return _loc1_;
                                             }
                                             §§goto(addr139);
                                          }
                                       }
                                       §§goto(addr139);
                                    }
                                    addr154:
                                    while(true)
                                    {
                                       _loc1_.push(this.§"V§());
                                       this.§;!5§();
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§push(this.token);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop().type);
                                             if(_loc3_)
                                             {
                                                §§push(§<a§.§#Z§);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      return _loc1_;
                                                   }
                                                   §§push(this.token);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr199:
                                                      §§push(§§pop().type);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr207:
                                                         §§push(§<a§.§4v§);
                                                         if(!_loc2_)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(this.§"s§);
                                                               §§push("Expecting ] or , but found ");
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§push(§§pop() + this.token.value);
                                                               }
                                                               §§pop().parseError(§§pop());
                                                               continue;
                                                            }
                                                            this.§;!5§();
                                                            if(!_loc2_)
                                                            {
                                                               if(!this.§#!C§)
                                                               {
                                                                  addr229:
                                                                  if(this.token.type == §<a§.§#Z§)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr229);
                                    }
                                    return _loc1_;
                                    §§push(§§pop() == §§pop());
                                 }
                              }
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr127);
               }
               §§goto(addr97);
            }
            §§goto(addr94);
         }
         §§goto(addr139);
      }
      
      private function §5%§() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§;!5§();
         if(!_loc4_)
         {
            §§push(this.token);
            if(_loc3_)
            {
               §§push(§§pop().type);
               if(_loc3_)
               {
                  §§push(§<a§.§=-§);
                  if(_loc3_ || this)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc4_)
                        {
                           return _loc1_;
                        }
                        addr109:
                        §§push(this.§"s§);
                        §§push("Leading commas are not supported.  Expecting \'}\' but found ");
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(§§pop() + this.token.value);
                        }
                        §§pop().parseError(§§pop());
                     }
                     else
                     {
                        §§push(this.§#!C§);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                           if(!(_loc4_ && _loc2_))
                           {
                              addr60:
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§pop();
                                    addr65:
                                    §§push(this.token);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr74:
                                       §§push(§§pop().type);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§push(§<a§.§4v§);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr87);
                                          }
                                       }
                                    }
                                    §§goto(addr104);
                                 }
                              }
                           }
                           addr87:
                           addr86:
                           if(§§pop() == §§pop())
                           {
                              if(_loc3_)
                              {
                                 this.§;!5§();
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr104:
                                    if(this.token.type == §<a§.§=-§)
                                    {
                                       §§goto(addr105);
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              addr105:
                              return _loc1_;
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr60);
                     }
                     addr124:
                     while(true)
                     {
                        §§push(this.token);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop().type);
                           if(_loc3_)
                           {
                              §§push(§<a§.§;e§);
                              if(!(_loc4_ && _loc1_))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       _loc2_ = String(this.token.value);
                                       this.§;!5§();
                                       §§push(this.token);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop().type);
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr186:
                                             §§push(§<a§.§8!B§);
                                             if(_loc3_)
                                             {
                                                addr190:
                                                if(§§pop() == §§pop())
                                                {
                                                   this.§;!5§();
                                                   if(_loc3_)
                                                   {
                                                      _loc1_[_loc2_] = this.§"V§();
                                                      this.§;!5§();
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(this.token);
                                                         if(_loc3_ || this)
                                                         {
                                                            addr218:
                                                            §§push(§§pop().type);
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               addr226:
                                                               §§push(§<a§.§=-§);
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  addr235:
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        return _loc1_;
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§push(this.token);
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     addr254:
                                                                     §§push(§§pop().type);
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        addr262:
                                                                        §§push(§<a§.§4v§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr266:
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              this.§;!5§();
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!this.§#!C§)
                                                                                 {
                                                                                    if(!(_loc3_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr288:
                                                                                    if(this.token.type == §<a§.§=-§)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr322:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§"s§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push("Expecting } or , but found ");
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§push(this.token);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop().value);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§pop().parseError(§§pop());
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr335:
                                                                                          §§push(this.token);
                                                                                          if(_loc3_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop().value);
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr363:
                                                                                                §§pop().parseError(§§pop());
                                                                                                addr364:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr379:
                                                                                                §§pop().parseError(§§pop());
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr379);
                                                                                       }
                                                                                    }
                                                                                    addr377:
                                                                                    §§goto(addr379);
                                                                                    §§push(§§pop() + §§pop().value);
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr367:
                                                                                 §§push("Expecting string but found ");
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr375:
                                                                                    §§goto(addr377);
                                                                                    §§push(this.token);
                                                                                 }
                                                                              }
                                                                              §§goto(addr379);
                                                                           }
                                                                           §§goto(addr363);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                   §§goto(addr322);
                                                }
                                                else
                                                {
                                                   §§push(this.§"s§);
                                                   if(_loc3_)
                                                   {
                                                      §§push("Expecting : but found ");
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§goto(addr335);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr375);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr367);
                                                   }
                                                   §§goto(addr379);
                                                }
                                             }
                                             §§goto(addr235);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr288);
                                 }
                                 else
                                 {
                                    §§push(this.§"s§);
                                 }
                                 §§goto(addr367);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr254);
                     }
                     return _loc1_;
                  }
                  §§goto(addr86);
               }
               §§goto(addr104);
            }
            §§goto(addr74);
         }
         §§goto(addr65);
      }
      
      private function §"V§() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.token == null)
            {
               if(_loc2_)
               {
                  this.§"s§.parseError("Unexpected end of input");
               }
            }
         }
         §§push(this.token);
         while(true)
         {
            §§push(§§pop().type);
            if(_loc2_)
            {
               var _loc1_:* = §§pop();
               §§push(§<a§.§-j§);
               §§push(_loc1_);
               if(_loc2_)
               {
                  if(§§pop() === §§pop())
                  {
                     §§push(!(_loc3_ && _loc2_) ? 0 : 5);
                  }
                  else if(§<a§.§ e§ === _loc1_)
                  {
                     §§push(1);
                  }
                  else
                  {
                     §§push(§<a§.§;e§);
                     if(_loc2_)
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           addr188:
                           if(§§pop() === §§pop())
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr267:
                                 switch(2)
                                 {
                                    case 0:
                                       return this.§5%§();
                                    case 1:
                                       return this.§1j§();
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                       §§push(this.token);
                                       if(_loc2_)
                                       {
                                          return §§pop().value;
                                       }
                                       addr85:
                                       return §§pop().value;
                                       break;
                                    case 7:
                                       if(!this.§#!C§)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§"s§);
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push("Unexpected ");
                                             if(_loc2_)
                                             {
                                                §§goto(addr152);
                                             }
                                             §§goto(addr148);
                                          }
                                          addr140:
                                          §§push("Unexpected ");
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§goto(addr148);
                                          }
                                          §§goto(addr152);
                                       }
                                       addr152:
                                       §§push(this.token);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() + §§pop().value);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§pop().parseError(§§pop());
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                break;
                                             }
                                             §§goto(addr269);
                                          }
                                          addr148:
                                          §§push(this.token);
                                       }
                                       §§pop().parseError(§§pop() + §§pop().value);
                                       addr269:
                                       return null;
                                 }
                                 break;
                              }
                              addr222:
                              §§goto(addr267);
                              §§push(4);
                              §§goto(addr267);
                           }
                           else
                           {
                              §§push(§<a§.§&_§);
                              if(_loc2_ || _loc2_)
                              {
                                 addr208:
                                 if(§§pop() === _loc1_)
                                 {
                                    §§goto(addr267);
                                    §§push(3);
                                 }
                                 else
                                 {
                                    §§push(§<a§.TRUE);
                                 }
                                 §§goto(addr267);
                              }
                              §§push(_loc1_);
                              if(_loc2_ || _loc2_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr222);
                                 }
                                 else
                                 {
                                    §§push(§<a§.FALSE);
                                    §§push(_loc1_);
                                    if(_loc2_)
                                    {
                                       addr229:
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr230);
                                       }
                                       else
                                       {
                                          §§push(§<a§.NULL);
                                          §§push(_loc1_);
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr267);
                                                   §§push(6);
                                                }
                                             }
                                             else
                                             {
                                                addr260:
                                                if(§<a§.§`e§ !== _loc1_)
                                                {
                                                   §§goto(addr267);
                                                   §§push(8);
                                                }
                                             }
                                             §§goto(addr267);
                                             §§push(7);
                                          }
                                       }
                                       §§goto(addr267);
                                    }
                                    §§goto(addr260);
                                 }
                              }
                              §§goto(addr229);
                           }
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr260);
                  }
                  §§goto(addr267);
               }
               §§goto(addr188);
            }
            §§goto(addr267);
         }
         §§goto(addr140);
         §§push(this.§"s§);
      }
   }
}
