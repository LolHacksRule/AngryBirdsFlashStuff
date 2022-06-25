package §@!L§
{
   import §"x§.§-8§;
   import §^!Y§.§'R§;
   import flash.utils.Dictionary;
   
   public class §-`§
   {
      
      private static var §`k§:Array;
      
      private static var §7A§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §-`§)
         {
            §`k§ = [];
            do
            {
               §7A§ = new Dictionary();
            }
            while(_loc2_);
            
         }
      }
      
      public function §-`§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §0r§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§#L§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(_loc7_)
            {
               if(§7A§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §#L§(param1[_loc2_],_loc2_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§-8§);
               §§push("Initializing cutScene: ");
               if(!_loc6_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
            }
            while(true)
            {
               loop2:
               while(true)
               {
                  §7A§[_loc2_] = _loc3_;
                  while(§`k§.indexOf(_loc2_) >= 0)
                  {
                     if(_loc7_ || param1)
                     {
                        _loc3_.§,X§ = §#L§.§!!J§;
                     }
                     if(_loc7_ || _loc2_)
                     {
                        if(_loc6_)
                        {
                           break loop2;
                        }
                        if(true)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function §[!,§(param1:String, param2:§'R§) : §#L§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§#L§ = §7A§[param1];
         if(_loc4_ || §-`§)
         {
            if(_loc3_)
            {
               addr40:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr40);
      }
      
      public static function §`!q§(param1:String) : §#L§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#L§ = §7A§[param1];
         if(_loc4_ || param1)
         {
            §§push(Boolean(_loc2_));
            if(_loc4_ || _loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr95:
                     while(true)
                     {
                        §§push(Boolean(§`k§.indexOf(param1)));
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr94:
               }
               while(§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     _loc2_.§,X§ = §#L§.§!!J§;
                  }
                  if(!_loc3_)
                  {
                     addr82:
                     break;
                  }
                  §§goto(addr95);
               }
               return _loc2_;
            }
            §§goto(addr94);
         }
         §§goto(addr82);
      }
      
      public static function §+C§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§`k§);
            if(_loc2_)
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr47);
               }
               §§pop().push(§§pop());
               §§goto(addr47);
            }
            §§goto(addr45);
         }
         addr47:
         if(_loc2_ || param1)
         {
            addr45:
            §§push(§`k§);
            §§push(param1);
         }
      }
   }
}
