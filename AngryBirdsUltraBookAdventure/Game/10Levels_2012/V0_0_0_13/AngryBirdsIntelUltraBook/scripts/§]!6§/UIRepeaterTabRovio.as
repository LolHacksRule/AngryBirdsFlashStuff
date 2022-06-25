package §]!6§
{
   import §4!9§.§6"§;
   import §>!-§.UIComponentRovio;
   import flash.display.MovieClip;
   
   public class UIRepeaterTabRovio extends UIContainerRovio
   {
       
      
      public var §3!&§:int;
      
      public var §37§:int;
      
      public var §'t§:int;
      
      public var §]!=§:int;
      
      public var §4!j§:Number;
      
      public var §78§:Number;
      
      public var §5!I§:Number;
      
      public var §@W§:Number;
      
      public var § set§:Number;
      
      public function UIRepeaterTabRovio(param1:XML, param2:UIContainerRovio, param3:§6"§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super(param1,param2,param3,param4);
            do
            {
               §@a§ = true;
            }
            while(_loc5_ && param3);
            
         }
      }
      
      public function §`I§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            this.§'t§ = param6;
            loop0:
            while(true)
            {
               this.§]!=§ = param1 * this.§'t§;
               while(true)
               {
                  this.§ set§ = param7;
                  loop2:
                  for(; _loc8_ || this; if(_loc9_ && param2)
                  {
                     continue;
                  },§§goto(addr23))
                  {
                     this.§5!I§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§@W§ = param3;
                        loop4:
                        while(true)
                        {
                           this.§4!j§ = param4;
                           loop5:
                           while(!_loc9_)
                           {
                              while(true)
                              {
                                 this.§78§ = param5;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc9_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§pop();
                                                addr166:
                                                while(true)
                                                {
                                                   §§push(param1 == param7);
                                                   if(_loc8_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                   }
                                                   continue loop15;
                                                }
                                                continue loop8;
                                             }
                                             addr165:
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop4;
                                                }
                                                addr147:
                                                loop10:
                                                while(!_loc9_)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      this.§3!Q§(0);
                                                      if(_loc8_ || param2)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(_loc9_ && param2)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc8_ || param3)
                                                            {
                                                               break loop9;
                                                            }
                                                            §§goto(addr166);
                                                            continue loop10;
                                                         }
                                                         while(!_loc8_)
                                                         {
                                                            if(§4!W§.length > this.§]!=§)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop11;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            this.§37§ += Math.ceil((§4!W§.length - this.§]!=§) / (this.§'t§ * this.§ set§));
                                                            continue loop2;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop5;
                                             }
                                             this.§37§ = 1;
                                             while(_loc8_)
                                             {
                                                §§goto(addr109);
                                             }
                                             continue loop7;
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr165);
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      public function §3!Q§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && param1))
            {
               §§push(0);
               loop0:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(0);
                        addr98:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr99:
                           while(true)
                           {
                              param1 = §§pop();
                              addr100:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr97:
                  }
                  loop4:
                  while(true)
                  {
                     §§push(param1);
                     if(_loc6_)
                     {
                        §§push(this.§37§);
                        if(_loc5_)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              if(_loc6_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc6_)
                                 {
                                    param1 = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       addr20:
                                       while(true)
                                       {
                                          this.§3!&§ = param1;
                                          if(!(_loc6_ || this))
                                          {
                                             continue loop8;
                                          }
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                if(true)
                                                {
                                                   §§push(this.§3!&§);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      addr110:
                                                      §§push(§§pop() * this.§ set§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() * this.§'t§);
                                                         break loop7;
                                                      }
                                                      break loop7;
                                                   }
                                                }
                                                continue loop4;
                                                break loop4;
                                             }
                                             break;
                                          }
                                          addr58:
                                          while(true)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(this.§37§);
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§goto(addr99);
                                                }
                                                else
                                                {
                                                   §§goto(addr110);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr97);
                                             }
                                          }
                                          §§goto(addr98);
                                          §§goto(addr110);
                                          continue loop8;
                                       }
                                       §§goto(addr100);
                                    }
                                 }
                                 §§goto(addr110);
                              }
                              break;
                           }
                           §§push(int(§§pop()));
                        }
                        continue loop0;
                        break;
                     }
                     break;
                  }
                  var _loc2_:* = §§pop();
                  §§push(_loc2_);
                  if(_loc6_)
                  {
                     §§push(int(§§pop() + this.§]!=§));
                  }
                  var _loc3_:* = §§pop();
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           if(§§pop() >= §4!W§.length)
                           {
                              while(true)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    continue;
                                 }
                              }
                              continue;
                           }
                           (§4!W§[_loc4_] as UIComponentRovio).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                           addr234:
                           §§push(_loc4_);
                           if(_loc6_ || this)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc4_ = §§pop();
                           continue;
                        }
                        §§push(int(§§pop()));
                     }
                     §§goto(addr234);
                  }
                  return;
               }
            }
            §§goto(addr110);
         }
         §§goto(addr100);
      }
   }
}
