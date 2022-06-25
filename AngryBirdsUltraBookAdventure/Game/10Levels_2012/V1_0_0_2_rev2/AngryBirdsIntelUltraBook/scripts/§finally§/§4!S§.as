package §finally§
{
   import §7r§.§?V§;
   import §7r§.Item;
   import §`!%§.§6!_§;
   
   public class §4!S§
   {
       
      
      public function §4!S§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §#D§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Object = null;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         for each(_loc4_ in param1)
         {
            if(_loc8_)
            {
               if(_loc3_ > 0)
               {
                  addr89:
                  while(true)
                  {
                     §§push(_loc2_);
                     addr90:
                     while(true)
                     {
                        _loc2_ = §§pop() + "-";
                        addr93:
                        while(true)
                        {
                        }
                     }
                  }
                  addr89:
               }
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc7_)
                  {
                     if(!_loc7_)
                     {
                        addr80:
                        _loc2_ = §§pop() + (§3!X§(_loc4_.category) + _loc4_.sId);
                        for(; !_loc7_; _loc3_++,if(_loc8_)
                        {
                           if(true)
                           {
                              break loop1;
                           }
                           continue loop1;
                        })
                        {
                           if(!_loc7_)
                           {
                              continue;
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr80);
               }
               continue;
            }
            §§goto(addr89);
         }
         return _loc2_;
      }
      
      public static function §`x§(param1:String) : Array
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §"!>§(_loc4_))
            {
               if(!_loc9_)
               {
                  _loc3_.push(_loc5_);
               }
            }
         }
         return _loc3_;
      }
      
      public static function §"!>§(param1:String) : Item
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         §§push(param1);
         if(_loc13_ || §4!S§)
         {
            §§push(§§pop().substr(0,1));
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         if(_loc13_ || _loc2_)
         {
            §§push(§§pop().substr(1));
         }
         var _loc3_:* = §§pop();
         var _loc6_:Array = §6!_§.§1w§().items;
         for each(_loc7_ in _loc6_)
         {
            if(_loc13_ || _loc3_)
            {
               var _loc11_:int = 0;
               if(_loc13_ || _loc2_)
               {
                  for each(_loc8_ in _loc7_)
                  {
                     if(_loc8_.sId == _loc3_)
                     {
                        if(!(_loc14_ && param1))
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
      
      private static function §3!X§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§?V§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §6!_§.§1w§().§=!b§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || _loc3_))
               {
                  addr76:
                  break;
               }
               §§push(_loc2_.name);
               if(_loc5_)
               {
                  return §§pop();
               }
               if(§§pop() == param1)
               {
                  if(_loc6_ || _loc3_)
                  {
                     break;
                  }
               }
            }
            return "";
         }
         §§goto(addr76);
         §§push(_loc2_.sid);
      }
   }
}
