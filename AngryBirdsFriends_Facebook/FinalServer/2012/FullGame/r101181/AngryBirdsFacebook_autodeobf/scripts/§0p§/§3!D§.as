package §0p§
{
   import §!K§.Item;
   import §!K§.§use §;
   import §#!H§.§=!F§;
   
   public class §3!D§
   {
       
      
      public function §3!D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §7U§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         loop0:
         for each(_loc4_ in param1)
         {
            if(!(_loc8_ && _loc3_))
            {
               if(_loc3_ > 0)
               {
                  if(_loc7_)
                  {
                     §§push(_loc2_);
                     while(true)
                     {
                        _loc2_ = §§pop() + "-";
                        addr70:
                        if(_loc8_)
                        {
                           continue;
                        }
                        addr91:
                        _loc2_ = §§pop() + (§7Q§(_loc4_.category) + _loc4_.sId);
                        do
                        {
                           _loc3_++;
                        }
                        while(_loc8_);
                        
                        if(!(_loc8_ && _loc3_))
                        {
                           while(false)
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc7_)
                                 {
                                    §§goto(addr70);
                                 }
                                 §§goto(addr91);
                              }
                           }
                           continue loop0;
                           addr64:
                        }
                        while(true)
                        {
                           §§goto(addr66);
                        }
                        addr102:
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr66);
            }
            §§goto(addr64);
         }
         return _loc2_;
      }
      
      public static function §!!@§(param1:String) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = § @§(_loc4_))
            {
               if(_loc9_ || _loc2_)
               {
                  _loc3_.push(_loc5_);
               }
            }
         }
         return _loc3_;
      }
      
      public static function § @§(param1:String) : Item
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         §§push(param1);
         if(_loc14_ || _loc3_)
         {
            §§push(§§pop().substr(0,1));
         }
         var _loc2_:* = §§pop();
         if(!(_loc13_ && param1))
         {
            if(!isNaN(Number(_loc2_)))
            {
               if(_loc14_)
               {
                  _loc2_ = "";
               }
            }
         }
         §§push(param1);
         if(!(_loc13_ && param1))
         {
            §§push(§§pop().substr(_loc2_.length));
         }
         var _loc3_:* = §§pop();
         var _loc6_:Array = §=!F§.§;"§.items.§-">§;
         for each(_loc7_ in _loc6_)
         {
            if(_loc14_ || _loc2_)
            {
               var _loc11_:int = 0;
               if(!_loc13_)
               {
                  for each(_loc8_ in _loc7_)
                  {
                     if(_loc8_.sId == _loc3_)
                     {
                        if(_loc14_ || §3!D§)
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
      
      private static function §7Q§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§use § = null;
         var _loc3_:int = 0;
         var _loc4_:* = §=!F§.§;"§.items.§-S§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && _loc2_)
               {
                  addr71:
                  break;
               }
               §§push(_loc2_.name);
               if(_loc6_)
               {
                  return §§pop();
               }
               if(§§pop() == param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return "";
         }
         §§goto(addr71);
         §§push(_loc2_.sid);
      }
   }
}
