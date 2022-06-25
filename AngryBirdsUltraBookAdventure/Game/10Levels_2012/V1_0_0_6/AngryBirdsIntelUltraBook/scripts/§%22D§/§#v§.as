package §"D§
{
   import §4;§.§5n§;
   import §8!6§.§"!K§;
   import §8!6§.Item;
   
   public class §#v§
   {
       
      
      public function §#v§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §3!9§(param1:Array) : String
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
                     addr104:
                     while(true)
                     {
                        _loc2_ = §§pop() + "-";
                        addr107:
                        while(true)
                        {
                        }
                     }
                     addr92:
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                     _loc3_++;
                     addr99:
                     if(_loc7_ || §#v§)
                     {
                        if(false)
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + (§^!i§(_loc4_.category) + _loc4_.sId));
                              }
                              if(_loc7_ || _loc2_)
                              {
                                 _loc2_ = §§pop();
                                 while(_loc7_)
                                 {
                                    §§goto(addr92);
                                    §§goto(addr99);
                                 }
                                 addr90:
                              }
                              else
                              {
                                 §§goto(addr104);
                              }
                              §§goto(addr107);
                           }
                           addr59:
                        }
                        continue loop0;
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr59);
            }
            §§goto(addr107);
         }
         return _loc2_;
      }
      
      public static function §62§(param1:String) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:Item = null;
         var _loc2_:Array = param1.split("-");
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(_loc5_ = §-W§(_loc4_))
            {
               if(!(_loc8_ && _loc2_))
               {
                  _loc3_.push(_loc5_);
               }
            }
         }
         return _loc3_;
      }
      
      public static function §-W§(param1:String) : Item
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc7_:Object = null;
         var _loc8_:Item = null;
         §§push(param1);
         if(_loc13_ || _loc2_)
         {
            §§push(§§pop().substr(0,1));
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         if(!(_loc14_ && _loc2_))
         {
            §§push(§§pop().substr(1));
         }
         var _loc3_:* = §§pop();
         var _loc6_:Array = §5n§.§0?§().items;
         for each(_loc7_ in _loc6_)
         {
            if(_loc13_ || param1)
            {
               var _loc11_:int = 0;
               if(!(_loc14_ && §#v§))
               {
                  for each(_loc8_ in _loc7_)
                  {
                     if(_loc8_.sId == _loc3_)
                     {
                        if(!(_loc14_ && _loc3_))
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
      
      private static function §^!i§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§"!K§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §5n§.§0?§().§]!Q§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || §#v§))
               {
                  addr75:
                  break;
               }
               §§push(_loc2_.name);
               if(_loc6_)
               {
                  return §§pop();
               }
               if(§§pop() == param1)
               {
                  if(_loc5_ || §#v§)
                  {
                     break;
                  }
               }
            }
            return "";
         }
         §§goto(addr75);
         §§push(_loc2_.sid);
      }
   }
}
