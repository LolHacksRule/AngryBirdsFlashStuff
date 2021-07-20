package §3!Z§
{
   import §!V§.§]!`§;
   import §9t§.§=!>§;
   import §>^§.§!6§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class § !b§
   {
      
      private static var §#a§:Array;
      
      private static var §'!H§:§]!`§;
      
      private static var §'j§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §#a§ = [];
            while(true)
            {
               §'!H§ = new §]!`§();
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §'j§ = new Dictionary();
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function § !b§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §,![§(param1:String, param2:ByteArray) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §'!H§[param1] = param2;
         }
      }
      
      public static function §8%§(param1:String) : ByteArray
      {
         return §'!H§[param1];
      }
      
      public static function §?!P§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§?!3§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!(_loc6_ && param1))
            {
               if(§'j§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §?!3§(param1[_loc2_],_loc2_);
            if(_loc7_ || § !b§)
            {
               §!6§.log("Initializing cutScene: " + _loc2_);
               while(true)
               {
                  addr100:
                  addr87:
                  while(true)
                  {
                     §'j§[_loc2_] = _loc3_;
                  }
                  if(!(_loc7_ || § !b§))
                  {
                     continue;
                  }
                  _loc3_.§9!L§ = §?!3§.§!!J§;
                  addr98:
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr100);
               }
            }
            while(§#a§.indexOf(_loc2_) >= 0)
            {
               if(_loc7_)
               {
                  if(_loc6_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr87);
               }
               §§goto(addr98);
            }
         }
      }
      
      public static function §8!P§(param1:String, param2:§=!>§) : §?!3§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§?!3§ = §'j§[param1];
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
      
      public static function §]<§(param1:String) : §?!3§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?!3§ = §'j§[param1];
         if(_loc4_ || param1)
         {
            §§push(Boolean(_loc2_));
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr90:
                     while(true)
                     {
                        §§push(Boolean(§#a§.indexOf(param1)));
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr89:
               }
               for(; §§pop(); §§goto(addr90))
               {
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        _loc2_.§9!L§ = §?!3§.§!!J§;
                        addr67:
                        break;
                     }
                     continue;
                  }
                  §§goto(addr67);
               }
               return _loc2_;
            }
            §§goto(addr89);
         }
         §§goto(addr67);
      }
      
      public static function §?Z§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§#a§);
            if(_loc2_)
            {
               §§push(param1);
               if(!(_loc3_ && § !b§))
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(!(_loc3_ && § !b§))
                     {
                        addr61:
                        §#a§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
   }
}
