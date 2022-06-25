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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super();
            loop0:
            while(true)
            {
               §§push(param4);
               if(_loc7_ || param1)
               {
                  if(§§pop() <= 0)
                  {
                     while(true)
                     {
                        §§push(0);
                        if(_loc7_ || this)
                        {
                           addr104:
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              param4 = §§pop();
                              addr105:
                              while(true)
                              {
                              }
                           }
                           addr104:
                        }
                        §§goto(addr104);
                     }
                     addr95:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(param4);
                     if(_loc7_)
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§5!i§ = §§pop();
                     loop3:
                     while(_loc7_)
                     {
                        this.§4`§ = param5;
                        loop4:
                        while(_loc7_)
                        {
                           §2+§ = 0;
                           loop5:
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 continue loop3;
                              }
                              if(!_loc7_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 do
                                 {
                                    this.§"!&§ = true;
                                    while(_loc7_)
                                    {
                                       this.§9!Y§ = false;
                                       if(!_loc6_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                    continue loop4;
                                 }
                                 while(false);
                                 
                                 param2 = this.§1!C§(param2,param1);
                                 if(!(_loc6_ && param2))
                                 {
                                    if(param3 != null)
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          param3 = this.§1!C§(param3,param2);
                                          if(!(_loc6_ && param1))
                                          {
                                             this.§9!8§(param2,param3);
                                             if(_loc7_)
                                             {
                                                addr168:
                                                this.§#!+§ = param1;
                                                addr162:
                                             }
                                             return;
                                          }
                                          §§goto(addr162);
                                       }
                                    }
                                    else
                                    {
                                       this.§9!8§(param2,param1);
                                    }
                                 }
                                 §§goto(addr168);
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr104);
            }
         }
         §§goto(addr55);
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
         if(!(_loc1_ && _loc2_))
         {
            this.stop();
            while(true)
            {
               this.§#!+§ = null;
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            this.§4!h§ = null;
            do
            {
               this.§4!N§ = null;
            }
            while(!(_loc2_ || this));
            
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §#j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2+§ = -§'r§;
            do
            {
               this.§9!Y§ = false;
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      private function §1!C§(param1:Object, param2:Object) : Object
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc3_:Object = {};
         loop0:
         for(_loc4_ in param1)
         {
            if(!_loc8_)
            {
               §§push(param2[_loc4_] == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc7_ || this)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc8_)
                                    {
                                       if(_loc8_ && _loc3_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc8_ && this)
                                    {
                                       continue loop3;
                                    }
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                §§push(param2[_loc4_] is Number);
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   continue loop2;
                                                }
                                                addr59:
                                                if(_loc7_ || param2)
                                                {
                                                   loop8:
                                                   while(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      addr93:
                                                      while(true)
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            if(true)
                                                            {
                                                               break loop8;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr183:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1[_loc4_] is Number);
                                                            if(!(_loc7_ || param2))
                                                            {
                                                               break loop6;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc7_ || param2)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   continue loop0;
                                                   addr66:
                                                }
                                                continue loop6;
                                             }
                                             continue loop2;
                                          }
                                          addr182:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          §§goto(addr183);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr66);
                                 }
                                 continue loop1;
                                 addr131:
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr182);
               }
            }
            §§goto(addr77);
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
            if(!(_loc9_ && param2))
            {
               _loc3_[_loc5_] = param1[_loc5_] - param2[_loc5_];
               if(_loc9_)
               {
                  continue;
               }
            }
            _loc4_[_loc5_] = param2[_loc5_];
         }
         if(!_loc9_)
         {
            this.§4!h§ = _loc3_;
            do
            {
               this.§4!N§ = _loc4_;
            }
            while(_loc9_ && param2);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9!Y§);
            if(_loc1_ || _loc1_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  this.§9!Y§ = true;
                  loop1:
                  while(true)
                  {
                     §>!@§ = null;
                     loop2:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           §2+§ = this.§5!i§;
                           if(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr59);
      }
      
      public function §,'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
                  addr90:
                  addr62:
                  while(true)
                  {
                     §2+§ = this.§5!i§;
                     continue loop0;
                  }
               }
               addr87:
            }
            return;
         }
         §§goto(addr87);
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§"!&§ = true;
         }
      }
      
      public function play() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§"!&§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§"!&§);
            if(_loc3_ || this)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr173:
                        while(true)
                        {
                           §§push(this.isCompleted);
                           if(!_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     addr172:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                        }
                        addr151:
                     }
                     while(true)
                     {
                        §2+§ += param1;
                        while(true)
                        {
                           if(§2+§ >= this.§5!i§)
                           {
                              if(_loc3_)
                              {
                                 if(!§""§)
                                 {
                                    §2+§ = 0;
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(_loc3_)
                                             {
                                                addr48:
                                                while(true)
                                                {
                                                   this.§-[§();
                                                   continue loop5;
                                                }
                                                addr48:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §2+§ = this.§5!i§;
                                                }
                                                addr111:
                                             }
                                             §§goto(addr48);
                                          }
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                break loop5;
                                             }
                                             this.§9!Y§ = true;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr48);
                                          }
                                          else
                                          {
                                             §§goto(addr151);
                                          }
                                       }
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr48);
                        }
                     }
                  }
                  §§goto(addr150);
               }
            }
            §§goto(addr172);
         }
         addr150:
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.update(0);
         }
      }
      
      private function §-[§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!(_loc5_ && _loc1_))
         {
            §§pop().§§slot[1] = NaN;
            if(_loc4_)
            {
               addr33:
               var attribute:* = undefined;
            }
            try
            {
               §§push(§§newactivation());
               §§push(this.§do§());
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
               }
               §§pop().§§slot[1] = §§pop();
               if(!(_loc5_ && _loc3_))
               {
                  var _loc2_:int = 0;
                  if(!_loc5_)
                  {
                     var _loc3_:* = this.§4!h§;
                     if(!_loc4_)
                     {
                     }
                     for(attribute in _loc3_)
                     {
                        if(_loc4_ || this)
                        {
                           this.§#!+§[attribute] = this.§4!N§[attribute] + this.§4!h§[attribute] * timeValue;
                        }
                     }
                  }
               }
            }
            catch(e:Error)
            {
               if(_loc4_ || _loc3_)
               {
                  §9!Y§ = true;
                  if(!(_loc5_ && _loc1_))
                  {
                     if(§+j§)
                     {
                     }
                  }
               }
               throw e;
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §1!D§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.isCompleted);
            if(_loc4_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        addr62:
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(§>!@§ == null);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                              if(_loc4_)
                              {
                                 addr74:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                        try
                        {
                           addr76:
                           §>!@§();
                           if(_loc4_)
                           {
                              §>!@§ = null;
                           }
                        }
                        catch(e:Error)
                        {
                           var _loc2_:* = e;
                           if(!(_loc3_ && _loc3_))
                           {
                              §>!@§ = null;
                              if(_loc4_ || _loc2_)
                              {
                                 if(§+j§)
                                 {
                                 }
                              }
                           }
                           throw e;
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr74);
                  }
                  if(§§pop())
                  {
                     §§goto(addr76);
                  }
                  addr132:
                  return;
               }
               §§goto(addr74);
            }
            §§goto(addr62);
         }
         §§goto(addr76);
      }
      
      private function §do§() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§5!i§);
            if(!_loc4_)
            {
               if(§§pop() <= 0)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr27);
                  }
               }
               §§push(Number(Math.max(0,§2+§)));
            }
            var _loc1_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               §§push(Number(Math.min(_loc1_,this.§5!i§)));
               if(!_loc4_)
               {
                  _loc1_ = §§pop();
                  addr54:
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(§§pop() / this.§5!i§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               var _loc2_:* = §§pop();
               §§push(this.§4`§);
               loop0:
               while(true)
               {
                  var _loc3_:* = §§pop();
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(TweenManager.§[u§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && this))
                              {
                                 addr673:
                                 §§push(0);
                                 if(!_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr743:
                                 §§push(3);
                                 if(_loc5_ || this)
                                 {
                                 }
                              }
                              §§goto(addr880);
                           }
                           else
                           {
                              §§push(TweenManager.§0D§);
                              if(_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(1);
                                          if(!_loc5_)
                                          {
                                             addr726:
                                          }
                                       }
                                       else
                                       {
                                          addr859:
                                          §§push(8);
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr867:
                                          }
                                          else
                                          {
                                             addr878:
                                          }
                                       }
                                       §§goto(addr880);
                                    }
                                    else
                                    {
                                       §§push(TweenManager.§#Z§);
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             addr715:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(2);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§goto(addr726);
                                                   }
                                                   else
                                                   {
                                                      addr796:
                                                      §§goto(addr880);
                                                   }
                                                }
                                                §§goto(addr880);
                                             }
                                             else
                                             {
                                                §§push(TweenManager.§&T§);
                                                if(!_loc4_)
                                                {
                                                   addr732:
                                                   §§push(_loc3_);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr743);
                                                         }
                                                         else
                                                         {
                                                            addr870:
                                                            §§push(9);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§goto(addr878);
                                                            }
                                                            §§goto(addr880);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(TweenManager.§5!@§);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(4);
                                                                     if(_loc4_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr838:
                                                                     §§push(7);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr867);
                                                                     }
                                                                  }
                                                                  §§goto(addr880);
                                                               }
                                                               else
                                                               {
                                                                  §§push(TweenManager.§-!g§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              §§push(5);
                                                                              if(_loc5_ || _loc1_)
                                                                              {
                                                                                 §§goto(addr796);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr818:
                                                                              §§push(6);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr867);
                                                                              }
                                                                           }
                                                                           §§goto(addr880);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(TweenManager.§ !V§);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              addr807:
                                                                              §§push(_loc3_);
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                              }
                                                                              addr856:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr859);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr870);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr870);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr880:
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       switch(§§pop())
                                                                                       {
                                                                                          case 0:
                                                                                             break;
                                                                                          case 1:
                                                                                          case 2:
                                                                                             §§push(this.§4`§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(§§pop() == TweenManager.§#Z§)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc2_);
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr106);
                                                                                                               }
                                                                                                               §§goto(addr296);
                                                                                                            }
                                                                                                            §§goto(addr185);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr608:
                                                                                                            §§push(_loc2_);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr611);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr629);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr543:
                                                                                                         §§push(§§pop() - Math.cos(_loc2_ * (Math.PI / 2)));
                                                                                                         if(_loc4_ && this)
                                                                                                         {
                                                                                                            break loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr597:
                                                                                                      §§push(_loc2_);
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr608);
                                                                                                         }
                                                                                                         §§goto(addr632);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr611);
                                                                                                }
                                                                                                addr106:
                                                                                                §§push(_loc2_);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   if(_loc5_ || _loc1_)
                                                                                                   {
                                                                                                      §§push(2.75);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(!(_loc5_ || this))
                                                                                                               {
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               §§push(7.5625);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc5_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              return §§pop();
                                                                                                                           }
                                                                                                                           addr256:
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§goto(addr262);
                                                                                                                              }
                                                                                                                              §§goto(addr447);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr319:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 addr322:
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 if(!(_loc4_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr330:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       addr333:
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       if(!(_loc4_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr561);
                                                                                                                                                      }
                                                                                                                                                      addr361:
                                                                                                                                                      §§push(0.9375);
                                                                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         addr369:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc5_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr625);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr629);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr439);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr538:
                                                                                                                                                   §§push(Number(§§pop() - 1));
                                                                                                                                                }
                                                                                                                                                §§goto(addr539);
                                                                                                                                             }
                                                                                                                                             §§goto(addr369);
                                                                                                                                          }
                                                                                                                                          §§goto(addr629);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr419);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr410);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr402);
                                                                                                                              }
                                                                                                                              §§goto(addr402);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr319);
                                                                                                                     }
                                                                                                                     §§goto(addr273);
                                                                                                                  }
                                                                                                                  §§goto(addr369);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr185:
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(1.5);
                                                                                                                     if(_loc5_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(2.75);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 addr210:
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!(_loc4_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    if(_loc5_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                addr240:
                                                                                                                                                if(_loc5_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr256);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr361);
                                                                                                                                                }
                                                                                                                                                §§goto(addr629);
                                                                                                                                             }
                                                                                                                                             §§goto(addr333);
                                                                                                                                          }
                                                                                                                                          §§goto(addr419);
                                                                                                                                       }
                                                                                                                                       §§goto(addr240);
                                                                                                                                    }
                                                                                                                                    §§goto(addr330);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr316:
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr319);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr402);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr402);
                                                                                                                              }
                                                                                                                              §§goto(addr629);
                                                                                                                           }
                                                                                                                           §§goto(addr398);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr313:
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§goto(addr316);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr322);
                                                                                                                     }
                                                                                                                     §§goto(addr398);
                                                                                                                  }
                                                                                                                  §§goto(addr210);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(2);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr171:
                                                                                                                     §§push(§§pop() / 2.75);
                                                                                                                     if(!(_loc4_ && this))
                                                                                                                     {
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(7.5625);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§goto(addr185);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr296:
                                                                                                                              §§push(7.5625);
                                                                                                                              if(!(_loc4_ && _loc1_))
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(2.25);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(2.75);
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr313);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr395);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr402);
                                                                                                                                 }
                                                                                                                                 §§goto(addr319);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr625);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(2.5);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(2.75);
                                                                                                                                 if(_loc5_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr293);
                                                                                                                                    }
                                                                                                                                    §§goto(addr319);
                                                                                                                                 }
                                                                                                                                 §§goto(addr322);
                                                                                                                              }
                                                                                                                              §§goto(addr369);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr538);
                                                                                                                     }
                                                                                                                     §§goto(addr629);
                                                                                                                  }
                                                                                                                  §§goto(addr538);
                                                                                                               }
                                                                                                            }
                                                                                                            addr262:
                                                                                                            §§push(0.75);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  addr273:
                                                                                                                  return §§pop();
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr391:
                                                                                                               §§push(2.625);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr395:
                                                                                                                  §§push(§§pop() / 2.75);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr398:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr402:
                                                                                                                        §§push(_loc3_ = §§pop());
                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr410:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              addr419:
                                                                                                                              §§push(_loc3_);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 addr439:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc5_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr539);
                                                                                                                                 }
                                                                                                                                 addr447:
                                                                                                                                 §§push(0.984375);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr458);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr632:
                                                                                                                                    return §§pop() * (§§pop() - 2);
                                                                                                                                    addr629:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr611:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc4_ && this))
                                                                                                                                 {
                                                                                                                                    §§goto(addr619);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr625:
                                                                                                                                 }
                                                                                                                                 addr626:
                                                                                                                                 addr625:
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr629);
                                                                                                                              }
                                                                                                                              §§goto(addr629);
                                                                                                                           }
                                                                                                                           addr507:
                                                                                                                           return §§pop();
                                                                                                                        }
                                                                                                                        §§goto(addr629);
                                                                                                                     }
                                                                                                                     §§goto(addr439);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr402);
                                                                                                            }
                                                                                                            addr458:
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         addr293:
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr296);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(7.5625);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  §§goto(addr391);
                                                                                                               }
                                                                                                               §§goto(addr629);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr561);
                                                                                                            }
                                                                                                         }
                                                                                                         addr561:
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      §§goto(addr171);
                                                                                                   }
                                                                                                   §§goto(addr538);
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr619:
                                                                                             return §§pop();
                                                                                          case 4:
                                                                                             §§goto(addr597);
                                                                                          case 3:
                                                                                             break loop0;
                                                                                          case 5:
                                                                                             return Math.sin(_loc2_ * (Math.PI / 2));
                                                                                          case 6:
                                                                                             §§goto(addr543);
                                                                                          case 7:
                                                                                             §§push(1);
                                                                                             §§push(_loc2_);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§goto(addr538);
                                                                                             }
                                                                                             addr539:
                                                                                             _loc2_ = §§pop();
                                                                                             return Math.sqrt(1 - _loc2_ * _loc2_);
                                                                                          case 8:
                                                                                             continue;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    return §§pop();
                                                                                    §§push(9);
                                                                                 }
                                                                                 §§goto(addr880);
                                                                              }
                                                                              §§goto(addr870);
                                                                           }
                                                                           addr855:
                                                                           §§goto(addr856);
                                                                           §§push(_loc3_);
                                                                        }
                                                                        §§goto(addr880);
                                                                     }
                                                                  }
                                                                  §§goto(addr807);
                                                               }
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr818);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr870);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(TweenManager.§7x§);
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                               }
                                                               §§goto(addr855);
                                                            }
                                                            §§goto(addr870);
                                                         }
                                                      }
                                                      §§goto(addr870);
                                                   }
                                                   §§goto(addr807);
                                                }
                                                §§push(_loc3_);
                                                if(_loc5_)
                                                {
                                                   addr835:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr838);
                                                      }
                                                      §§goto(addr880);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr855);
                                                      §§push(TweenManager.§package§);
                                                   }
                                                }
                                                §§goto(addr807);
                                             }
                                          }
                                          §§goto(addr835);
                                       }
                                       §§goto(addr807);
                                    }
                                 }
                                 §§goto(addr807);
                              }
                              §§goto(addr855);
                           }
                        }
                        §§goto(addr715);
                     }
                     §§goto(addr732);
                  }
                  §§goto(addr673);
               }
               §§goto(addr625);
               §§push(_loc2_);
            }
            §§goto(addr54);
         }
         addr27:
         return 1;
      }
   }
}
