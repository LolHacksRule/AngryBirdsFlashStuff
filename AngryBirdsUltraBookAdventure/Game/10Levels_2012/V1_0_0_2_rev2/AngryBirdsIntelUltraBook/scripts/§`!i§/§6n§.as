package §`!i§
{
   import §-w§.§,Q§;
   import §^_§.§!>§;
   import flash.utils.Dictionary;
   
   public class §6n§
   {
      
      private static var §[a§:Array;
      
      private static var § 5§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[a§ = [];
            do
            {
               § 5§ = new Dictionary();
            }
            while(_loc2_ && §6n§);
            
         }
      }
      
      public function §6n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §33§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§,S§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(_loc7_)
            {
               if(§ 5§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §,S§(param1[_loc2_],_loc2_);
            if(_loc7_ || §6n§)
            {
               §§push(§!>§);
               §§push("Initializing cutScene: ");
               if(_loc7_ || param1)
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
                  § 5§[_loc2_] = _loc3_;
                  while(§[a§.indexOf(_loc2_) >= 0)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        _loc3_.§+!'§ = §,S§.§,-§;
                     }
                     if(!(_loc6_ && §6n§))
                     {
                        if(!_loc7_)
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
      
      public static function §%T§(param1:String, param2:§,Q§) : §,S§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,S§ = § 5§[param1];
         if(_loc5_ || param1)
         {
            if(_loc3_)
            {
               addr41:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr41);
      }
      
      public static function §['§(param1:String) : §,S§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,S§ = § 5§[param1];
         if(!_loc4_)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr84:
                     do
                     {
                        §§push(Boolean(§[a§.indexOf(param1)));
                        if(!(_loc3_ || param1))
                        {
                           continue loop1;
                        }
                     }
                     while(!_loc4_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc3_)
                  {
                     _loc2_.§+!'§ = §,S§.§,-§;
                  }
                  if(!(_loc4_ && param1))
                  {
                     addr78:
                     break;
                  }
                  §§goto(addr84);
               }
               return _loc2_;
            }
         }
         §§goto(addr78);
      }
      
      public static function §1!#§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§[a§);
            if(!_loc2_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr48);
               }
               §§pop().push(§§pop());
               §§goto(addr48);
            }
            §§goto(addr46);
         }
         addr48:
         if(_loc3_ || param1)
         {
            addr46:
            §§push(§[a§);
            §§push(param1);
         }
      }
   }
}
