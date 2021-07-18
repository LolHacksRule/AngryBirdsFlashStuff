package §]!Z§
{
   public class §#c§
   {
       
      
      private var §@N§:Boolean;
      
      private var value;
      
      private var §5!O§:§;!G§;
      
      private var token:§in§;
      
      public function §#c§(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         super();
         if(!_loc3_)
         {
            this.§@N§ = param2;
            this.§5!O§ = new §;!G§(param1,param2);
            if(!(_loc3_ && this))
            {
               this.§^a§();
               this.value = this.§6!b§();
               if(!(_loc3_ && param1))
               {
                  §§push(param2);
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc4_ || param2)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || param2)
                           {
                              addr90:
                              §§pop();
                              addr91:
                              §§push(this.§^a§() == null);
                              if(_loc3_)
                              {
                              }
                              §§goto(addr98);
                           }
                           addr98:
                           if(§§pop())
                           {
                              this.§5!O§.parseError("Unexpected characters left in input stream");
                              §§goto(addr103);
                           }
                           addr103:
                           return;
                           §§push(!§§pop());
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr91);
            }
            §§goto(addr103);
         }
         §§goto(addr90);
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §^a§() : §in§
      {
         return this.token = this.§5!O§.§4!h§();
      }
      
      private function §'!l§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Array = new Array();
         this.§^a§();
         if(_loc2_)
         {
            §§push(this.token);
            if(_loc2_ || this)
            {
               §§push(§§pop().type);
               if(!_loc3_)
               {
                  §§push(§8M§.§@!p§);
                  if(!_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc2_)
                        {
                           return _loc1_;
                        }
                        addr119:
                        §§push(this.§5!O§);
                        §§push("Leading commas are not supported.  Expecting \']\' but found ");
                        if(_loc2_)
                        {
                           §§push(§§pop() + this.token.value);
                        }
                        §§pop().parseError(§§pop());
                     }
                     else
                     {
                        §§push(this.§@N§);
                        if(!(_loc3_ && this))
                        {
                           §§push(!§§pop());
                           if(_loc2_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ && this)
                                 {
                                 }
                              }
                              §§goto(addr96);
                           }
                           §§pop();
                           §§push(this.token);
                           if(!_loc3_)
                           {
                              §§push(§§pop().type);
                              if(_loc2_ || _loc2_)
                              {
                                 addr86:
                                 §§push(§8M§.§`!<§);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr96:
                                    if(§§pop())
                                    {
                                       this.§^a§();
                                       addr114:
                                       if(this.token.type == §8M§.§@!p§)
                                       {
                                          §§goto(addr115);
                                       }
                                       else
                                       {
                                          §§goto(addr119);
                                       }
                                    }
                                    addr129:
                                    while(true)
                                    {
                                       _loc1_.push(this.§6!b§());
                                       if(_loc2_)
                                       {
                                          this.§^a§();
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(this.token);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop().type);
                                                if(!_loc3_)
                                                {
                                                   §§push(§8M§.§@!p§);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            return _loc1_;
                                                         }
                                                         continue;
                                                      }
                                                      §§push(this.token);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr176:
                                                         §§push(§§pop().type);
                                                         if(!_loc3_)
                                                         {
                                                            addr179:
                                                            §§push(§8M§.§`!<§);
                                                            if(_loc2_ || this)
                                                            {
                                                               addr188:
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  §§push(this.§5!O§);
                                                                  §§push("Expecting ] or , but found ");
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() + this.token.value);
                                                                  }
                                                                  §§pop().parseError(§§pop());
                                                                  continue;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               this.§^a§();
                                                               addr193:
                                                               if(!this.§@N§)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr213:
                                                                  if(this.token.type == §8M§.§@!p§)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr216:
                                                                  continue;
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr179);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr216);
                                    }
                                    return _loc1_;
                                    §§push(§§pop() == §§pop());
                                 }
                              }
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr114);
               }
               §§goto(addr86);
            }
            §§goto(addr114);
         }
         addr115:
         return _loc1_;
      }
      
      private function §`!k§() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(!_loc4_)
         {
            this.§^a§();
            if(_loc3_ || _loc1_)
            {
               §§push(this.token);
               if(_loc3_)
               {
                  §§push(§§pop().type);
                  if(!_loc4_)
                  {
                     §§push(§8M§.§&!t§);
                     if(_loc3_ || _loc1_)
                     {
                        if(§§pop() == §§pop())
                        {
                           §§goto(addr51);
                        }
                        else
                        {
                           §§push(this.§@N§);
                           if(!_loc4_)
                           {
                              §§push(!§§pop());
                              if(!(_loc4_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr69:
                                       §§pop();
                                       §§push(this.token);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          addr79:
                                          §§push(§§pop().type);
                                          if(_loc3_)
                                          {
                                             addr82:
                                             §§push(§8M§.§`!<§);
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
                              §§goto(addr87);
                           }
                           §§goto(addr69);
                        }
                     }
                     addr87:
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           this.§^a§();
                           if(!_loc4_)
                           {
                              addr104:
                              if(this.token.type != §8M§.§&!t§)
                              {
                                 §§push(this.§5!O§);
                                 §§push("Leading commas are not supported.  Expecting \'}\' but found ");
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(§§pop() + this.token.value);
                                 }
                                 §§pop().parseError(§§pop());
                                 §§goto(addr124);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     addr124:
                     while(true)
                     {
                        §§push(this.token);
                        if(_loc3_)
                        {
                           §§push(§§pop().type);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(§8M§.§0!h§);
                              if(_loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc2_ = String(this.token.value);
                                       if(_loc3_ || _loc2_)
                                       {
                                          this.§^a§();
                                          if(_loc3_)
                                          {
                                             §§push(this.token);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().type);
                                                if(!(_loc4_ && this))
                                                {
                                                   §§push(§8M§.§0^§);
                                                   if(_loc3_ || this)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            this.§^a§();
                                                            if(!_loc4_)
                                                            {
                                                               addr201:
                                                               _loc1_[_loc2_] = this.§6!b§();
                                                               addr206:
                                                               this.§^a§();
                                                               §§push(this.token);
                                                               if(_loc3_)
                                                               {
                                                                  addr212:
                                                                  §§push(§§pop().type);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§8M§.§&!t§);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr219:
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           return _loc1_;
                                                                        }
                                                                        §§push(this.token);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr226:
                                                                           §§push(§§pop().type);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr229:
                                                                              §§push(§8M§.§`!<§);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 addr238:
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    this.§^a§();
                                                                                    addr288:
                                                                                    if(!this.§@N§)
                                                                                    {
                                                                                       §§push(this.token);
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§push(this.§5!O§);
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    §§push("Expecting } or , but found ");
                                                                                    if(_loc3_ || _loc1_)
                                                                                    {
                                                                                       §§push(this.token);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop().value);
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             §§pop().parseError(§§pop());
                                                                                          }
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr320:
                                                                                          §§push(§§pop() + §§pop().value);
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             addr340:
                                                                                             §§pop().parseError(§§pop() + this.token.value);
                                                                                             addr336:
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       §§pop().parseError(§§pop());
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr333:
                                                                                    §§push("Expecting string but found ");
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr336);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr340);
                                                                                 §§goto(addr288);
                                                                              }
                                                                              addr249:
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr288);
                                                                              }
                                                                              §§goto(addr288);
                                                                           }
                                                                           addr247:
                                                                           §§goto(addr249);
                                                                           §§push(§8M§.§&!t§);
                                                                        }
                                                                        §§goto(addr247);
                                                                        §§push(§§pop().type);
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§5!O§);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§push("Expecting : but found ");
                                                            if(!_loc4_)
                                                            {
                                                               §§push(this.token);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§goto(addr320);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr340);
                                                      }
                                                   }
                                                   §§goto(addr229);
                                                }
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr288);
                                 }
                                 else
                                 {
                                    §§push(this.§5!O§);
                                 }
                                 §§goto(addr333);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr212);
                     }
                     return _loc1_;
                  }
                  §§goto(addr82);
               }
               §§goto(addr79);
            }
            §§goto(addr69);
         }
         addr51:
         return _loc1_;
      }
      
      private function §6!b§() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.token == null)
            {
               if(_loc2_)
               {
                  this.§5!O§.parseError("Unexpected end of input");
               }
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
               §§push(§8M§.§"!J§);
               if(_loc2_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(0);
                           if(_loc3_ && _loc1_)
                           {
                              addr176:
                              if(§§pop() === _loc1_)
                              {
                                 §§push(1);
                              }
                              else
                              {
                                 addr182:
                                 §§push(§8M§.§0!h§);
                                 §§push(_loc1_);
                                 if(_loc2_ || this)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc2_ || this)
                                       {
                                          addr297:
                                          addr198:
                                          addr298:
                                          switch(2)
                                          {
                                             case 0:
                                                return this.§`!k§();
                                             case 1:
                                                return this.§'!l§();
                                             case 2:
                                             case 3:
                                             case 4:
                                             case 5:
                                             case 6:
                                                break loop0;
                                             case 7:
                                                if(!this.§@N§)
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                §§push(this.§5!O§);
                                                if(!_loc3_)
                                                {
                                                   §§push("Unexpected ");
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this.token);
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§push(§§pop() + §§pop().value);
                                                         if(_loc2_ || this)
                                                         {
                                                            addr112:
                                                            §§pop().parseError(§§pop());
                                                            §§goto(addr131);
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                      addr128:
                                                      addr130:
                                                      §§pop().parseError(§§pop());
                                                      addr131:
                                                      if(!_loc3_)
                                                      {
                                                         addr115:
                                                         §§push(this.§5!O§);
                                                         break;
                                                      }
                                                      return null;
                                                      §§push(§§pop() + §§pop().value);
                                                   }
                                                   §§goto(addr112);
                                                }
                                                break;
                                             default:
                                                §§goto(addr115);
                                          }
                                          §§push("Unexpected ");
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§goto(addr128);
                                             §§push(this.token);
                                          }
                                          §§goto(addr130);
                                       }
                                       else
                                       {
                                          addr278:
                                          §§goto(addr297);
                                          §§push(6);
                                       }
                                       §§goto(addr297);
                                    }
                                    else
                                    {
                                       §§push(§8M§.§1!b§);
                                       §§push(_loc1_);
                                       if(_loc2_ || this)
                                       {
                                          addr210:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§goto(addr297);
                                                §§push(3);
                                             }
                                             else
                                             {
                                                addr228:
                                                §§push(4);
                                                if(_loc3_ && _loc3_)
                                                {
                                                   addr292:
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr297);
                                          }
                                          else
                                          {
                                             §§push(§8M§.TRUE);
                                             §§push(_loc1_);
                                             if(_loc2_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr297);
                                                }
                                                else
                                                {
                                                   §§push(§8M§.FALSE);
                                                   §§push(_loc1_);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr247:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr297);
                                                         §§push(5);
                                                      }
                                                      else
                                                      {
                                                         §§push(§8M§.NULL);
                                                         §§push(_loc1_);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc2_ || this)
                                                               {
                                                                  §§goto(addr278);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr283:
                                                               if(§8M§.§+!p§ !== _loc1_)
                                                               {
                                                                  §§goto(addr297);
                                                                  §§push(8);
                                                               }
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr283);
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                           §§goto(addr297);
                        }
                        §§goto(addr198);
                     }
                     else
                     {
                        §§push(§8M§.§1r§);
                        if(!(_loc3_ && _loc1_))
                        {
                           §§goto(addr176);
                        }
                     }
                     §§goto(addr182);
                  }
               }
               §§goto(addr283);
            }
            §§goto(addr298);
         }
         §§push(this.token);
         if(!_loc3_)
         {
            return §§pop().value;
         }
         §§goto(addr85);
      }
   }
}
