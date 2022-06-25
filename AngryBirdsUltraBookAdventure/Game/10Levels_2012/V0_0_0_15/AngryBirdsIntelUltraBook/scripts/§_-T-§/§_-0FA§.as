package §_-T-§
{
   import §_-01E§.§_-9K§;
   import §_-7§.§_-EJ§;
   import §_-Y8§.§_-05J§;
   import §_-x8§.§_-RM§;
   import §_-x8§.§_-nG§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §_-0FA§ extends §_-RM§
   {
      
      private static const §_-04n§:Number = 0.2;
      
      private static const §_-i3§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-04n§ = 0.2;
            do
            {
               §_-i3§ = 60;
            }
            while(_loc1_);
            
         }
      }
      
      private var §_-09u§:Boolean = false;
      
      protected var §_-qh§:Number = -1;
      
      protected var §_-Zw§:Number = 0;
      
      private var §_-DP§:Boolean = false;
      
      private var §_-3l§:Number = 60;
      
      public function §_-0FA§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setLoadingScreen(param1);
            do
            {
               this.§_-X§(0);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      private function §_-00W§() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§_-9K§.§_-00E§());
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(_loc1_ == "")
            {
               while(true)
               {
                  §_-05J§.§_-0At§("onFlashLoadComplete");
                  if(_loc3_)
                  {
                     return §_-nG§.STATE_STATUS_COMPLETED;
                  }
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_ && _loc1_)
                        {
                           addr108:
                           this.§_-DP§ = true;
                        }
                        continue;
                        break;
                     }
                     throw new Error(_loc1_,§_-9K§.§_-If§());
                     addr101:
                  }
                  if(_loc3_)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        addr105:
                        if(!this.§_-DP§)
                        {
                           §§goto(addr108);
                        }
                     }
                     else
                     {
                        addr97:
                     }
                     return §_-nG§.STATE_STATUS_RUNNING;
                  }
                  break;
                  §§goto(addr108);
               }
               §_-EJ§.§_-QC§();
               §§goto(addr101);
            }
            §§goto(addr105);
         }
         §§goto(addr97);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§_-qh§);
            if(!(_loc4_ && this))
            {
               if(§§pop() == -1)
               {
                  while(true)
                  {
                     this.§_-qh§ = new Date().time;
                     addr109:
                     addr68:
                     while(true)
                     {
                     }
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     §§push(super.run(param1));
                     if(!_loc4_)
                     {
                        §§push(int(§§pop()));
                     }
                     loop3:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr92:
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(§§pop() == §_-nG§.STATE_STATUS_COMPLETED)
                              {
                                 loop6:
                                 while(_loc5_ || _loc2_)
                                 {
                                    this.§_-09u§ = true;
                                    loop7:
                                    while(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.§_-Zw§ = 1;
                                          if(!(_loc5_ || param1))
                                          {
                                             continue loop7;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop6;
                                          }
                                          if(false)
                                          {
                                             continue loop5;
                                          }
                                          addr110:
                                          addr110:
                                          §§push(this.§_-Pn§());
                                          if(!_loc4_)
                                          {
                                             addr114:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc2_:* = §§pop();
                                          if(_loc5_ || param1)
                                          {
                                             this.§_-X§(_loc2_);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc2_ == 1);
                                                addr174:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            return this.§_-00W§();
                                                         }
                                                         if(_loc5_ || this)
                                                         {
                                                            break;
                                                         }
                                                         continue loop8;
                                                      }
                                                      return §_-nG§.STATE_STATUS_RUNNING;
                                                      addr145:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this.§_-09u§);
                                             if(!_loc4_)
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   addr143:
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr176);
                                             }
                                             §§goto(addr143);
                                          }
                                       }
                                    }
                                    §§goto(addr109);
                                 }
                                 continue loop4;
                              }
                              §§goto(addr110);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!this.§_-09u§)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr110);
                  §§goto(addr109);
               }
            }
            §§goto(addr114);
         }
         §§goto(addr61);
      }
      
      private function §_-Pn§() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(§_-9K§.§_-Er§)
            {
               addr26:
               §§push(0);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     addr37:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  addr34:
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     §§goto(addr37);
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this);
               if(!_loc4_)
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!(_loc4_ && this))
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§pop();
                                 addr69:
                                 §§push(this.§_-Zw§ == 1);
                              }
                           }
                        }
                        §§push(§§pop().§_-GE§(§§pop()));
                        if(_loc3_ || _loc1_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc3_)
                        {
                           §§push(this.§_-Zw§);
                           while(true)
                           {
                              §§push(1);
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    loop2:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr220:
                                          while(true)
                                          {
                                             §§pop();
                                             addr221:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                addr196:
                                                while(true)
                                                {
                                                   §§push(1);
                                                   addr197:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                   }
                                                }
                                             }
                                          }
                                          addr220:
                                       }
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 §§goto(addr220);
                              }
                           }
                        }
                        §§goto(addr193);
                     }
                  }
               }
               §§goto(addr69);
            }
            else
            {
               §§push(1);
            }
            §§goto(addr34);
         }
         §§goto(addr26);
      }
      
      private function §_-GE§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(param1)
            {
               if(_loc7_ || _loc2_)
               {
                  addr28:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§_-3l§);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc7_)
                  {
                     _loc4_.§_-3l§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§_-qh§) / 1000,this.§_-3l§) / this.§_-3l§);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1 - Math.pow(1 - _loc2_,2));
            if(_loc7_)
            {
               return Number(§§pop());
            }
         }
         §§goto(addr28);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Zw§ = param1;
         }
      }
      
      private function §_-X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            (§_-08o§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setViewSize(param1,param2);
            loop0:
            while(§_-08o§)
            {
               if(!_loc4_)
               {
                  §_-08o§.x = 0;
               }
               loop1:
               while(_loc3_ || param2)
               {
                  while(true)
                  {
                     §_-08o§.y = 0;
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr55);
      }
   }
}
