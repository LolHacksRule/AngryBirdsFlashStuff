package §^j§
{
   import §3![§.§^"1§;
   import §9"!§.§9"3§;
   
   public class §7>§ extends §^"1§
   {
      
      public static const §<v§:Number = 10000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<v§ = 10000;
         }
      }
      
      public var §`F§:Function = null;
      
      public var §=T§:Boolean = false;
      
      public function §7>§(param1:§9"3§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
      
      override protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!§4d§)
            {
               while(true)
               {
                  §4d§ = true;
                  addr165:
                  while(true)
                  {
                  }
               }
               addr162:
            }
            loop1:
            while(true)
            {
               if(new Date().time - §@O§.slingshot.timeOfLastBirdShot >= 6000)
               {
                  loop2:
                  while(true)
                  {
                     if(!§@O§.slingshot.mDragging)
                     {
                        loop3:
                        while(true)
                        {
                           if(§@O§.objects.isWorldAtSleep())
                           {
                              loop4:
                              while(true)
                              {
                                 §^&§ = Math.min(§^&§,3500);
                                 while(!_loc3_)
                                 {
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    this.§`F§();
                                    if(_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc3_)
                                    {
                                       return;
                                    }
                                    §§goto(addr162);
                                 }
                                 addr144:
                                 if(_loc4_)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                           while(true)
                           {
                              if(§^&§ <= 0)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(param1 == §^"1§.LEVEL_STATE_FAIL)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          if(this.§`F§ != null)
                                          {
                                             if(_loc3_ && param1)
                                             {
                                                break;
                                             }
                                             if(!(_loc3_ && param1))
                                             {
                                                if(!this.§=T§)
                                                {
                                                   if(!(_loc3_ && param2))
                                                   {
                                                      §§goto(addr99);
                                                   }
                                                   break;
                                                }
                                                addr24:
                                                addr24:
                                                while(true)
                                                {
                                                   changeGameState(param1,param2);
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr20);
                                                      }
                                                      break loop8;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop7;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       §§goto(addr110);
                                    }
                                    §§goto(addr24);
                                 }
                              }
                              addr20:
                              return;
                           }
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr144);
                  }
                  return;
               }
               §§goto(addr158);
            }
         }
         §§goto(addr165);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.update(param1);
         }
      }
      
      public function §2!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §4d§ = true;
            while(true)
            {
               §^&§ = 0;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            this.setGameOverState(LEVEL_STATE_FAIL,true);
            if(_loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
