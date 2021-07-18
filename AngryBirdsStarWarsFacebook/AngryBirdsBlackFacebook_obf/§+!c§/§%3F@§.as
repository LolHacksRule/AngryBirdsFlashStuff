package §+!c§
{
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §?@§ extends §5"$§
   {
       
      
      protected var §6"?§:Number;
      
      protected var §[!4§:Number;
      
      public function §?@§(param1:String, param2:Number, param3:Number, param4:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§6"?§ = param2;
            while(true)
            {
               this.§[!4§ = param3;
               addr100:
               while(true)
               {
                  super(param1,param4);
               }
               addr70:
               if(!(_loc5_ || param3))
               {
                  continue;
               }
               this.§?![§();
               addr24:
               return;
               addr79:
            }
         }
         while(true)
         {
            if(§<!x§.isLoaded)
            {
               if(_loc5_ || this)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr70);
                  }
                  §§goto(addr100);
               }
               break;
            }
            §<!x§.addEventListener(Event.COMPLETE,this.§[!^§);
            if(_loc6_)
            {
               break;
            }
            if(_loc6_ && param2)
            {
               continue;
            }
            §§goto(addr24);
         }
         §§goto(addr79);
      }
      
      private function §[!^§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?![§();
         }
      }
      
      protected function §?![§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         §§push(this.§6"?§);
         if(!(_loc6_ && _loc1_))
         {
            §§push(§§pop() / §<!x§.bitmapWidth);
            if(!_loc6_)
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(0);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(0);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc7_)
            {
               §§push(_loc1_);
               if(!(_loc6_ && _loc1_))
               {
                  §§push(§§pop() * §<!x§.bitmapHeight);
                  loop0:
                  while(true)
                  {
                     §§push(this.§[!4§);
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           §§push(_loc1_);
                           if(_loc7_ || _loc1_)
                           {
                              §§push(§§pop() * §<!x§.bitmapHeight);
                           }
                           while(true)
                           {
                              §§push(this.§[!4§);
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() - §§pop());
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       addr283:
                                       while(true)
                                       {
                                          §§push(§§pop() / §<!x§.bitmapHeight);
                                          addr286:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr287:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                addr288:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr248:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §<!x§.bitmapWidth);
                                                      addr251:
                                                      while(true)
                                                      {
                                                         §§push(this.§6"?§);
                                                         addr253:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr283:
                                    }
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop14:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop15:
                                          while(true)
                                          {
                                             addr166:
                                             loop6:
                                             while(true)
                                             {
                                                §§push(Number(Math.round(_loc2_ * 0.5 / _loc1_)));
                                                addr175:
                                                loop7:
                                                while(true)
                                                {
                                                   if(_loc7_ || this)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr233:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            break loop6;
                                                         }
                                                         §§goto(addr287);
                                                      }
                                                      §§goto(addr251);
                                                      continue loop7;
                                                   }
                                                }
                                                §§goto(addr248);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr166);
                                                addr97:
                                                if(!(_loc7_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(_loc6_ && _loc1_)
                                                {
                                                   continue loop15;
                                                }
                                                if(_loc7_ || this)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      return;
                                                   }
                                                   addr281:
                                                   while(true)
                                                   {
                                                      §§goto(addr283);
                                                   }
                                                }
                                                §§goto(addr288);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr253);
                              if(_loc6_ && _loc1_)
                              {
                                 continue;
                              }
                              §§goto(addr164);
                           }
                           continue;
                        }
                        §§goto(addr281);
                     }
                  }
               }
               §§goto(addr283);
            }
            §§goto(addr288);
         }
         §§goto(addr35);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!x§.removeEventListener(Event.COMPLETE,this.§[!^§);
            do
            {
               super.dispose();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
   }
}
