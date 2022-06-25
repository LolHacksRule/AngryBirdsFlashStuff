package §_-n§
{
   import §_-0BH§.§_-FK§;
   import §_-8d§.§_-0FF§;
   import flash.utils.Dictionary;
   
   public class §_-II§
   {
      
      private static var §_-Of§:Array;
      
      private static var §_-xR§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-Of§ = [];
            do
            {
               §_-xR§ = new Dictionary();
            }
            while(!(_loc1_ || §_-II§));
            
         }
      }
      
      public function §_-II§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §_-f2§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§_-0BF§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!_loc7_)
            {
               if(§_-xR§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §_-0BF§(param1[_loc2_],_loc2_);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§_-FK§);
               §§push("Initializing cutScene: ");
               if(!(_loc7_ && §_-II§))
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §_-xR§[_loc2_] = _loc3_;
                     loop3:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(§_-Of§.indexOf(_loc2_) >= 0)
                           {
                              if(!_loc7_)
                              {
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    _loc3_.§_-01k§ = §_-0BF§.§_-rm§;
                                    break loop3;
                                 }
                              }
                              break;
                           }
                           break loop2;
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        if(true)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr81);
         }
      }
      
      public static function §_-N8§(param1:String, param2:§_-0FF§) : §_-0BF§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-0BF§ = §_-xR§[param1];
         if(!(_loc4_ && param2))
         {
            if(_loc3_)
            {
               addr41:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr41);
      }
      
      public static function §_-gy§(param1:String) : §_-0BF§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-0BF§ = §_-xR§[param1];
         if(_loc4_)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           _loc2_.§_-01k§ = §_-0BF§.§_-rm§;
                           addr74:
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§_-Of§.indexOf(param1)));
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           addr79:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr74);
                  }
                  return _loc2_;
                  addr64:
               }
               §§goto(addr79);
            }
         }
         §§goto(addr74);
      }
      
      public static function §_-VG§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(§_-Of§);
            if(!_loc2_)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(_loc3_ || §_-II§)
                     {
                        addr57:
                        §_-Of§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
   }
}
