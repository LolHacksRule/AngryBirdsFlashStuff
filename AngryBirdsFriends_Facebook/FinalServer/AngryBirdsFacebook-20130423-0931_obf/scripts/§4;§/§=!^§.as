package §4;§
{
   import §+!c§.§;!=§;
   import §9@§.§4Z§;
   import §<T§.§`m§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §=!^§
   {
      
      private static var §+"?§:Array;
      
      private static var §3"T§:§4Z§;
      
      private static var §9"V§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §+"?§ = [];
            while(true)
            {
               §3"T§ = new §4Z§();
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            §9"V§ = new Dictionary();
            if(_loc2_ || _loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §=!^§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §3!E§(param1:String, param2:ByteArray) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §3"T§[param1] = param2;
         }
      }
      
      public static function §#A§(param1:String) : ByteArray
      {
         return §3"T§[param1];
      }
      
      public static function §[W§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§0!'§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               if(§9"V§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §0!'§(param1[_loc2_],_loc2_);
            if(!_loc6_)
            {
               §§push(§;!=§);
               §§push("Initializing cutScene: ");
               if(_loc7_ || §=!^§)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               loop1:
               while(true)
               {
                  addr105:
                  loop2:
                  while(true)
                  {
                     §9"V§[_loc2_] = _loc3_;
                     while(true)
                     {
                        if(§+"?§.indexOf(_loc2_) < 0)
                        {
                           break loop2;
                        }
                        if(_loc6_ && _loc2_)
                        {
                           break;
                        }
                        if(_loc7_ || _loc3_)
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
            }
            while(true)
            {
               if(true)
               {
                  continue loop0;
               }
               §§goto(addr105);
            }
         }
      }
      
      public static function final(param1:String, param2:§`m§) : §0!'§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0!'§ = §9"V§[param1];
         if(_loc4_)
         {
            if(_loc3_)
            {
               addr25:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr25);
      }
      
      public static function §"!X§(param1:String) : §0!'§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§0!'§ = §9"V§[param1];
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(_loc2_));
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr100:
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§+"?§.indexOf(param1)));
                        if(!(_loc3_ && param1))
                        {
                           while(§§pop())
                           {
                              if(_loc4_ || §=!^§)
                              {
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 _loc2_.§'!G§ = §0!'§.§#!Y§;
                              }
                              break;
                           }
                           return _loc2_;
                           addr57:
                        }
                     }
                  }
                  addr99:
               }
               §§goto(addr57);
            }
            §§goto(addr99);
         }
         §§goto(addr100);
      }
      
      public static function §=u§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §=!^§)
         {
            §§push(§+"?§);
            if(!(_loc3_ && param1))
            {
               §§push(param1);
               if(_loc2_ || §=!^§)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr72);
               }
               §§pop().push(§§pop());
               §§goto(addr72);
            }
            §§goto(addr70);
         }
         addr72:
         if(!(_loc3_ && §=!^§))
         {
            addr70:
            §§push(§+"?§);
            §§push(param1);
         }
      }
   }
}
