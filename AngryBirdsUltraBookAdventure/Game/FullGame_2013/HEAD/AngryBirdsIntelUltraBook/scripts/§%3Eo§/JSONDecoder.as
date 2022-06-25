package §>o§
{
   public class JSONDecoder
   {
       
      
      private var §<g§:Boolean;
      
      private var value;
      
      private var §8!b§:§;!3§;
      
      private var §>d§:§8!8§;
      
      public function JSONDecoder(param1:String, param2:Boolean)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§<g§ = param2;
               loop1:
               while(true)
               {
                  this.§8!b§ = new §;!3§(param1,param2);
                  loop2:
                  while(true)
                  {
                     §§push(this.§9t§());
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           this.value = this.§ get§();
                           loop5:
                           for(; _loc3_; while(true)
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop5;
                              }
                              §§goto(addr24);
                           })
                           {
                              if(_loc4_)
                              {
                                 continue loop2;
                              }
                              §§push(param2);
                              loop6:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr96:
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       while(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       addr24:
                                       return;
                                       addr72:
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                       addr41:
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr124:
                        §§push(this.§9t§());
                        if(_loc4_)
                        {
                           continue;
                        }
                        §§push(§§pop() == null);
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              addr40:
                              §§push(Boolean(§§pop()));
                           }
                           §§goto(addr41);
                        }
                        §§goto(addr40);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§8!b§.parseError("Unexpected characters left in input stream");
            §§goto(addr85);
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §9t§() : §8!8§
      {
         return this.§>d§ = this.§8!b§.§;!e§();
      }
      
      private function §;!V§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = new Array();
         if(_loc3_)
         {
            §§push(this.§9t§());
            loop0:
            while(true)
            {
               §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§>d§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().type);
                     loop3:
                     while(true)
                     {
                        §§push(§4!D§.§8!Z§);
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§<g§);
                              loop6:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§pop();
                                             addr366:
                                             loop14:
                                             while(true)
                                             {
                                                §§push(this.§>d§);
                                                addr290:
                                                while(true)
                                                {
                                                   §§push(§§pop().type);
                                                   addr291:
                                                   while(true)
                                                   {
                                                      §§push(§4!D§.§[!P§);
                                                      addr294:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc3_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         addr312:
                                                         if(_loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue loop6;
                                                         }
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                             }
                                          }
                                          addr365:
                                       }
                                       loop8:
                                       while(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§9t§());
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             §§pop();
                                             for(; !_loc2_; if(_loc3_ || this)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      return _loc1_;
                                                   }
                                                   break loop4;
                                                }
                                                continue loop5;
                                             })
                                             {
                                                if(!(_loc3_ || _loc1_))
                                                {
                                                   continue loop1;
                                                }
                                                §§push(this.§>d§);
                                                if(!_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop().type);
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§4!D§.§8!Z§);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                            addr286:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§8!b§);
                                                            §§push("Leading commas are not supported.  Expecting \']\' but found ");
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               §§push(§§pop() + this.§>d§.value);
                                                            }
                                                            §§pop().parseError(§§pop());
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         if(!(_loc2_ && this))
                                                         {
                                                            break loop8;
                                                         }
                                                         continue loop9;
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr290);
                                             }
                                             §§goto(addr366);
                                          }
                                          continue loop0;
                                          §§goto(addr314);
                                       }
                                       addr24:
                                       §§push(true);
                                       if(!(_loc2_ && this))
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc3_ || this)
                                             {
                                                if(_loc2_ && this)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      addr52:
                                                      §§goto(addr24);
                                                   }
                                                   addr195:
                                                   addr206:
                                                   if(this.§>d§.type != §4!D§.§8!Z§)
                                                   {
                                                      addr151:
                                                      §§push(this.§>d§.type);
                                                      §§push(§4!D§.§[!P§);
                                                      if(_loc3_ || this)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            addr159:
                                                            if(_loc3_ || this)
                                                            {
                                                               §§goto(addr199);
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         §§push(this.§8!b§);
                                                         §§push("Expecting ] or , but found ");
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop() + this.§>d§.value);
                                                         }
                                                         §§pop().parseError(§§pop());
                                                         addr66:
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr24);
                                                         }
                                                         §§goto(addr132);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   addr199:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§9t§());
                                                         if(!(_loc2_ && this))
                                                         {
                                                            §§pop();
                                                            addr190:
                                                            §§push(this.§<g§);
                                                            if(_loc3_ || _loc1_)
                                                            {
                                                               addr80:
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(this.§>d§);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().type);
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    §§push(§4!D§.§8!Z§);
                                                                                    if(!(_loc2_ && _loc1_))
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          §§goto(addr132);
                                                                                       }
                                                                                       §§goto(addr52);
                                                                                    }
                                                                                    §§goto(addr151);
                                                                                 }
                                                                                 §§goto(addr195);
                                                                              }
                                                                              §§goto(addr151);
                                                                           }
                                                                           §§goto(addr195);
                                                                        }
                                                                        §§goto(addr151);
                                                                     }
                                                                     §§goto(addr190);
                                                                  }
                                                                  addr132:
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr159);
                                                                  }
                                                                  return _loc1_;
                                                               }
                                                               §§goto(addr52);
                                                            }
                                                            §§goto(addr80);
                                                         }
                                                         addr205:
                                                         §§pop();
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr205);
                                                      §§push(this.§9t§());
                                                      addr215:
                                                   }
                                                   return _loc1_;
                                                }
                                                return null;
                                             }
                                             §§goto(addr66);
                                          }
                                          _loc1_.push(this.§ get§());
                                          §§goto(addr215);
                                       }
                                       §§goto(addr80);
                                    }
                                    §§goto(addr365);
                                 }
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr366);
      }
      
      private function parseObject() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         if(!_loc4_)
         {
            §§push(this.§9t§());
            loop0:
            while(true)
            {
               §§pop();
               addr578:
               loop1:
               while(true)
               {
                  §§push(this.§>d§);
                  while(true)
                  {
                     §§push(§§pop().type);
                     loop3:
                     while(true)
                     {
                        §§push(§4!D§.§8c§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§<g§);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§>d§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().type);
                                                      addr452:
                                                      while(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§4!D§.§[!P§);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               if(!(_loc3_ || _loc2_))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(_loc4_ && _loc3_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  break loop10;
                                                               }
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  if(_loc4_ && _loc2_)
                                                                  {
                                                                     return _loc1_;
                                                                  }
                                                                  addr572:
                                                                  continue loop0;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         addr26:
                                                         §§push(true);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           addr309:
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr334:
                                                                              §§push(this.§>d§.type);
                                                                              §§push(§4!D§.§8c§);
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       §§goto(addr309);
                                                                                    }
                                                                                    addr236:
                                                                                    §§push(this.§>d§);
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr249:
                                                                                          §§push(§§pop().type);
                                                                                          §§push(§4!D§.§[!P§);
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                addr257:
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§9t§());
                                                                                                   if(_loc3_ || _loc1_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr269:
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         addr173:
                                                                                                         if(!this.§<g§)
                                                                                                         {
                                                                                                            addr175:
                                                                                                            if(_loc3_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(this.§>d§);
                                                                                                               if(_loc3_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop().type);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc3_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(§4!D§.§8c§);
                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(§§pop() == §§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr219);
                                                                                                                              }
                                                                                                                              addr63:
                                                                                                                              §§goto(addr26);
                                                                                                                              addr153:
                                                                                                                              addr117:
                                                                                                                           }
                                                                                                                           §§goto(addr249);
                                                                                                                        }
                                                                                                                        addr348:
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr353:
                                                                                                                           if(§§pop() == §4!D§.§+<§)
                                                                                                                           {
                                                                                                                              addr356:
                                                                                                                              this.§9t§();
                                                                                                                              _loc1_[_loc2_] = this.§ get§();
                                                                                                                              addr341:
                                                                                                                              §§push(this.§9t§());
                                                                                                                              if(!(_loc4_ && this))
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    §§goto(addr334);
                                                                                                                                 }
                                                                                                                                 addr361:
                                                                                                                                 §§pop();
                                                                                                                                 §§push(this.§>d§);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr348);
                                                                                                                                    §§push(§§pop().type);
                                                                                                                                 }
                                                                                                                                 if(§§pop().type == §4!D§.§+L§)
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       _loc2_ = String(this.§>d§.value);
                                                                                                                                       addr387:
                                                                                                                                       §§goto(addr361);
                                                                                                                                       §§push(this.§9t§());
                                                                                                                                       addr387:
                                                                                                                                    }
                                                                                                                                    §§goto(addr387);
                                                                                                                                 }
                                                                                                                                 addr362:
                                                                                                                                 §§push(this.§8!b§);
                                                                                                                                 if(_loc3_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push("Expecting string but found ");
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          if(_loc3_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§>d§);
                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr98:
                                                                                                                                                §§push(§§pop() + §§pop().value);
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      §§pop().parseError(§§pop());
                                                                                                                                                      addr109:
                                                                                                                                                      if(_loc3_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr26);
                                                                                                                                                      }
                                                                                                                                                      addr138:
                                                                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr63);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr257);
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr153);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr362);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr341);
                                                                                                                                                   }
                                                                                                                                                   addr125:
                                                                                                                                                   addr123:
                                                                                                                                                   §§push(this.§>d§);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr129:
                                                                                                                                                      §§push(§§pop() + §§pop().value);
                                                                                                                                                      if(_loc3_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().parseError(§§pop());
                                                                                                                                                         §§goto(addr138);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr163);
                                                                                                                                                   }
                                                                                                                                                   addr163:
                                                                                                                                                   §§pop().parseError(§§pop());
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr117);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr175);
                                                                                                                                                   }
                                                                                                                                                   addr219:
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr269);
                                                                                                                                                   }
                                                                                                                                                   return _loc1_;
                                                                                                                                                   §§push(§§pop() + §§pop().value);
                                                                                                                                                }
                                                                                                                                                §§goto(addr129);
                                                                                                                                             }
                                                                                                                                             §§goto(addr125);
                                                                                                                                          }
                                                                                                                                          addr159:
                                                                                                                                          §§goto(addr125);
                                                                                                                                          §§push(this.§>d§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr98);
                                                                                                                                    }
                                                                                                                                    addr158:
                                                                                                                                    §§goto(addr159);
                                                                                                                                    §§push("Expecting } or , but found ");
                                                                                                                                 }
                                                                                                                                 §§goto(addr123);
                                                                                                                                 §§push("Expecting : but found ");
                                                                                                                              }
                                                                                                                              §§goto(addr356);
                                                                                                                              addr354:
                                                                                                                              addr357:
                                                                                                                           }
                                                                                                                           §§goto(addr362);
                                                                                                                           §§push(this.§8!b§);
                                                                                                                        }
                                                                                                                        §§goto(addr361);
                                                                                                                     }
                                                                                                                     §§goto(addr334);
                                                                                                                  }
                                                                                                                  §§goto(addr249);
                                                                                                               }
                                                                                                               §§goto(addr236);
                                                                                                            }
                                                                                                            §§goto(addr354);
                                                                                                         }
                                                                                                         §§goto(addr63);
                                                                                                      }
                                                                                                      §§goto(addr387);
                                                                                                   }
                                                                                                   §§goto(addr356);
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§goto(addr236);
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             §§goto(addr158);
                                                                                             §§push(this.§8!b§);
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                       §§goto(addr361);
                                                                                    }
                                                                                    §§goto(addr334);
                                                                                 }
                                                                                 §§goto(addr361);
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                           return _loc1_;
                                                                        }
                                                                        return null;
                                                                     }
                                                                     §§goto(addr129);
                                                                  }
                                                                  §§goto(addr109);
                                                               }
                                                               §§goto(addr361);
                                                               §§push(this.§>d§);
                                                            }
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             addr553:
                                          }
                                          §§goto(addr487);
                                       }
                                       addr533:
                                    }
                                    §§goto(addr553);
                                 }
                                 §§goto(addr533);
                              }
                           }
                           §§goto(addr572);
                        }
                     }
                  }
               }
            }
            addr577:
         }
         while(true)
         {
            §§push(this.§9t§());
            if(_loc3_ || this)
            {
               §§pop();
               §§goto(addr513);
            }
            else
            {
               §§goto(addr577);
            }
         }
      }
      
      private function § get§() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§>d§ == null)
            {
               if(!_loc2_)
               {
                  addr147:
                  this.§8!b§.parseError("Unexpected end of input");
               }
            }
            §§push(this.§>d§);
            loop0:
            while(true)
            {
               §§push(§§pop().type);
               if(_loc3_ || this)
               {
                  var _loc1_:* = §§pop();
                  if(!_loc2_)
                  {
                     §§push(§4!D§.§0j§);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc1_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(0);
                                 if(_loc2_)
                                 {
                                    addr331:
                                 }
                              }
                              else
                              {
                                 addr381:
                                 §§push(7);
                                 if(_loc3_)
                                 {
                                    addr384:
                                 }
                              }
                              addr398:
                              loop8:
                              switch(§§pop())
                              {
                                 case 0:
                                    return this.parseObject();
                                 case 7:
                                    §§push(this.§<g§);
                                    if(_loc3_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§8!b§);
                                          while(true)
                                          {
                                             §§push("Unexpected ");
                                             while(true)
                                             {
                                                §§push(this.§>d§);
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop().value);
                                                   while(true)
                                                   {
                                                      §§pop().parseError(§§pop());
                                                      while(true)
                                                      {
                                                         §§goto(addr25);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr93);
                                 default:
                                    addr25:
                                    while(true)
                                    {
                                       §§push(this.§8!b§);
                                       if(!_loc2_)
                                       {
                                          §§push("Unexpected ");
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(this.§>d§);
                                             if(_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop() + §§pop().value);
                                          }
                                          if(!_loc2_)
                                          {
                                             if(_loc3_ || _loc1_)
                                             {
                                                §§pop().parseError(§§pop());
                                                if(_loc2_ && this)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break loop8;
                                                      }
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr93:
                                                   §§push(this.§>d§);
                                                   if(_loc3_)
                                                   {
                                                      return §§pop().value;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop7;
                                             }
                                             continue loop4;
                                          }
                                          continue loop6;
                                       }
                                       continue loop3;
                                    }
                                    return null;
                                 case 1:
                                    break;
                                 case 2:
                                 case 3:
                                 case 4:
                                 case 5:
                                 case 6:
                                    §§push(this.§>d§);
                                    if(_loc3_ || _loc2_)
                                    {
                                       break loop0;
                                    }
                                    continue;
                              }
                              return this.§;!V§();
                              addr397:
                           }
                           else
                           {
                              §§push(§4!D§.§]!j§);
                              if(!_loc2_)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_ || this)
                                       {
                                          §§push(1);
                                          if(_loc2_)
                                          {
                                             §§goto(addr384);
                                          }
                                       }
                                       else
                                       {
                                          addr387:
                                          §§push(8);
                                          if(_loc3_ || _loc2_)
                                          {
                                          }
                                       }
                                       §§goto(addr397);
                                    }
                                    else
                                    {
                                       §§push(§4!D§.§+L§);
                                       if(_loc3_ || this)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc2_ && this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(2);
                                                   if(_loc2_)
                                                   {
                                                      addr317:
                                                      §§push(_loc1_);
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§push(5);
                                                               if(!_loc2_)
                                                               {
                                                                  §§goto(addr331);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr384);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr348:
                                                               §§push(6);
                                                               if(!_loc3_)
                                                               {
                                                                  addr372:
                                                                  if(§§pop() === _loc1_)
                                                                  {
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§goto(addr381);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr387);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr387);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr397);
                                                                        §§push(8);
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                                  §§goto(addr387);
                                                               }
                                                               §§goto(addr397);
                                                            }
                                                            §§goto(addr397);
                                                         }
                                                         else
                                                         {
                                                            §§push(§4!D§.NULL);
                                                            if(_loc3_)
                                                            {
                                                               §§push(_loc1_);
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  addr345:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§goto(addr348);
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§4!D§.§,o§);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§goto(addr372);
                                                                     }
                                                                     §§goto(addr384);
                                                                  }
                                                               }
                                                               §§goto(addr372);
                                                            }
                                                         }
                                                         addr351:
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   §§goto(addr397);
                                                }
                                                §§goto(addr387);
                                             }
                                             else
                                             {
                                                §§push(§4!D§.§93§);
                                                if(!_loc2_)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr260:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§push(3);
                                                            if(!(_loc3_ || _loc2_))
                                                            {
                                                               §§goto(addr351);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr397);
                                                      }
                                                      else
                                                      {
                                                         §§push(§4!D§.TRUE);
                                                         if(_loc3_ || this)
                                                         {
                                                            addr287:
                                                            §§push(_loc1_);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(4);
                                                         if(!(_loc3_ || _loc1_))
                                                         {
                                                            §§goto(addr317);
                                                         }
                                                         §§goto(addr397);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                   else
                                                   {
                                                      §§push(§4!D§.FALSE);
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         §§goto(addr317);
                                                      }
                                                   }
                                                   §§goto(addr372);
                                                }
                                                §§goto(addr317);
                                             }
                                          }
                                          §§goto(addr345);
                                       }
                                       §§goto(addr287);
                                    }
                                 }
                                 §§goto(addr260);
                              }
                              §§goto(addr287);
                           }
                           §§goto(addr384);
                        }
                        §§goto(addr372);
                     }
                     §§goto(addr317);
                  }
                  §§goto(addr348);
               }
               §§goto(addr398);
            }
            return §§pop().value;
         }
         §§goto(addr147);
      }
   }
}
