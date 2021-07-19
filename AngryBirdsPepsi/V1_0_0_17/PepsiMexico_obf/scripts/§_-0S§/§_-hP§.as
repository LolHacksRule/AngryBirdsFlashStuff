package §_-0S§
{
   public class §_-hP§
   {
      
      public static const §_-xW§:Boolean = false;
      
      private static var §_-nD§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-xW§ = false;
         }
      }
      
      public function §_-hP§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!_loc6_)
         {
            §_-nD§ = new Array();
         }
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < param1.length())
            {
               §§push(param1[_loc2_].@id);
               if(_loc5_ || param1)
               {
                  _loc3_ = §§pop();
                  if(!_loc6_)
                  {
                     §§push(param1[_loc2_][0]);
                  }
                  break;
               }
               _loc4_ = §§pop();
               if(!(_loc6_ && param1))
               {
                  §_-nD§[_loc3_] = _loc4_;
                  if(_loc6_ && §_-hP§)
                  {
                     continue loop0;
                  }
               }
               §§push(_loc2_);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() + 1);
                  if(!_loc6_)
                  {
                     addr88:
                     §§push(Number(§§pop()));
                     if(!(_loc5_ || param1))
                     {
                        continue;
                     }
                  }
                  _loc2_ = §§pop();
                  if(_loc6_ && param1)
                  {
                     break;
                  }
                  continue loop0;
               }
               §§goto(addr88);
            }
            return;
         }
      }
      
      public static function getText(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§_-xW§);
            if(_loc3_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(!(_loc2_ && param1))
                        {
                           addr51:
                           §§push(§_-nD§);
                           if(!_loc2_)
                           {
                              §§push(param1);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr65:
                                 if(§§pop()[§§pop()] == null)
                                 {
                                    if(_loc3_ || §_-hP§)
                                    {
                                       §§goto(addr80);
                                    }
                                 }
                                 addr85:
                                 §§push(§_-nD§);
                                 §§push(param1);
                              }
                              return §§pop()[§§pop()];
                           }
                           §§goto(addr85);
                        }
                        addr80:
                        return "Missing text: " + param1;
                     }
                  }
               }
            }
            §§goto(addr65);
         }
         §§goto(addr51);
      }
   }
}
