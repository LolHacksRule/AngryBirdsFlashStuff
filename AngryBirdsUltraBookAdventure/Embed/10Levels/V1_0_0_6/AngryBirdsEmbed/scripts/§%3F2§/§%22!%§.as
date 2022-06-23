package §?2§
{
   public class §"!%§
   {
       
      
      private var §3>§:Boolean;
      
      private var value;
      
      private var §^L§:§[`§;
      
      private var token:§?Z§;
      
      public function §"!%§(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         if(_loc3_)
         {
            this.§3>§ = param2;
            this.§^L§ = new §[`§(param1,param2);
            this.§1!G§();
            if(!(_loc4_ && _loc3_))
            {
               this.value = this.§,4§();
               §§push(param2);
               if(_loc3_ || param2)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           addr77:
                           §§pop();
                           §§goto(addr88);
                        }
                     }
                     if(§§pop())
                     {
                        §§goto(addr88);
                     }
                     addr88:
                     if(_loc3_)
                     {
                        §§push(this.§1!G§() == null);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                        }
                     }
                     this.§^L§.parseError("Unexpected characters left in input stream");
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §1!G§() : §?Z§
      {
         return this.token = this.§^L§.§^m§();
      }
      
      private function §^!0§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = new Array();
         if(!(_loc2_ && _loc3_))
         {
            this.§1!G§();
            if(_loc3_)
            {
               §§push(this.token);
               if(_loc3_)
               {
                  §§push(§§pop().type);
                  if(!(_loc2_ && this))
                  {
                     §§push(§,B§.§]i§);
                     if(_loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           return _loc1_;
                        }
                        §§push(this.§3>§);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                           if(!(_loc2_ && this))
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                 }
                              }
                              §§goto(addr104);
                           }
                           §§pop();
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(this.token);
                              if(!(_loc2_ && _loc1_))
                              {
                                 addr91:
                                 §§push(§§pop().type);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§,B§.§#!'§);
                                    if(!_loc2_)
                                    {
                                       addr104:
                                       if(§§pop())
                                       {
                                          this.§1!G§();
                                          addr112:
                                          if(this.token.type == §,B§.§]i§)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§goto(addr130);
                                             }
                                             else
                                             {
                                                addr134:
                                                §§push(this.§^L§);
                                                §§push("Leading commas are not supported.  Expecting \']\' but found ");
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() + this.token.value);
                                                }
                                                §§pop().parseError(§§pop());
                                             }
                                          }
                                          §§goto(addr134);
                                       }
                                       while(true)
                                       {
                                          _loc1_.push(this.§,4§());
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             this.§1!G§();
                                             §§push(this.token);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().type);
                                                if(!(_loc2_ && this))
                                                {
                                                   §§push(§,B§.§]i§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         return _loc1_;
                                                      }
                                                      §§push(this.token);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(§§pop().type);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§,B§.§#!'§);
                                                            if(!_loc2_)
                                                            {
                                                               addr199:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     this.§1!G§();
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        if(!this.§3>§)
                                                                        {
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              addr241:
                                                                              if(this.token.type == §,B§.§]i§)
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§^L§);
                                                                  §§push("Expecting ] or , but found ");
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop() + this.token.value);
                                                                  }
                                                                  §§pop().parseError(§§pop());
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr199);
                                                }
                                             }
                                             §§goto(addr241);
                                          }
                                          break;
                                       }
                                       return _loc1_;
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                              §§goto(addr112);
                           }
                           addr130:
                           return _loc1_;
                        }
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr112);
               }
               §§goto(addr91);
            }
            §§goto(addr134);
         }
         §§goto(addr112);
      }
      
      private function §<F§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(!_loc3_)
         {
            this.§1!G§();
            if(_loc4_)
            {
               §§push(this.token);
               if(!_loc3_)
               {
                  §§push(§§pop().type);
                  if(!(_loc3_ && this))
                  {
                     §§push(§,B§.§<!;§);
                     if(_loc4_ || _loc2_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc4_)
                           {
                              §§goto(addr54);
                           }
                           else
                           {
                              addr83:
                              §§push(this.token);
                              if(!_loc3_)
                              {
                                 addr87:
                                 §§push(§§pop().type);
                                 if(_loc4_)
                                 {
                                    addr90:
                                    §§push(§,B§.§#!'§);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§goto(addr100);
                                    }
                                 }
                              }
                              §§goto(addr117);
                           }
                        }
                        else
                        {
                           §§push(this.§3>§);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(!§§pop());
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§pop();
                                       §§goto(addr83);
                                    }
                                 }
                              }
                           }
                        }
                        addr100:
                        if(§§pop() == §§pop())
                        {
                           if(!_loc3_)
                           {
                              this.§1!G§();
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr117:
                                 if(this.token.type != §,B§.§<!;§)
                                 {
                                    §§goto(addr120);
                                 }
                              }
                              return _loc1_;
                           }
                           addr120:
                           §§push(this.§^L§);
                           §§push("Leading commas are not supported.  Expecting \'}\' but found ");
                           if(_loc4_ || _loc1_)
                           {
                              §§push(§§pop() + this.token.value);
                           }
                           §§pop().parseError(§§pop());
                           §§goto(addr135);
                        }
                        addr135:
                        while(true)
                        {
                           §§push(this.token);
                           if(_loc4_ || this)
                           {
                              §§push(§§pop().type);
                              if(_loc4_)
                              {
                                 §§push(§,B§.§9W§);
                                 if(_loc4_ || this)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          _loc2_ = String(this.token.value);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             this.§1!G§();
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(this.token);
                                                if(_loc4_ || _loc1_)
                                                {
                                                   §§push(§§pop().type);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§,B§.§5!>§);
                                                      if(!_loc3_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr218:
                                                               this.§1!G§();
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  _loc1_[_loc2_] = this.§,4§();
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     addr239:
                                                                     this.§1!G§();
                                                                     §§push(this.token);
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        addr250:
                                                                        §§push(§§pop().type);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§push(§,B§.§<!;§);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              addr267:
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    return _loc1_;
                                                                                 }
                                                                                 addr387:
                                                                                 continue;
                                                                              }
                                                                              addr305:
                                                                              §§push(this.token);
                                                                              if(!(_loc3_ && _loc1_))
                                                                              {
                                                                                 addr286:
                                                                                 §§push(§§pop().type);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§,B§.§#!'§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                    }
                                                                                    addr308:
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr311:
                                                                                    §§goto(addr387);
                                                                                    addr311:
                                                                                 }
                                                                                 addr306:
                                                                                 §§goto(addr308);
                                                                                 §§push(§,B§.§<!;§);
                                                                              }
                                                                              §§goto(addr306);
                                                                              §§push(§§pop().type);
                                                                              §§goto(addr387);
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr296:
                                                                                 this.§1!G§();
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!this.§3>§)
                                                                                    {
                                                                                       §§goto(addr305);
                                                                                       §§push(this.token);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr311);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§push(this.§^L§);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§push("Expecting } or , but found ");
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(this.token);
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    addr397:
                                                                                    §§pop().parseError(§§pop() + §§pop().value);
                                                                                    addr395:
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§§pop() + §§pop().value);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§pop().parseError(§§pop());
                                                                                    §§goto(addr311);
                                                                                 }
                                                                                 §§goto(addr387);
                                                                              }
                                                                              addr379:
                                                                              §§pop().parseError(§§pop());
                                                                              if(!(_loc4_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr387);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr390:
                                                                              §§push("Expecting string but found ");
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr393:
                                                                                 §§goto(addr395);
                                                                                 §§push(this.token);
                                                                              }
                                                                           }
                                                                           §§goto(addr397);
                                                                           §§goto(addr387);
                                                                        }
                                                                        §§goto(addr306);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr387);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§^L§);
                                                            if(!_loc3_)
                                                            {
                                                               §§push("Expecting : but found ");
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  §§push(this.token);
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(§§pop() + §§pop().value);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr379);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr397);
                                                                     }
                                                                  }
                                                                  §§goto(addr397);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr393);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr390);
                                                            }
                                                            §§goto(addr397);
                                                         }
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr305);
                                             }
                                             §§goto(addr218);
                                          }
                                       }
                                       §§goto(addr311);
                                    }
                                    else
                                    {
                                       §§push(this.§^L§);
                                    }
                                    §§goto(addr390);
                                 }
                                 §§goto(addr308);
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr250);
                        }
                        return _loc1_;
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr90);
               }
               §§goto(addr87);
            }
            §§goto(addr120);
         }
         addr54:
         return _loc1_;
      }
      
      private function §,4§() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.token == null)
            {
               if(_loc2_)
               {
                  addr24:
                  this.§^L§.parseError("Unexpected end of input");
               }
            }
            §§push(this.token);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               if(!_loc3_)
               {
                  var _loc1_:* = §§pop();
                  if(§,B§.§'!E§ === _loc1_)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(0);
                        if(!(_loc2_ || _loc3_))
                        {
                           addr290:
                        }
                     }
                     else
                     {
                        addr274:
                        §§push(6);
                     }
                  }
                  else
                  {
                     §§push(§,B§.§"V§);
                     §§push(_loc1_);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop() === §§pop())
                        {
                           addr295:
                           addr296:
                           switch(1)
                           {
                              case 0:
                                 return this.§<F§();
                              case 1:
                                 return this.§^!0§();
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
                                 if(this.§3>§)
                                 {
                                    §§push(this.§^L§);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push("Unexpected ");
                                       if(_loc2_)
                                       {
                                          §§push(this.token);
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(§§pop() + §§pop().value);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr100:
                                                §§pop().parseError(§§pop());
                                                §§goto(addr131);
                                             }
                                             §§goto(addr123);
                                          }
                                          addr121:
                                          addr123:
                                          §§pop().parseError(§§pop());
                                          if(_loc2_ || this)
                                          {
                                             §§goto(addr131);
                                          }
                                          addr131:
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr108:
                                             §§push(this.§^L§);
                                             break;
                                          }
                                          return null;
                                          §§push(§§pop() + §§pop().value);
                                       }
                                       §§goto(addr100);
                                    }
                                 }
                                 §§push(this.token);
                                 if(_loc2_ || _loc2_)
                                 {
                                    return §§pop().value;
                                 }
                                 continue;
                              default:
                                 §§goto(addr108);
                           }
                           §§push("Unexpected ");
                           if(!(_loc3_ && _loc1_))
                           {
                              §§goto(addr121);
                              §§push(this.token);
                           }
                           §§goto(addr123);
                        }
                        else
                        {
                           §§push(§,B§.§9W§);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(_loc1_);
                              if(_loc2_ || this)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§push(2);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§goto(addr295);
                                    }
                                    else
                                    {
                                       addr253:
                                       §§push(_loc1_);
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr271:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr274);
                                             }
                                             else
                                             {
                                                addr287:
                                                §§push(7);
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr295);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§,B§.§[!A§);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(_loc1_);
                                             }
                                             §§goto(addr295);
                                          }
                                          §§goto(addr295);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§,B§.§@Z§);
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(§§pop() === _loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(3);
                                          }
                                          else
                                          {
                                             §§goto(addr287);
                                          }
                                       }
                                       else if(§,B§.TRUE === _loc1_)
                                       {
                                          §§goto(addr295);
                                          §§push(4);
                                       }
                                       else
                                       {
                                          §§push(§,B§.FALSE);
                                          §§push(_loc1_);
                                          if(_loc2_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc2_ || _loc3_)
                                                {
                                                   addr243:
                                                   §§goto(addr295);
                                                   §§push(5);
                                                }
                                                else
                                                {
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr295);
                                             }
                                             else
                                             {
                                                §§push(§,B§.NULL);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§goto(addr253);
                                                }
                                             }
                                             §§goto(addr274);
                                          }
                                          §§goto(addr271);
                                       }
                                    }
                                 }
                                 §§goto(addr295);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr287);
                              }
                              else
                              {
                                 §§goto(addr295);
                                 §§push(8);
                              }
                              §§goto(addr295);
                           }
                           §§goto(addr243);
                        }
                     }
                     §§goto(addr271);
                  }
                  §§goto(addr295);
               }
               §§goto(addr296);
            }
            return §§pop().value;
         }
         §§goto(addr24);
      }
   }
}
