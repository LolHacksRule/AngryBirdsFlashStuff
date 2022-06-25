package §`!#§
{
   import §4H§.§!!5§;
   import §8!H§.§"_§;
   import §8!H§.§9![§;
   import §>L§.§+!i§;
   import §^!m§.§4!i§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §-r§ extends §"_§
   {
      
      private static const §2T§:Number = 0.2;
      
      private static const §+!0§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2T§ = 0.2;
            do
            {
               §+!0§ = 60;
            }
            while(_loc1_ && §-r§);
            
         }
      }
      
      private var §%!;§:Boolean = false;
      
      protected var §`+§:Number = -1;
      
      protected var §4!9§:Number = 0;
      
      private var §;!5§:Boolean = false;
      
      private var §]u§:Number = 60;
      
      public function §-r§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setLoadingScreen(param1);
         }
         do
         {
            this.§0!R§(0);
         }
         while(!_loc2_);
         
      }
      
      private function § do§() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§!!5§.§>!I§());
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc1_)
         {
            if(_loc1_ == "")
            {
               while(true)
               {
                  §+!i§.§>!y§("onFlashLoadComplete");
                  if(_loc2_)
                  {
                     break;
                  }
                  if(_loc2_ || this)
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     addr54:
                     return §9![§.STATE_STATUS_RUNNING;
                  }
               }
               return §9![§.STATE_STATUS_COMPLETED;
            }
            if(!_loc3_)
            {
               if(!this.§;!5§)
               {
                  while(true)
                  {
                     this.§;!5§ = true;
                     addr115:
                     while(true)
                     {
                        §4!i§.§>t§();
                     }
                  }
                  addr112:
               }
               else
               {
                  §§goto(addr54);
               }
            }
            §§goto(addr115);
            while(true)
            {
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr112);
            }
            throw new Error(_loc1_,§!!5§.§+!A§());
         }
         §§goto(addr115);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            §§push(this.§`+§);
            if(!_loc4_)
            {
               if(§§pop() == -1)
               {
                  loop0:
                  while(true)
                  {
                     this.§`+§ = new Date().time;
                     addr119:
                     while(true)
                     {
                     }
                     loop6:
                     while(true)
                     {
                        if(!(_loc5_ || _loc2_))
                        {
                           continue loop0;
                        }
                        loop7:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && this))
                           {
                              addr46:
                              if(!(_loc4_ && param1))
                              {
                                 if(§§pop() != §9![§.STATE_STATUS_COMPLETED)
                                 {
                                    break;
                                 }
                                 if(!(_loc4_ && param1))
                                 {
                                    this.§%!;§ = true;
                                 }
                                 loop8:
                                 for(; !(_loc4_ && _loc2_); this.§4!9§ = 1,if(_loc4_)
                                 {
                                    continue;
                                 },if(!(_loc4_ && _loc3_))
                                 {
                                    continue loop7;
                                 },§§goto(addr119))
                                 {
                                    addr73:
                                    if(!(_loc4_ && this))
                                    {
                                       continue;
                                    }
                                    addr85:
                                    while(true)
                                    {
                                       §§push(super.run(param1));
                                       addr98:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr99:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             break loop8;
                                          }
                                          continue loop0;
                                          §§goto(addr46);
                                       }
                                       §§goto(addr73);
                                    }
                                 }
                                 continue loop6;
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr99);
                           addr35:
                           while(true)
                           {
                              if(true)
                              {
                                 break loop7;
                              }
                              continue loop7;
                           }
                        }
                        §§push(this.§;!>§());
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc4_ && param1))
                        {
                           this.§0!R§(_loc2_);
                           loop9:
                           while(true)
                           {
                              §§push(_loc2_ == 1);
                              if(_loc5_)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       addr159:
                                       while(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          addr182:
                                          if(!(_loc4_ && this))
                                          {
                                             return this.§ do§();
                                          }
                                          continue loop9;
                                       }
                                       return §9![§.STATE_STATUS_RUNNING;
                                       addr157:
                                    }
                                 }
                              }
                              addr191:
                              while(true)
                              {
                                 §§pop();
                                 continue loop9;
                              }
                           }
                        }
                        §§goto(addr182);
                     }
                  }
               }
               while(true)
               {
                  if(!this.§%!;§)
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr120);
                  §§goto(addr119);
               }
            }
            §§goto(addr120);
         }
         §§goto(addr35);
      }
      
      private function §;!>§() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            if(§!!5§.§6;§)
            {
               addr27:
               §§push(0);
               if(_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_ && this)
                  {
                  }
                  addr43:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr40:
                  §§push(Number(§§pop()));
                  if(!_loc3_)
                  {
                     §§goto(addr43);
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this);
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(1);
                     if(_loc4_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || this)
                              {
                                 addr66:
                                 §§pop();
                                 §§push(this.§4!9§ == 1);
                              }
                           }
                           §§push(§§pop().§2e§(§§pop()));
                           if(!(_loc3_ && this))
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           if(_loc4_)
                           {
                              §§push(this.§4!9§);
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
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr193:
                                                   addr163:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      loop7:
                                                      while(_loc4_ || _loc2_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop8:
                                                                     while(!(_loc3_ && this))
                                                                     {
                                                                        §§pop();
                                                                        do
                                                                        {
                                                                           §§push(_loc2_);
                                                                           do
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc3_ && _loc3_)
                                                                                 {
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           while(_loc3_);
                                                                           
                                                                           continue loop0;
                                                                        }
                                                                        while(!_loc4_);
                                                                        
                                                                        return 1;
                                                                     }
                                                                     continue loop2;
                                                                     addr226:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr184);
                                                                        }
                                                                        else
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr84:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§4!9§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(0.7);
                                                                                    if(_loc3_ && this)
                                                                                    {
                                                                                       addr161:
                                                                                       §§push(§§pop() * 0.1);
                                                                                       break loop6;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc3_ && _loc2_)
                                                                                    {
                                                                                       §§goto(addr164);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr115);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr169);
                                                                     }
                                                                     §§goto(addr84);
                                                                  }
                                                               }
                                                               continue loop3;
                                                               addr221:
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr164:
                                                   return §§pop();
                                                }
                                             }
                                          }
                                          §§goto(addr221);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr190);
                        }
                     }
                  }
               }
               §§goto(addr66);
            }
            else
            {
               §§push(1);
            }
            §§goto(addr40);
         }
         §§goto(addr27);
      }
      
      private function §2e§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            if(param1)
            {
               if(!_loc7_)
               {
                  addr27:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§]u§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_ || _loc3_)
                  {
                     _loc4_.§]u§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§`+§) / 1000,this.§]u§) / this.§]u§);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1 - Math.pow(1 - _loc2_,2));
            if(!_loc7_)
            {
               return Number(§§pop());
            }
         }
         §§goto(addr27);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!9§ = param1;
         }
      }
      
      private function §0!R§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§1!W§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setViewSize(param1,param2);
            while(§1!W§)
            {
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  §1!W§.x = 0;
                  do
                  {
                     §1!W§.y = 0;
                  }
                  while(_loc3_ && param1);
                  
                  break;
                  addr56:
               }
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
      }
   }
}
