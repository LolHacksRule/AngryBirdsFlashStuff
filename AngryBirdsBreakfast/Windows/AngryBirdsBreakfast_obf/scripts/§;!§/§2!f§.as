package §;!§
{
   import §;0§.§6h§;
   import §?z§.§%r§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §2!f§ extends §%r§
   {
       
      
      public function §2!f§(param1:§6h§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc5_)
         {
            super.setViewSize(param1,param2);
         }
         loop0:
         while(true)
         {
            loop1:
            while(§%0§)
            {
               if(_loc6_ || this)
               {
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
                  §§push(param1);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§%0§.width / §%0§.scaleX);
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                     }
                     addr137:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop4:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           §§push(§%0§.height / §%0§.scaleY);
                           if(_loc6_)
                           {
                              if(!(_loc6_ || this))
                              {
                                 continue loop3;
                              }
                              §§push(_loc3_);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc5_)
                                 {
                                    addr48:
                                    §§push(param2);
                                    if(!(_loc5_ && this))
                                    {
                                       addr56:
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(param2);
                                                if(_loc5_ && param2)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc5_)
                                                   {
                                                   }
                                                }
                                                addr89:
                                                if(!_loc5_)
                                                {
                                                   §§push(§%0§.height / §%0§.scaleY);
                                                   break;
                                                }
                                                continue loop4;
                                                addr107:
                                                break loop1;
                                             }
                                             continue;
                                          }
                                          if(false)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       §%0§.scaleX = §%0§.scaleY = _loc3_ * 1.4;
                                       if(!_loc5_)
                                       {
                                          addr169:
                                          §%0§.x = param1 - §%0§.width >> 1;
                                          break loop1;
                                       }
                                       break loop1;
                                    }
                                    break;
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr56);
                           }
                           §§goto(addr48);
                        }
                        if(!_loc5_)
                        {
                           break loop3;
                        }
                        §§goto(addr137);
                     }
                  }
                  §§push(§§pop() / §§pop());
                  if(!(_loc5_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr107);
               }
               §§goto(addr169);
            }
            return;
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
            this.setLoadingPercentage(0);
         }
         while(!(_loc2_ || this));
         
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (§%0§.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
         }
      }
   }
}
