package §7Z§
{
   import §=!<§.§>a§;
   import §@R§.§4,§;
   import flash.utils.Dictionary;
   
   public class §5!>§
   {
      
      private static var §@=§:Array;
      
      private static var §=F§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §@=§ = [];
            do
            {
               §=F§ = new Dictionary();
            }
            while(_loc2_ && §5!>§);
            
         }
      }
      
      public function §5!>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §;!2§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§%!b§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               if(§=F§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §%!b§(param1[_loc2_],_loc2_);
            if(_loc7_)
            {
               §4,§.log("Initializing cutScene: " + _loc2_);
               while(true)
               {
                  addr90:
                  addr77:
                  while(true)
                  {
                     §=F§[_loc2_] = _loc3_;
                  }
                  if(!(_loc7_ || §5!>§))
                  {
                     continue;
                  }
                  _loc3_.§#$§ = §%!b§.§#!"§;
                  addr88:
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr90);
               }
            }
            while(§@=§.indexOf(_loc2_) >= 0)
            {
               if(!_loc6_)
               {
                  if(!(_loc7_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr77);
               }
               §§goto(addr88);
            }
         }
      }
      
      public static function §!!F§(param1:String, param2:§>a§) : §%!b§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§%!b§ = §=F§[param1];
         if(_loc4_)
         {
            if(_loc3_)
            {
               addr45:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr45);
      }
      
      public static function §4V§(param1:String) : §%!b§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%!b§ = §=F§[param1];
         if(!(_loc4_ && param1))
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
                        §§push(Boolean(§@=§.indexOf(param1)));
                        if(!(_loc3_ || _loc2_))
                        {
                           continue loop1;
                        }
                     }
                     while(_loc3_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        _loc2_.§#$§ = §%!b§.§#!"§;
                        addr78:
                        break;
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr78);
               }
               return _loc2_;
            }
         }
         §§goto(addr78);
      }
      
      public static function §3G§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §5!>§))
         {
            §§push(§@=§);
            if(_loc3_ || param1)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr67:
                        §@=§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
   }
}
