package §,%§
{
   import §!"@§.§]"1§;
   import §4y§.Item;
   import §4y§.§]"6§;
   
   public class §<D§
   {
       
      
      public function §<D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §[V§(param1:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Object = null;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         for each(_loc4_ in param1)
         {
            if(_loc8_ || _loc3_)
            {
               if(_loc3_ > 0)
               {
                  addr99:
                  while(true)
                  {
                     §§push(_loc2_);
                     addr100:
                     while(true)
                     {
                        _loc2_ = §§pop() + "-";
                        addr103:
                        while(true)
                        {
                        }
                     }
                  }
                  addr99:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + (§?!X§(_loc4_.category) + _loc4_.sId));
                  }
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc2_ = §§pop();
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           continue;
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr100);
               }
               continue;
            }
            §§goto(addr99);
         }
         return _loc2_;
      }
      
      public static function §'!^§(param1:String) : Array
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §&`§(_loc4_))
            {
               if(_loc8_ || _loc3_)
               {
                  _loc3_.push(_loc5_);
               }
            }
         }
         return _loc3_;
      }
      
      public static function §&`§(param1:String) : Item
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         §§push(param1);
         if(_loc14_)
         {
            §§push(§§pop().substr(0,1));
         }
         var _loc2_:* = §§pop();
         if(_loc14_)
         {
            if(!isNaN(Number(_loc2_)))
            {
               if(_loc14_ || param1)
               {
                  _loc2_ = "";
               }
            }
         }
         §§push(param1);
         if(!(_loc13_ && _loc3_))
         {
            §§push(§§pop().substr(_loc2_.length));
         }
         var _loc3_:* = §§pop();
         var _loc6_:Array = §]"1§.§&"5§.items.§9"1§;
         for each(_loc7_ in _loc6_)
         {
            if(_loc14_)
            {
               var _loc11_:int = 0;
               if(_loc14_ || _loc2_)
               {
                  for each(_loc8_ in _loc7_)
                  {
                     if(_loc8_.sId == _loc3_)
                     {
                        if(_loc14_ || §<D§)
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
      
      private static function §?!X§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]"6§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §]"1§.§&"5§.items.§`!s§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ && §<D§))
               {
                  §§push(_loc2_.name);
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(§§pop() == param1)
                  {
                     if(!_loc6_)
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
