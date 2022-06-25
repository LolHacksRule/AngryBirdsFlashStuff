package §"!&§
{
   import §,6§.§!o§;
   import §6z§.§[g§;
   import flash.utils.Dictionary;
   
   public class §[>§
   {
      
      private static var §-!=§:Array;
      
      private static var §1Q§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!=§ = [];
         }
         do
         {
            §1Q§ = new Dictionary();
         }
         while(_loc1_);
         
      }
      
      public function §[>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §+'§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§"R§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!(_loc6_ && §[>§))
            {
               if(§1Q§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §"R§(param1[_loc2_],_loc2_);
            if(_loc7_ || param1)
            {
               §§push(§[g§);
               §§push("Initializing cutScene: ");
               if(!_loc6_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
            }
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §1Q§[_loc2_] = _loc3_;
                  while(§-!=§.indexOf(_loc2_) >= 0)
                  {
                     if(_loc7_ || param1)
                     {
                        continue loop1;
                     }
                     addr106:
                     if(!(_loc6_ && param1))
                     {
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
      
      public static function §4i§(param1:String, param2:§!o§) : §"R§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§"R§ = §1Q§[param1];
         if(_loc5_)
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
      
      public static function §4!#§(param1:String) : §"R§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§"R§ = §1Q§[param1];
         if(!(_loc4_ && §[>§))
         {
            §§push(Boolean(_loc2_));
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr94:
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§-!=§.indexOf(param1)));
                        if(!(_loc4_ && _loc2_))
                        {
                           while(§§pop())
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 _loc2_.§`!`§ = §"R§.§continue§;
                              }
                              if(_loc3_ || _loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return _loc2_;
                           addr66:
                        }
                     }
                  }
                  addr93:
               }
               §§goto(addr66);
            }
            §§goto(addr93);
         }
         §§goto(addr94);
      }
      
      public static function §+m§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(§-!=§);
            if(_loc2_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr52);
               }
               §§pop().push(§§pop());
               §§goto(addr52);
            }
            §§goto(addr50);
         }
         addr52:
         if(!(_loc3_ && §[>§))
         {
            addr50:
            §§push(§-!=§);
            §§push(param1);
         }
      }
   }
}
