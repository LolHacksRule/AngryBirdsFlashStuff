package §>!-§
{
   import §]!6§.UIButtonRovio;
   
   public class UIButtonGroupRovio
   {
      
      public static const §>Z§:int = 0;
      
      public static const §3&§:int = 1;
      
      public static const §]i§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>Z§ = 0;
            while(true)
            {
               §3&§ = 1;
               while(_loc2_ || _loc2_)
               {
                  §]i§ = 2;
                  if(!(_loc2_ || UIButtonGroupRovio))
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public var §[A§:Array;
      
      public var §2f§:int;
      
      public var §00§:int;
      
      public var mName:String;
      
      public var §'q§:String;
      
      public function UIButtonGroupRovio(param1:int, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§00§ = param1;
               while(true)
               {
                  this.mName = param2;
                  loop2:
                  while(_loc4_ || param1)
                  {
                     while(true)
                     {
                        this.§[A§ = new Array();
                        if(_loc4_ || this)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §#!0§(param1:UIButtonRovio) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  this.§[A§[this.§[A§.length] = param1;
                  if(_loc2_)
                  {
                     break;
                  }
                  addr60:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function §9!+§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            this.§'q§ = param1;
         }
         do
         {
            §§push(this.§00§);
            if(_loc4_)
            {
               if(§§pop() == §>Z§)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(_loc4_ || _loc3_)
                     {
                        addr680:
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
                  continue;
               }
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§00§);
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           if(§§pop() == §]i§)
                           {
                              loop3:
                              while(true)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(0);
                                    loop13:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       loop14:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop15:
                                          while(true)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push(this.§[A§);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(§§pop() >= §§pop().length)
                                                               {
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              addr561:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§push(this.§[A§);
                                                                                 loop72:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop().length)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    addr629:
                                                                                    if((this.§[A§[_loc2_] as UIButtonRovio).mName.toUpperCase() != param1.toUpperCase())
                                                                                    {
                                                                                       §§push(this.§[A§);
                                                                                       break loop12;
                                                                                    }
                                                                                    addr642:
                                                                                    (this.§[A§[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       addr592:
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             addr594:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                continue loop12;
                                                                                             }
                                                                                             addr302:
                                                                                             if(_loc5_ && _loc2_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(int(§§pop()));
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc5_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         if(!(_loc5_ && param1))
                                                                                                         {
                                                                                                            §§push(this.§[A§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc4_ || param1))
                                                                                                               {
                                                                                                                  continue loop72;
                                                                                                               }
                                                                                                               if(§§pop() >= §§pop().length)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_ && param1)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr164);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr467);
                                                                                                                              }
                                                                                                                              §§goto(addr442);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                        addr244:
                                                                                                                     }
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           loop58:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             addr150:
                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                addr151:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                      while(_loc5_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                            continue loop25;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop16;
                                                                                                                                                      addr154:
                                                                                                                                                   }
                                                                                                                                                   loop53:
                                                                                                                                                   while(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + 1);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                         loop28:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               loop29:
                                                                                                                                                               while(!(_loc5_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  loop30:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     addr260:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§[A§);
                                                                                                                                                                        addr262:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() >= §§pop().length)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc4_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop25;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc5_ && _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop29;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr285:
                                                                                                                                                                                 if(_loc4_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop58;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr521:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§[A§);
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc2_);
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if((§§pop()[§§pop()] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§[A§);
                                                                                                                                                                                                      addr539:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop12;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr544:
                                                                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                                                                            loop19:
                                                                                                                                                                                                            while(_loc4_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               (§§pop()[§§pop()] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§!!c§);
                                                                                                                                                                                                               loop20:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr418:
                                                                                                                                                                                                                  loop21:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§1U§());
                                                                                                                                                                                                                     addr421:
                                                                                                                                                                                                                     while(!(_loc5_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop().length < this.§2f§)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc4_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop28;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr302);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                           addr295:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(_loc4_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                              addr441:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                                                                 addr442:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop30;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr469:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop().length < this.§2f§)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop20;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc4_ || param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop19;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if((§§pop()[§§pop()] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.§!!c§)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr469);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr467:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr418);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if((§§pop()[§§pop()] as UIButtonRovio).§+!_§ != UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop9;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§[A§);
                                                                                                                                                                                                                  addr613:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                                                                     break loop19;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               (§§pop()[§§pop()] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§!!c§);
                                                                                                                                                                                                               break loop29;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr544:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr641);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr651);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr537:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§[A§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr449);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr448:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr528:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr544);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr525:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr539);
                                                                                                                                                                                    §§goto(addr285);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(!(_loc5_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§[A§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                          while(!(_loc5_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             (§§pop()[§§pop()] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§1!M§);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop53;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr312:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr537);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr642);
                                                                                                                                                                                          addr399:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr448);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr544);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr639);
                                                                                                                                                                                 addr387:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr642);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§[A§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc4_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if((§§pop()[§§pop()] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.§!!c§)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr387);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr449);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr312);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr482);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr629);
                                                                                                                                                                              addr354:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr421);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop30;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop9;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr440);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr150:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr594);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr441);
                                                                                                                                    }
                                                                                                                                    §§goto(addr322);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                       addr165:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr164:
                                                                                                                                 }
                                                                                                                                 §§goto(addr295);
                                                                                                                              }
                                                                                                                              §§goto(addr151);
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        §§goto(addr473);
                                                                                                                     }
                                                                                                                     §§goto(addr432);
                                                                                                                     §§goto(addr415);
                                                                                                                  }
                                                                                                                  addr119:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this.§[A§);
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(_loc4_ || this)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 if((§§pop()[§§pop()] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.§1!M§)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(this.§[A§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         (§§pop()[§§pop()] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§!!c§);
                                                                                                                                                         §§goto(addr244);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr629);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr399);
                                                                                                                                                }
                                                                                                                                                addr231:
                                                                                                                                             }
                                                                                                                                             §§goto(addr396);
                                                                                                                                          }
                                                                                                                                          addr228:
                                                                                                                                       }
                                                                                                                                       §§goto(addr494);
                                                                                                                                    }
                                                                                                                                    addr219:
                                                                                                                                 }
                                                                                                                                 §§goto(addr162);
                                                                                                                              }
                                                                                                                              §§goto(addr485);
                                                                                                                           }
                                                                                                                           §§goto(addr376);
                                                                                                                        }
                                                                                                                        §§goto(addr231);
                                                                                                                     }
                                                                                                                     §§goto(addr354);
                                                                                                                  }
                                                                                                                  §§goto(addr228);
                                                                                                               }
                                                                                                               §§goto(addr396);
                                                                                                            }
                                                                                                            continue loop72;
                                                                                                            addr110:
                                                                                                         }
                                                                                                         §§goto(addr260);
                                                                                                      }
                                                                                                      §§goto(addr150);
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr641:
                                                                                    addr651:
                                                                                    addr639:
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr219);
                                                                        }
                                                                        §§goto(addr602);
                                                                        §§push(_loc2_);
                                                                     }
                                                                     §§goto(addr119);
                                                                  }
                                                                  §§goto(addr154);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§[A§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!_loc5_)
                                                                        {
                                                                           if((§§pop()[§§pop()] as UIButtonRovio).mName.toUpperCase() == param1.toUpperCase())
                                                                           {
                                                                              §§goto(addr521);
                                                                           }
                                                                           §§goto(addr418);
                                                                        }
                                                                        §§goto(addr528);
                                                                     }
                                                                     §§goto(addr613);
                                                                  }
                                                               }
                                                               §§goto(addr525);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr110);
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§goto(addr150);
                                                }
                                                §§goto(addr151);
                                             }
                                          }
                                       }
                                    }
                                    addr587:
                                 }
                                 §§goto(addr611);
                              }
                           }
                           break;
                        }
                        §§goto(addr592);
                     }
                     §§goto(addr587);
                  }
                  return;
               }
            }
            §§goto(addr680);
         }
         while(_loc5_ && this);
         
         §§goto(addr561);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() >= this.§[A§.length)
               {
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
               }
               else
               {
                  (this.§[A§[_loc2_] as UIButtonRovio).setEnabled(param1);
               }
               §§push(_loc2_);
               if(_loc3_)
               {
                  §§push(§§pop() + 1);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(int(§§pop()));
                  }
               }
            }
            _loc2_ = §§pop();
         }
      }
      
      public function §9!!§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0);
         if(_loc2_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc3_)
                  {
                     if(§§pop() >= this.§[A§.length)
                     {
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        (this.§[A§[_loc1_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.§!!c§);
                     }
                     §§push(_loc1_);
                  }
                  §§push(§§pop() + 1);
               }
               §§push(int(§§pop()));
            }
            _loc1_ = §§pop();
         }
      }
      
      public function §+V§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§2f§ = param1;
            do
            {
               if(param1 == 1)
               {
                  if(_loc3_)
                  {
                     this.§00§ = §>Z§;
                  }
                  continue;
               }
               this.§00§ = §]i§;
               if(_loc2_)
               {
                  continue;
               }
            }
            while(!_loc3_);
            
            §§goto(addr45);
         }
         addr45:
      }
      
      public function §4!D§(param1:Array) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§9!!§();
         }
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(_loc3_)
               {
                  if(§§pop() >= param1.length)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§9!+§(param1[_loc2_]);
                  }
                  §§push(_loc2_);
               }
               §§push(§§pop() + 1);
               if(_loc3_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc2_ = §§pop();
         }
      }
      
      public function §1U§() : Array
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = new Array();
         §§push(0);
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!(_loc3_ && _loc1_))
               {
                  if(§§pop() >= this.§[A§.length)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           addr70:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr76:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                                 addr75:
                              }
                              §§goto(addr76);
                           }
                           addr109:
                           loop1:
                           while(true)
                           {
                              _loc1_.push((this.§[A§[_loc2_] as UIButtonRovio).mName);
                              continue loop2;
                              addr77:
                              while(_loc3_ && _loc1_)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr77);
                  }
                  else if((this.§[A§[_loc2_] as UIButtonRovio).§+!_§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     §§goto(addr109);
                  }
                  §§goto(addr70);
               }
               §§goto(addr75);
            }
            §§goto(addr76);
         }
         return _loc1_;
      }
   }
}
