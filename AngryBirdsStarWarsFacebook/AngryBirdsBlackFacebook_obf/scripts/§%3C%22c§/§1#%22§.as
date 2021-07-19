package §<"c§
{
   import § §.§3Q§;
   import §>@§.§5"H§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §1#"§ extends §3Q§
   {
       
      
      public function §1#"§(param1:§5"H§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         if(!(_loc5_ && param2))
         {
            if(§'#F§)
            {
               if(_loc6_)
               {
                  §§push(param1);
                  if(_loc6_ || param2)
                  {
                     §§push(§'#F§.width / §'#F§.scaleX);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc6_)
                           {
                              addr56:
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 §§push(§'#F§.height / §'#F§.scaleY);
                                 if(!_loc5_)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(param2);
                                          if(!(_loc5_ && param1))
                                          {
                                             addr95:
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   addr98:
                                                   §§push(param2);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr111:
                                                      addr106:
                                                      §§push(§§pop() / (§'#F§.height / §'#F§.scaleY));
                                                      if(_loc5_ && param1)
                                                      {
                                                      }
                                                      §§goto(addr120);
                                                   }
                                                   addr120:
                                                   _loc3_ = §§pop();
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr128:
                                                      §'#F§.scaleX = §'#F§.scaleY = _loc3_;
                                                      if(_loc6_ || param2)
                                                      {
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   §'#F§.x = param1 - §'#F§.width >> 1;
                                                   §§goto(addr162);
                                                }
                                                addr162:
                                                return;
                                             }
                                             §§goto(addr128);
                                          }
                                       }
                                       §§goto(addr111);
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr111);
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr56);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr106);
               }
               §§goto(addr98);
            }
         }
         §§goto(addr128);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.setLoadingScreen(param1);
            do
            {
               this.setLoadingPercentage(0);
            }
            while(_loc2_);
            
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Number = 46;
         var _loc3_:Number = 806;
         var _loc4_:Number = -85;
         var _loc5_:MovieClip;
         (_loc5_ = MovieClip(§'#F§.getChildByName("mcLoadBar"))["bar"]).width = _loc2_ + param1 * (_loc3_ - _loc2_);
         if(!(_loc7_ && _loc3_))
         {
            _loc5_.x = _loc4_ - _loc2_ / 2 + _loc5_.width / 2;
         }
      }
   }
}
