package §=!7§
{
   import § !G§.§ #§;
   import § `§.§2w§;
   import flash.utils.Dictionary;
   
   public class §[!C§
   {
      
      private static var §2[§:Array;
      
      private static var § !#§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §2[§ = [];
         }
         do
         {
            § !#§ = new Dictionary();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §[!C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §+!'§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§93§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!(_loc7_ && _loc2_))
            {
               if(§ !#§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §93§(param1[_loc2_],_loc2_);
            if(_loc6_)
            {
               § #§.log("Initializing cutScene: " + _loc2_);
               loop1:
               while(true)
               {
                  addr99:
                  while(true)
                  {
                     § !#§[_loc2_] = _loc3_;
                     while(true)
                     {
                        if(§2[§.indexOf(_loc2_) >= 0)
                        {
                           if(_loc7_ && _loc2_)
                           {
                              break;
                           }
                           if(_loc6_ || param1)
                           {
                              _loc3_.§]!A§ = §93§.§,,§;
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
               §§goto(addr99);
            }
         }
      }
      
      public static function §,!!§(param1:String, param2:§2w§) : §93§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§93§ = § !#§[param1];
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
      
      public static function §9[§(param1:String) : §93§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§93§ = § !#§[param1];
         if(!(_loc4_ && §[!C§))
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(§§pop())
                  {
                     if(!_loc4_)
                     {
                        while(true)
                        {
                           _loc2_.§]!A§ = §93§.§,,§;
                        }
                        addr67:
                     }
                     while(true)
                     {
                        if(_loc3_)
                        {
                           break loop3;
                        }
                        addr88:
                        while(true)
                        {
                           §§push(Boolean(§2[§.indexOf(param1)));
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr89);
                        }
                        addr89:
                     }
                  }
                  return _loc2_;
                  addr63:
               }
               §§goto(addr88);
            }
         }
         §§goto(addr67);
      }
      
      public static function §5y§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§2[§);
            if(_loc2_ || _loc2_)
            {
               §§push(param1);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr62);
               }
               §§pop().push(§§pop());
               §§goto(addr62);
            }
            §§goto(addr60);
         }
         addr62:
         if(!_loc3_)
         {
            addr60:
            §§push(§2[§);
            §§push(param1);
         }
      }
   }
}
