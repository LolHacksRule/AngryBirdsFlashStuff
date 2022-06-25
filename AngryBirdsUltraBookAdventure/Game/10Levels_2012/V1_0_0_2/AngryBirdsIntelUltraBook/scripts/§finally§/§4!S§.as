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
         if(_loc2_ || _loc1_)
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
            if(!(_loc7_ && _loc2_))
            {
               if(_loc3_ > 0)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     addr110:
                     while(true)
                     {
                        _loc2_ = §§pop() + "-";
                        addr113:
                        while(true)
                        {
                        }
                     }
                  }
                  addr109:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(§§pop() + (§3!X§(_loc4_.category) + _loc4_.sId));
                  }
                  if(!_loc7_)
                  {
                     _loc2_ = §§pop();
                     while(true)
                     {
                        if(_loc8_)
                        {
                           continue;
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr70);
         }
         return _loc2_;
      }
      
      public static function §`x§(param1:String) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §"!>§(_loc4_))
            {
               if(!(_loc8_ && param1))
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
         if(!_loc14_)
         {
            §§push(§§pop().substr(0,1));
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         if(_loc13_)
         {
            §§push(§§pop().substr(1));
         }
         var _loc3_:* = §§pop();
         var _loc6_:Array = §6!_§.§1w§().items;
         for each(_loc7_ in _loc6_)
         {
            if(_loc13_ || _loc2_)
            {
               var _loc11_:int = 0;
               if(_loc13_)
               {
                  for each(_loc8_ in _loc7_)
                  {
                     if(_loc8_.sId == _loc3_)
                     {
                        if(!_loc14_)
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?V§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §6!_§.§1w§().§=!b§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ && param1))
               {
                  §§push(_loc2_.name);
                  if(!(_loc5_ || §4!S§))
                  {
                     break;
                  }
                  if(§§pop() == param1)
                  {
                     if(_loc5_)
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
