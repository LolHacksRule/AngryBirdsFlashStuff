package §?_§
{
   import § !Y§.§[!%§;
   import §0N§.§2!@§;
   import §4&§.§,C§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §^"4§
   {
      
      private static var §"!_§:Array;
      
      private static var §<<§:§[!%§;
      
      private static var §<!U§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §^"4§)
         {
            §"!_§ = [];
            while(true)
            {
               §<<§ = new §[!%§();
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §<!U§ = new Dictionary();
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §^"4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §7"+§(param1:String, param2:ByteArray) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §<<§[param1] = param2;
         }
      }
      
      public static function §8!D§(param1:String) : ByteArray
      {
         return §<<§[param1];
      }
      
      public static function §#!3§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§>",§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(_loc6_)
            {
               if(§<!U§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §>",§(param1[_loc2_],_loc2_);
            if(!(_loc7_ && _loc3_))
            {
               §2!@§.log("Initializing cutScene: " + _loc2_);
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §<!U§[_loc2_] = _loc3_;
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(§"!_§.indexOf(_loc2_) < 0)
                        {
                           break;
                        }
                        if(!_loc7_)
                        {
                           _loc3_.§5"-§ = §>",§.§]!W§;
                        }
                        if(!_loc7_)
                        {
                           if(true)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function §]!b§(param1:String, param2:§,C§) : §>",§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>",§ = §<!U§[param1];
         if(_loc5_)
         {
            if(_loc3_)
            {
               addr46:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr46);
      }
      
      public static function getCutScene(param1:String) : §>",§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>",§ = §<!U§[param1];
         if(_loc3_ || param1)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr89:
                     while(true)
                     {
                        §§push(Boolean(§"!_§.indexOf(param1)));
                        if(!(_loc3_ || param1))
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop3:
               while(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     while(true)
                     {
                        _loc2_.§5"-§ = §>",§.§]!W§;
                     }
                     addr67:
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        break loop3;
                     }
                     §§goto(addr89);
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr67);
      }
      
      public static function §#!w§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(§"!_§);
            if(!_loc2_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr58);
               }
               §§pop().push(§§pop());
               §§goto(addr58);
            }
            §§goto(addr56);
         }
         addr58:
         if(_loc3_)
         {
            addr56:
            §§push(§"!_§);
            §§push(param1);
         }
      }
   }
}
