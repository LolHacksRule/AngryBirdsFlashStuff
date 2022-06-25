package §0!B§
{
   import §#!o§.§>!,§;
   import §#!o§.Item;
   import §;#§.§;?§;
   
   public class §%9§
   {
       
      
      public function §%9§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §?_§(param1:Array) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Object = null;
         var _loc2_:* = "";
         var _loc3_:int = 0;
         for each(_loc4_ in param1)
         {
            if(_loc7_ || _loc3_)
            {
               if(_loc3_ > 0)
               {
                  if(_loc7_ || §%9§)
                  {
                     addr113:
                     §§push(_loc2_);
                     while(true)
                     {
                        _loc2_ = §§pop() + "-";
                     }
                     addr114:
                  }
                  while(true)
                  {
                  }
                  addr117:
               }
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc8_)
                  {
                     if(!(_loc8_ && param1))
                     {
                        addr84:
                        _loc2_ = §§pop() + (§'!`§(_loc4_.category) + _loc4_.sId);
                        while(!(_loc8_ && _loc2_))
                        {
                           _loc3_++;
                           if(!(_loc8_ && param1))
                           {
                              if(true)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr114);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr84);
               }
               continue;
            }
            §§goto(addr113);
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
            if(_loc5_ = §"6§(_loc4_))
            {
               if(!_loc8_)
               {
                  _loc3_.push(_loc5_);
               }
            }
         }
         return _loc3_;
      }
      
      public static function §"6§(param1:String) : Item
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
         if(!(_loc13_ && §%9§))
         {
            §§push(§§pop().substr(1));
         }
         var _loc3_:* = §§pop();
         var _loc6_:Array = §;?§.§]0§().items;
         for each(_loc7_ in _loc6_)
         {
            if(_loc14_ || _loc3_)
            {
               var _loc11_:int = 0;
               if(_loc14_)
               {
                  for each(_loc8_ in _loc7_)
                  {
                     if(_loc8_.sId == _loc3_)
                     {
                        if(!_loc13_)
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
      
      private static function §'!`§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§>!,§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §;?§.§]0§().§>!J§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ || §%9§)
               {
                  §§push(_loc2_.name);
                  if(_loc5_ && param1)
                  {
                     break;
                  }
                  if(§§pop() == param1)
                  {
                     if(!(_loc5_ && §%9§))
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
