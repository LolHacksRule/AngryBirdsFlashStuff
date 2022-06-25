package §<z§
{
   import §&=§.§>!-§;
   import §&=§.Item;
   import §^c§.§+-§;
   
   public class §`G§
   {
       
      
      public function §`G§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §,Y§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         loop0:
         for each(_loc4_ in param1)
         {
            if(!_loc8_)
            {
               if(_loc3_ > 0)
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     addr109:
                     while(true)
                     {
                        _loc2_ = §§pop() + "-";
                        addr112:
                        while(true)
                        {
                        }
                     }
                     addr97:
                     if(!(_loc7_ || §`G§))
                     {
                        continue;
                     }
                     _loc3_++;
                     addr104:
                     if(!(_loc8_ && param1))
                     {
                        if(false)
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc8_ && param1))
                              {
                                 if(!(_loc8_ && §`G§))
                                 {
                                    addr94:
                                    _loc2_ = §§pop() + (§'!_§(_loc4_.category) + _loc4_.sId);
                                    while(!_loc8_)
                                    {
                                       §§goto(addr97);
                                       §§goto(addr104);
                                    }
                                    addr95:
                                 }
                                 else
                                 {
                                    §§goto(addr109);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr94);
                           }
                           addr59:
                        }
                        continue loop0;
                     }
                     §§goto(addr95);
                  }
               }
               §§goto(addr59);
            }
            §§goto(addr112);
         }
         return _loc2_;
      }
      
      public static function §@Q§(param1:String) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §=X§(_loc4_))
            {
               if(!(_loc8_ && §`G§))
               {
                  _loc3_.push(_loc5_);
               }
            }
         }
         return _loc3_;
      }
      
      public static function §=X§(param1:String) : Item
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         §§push(param1);
         if(!(_loc13_ && param1))
         {
            §§push(§§pop().substr(0,1));
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         if(!_loc13_)
         {
            §§push(§§pop().substr(1));
         }
         var _loc3_:* = §§pop();
         var _loc6_:Array = §+-§.§?!9§().items;
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc13_ && _loc3_))
            {
               var _loc11_:int = 0;
               if(_loc14_ || §`G§)
               {
                  for each(_loc8_ in _loc7_)
                  {
                     if(_loc8_.sId == _loc3_)
                     {
                        if(_loc14_ || _loc2_)
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
      
      private static function §'!_§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§>!-§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §+-§.§?!9§().§1K§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  addr71:
                  break;
               }
               §§push(_loc2_.name);
               if(!_loc6_)
               {
                  return §§pop();
               }
               if(§§pop() == param1)
               {
                  if(!(_loc5_ && _loc3_))
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
