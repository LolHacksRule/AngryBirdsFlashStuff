package §_-hq§
{
   public class §_-hb§
   {
       
      
      private var §_-Kg§:Boolean;
      
      private var value;
      
      private var §_-MW§:§_-w1§;
      
      private var §_-5F§:§_-XG§;
      
      public function §_-hb§(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         this.§_-Kg§ = param2;
         this.§_-MW§ = new §_-w1§(param1,param2);
         this.§_-ho§();
         this.value = this.§_-fN§();
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2);
            if(_loc3_ || param1)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param2)
                     {
                        §§pop();
                        addr70:
                        §§push(this.§_-ho§() == null);
                        if(_loc3_ || param1)
                        {
                           §§push(!§§pop());
                        }
                     }
                  }
               }
            }
            if(§§pop())
            {
               this.§_-MW§.parseError("Unexpected characters left in input stream");
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §_-ho§() : §_-XG§
      {
         return this.§_-5F§ = this.§_-MW§.§_-sx§();
      }
      
      private function §_-5z§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = new Array();
         if(_loc3_ || _loc2_)
         {
            this.§_-ho§();
            §§push(this.§_-5F§);
            if(_loc3_)
            {
               §§push(§§pop().type);
               if(_loc3_)
               {
                  §§push(§_-KI§.§_-a0§);
                  if(!_loc2_)
                  {
                     if(§§pop() == §§pop())
                     {
                        return _loc1_;
                     }
                     §§push(this.§_-Kg§);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           addr53:
                           if(§§pop())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§pop();
                                 §§push(this.§_-5F§);
                                 if(!_loc2_)
                                 {
                                    addr67:
                                    §§push(§§pop().type);
                                    if(!_loc2_)
                                    {
                                       addr70:
                                       §§push(§_-KI§.§_-nG§);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§goto(addr80);
                                       }
                                       §§goto(addr92);
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr89);
                              }
                           }
                        }
                        addr80:
                        if(§§pop() == §§pop())
                        {
                           if(_loc3_)
                           {
                              this.§_-ho§();
                              if(!_loc2_)
                              {
                                 addr92:
                                 addr90:
                                 addr89:
                                 addr87:
                                 if(this.§_-5F§.type == §_-KI§.§_-a0§)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       return _loc1_;
                                    }
                                 }
                                 this.§_-MW§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§_-5F§.value);
                              }
                           }
                        }
                        while(true)
                        {
                           _loc1_.push(this.§_-fN§());
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           this.§_-ho§();
                           if(!_loc2_)
                           {
                              §§push(this.§_-5F§);
                              if(!_loc2_)
                              {
                                 §§push(§§pop().type);
                                 if(_loc3_)
                                 {
                                    §§push(§_-KI§.§_-a0§);
                                    if(_loc3_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          return _loc1_;
                                       }
                                       §§push(this.§_-5F§);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop().type);
                                          if(_loc3_)
                                          {
                                             §§push(§_-KI§.§_-nG§);
                                             if(_loc3_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   addr167:
                                                   this.§_-ho§();
                                                   if(!this.§_-Kg§)
                                                   {
                                                      addr175:
                                                      if(this.§_-5F§.type == §_-KI§.§_-a0§)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   this.§_-MW§.parseError("Expecting ] or , but found " + this.§_-5F§.value);
                                                }
                                                continue;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr167);
                        }
                        return _loc1_;
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr92);
               }
               §§goto(addr70);
            }
            §§goto(addr67);
         }
         §§goto(addr87);
      }
      
      private function §_-vf§() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§_-ho§();
         §§push(this.§_-5F§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop().type);
            if(_loc3_ || _loc3_)
            {
               §§push(§_-KI§.§_-yh§);
               if(_loc3_ || _loc1_)
               {
                  if(§§pop() == §§pop())
                  {
                     return _loc1_;
                  }
                  §§push(this.§_-Kg§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 §§push(this.§_-5F§);
                                 if(!_loc4_)
                                 {
                                    addr81:
                                    §§push(§§pop().type);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr89:
                                       §§push(§_-KI§.§_-nG§);
                                       if(_loc3_)
                                       {
                                          §§goto(addr94);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr102);
                           }
                        }
                     }
                  }
                  addr94:
                  §§goto(addr93);
               }
               addr93:
               if(§§pop() == §§pop())
               {
                  this.§_-ho§();
                  addr102:
                  if(this.§_-5F§.type == §_-KI§.§_-yh§)
                  {
                     return _loc1_;
                  }
                  this.§_-MW§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§_-5F§.value);
               }
               while(true)
               {
                  §§push(this.§_-5F§);
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop().type);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§_-KI§.§_-J5§);
                        if(_loc3_ || _loc2_)
                        {
                           if(§§pop() == §§pop())
                           {
                              _loc2_ = String(this.§_-5F§.value);
                              this.§_-ho§();
                              §§push(this.§_-5F§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().type);
                                 if(_loc3_)
                                 {
                                    addr172:
                                    §§push(§_-KI§.§_-cs§);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          this.§_-ho§();
                                          _loc1_[_loc2_] = this.§_-fN§();
                                          this.§_-ho§();
                                          §§push(this.§_-5F§);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(§§pop().type);
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                §§push(§_-KI§.§_-yh§);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr212:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         return _loc1_;
                                                      }
                                                      continue;
                                                   }
                                                   §§push(this.§_-5F§);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr226:
                                                      §§push(§§pop().type);
                                                      if(_loc3_)
                                                      {
                                                         addr229:
                                                         §§push(§_-KI§.§_-nG§);
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            addr238:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  this.§_-ho§();
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!this.§_-Kg§)
                                                                     {
                                                                        if(_loc3_ || _loc1_)
                                                                        {
                                                                           addr265:
                                                                           if(this.§_-5F§.type == §_-KI§.§_-yh§)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                        addr303:
                                                                        continue;
                                                                     }
                                                                     addr285:
                                                                     §§goto(addr303);
                                                                  }
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            §§push(this.§_-MW§);
                                                            if(_loc3_)
                                                            {
                                                               §§push("Expecting } or , but found " + this.§_-5F§.value);
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().parseError(§§pop());
                                                                  §§goto(addr285);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr290:
                                                               §§push("Expecting : but found " + this.§_-5F§.value);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§pop().parseError(§§pop());
                                                                  §§goto(addr303);
                                                               }
                                                            }
                                                            addr318:
                                                            §§pop().parseError(§§pop());
                                                            continue;
                                                            §§goto(addr303);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr265);
                                                }
                                                §§goto(addr238);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr226);
                                       }
                                       else
                                       {
                                          §§push(this.§_-MW§);
                                          if(_loc3_)
                                          {
                                             §§goto(addr290);
                                          }
                                          else
                                          {
                                             addr313:
                                             §§push("Expecting string but found " + this.§_-5F§.value);
                                          }
                                          §§goto(addr318);
                                       }
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr226);
                           }
                           else
                           {
                              §§push(this.§_-MW§);
                           }
                           §§goto(addr313);
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr226);
               }
               return _loc1_;
            }
            §§goto(addr89);
         }
         §§goto(addr81);
      }
      
      private function §_-fN§() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§_-5F§ == null)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§_-MW§.parseError("Unexpected end of input");
               }
            }
         }
         §§push(this.§_-5F§);
         loop0:
         while(true)
         {
            §§push(§§pop().type);
            if(!(_loc2_ && _loc1_))
            {
               var _loc1_:* = §§pop();
               if(_loc3_)
               {
                  §§push(§_-KI§.§_-WA§);
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop() === §§pop())
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              addr187:
                           }
                        }
                        else if(§_-KI§.§_-zY§ === _loc1_)
                        {
                           §§push(1);
                           if(_loc2_)
                           {
                              addr239:
                           }
                        }
                        else
                        {
                           §§push(§_-KI§.§_-J5§);
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(2);
                                    if(_loc3_ || _loc1_)
                                    {
                                       addr258:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             return this.§_-vf§();
                                          case 1:
                                             return this.§_-5z§();
                                          case 2:
                                          case 3:
                                          case 4:
                                          case 5:
                                          case 6:
                                             §§push(this.§_-5F§);
                                             if(!_loc2_)
                                             {
                                                break loop0;
                                             }
                                             continue;
                                          case 7:
                                             if(!this.§_-Kg§)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(this.§_-5F§);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      return §§pop().value;
                                                   }
                                                   continue;
                                                }
                                                addr108:
                                             }
                                             else
                                             {
                                                addr95:
                                                §§push(this.§_-MW§);
                                                if(_loc3_)
                                                {
                                                   addr96:
                                                   §§push("Unexpected ");
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.§_-5F§);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§pop() + §§pop().value);
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            §§pop().parseError(§§pop());
                                                            break;
                                                         }
                                                         §§goto(addr100);
                                                      }
                                                      addr98:
                                                      addr100:
                                                      §§pop().parseError(§§pop());
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§goto(addr108);
                                                      }
                                                      return null;
                                                      §§push(§§pop() + §§pop().value);
                                                   }
                                                   §§goto(addr98);
                                                   §§push(this.§_-5F§);
                                                }
                                                §§goto(addr96);
                                                §§push("Unexpected ");
                                             }
                                             §§goto(addr100);
                                       }
                                       addr257:
                                       §§goto(addr95);
                                       addr257:
                                       §§push(this.§_-MW§);
                                    }
                                    else
                                    {
                                       addr242:
                                       if(§§pop() === _loc1_)
                                       {
                                          addr251:
                                          §§push(7);
                                       }
                                       else
                                       {
                                          §§goto(addr257);
                                          §§push(8);
                                       }
                                       §§goto(addr257);
                                    }
                                 }
                                 else
                                 {
                                    addr231:
                                    §§push(6);
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§goto(addr239);
                                    }
                                 }
                                 §§goto(addr257);
                              }
                              else
                              {
                                 §§push(§_-KI§.§_-pd§);
                                 if(_loc3_)
                                 {
                                    addr175:
                                    §§push(_loc1_);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §§goto(addr187);
                                             §§push(3);
                                          }
                                          else
                                          {
                                             addr206:
                                             §§goto(addr257);
                                             §§push(4);
                                          }
                                          §§goto(addr257);
                                       }
                                       else
                                       {
                                          §§push(§_-KI§.TRUE);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§push(_loc1_);
                                             if(_loc3_ || this)
                                             {
                                                addr205:
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr206);
                                                }
                                                else
                                                {
                                                   §§push(§_-KI§.FALSE);
                                                   §§push(_loc1_);
                                                }
                                                §§goto(addr257);
                                             }
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(5);
                                                   if(!_loc2_)
                                                   {
                                                      addr217:
                                                      §§goto(addr257);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr242);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr252);
                                             }
                                             else
                                             {
                                                §§push(§_-KI§.§_-to§);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(§§pop() === _loc1_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr231);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr251);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr242);
                                                      §§push(§_-KI§.§_-8n§);
                                                   }
                                                }
                                                §§goto(addr257);
                                             }
                                          }
                                          §§goto(addr217);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr257);
                           }
                           §§goto(addr242);
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr175);
               }
               §§goto(addr231);
            }
            §§goto(addr258);
         }
         return §§pop().value;
      }
   }
}
