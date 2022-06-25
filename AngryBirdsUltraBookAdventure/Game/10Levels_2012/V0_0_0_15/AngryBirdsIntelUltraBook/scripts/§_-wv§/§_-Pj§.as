package §_-wv§
{
   import §_-4§.Item;
   import §_-4§.§_-044§;
   import §_-y7§.§_-xe§;
   
   public class §_-Pj§
   {
       
      
      public function §_-Pj§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §_-qM§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Object = null;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         loop0:
         for each(_loc4_ in param1)
         {
            if(_loc8_)
            {
               if(_loc3_ > 0)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop() + "-";
                        addr55:
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(§§pop() + (§_-y9§(_loc4_.category) + _loc4_.sId));
                           }
                           if(_loc7_ && _loc3_)
                           {
                              continue loop1;
                           }
                           _loc2_ = §§pop();
                           loop4:
                           while(_loc8_)
                           {
                              while(true)
                              {
                                 _loc3_++;
                                 if(_loc8_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr55);
            }
            §§goto(addr93);
         }
         return _loc2_;
      }
      
      public static function §_-0Bw§(param1:String) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §_-08k§(_loc4_))
            {
               if(!_loc8_)
               {
                  _loc3_.push(_loc5_);
               }
            }
         }
         return _loc3_;
      }
      
      public static function §_-08k§(param1:String) : Item
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         §§push(param1);
         if(_loc14_ || param1)
         {
            §§push(§§pop().substr(0,1));
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         if(_loc14_)
         {
            §§push(§§pop().substr(1));
         }
         var _loc3_:* = §§pop();
         var _loc6_:Array = §_-xe§.§_-eA§().items;
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc13_ && _loc2_))
            {
               var _loc11_:int = 0;
               if(_loc14_ || §_-Pj§)
               {
                  for each(_loc8_ in _loc7_)
                  {
                     if(_loc8_.sId == _loc3_)
                     {
                        if(_loc14_ || §_-Pj§)
                        {
                           return _loc8_;
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
      
      private static function §_-y9§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-044§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §_-xe§.§_-eA§().§_-05v§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ || _loc3_)
               {
                  §§push(_loc2_.name);
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(§§pop() == param1)
                  {
                     if(_loc6_)
                     {
                        §§push(_loc2_.sid);
                        break;
                     }
                  }
               }
            }
            return "";
         }
         return §§pop();
      }
   }
}
