package §8a§
{
   import §4W§.§!]§;
   import §@,§.§4h§;
   import flash.utils.Dictionary;
   
   public class §[!7§
   {
      
      private static var §!!9§:Array;
      
      private static var §!!U§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §!!9§ = [];
         }
         do
         {
            §!!U§ = new Dictionary();
         }
         while(!_loc1_);
         
      }
      
      public function §[!7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §^!B§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§7!$§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!_loc7_)
            {
               if(§!!U§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §7!$§(param1[_loc2_],_loc2_);
            if(!_loc7_)
            {
               §4h§.log("Initializing cutScene: " + _loc2_);
               loop1:
               while(true)
               {
                  addr84:
                  while(true)
                  {
                     §!!U§[_loc2_] = _loc3_;
                     while(true)
                     {
                        if(§!!9§.indexOf(_loc2_) >= 0)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(!_loc7_)
                           {
                              _loc3_.§'!B§ = §7!$§.§;!X§;
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
            while(true)
            {
               if(true)
               {
                  continue loop0;
               }
               §§goto(addr84);
            }
         }
      }
      
      public static function §]Q§(param1:String, param2:§!]§) : §7!$§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7!$§ = §!!U§[param1];
         if(!(_loc4_ && param2))
         {
            if(_loc3_)
            {
               addr51:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr51);
      }
      
      public static function §%F§(param1:String) : §7!$§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7!$§ = §!!U§[param1];
         if(_loc4_)
         {
            §§push(Boolean(_loc2_));
            if(_loc4_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr80:
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§!!9§.indexOf(param1)));
                        if(_loc4_ || §[!7§)
                        {
                           while(§§pop())
                           {
                              if(_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 _loc2_.§'!B§ = §7!$§.§;!X§;
                              }
                              break;
                           }
                           return _loc2_;
                           addr52:
                        }
                     }
                  }
                  addr79:
               }
               §§goto(addr52);
            }
            §§goto(addr79);
         }
         §§goto(addr80);
      }
      
      public static function §#!,§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§!!9§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(!_loc3_)
                     {
                        addr56:
                        §!!9§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
   }
}
