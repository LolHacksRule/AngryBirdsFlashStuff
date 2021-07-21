package §%%§
{
   import §&"5§.§7!P§;
   import §=!M§.§9!P§;
   import flash.utils.Dictionary;
   
   public class §5!a§
   {
      
      private static var §`A§:Array;
      
      private static var §]W§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §`A§ = [];
            do
            {
               §]W§ = new Dictionary();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §5!a§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §'!5§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§6!_§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(_loc6_)
            {
               if(§]W§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §6!_§(param1[_loc2_],_loc2_);
            if(!_loc7_)
            {
               §9!P§.log("Initializing cutScene: " + _loc2_);
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §]W§[_loc2_] = _loc3_;
                     loop3:
                     while(§`A§.indexOf(_loc2_) >= 0)
                     {
                        if(!(_loc7_ && _loc2_))
                        {
                           continue loop1;
                        }
                        addr85:
                        while(true)
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              if(true)
                              {
                                 break loop3;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               _loc3_.§^v§ = §6!_§.§0!Q§;
               §§goto(addr85);
            }
         }
      }
      
      public static function §7!x§(param1:String, param2:§7!P§) : §6!_§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§6!_§ = §]W§[param1];
         if(_loc4_ || param1)
         {
            if(_loc3_)
            {
               addr50:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr50);
      }
      
      public static function §3!2§(param1:String) : §6!_§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§6!_§ = §]W§[param1];
         if(_loc4_ || _loc3_)
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
                        if(_loc4_ || _loc2_)
                        {
                           _loc2_.§^v§ = §6!_§.§0!Q§;
                           addr89:
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§`A§.indexOf(param1)));
                           if(_loc4_ || param1)
                           {
                              continue loop0;
                           }
                           addr94:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr89);
                  }
                  return _loc2_;
                  addr64:
               }
               §§goto(addr94);
            }
         }
         §§goto(addr89);
      }
      
      public static function §;t§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(§`A§);
            if(!(_loc3_ && param1))
            {
               §§push(param1);
               if(!(_loc3_ && §5!a§))
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr67);
               }
               §§pop().push(§§pop());
               §§goto(addr67);
            }
            §§goto(addr65);
         }
         addr67:
         if(_loc2_)
         {
            addr65:
            §§push(§`A§);
            §§push(param1);
         }
      }
   }
}
