package §2=§
{
   public class SimpleTween extends §=N§ implements §4x§
   {
       
      
      private var §5!i§:Number;
      
      private var §9!Y§:Boolean;
      
      private var §"!&§:Boolean;
      
      private var §4`§:String;
      
      private var §#!+§:Object;
      
      private var §4!N§:Object;
      
      private var §4!h§:Object;
      
      public function SimpleTween(param1:Object, param2:Object, param3:Object, param4:Number, param5:String)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               §§push(param4);
               if(!(_loc7_ && param2))
               {
                  if(§§pop() <= 0)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           addr113:
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              param4 = §§pop();
                              addr114:
                              while(true)
                              {
                              }
                           }
                           addr113:
                        }
                        §§goto(addr113);
                        addr59:
                        if(!(_loc7_ && param2))
                        {
                           continue loop0;
                        }
                     }
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§5!i§ = §§pop();
                     addr97:
                     loop5:
                     while(true)
                     {
                        this.§4`§ = param5;
                        addr50:
                        while(true)
                        {
                           if(_loc7_ && param3)
                           {
                              continue loop5;
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§goto(addr59);
                        }
                        continue loop2;
                     }
                  }
               }
               §§goto(addr113);
            }
         }
         §§goto(addr97);
      }
      
      override public function get isCompleted() : Boolean
      {
         return this.§9!Y§;
      }
      
      override public function get isPaused() : Boolean
      {
         return this.§"!&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.stop();
         }
         loop0:
         do
         {
            this.§#!+§ = null;
            while(true)
            {
               this.§4!h§ = null;
               while(!(_loc1_ && _loc2_))
               {
                  this.§4!N§ = null;
                  if(!(_loc1_ && _loc1_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc1_ && this);
         
      }
      
      public function §#j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2+§ = -§'r§;
            do
            {
               this.§9!Y§ = false;
            }
            while(_loc2_);
            
         }
      }
      
      private function §1!C§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(_loc8_)
            {
               §§push(param2[_loc4_] == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc8_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr184:
                                 loop11:
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(param1[_loc4_] is Number);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc7_ && param2))
                                          {
                                             break;
                                          }
                                       }
                                       addr169:
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(param2[_loc4_] is Number);
                                             if(_loc8_ || param1)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop7;
                                             }
                                             addr69:
                                             if(!(_loc7_ && param2))
                                             {
                                                while(§§pop())
                                                {
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      _loc3_[_loc4_] = param1[_loc4_];
                                                   }
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop0;
                                                addr76:
                                             }
                                             continue loop2;
                                          }
                                          continue loop11;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc7_ && param1))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!(_loc8_ || param1))
                              {
                                 break;
                              }
                              if(!(_loc8_ || param1))
                              {
                                 continue loop3;
                              }
                              if(§§pop())
                              {
                                 §§goto(addr169);
                              }
                              §§goto(addr76);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr184);
         }
         return _loc3_;
      }
      
      private function §9!8§(param1:Object, param2:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         for(_loc5_ in param1)
         {
            if(!_loc9_)
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(_loc8_ || _loc3_)
               {
                  _loc4_[_loc5_] = param2[_loc5_];
               }
            }
         }
         if(!(_loc9_ && param1))
         {
            this.§4!h§ = _loc3_;
         }
         do
         {
            this.§4!N§ = _loc4_;
         }
         while(_loc9_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§9!Y§);
            if(!(_loc1_ && this))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  this.§9!Y§ = true;
                  while(true)
                  {
                     §>!@§ = null;
                     loop2:
                     while(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           while(true)
                           {
                              §2+§ = this.§5!i§;
                              if(!(_loc1_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function §,'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§9!Y§);
            if(_loc2_ || this)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc1_)
               {
                  addr87:
                  this.§9!Y§ = true;
               }
               do
               {
                  §2+§ = this.§5!i§;
                  do
                  {
                     this.§-[§();
                  }
                  while(_loc1_ && this);
                  
               }
               while(_loc1_ && _loc2_);
               
            }
            return;
         }
         §§goto(addr87);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§"!&§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§"!&§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§"!&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                           addr160:
                        }
                        while(true)
                        {
                           §2+§ += param1;
                           loop4:
                           while(true)
                           {
                              if(§2+§ >= this.§5!i§)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    while(true)
                                    {
                                       if(!§""§)
                                       {
                                          §2+§ = 0;
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc2_ || param1)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   this.§-[§();
                                                   loop8:
                                                   while(_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      this.§1!D§();
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc3_ && _loc3_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      addr41:
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         return;
                                                      }
                                                      addr112:
                                                      addr86:
                                                      while(_loc2_ || _loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§goto(addr160);
                                                         §§goto(addr41);
                                                      }
                                                      while(true)
                                                      {
                                                         §2+§ = this.§5!i§;
                                                         break loop8;
                                                      }
                                                   }
                                                   addr116:
                                                   while(true)
                                                   {
                                                      this.§9!Y§ = true;
                                                      §§goto(addr86);
                                                   }
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   addr176:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop10;
                                                   }
                                                }
                                                continue loop0;
                                                addr177:
                                                addr49:
                                             }
                                             else
                                             {
                                                §§goto(addr177);
                                             }
                                             while(true)
                                             {
                                                §§push(this.isCompleted);
                                                if(_loc3_ && this)
                                                {
                                                   continue loop1;
                                                }
                                                if(!_loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   continue loop1;
                                                }
                                                §§goto(addr176);
                                             }
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr112);
                                    }
                                    addr109:
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr49);
                           }
                        }
                     }
                     return;
                     addr155:
                  }
               }
               §§goto(addr176);
            }
         }
         §§goto(addr109);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.update(0);
         }
      }
      
      private function §-[§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[1] = NaN;
            if(!(_loc4_ && _loc1_))
            {
               addr34:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§do§());
               if(!(_loc4_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(_loc5_)
               {
                  var _loc2_:int = 0;
                  if(_loc5_)
                  {
                     var _loc3_:* = this.§4!h§;
                     if(!_loc4_)
                     {
                        for(attribute in _loc3_)
                        {
                           if(_loc4_ && this)
                           {
                              continue;
                           }
                        }
                        addr147:
                        return;
                        addr105:
                        addr108:
                        addr119:
                     }
                     while(true)
                     {
                        this.§#!+§[attribute] = this.§4!N§[attribute] + this.§4!h§[attribute] * timeValue;
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr119);
            }
            catch(e:Error)
            {
               if(_loc5_)
               {
                  §9!Y§ = true;
                  if(_loc4_)
                  {
                  }
                  §§goto(addr142);
               }
               if(!§+j§)
               {
                  addr142:
                  throw e;
               }
            }
            §§goto(addr147);
         }
         §§goto(addr34);
      }
      
      private function §1!D§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.isCompleted);
            if(_loc4_ || this)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           §§push(§>!@§ == null);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                              if(_loc4_ || this)
                              {
                              }
                              §§goto(addr80);
                           }
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr81);
                     }
                  }
               }
            }
            addr80:
            if(§§pop())
            {
               try
               {
                  addr81:
                  §>!@§();
                  if(!_loc3_)
                  {
                     §>!@§ = null;
                  }
               }
               catch(e:Error)
               {
                  if(_loc4_ || _loc1_)
                  {
                     §>!@§ = null;
                     if(!_loc3_)
                     {
                        if(§+j§)
                        {
                        }
                     }
                  }
                  throw e;
               }
            }
            return;
         }
         §§goto(addr81);
      }
      
      private function §do§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§5!i§);
            if(_loc5_ || _loc3_)
            {
               if(§§pop() <= 0)
               {
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr37);
                  }
               }
               §§push(Number(Math.max(0,§2+§)));
            }
            var _loc1_:* = §§pop();
            if(_loc5_)
            {
               §§push(Number(Math.min(_loc1_,this.§5!i§)));
               if(!(_loc4_ && _loc3_))
               {
                  _loc1_ = §§pop();
                  addr64:
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() / this.§5!i§);
                     if(_loc5_)
                     {
                        addr72:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  §§push(this.§4`§);
                  loop0:
                  while(true)
                  {
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        §§push(TweenManager.§[u§);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && _loc2_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(0);
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr833:
                                    §§push(5);
                                    if(_loc4_ && _loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr930);
                              }
                              else
                              {
                                 §§push(TweenManager.§0D§);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       addr730:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(1);
                                             if(_loc4_)
                                             {
                                                addr756:
                                             }
                                          }
                                          else
                                          {
                                             addr883:
                                             §§push(7);
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§goto(addr891);
                                             }
                                          }
                                          §§goto(addr930);
                                       }
                                       else
                                       {
                                          §§push(TweenManager.§#Z§);
                                          if(_loc5_)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc4_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(2);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§goto(addr756);
                                                      }
                                                      else
                                                      {
                                                         addr922:
                                                         §§goto(addr930);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr803:
                                                      §§push(4);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr811:
                                                      }
                                                      §§goto(addr930);
                                                   }
                                                   §§goto(addr930);
                                                }
                                                else
                                                {
                                                   §§push(TweenManager.§&T§);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc4_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(3);
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  §§goto(addr930);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr811);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr803);
                                                            }
                                                            §§goto(addr930);
                                                         }
                                                         else
                                                         {
                                                            §§push(TweenManager.§5!@§);
                                                            if(_loc5_)
                                                            {
                                                               addr792:
                                                               §§push(_loc3_);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr803);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr925:
                                                                        §§push(9);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr928:
                                                                        }
                                                                        §§goto(addr930);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(TweenManager.§-!g§);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        addr822:
                                                                        §§push(_loc3_);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr825:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 §§goto(addr833);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr925);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(TweenManager.§ !V§);
                                                                              if(_loc5_ || _loc1_)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc4_ && _loc1_)
                                                                                 {
                                                                                 }
                                                                                 addr906:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       addr914:
                                                                                       §§push(8);
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          §§goto(addr922);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr928);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr925);
                                                                                    }
                                                                                 }
                                                                                 else if(false)
                                                                                 {
                                                                                    §§goto(addr925);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr930:
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       loop8:
                                                                                       switch(§§pop())
                                                                                       {
                                                                                          case 0:
                                                                                             break;
                                                                                          case 1:
                                                                                          case 2:
                                                                                             continue loop0;
                                                                                          case 3:
                                                                                             addr682:
                                                                                             return -_loc2_ * (_loc2_ - 2);
                                                                                             addr679:
                                                                                          case 4:
                                                                                             addr648:
                                                                                             §§push(_loc2_);
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(_loc5_ || _loc1_)
                                                                                                {
                                                                                                   if(_loc5_ || _loc3_)
                                                                                                   {
                                                                                                      addr670:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      break loop1;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr679);
                                                                                          case 8:
                                                                                             addr507:
                                                                                             §§push(1);
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                addr516:
                                                                                                §§push(§§pop() - Math.sqrt(1 - _loc2_ * _loc2_));
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc5_ || _loc1_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         addr541:
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      §§goto(addr648);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop7:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        return Math.sqrt(1 - _loc2_ * _loc2_);
                                                                                                                        addr601:
                                                                                                                     }
                                                                                                                     if(!(_loc5_ || _loc3_))
                                                                                                                     {
                                                                                                                        §§goto(addr626);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!(_loc5_ || _loc3_))
                                                                                                                              {
                                                                                                                                 break loop1;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr571:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc4_ && _loc1_))
                                                                                                                           {
                                                                                                                              addr586:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                              break loop8;
                                                                                                                              addr586:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr617:
                                                                                                                           }
                                                                                                                           addr617:
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break loop8;
                                                                                                               }
                                                                                                               addr591:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr679);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr682);
                                                                                                }
                                                                                                break loop1;
                                                                                             }
                                                                                             continue;
                                                                                          case 7:
                                                                                             §§goto(addr566);
                                                                                          case 5:
                                                                                             addr626:
                                                                                             return Math.sin(_loc2_ * (Math.PI / 2));
                                                                                          case 6:
                                                                                             §§push(1);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr617);
                                                                                             §§push(§§pop() - Math.cos(_loc2_ * (Math.PI / 2)));
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    return §§pop();
                                                                                    §§push(9);
                                                                                 }
                                                                                 §§goto(addr930);
                                                                              }
                                                                              addr877:
                                                                              §§push(_loc3_);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr880:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr883);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr914);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr905:
                                                                                    §§goto(addr906);
                                                                                    §§push(TweenManager.§package§);
                                                                                    §§push(_loc3_);
                                                                                 }
                                                                                 §§goto(addr930);
                                                                              }
                                                                              §§goto(addr906);
                                                                           }
                                                                           §§goto(addr925);
                                                                        }
                                                                        §§goto(addr906);
                                                                     }
                                                                     §§goto(addr877);
                                                                  }
                                                                  §§goto(addr925);
                                                               }
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(6);
                                                                     if(!(_loc4_ && _loc1_))
                                                                     {
                                                                        §§goto(addr930);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr922);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr883);
                                                                  }
                                                                  §§goto(addr930);
                                                               }
                                                               else
                                                               {
                                                                  §§push(TweenManager.§7x§);
                                                                  if(!_loc5_)
                                                                  {
                                                                  }
                                                                  §§goto(addr905);
                                                               }
                                                            }
                                                            §§goto(addr877);
                                                         }
                                                      }
                                                      §§goto(addr825);
                                                   }
                                                   §§goto(addr822);
                                                }
                                             }
                                             §§goto(addr880);
                                          }
                                          §§goto(addr792);
                                       }
                                    }
                                    §§goto(addr906);
                                 }
                                 §§goto(addr905);
                              }
                           }
                           §§goto(addr730);
                        }
                        §§goto(addr905);
                     }
                     §§goto(addr925);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr64);
         }
         addr37:
         return 1;
      }
   }
}
