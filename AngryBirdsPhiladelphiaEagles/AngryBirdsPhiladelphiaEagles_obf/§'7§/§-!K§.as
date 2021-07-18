package §'7§
{
   import §#e§.§'?§;
   import §`K§.§ L§;
   import flash.utils.Dictionary;
   
   public class §-!K§
   {
      
      private static var §2!,§:Array;
      
      private static var §^+§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §2!,§ = [];
         }
         do
         {
            §^+§ = new Dictionary();
         }
         while(!(_loc1_ || §-!K§));
         
      }
      
      public function §-!K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §&!E§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§2X§ = null;
         for(_loc2_ in param1)
         {
            if(!(_loc7_ && _loc2_))
            {
               if(§^+§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §2X§(param1[_loc2_],_loc2_);
            if(_loc6_)
            {
               §§push(§ L§);
               §§push("Initializing cutScene: ");
               if(!(_loc7_ && _loc3_))
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               loop1:
               while(true)
               {
                  addr92:
                  while(true)
                  {
                     §^+§[_loc2_] = _loc3_;
                     continue loop1;
                  }
               }
            }
            while(§2!,§.indexOf(_loc2_) >= 0)
            {
               §§goto(addr72);
            }
         }
      }
      
      public static function §+!7§(param1:String, param2:§'?§) : §2X§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2X§ = §^+§[param1];
         if(!_loc4_)
         {
            if(_loc3_)
            {
               addr26:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr26);
      }
      
      public static function §?3§(param1:String) : §2X§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§2X§ = §^+§[param1];
         if(_loc3_)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc2_.§=!6§ = §2X§.§9=§;
                        }
                        else
                        {
                           loop3:
                           while(true)
                           {
                              §§push(Boolean(§2!,§.indexOf(param1)));
                              if(_loc3_ || _loc3_)
                              {
                                 continue loop0;
                              }
                              addr88:
                              while(true)
                              {
                                 §§pop();
                                 continue loop3;
                              }
                           }
                           addr89:
                        }
                     }
                     break;
                  }
                  return _loc2_;
                  addr68:
               }
               §§goto(addr88);
            }
         }
         §§goto(addr89);
      }
      
      public static function §8Z§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§2!,§);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr33);
               }
               §§pop().push(§§pop());
               §§goto(addr33);
            }
            §§goto(addr31);
         }
         addr33:
         if(!_loc2_)
         {
            addr31:
            §§push(§2!,§);
            §§push(param1);
         }
      }
   }
}
