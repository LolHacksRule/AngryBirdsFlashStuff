package §9!$§
{
   import § !r§.§`![§;
   import §=U§.§3p§;
   import flash.utils.Dictionary;
   
   public class §,i§
   {
      
      private static var §-,§:Array;
      
      private static var §]!u§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-,§ = [];
            if(_loc2_ || §,i§)
            {
               addr29:
               §]!u§ = new Dictionary();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §,i§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §6!m§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§6R§ = null;
         for(_loc2_ in param1)
         {
            if(!(_loc7_ && _loc2_))
            {
               if(§]!u§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §6R§(param1[_loc2_],_loc2_);
            if(!(_loc7_ && param1))
            {
               §§push(§`![§);
               §§push("Initializing cutScene: ");
               if(!_loc7_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               if(!(_loc7_ && _loc2_))
               {
                  §]!u§[_loc2_] = _loc3_;
                  if(!(_loc6_ || §,i§))
                  {
                     continue;
                  }
               }
               if(§-,§.indexOf(_loc2_) < 0)
               {
                  continue;
               }
               if(_loc7_ && param1)
               {
                  continue;
               }
            }
            _loc3_.§+G§ = §6R§.§!!J§;
         }
      }
      
      public static function §#!>§(param1:String, param2:§3p§) : §6R§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§6R§ = §]!u§[param1];
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
      
      public static function §8!Z§(param1:String) : §6R§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§6R§ = §]!u§[param1];
         if(_loc4_ || _loc2_)
         {
            §§push(Boolean(_loc2_));
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr64);
                     }
                     §§goto(addr67);
                  }
               }
            }
            addr64:
            §§goto(addr60);
         }
         addr60:
         if(§-,§.indexOf(param1))
         {
            if(!_loc3_)
            {
               addr67:
               _loc2_.§+G§ = §6R§.§!!J§;
            }
         }
         return _loc2_;
      }
      
      public static function §4I§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(§-,§);
            if(_loc3_ || _loc2_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr53);
               }
               §§pop().push(§§pop());
               §§goto(addr53);
            }
            §§goto(addr51);
         }
         addr53:
         if(!_loc2_)
         {
            addr51:
            §§push(§-,§);
            §§push(param1);
         }
      }
   }
}
