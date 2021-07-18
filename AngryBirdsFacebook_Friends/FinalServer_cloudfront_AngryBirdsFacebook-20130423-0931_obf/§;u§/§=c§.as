package §;u§
{
   import §#"A§.§'"U§;
   import §,l§.§;!O§;
   import §2<§.§8M§;
   import §30§.§'"+§;
   import §5!Y§.§9"6§;
   import §8";§.§+d§;
   import §8";§.§?4§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §=c§ extends §?4§
   {
      
      private static const §]!2§:Number = 0.2;
      
      private static const §="$§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §]!2§ = 0.2;
            do
            {
               §="$§ = 60;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §<z§:Boolean = false;
      
      protected var §"g§:Number = -1;
      
      protected var §'"V§:Number = 0;
      
      private var §!!"§:Boolean = false;
      
      private var §6!b§:Number = 60;
      
      private var §^!L§:String;
      
      public function §=c§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            this.§^!L§ = param5;
            do
            {
               super(param1,param2,param3,param4,param6);
            }
            while(!(_loc7_ || param2));
            
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            super.setLoadingScreen(param1);
            if(_loc5_)
            {
               addr29:
               this.§0"A§(0);
            }
            var _loc2_:Number = Math.random();
            var _loc3_:MovieClip = §+"K§.getChildByName("Tip") as MovieClip;
            if(_loc5_)
            {
               if(_loc3_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     loop1:
                     while(true)
                     {
                        §§push(0.05);
                        loop2:
                        while(§§pop() >= §§pop())
                        {
                           §§push(_loc2_);
                           loop3:
                           while(true)
                           {
                              §§push(0.1);
                              loop4:
                              while(§§pop() >= §§pop())
                              {
                                 §§push(_loc2_);
                                 while(!(_loc4_ && this))
                                 {
                                    §§push(0.15);
                                    while(§§pop() >= §§pop())
                                    {
                                       §§push(_loc2_);
                                       continue loop3;
                                    }
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(_loc5_)
                                       {
                                          _loc3_.gotoAndStop(4);
                                          addr46:
                                          return;
                                          addr265:
                                       }
                                       break loop2;
                                    }
                                    addr275:
                                    §§goto(addr46);
                                    §§goto(addr46);
                                    loop11:
                                    for(; _loc5_ || param1; §§push(_loc2_),if(!(_loc5_ || this))
                                    {
                                       continue;
                                    },§§goto(addr79))
                                    {
                                       §§push(0.6);
                                       loop12:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   break;
                                                }
                                                continue loop11;
                                             }
                                             §§goto(addr242);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   break;
                                                }
                                                §§push(_loc2_);
                                                while(true)
                                                {
                                                   §§push(0.4);
                                                   addr178:
                                                   while(!(_loc4_ && this))
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         addr186:
                                                         _loc3_.gotoAndStop(1);
                                                         continue loop0;
                                                      }
                                                      §§push(_loc2_);
                                                      continue loop11;
                                                   }
                                                   addr79:
                                                   continue loop2;
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             addr212:
                                             if(!(_loc4_ && param1))
                                             {
                                                _loc3_.gotoAndStop(3);
                                                addr222:
                                                if(_loc5_ || this)
                                                {
                                                   §§goto(addr46);
                                                }
                                                else
                                                {
                                                   §§goto(addr243);
                                                }
                                             }
                                             addr209:
                                             addr284:
                                          }
                                          §§goto(addr46);
                                       }
                                       _loc3_.gotoAndStop(2);
                                       §§goto(addr156);
                                    }
                                 }
                                 continue loop1;
                              }
                              _loc3_.gotoAndStop(5);
                              §§goto(addr275);
                           }
                        }
                        _loc3_.gotoAndStop(6);
                        §§goto(addr284);
                     }
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr212);
         }
         §§goto(addr29);
      }
      
      private function §;!P§() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§;!O§.§1"Z§());
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(_loc1_ == "")
            {
               do
               {
                  §'"+§.§'!#§("onFlashLoadComplete");
               }
               while(_loc3_);
               
               if(_loc2_ || _loc3_)
               {
                  return §+d§.STATE_STATUS_COMPLETED;
               }
               if(_loc2_ || _loc1_)
               {
                  if(!_loc2_)
                  {
                     addr112:
                     if(!this.§!!"§)
                     {
                        if(!_loc3_)
                        {
                           addr117:
                           this.§!!"§ = true;
                        }
                        while(true)
                        {
                           §9"6§.§>_§();
                           §§goto(addr101);
                        }
                     }
                  }
                  return §+d§.STATE_STATUS_RUNNING;
               }
               addr101:
               while(_loc3_ && _loc2_)
               {
                  continue loop2;
               }
               throw new Error(_loc1_,§;!O§.§!!q§());
            }
            §§goto(addr112);
         }
         §§goto(addr117);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            §§push(this.§"g§);
            if(_loc5_)
            {
               if(§§pop() == -1)
               {
                  while(true)
                  {
                     this.§"g§ = new Date().time;
                     addr114:
                     while(true)
                     {
                     }
                     addr73:
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(super.run(param1));
                        if(!(_loc4_ && this))
                        {
                           §§push(int(§§pop()));
                        }
                        loop12:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop13:
                           while(true)
                           {
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 if(§§pop() == §+d§.STATE_STATUS_COMPLETED)
                                 {
                                    do
                                    {
                                       this.§<z§ = true;
                                       do
                                       {
                                          this.§'"V§ = 1;
                                       }
                                       while(!(_loc5_ || param1));
                                       
                                    }
                                    while(_loc4_ && this);
                                    
                                    if(!_loc5_)
                                    {
                                       continue loop13;
                                    }
                                    if(_loc4_ && this)
                                    {
                                       break loop13;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(this.§2!+§());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc2_:* = §§pop();
                                 if(!_loc4_)
                                 {
                                    this.§0"A§(_loc2_);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc2_ == 1);
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop4;
                                             }
                                             addr186:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§goto(addr151);
                                             }
                                             addr150:
                                          }
                                          addr142:
                                          if(_loc4_ && param1)
                                          {
                                             continue;
                                          }
                                          §§goto(addr150);
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§<z§);
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr142);
                                       }
                                       §§goto(addr186);
                                    }
                                    addr151:
                                    while(§§pop())
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          return this.§;!P§();
                                       }
                                       if(!(_loc4_ && param1))
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    return §+d§.STATE_STATUS_RUNNING;
                                 }
                              }
                              continue loop12;
                           }
                           addr66:
                           while(!(_loc4_ && param1))
                           {
                              §§goto(addr73);
                              §§goto(addr42);
                           }
                           §§goto(addr114);
                        }
                     }
                     addr80:
                  }
               }
               while(true)
               {
                  if(!this.§<z§)
                  {
                     §§goto(addr66);
                  }
                  break;
                  §§goto(addr114);
               }
            }
            §§goto(addr115);
         }
         §§goto(addr80);
      }
      
      private function §2!+§() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(§;!O§.§each §)
            {
               addr26:
               §§push(0);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_ || _loc2_)
                  {
                     addr47:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  addr39:
                  §§push(Number(§§pop()));
                  if(_loc3_ || _loc1_)
                  {
                     §§goto(addr47);
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this);
               if(!(_loc4_ && this))
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(1);
                     if(_loc3_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 addr75:
                                 §§pop();
                                 §§push(this.§'"V§ == 1);
                              }
                           }
                           §§push(§§pop().§'E§(§§pop()));
                           if(_loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           if(!_loc4_)
                           {
                              §§push(this.§'"V§);
                              loop0:
                              while(true)
                              {
                                 §§push(1);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop3:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§pop();
                                                addr236:
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            addr220:
                                                            if(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr228:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr158:
                                                                              while(true)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(!(_loc3_ || _loc1_))
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(_loc4_ && _loc1_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(_loc3_ || this))
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(!(_loc3_ || _loc1_))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        §§goto(addr220);
                                                                        addr227:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              return 1;
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc4_ && _loc1_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr228);
                                                                           }
                                                                        }
                                                                        §§push(this.§'"V§);
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr145:
                                                                        if(!_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     addr153:
                                                                     §§push(_loc2_);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr151:
                                                                        §§push(§§pop() * 0.1);
                                                                     }
                                                                     return §§pop() + §§pop();
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop3;
                                                               addr222:
                                                            }
                                                            continue loop2;
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr222);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr236);
                        }
                     }
                  }
               }
               §§goto(addr75);
            }
            else
            {
               §§push(1);
            }
            §§goto(addr39);
         }
         §§goto(addr26);
      }
      
      private function §'E§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc3_)
         {
            if(param1)
            {
               if(_loc6_ || this)
               {
                  addr32:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§6!b§);
                  if(_loc6_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc7_)
                  {
                     _loc4_.§6!b§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§"g§) / 1000,this.§6!b§) / this.§6!b§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1 - Math.pow(1 - _loc2_,2));
            if(!(_loc7_ && _loc2_))
            {
               return Number(§§pop());
            }
         }
         §§goto(addr32);
      }
      
      override protected function initLoadManager() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §'"U§.§&"5§.init(§8M§.§+!y§(),§?!<§,§>"Y§,null,null,this.§^!L§,"/flash/");
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§'"V§ = param1;
         }
      }
      
      private function §0"A§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§+"K§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setViewSize(param1,param2);
            loop0:
            while(§+"K§)
            {
               if(!(_loc4_ && param1))
               {
                  while(true)
                  {
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + 180);
                        if(!(_loc4_ && param2))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param1 = §§pop();
                  }
                  addr86:
               }
               while(_loc3_)
               {
                  §+"K§.x = param1 - §+"K§.width >> 1;
                  while(!(_loc4_ && _loc3_))
                  {
                     §+"K§.y = param2 - 570 >> 1;
                     if(!(_loc4_ && param2))
                     {
                        break loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr86);
      }
   }
}
