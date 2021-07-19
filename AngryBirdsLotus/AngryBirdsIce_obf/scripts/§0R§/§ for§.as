package §0R§
{
   import §1n§.§5#§;
   import §;8§.§3f§;
   import flash.utils.Dictionary;
   
   public class § for§
   {
      
      private static var §<!'§:Array;
      
      private static var §]]§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!'§ = [];
         }
         do
         {
            §]]§ = new Dictionary();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function § for§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §-x§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§;g§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!(_loc7_ && _loc3_))
            {
               if(§]]§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §;g§(param1[_loc2_],_loc2_);
            if(!(_loc7_ && § for§))
            {
               §§push(§3f§);
               §§push("Initializing cutScene: ");
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               loop1:
               while(true)
               {
                  addr87:
                  while(true)
                  {
                     §]]§[_loc2_] = _loc3_;
                     continue loop1;
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
               §§goto(addr87);
            }
         }
      }
      
      public static function §>+§(param1:String, param2:§5#§) : §;g§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§;g§ = §]]§[param1];
         if(!(_loc5_ && § for§))
         {
            if(_loc3_)
            {
               addr40:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr40);
      }
      
      public static function §1!2§(param1:String) : §;g§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;g§ = §]]§[param1];
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(_loc2_));
            if(_loc4_ || § for§)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr85:
                     while(true)
                     {
                        §§push(Boolean(§<!'§.indexOf(param1)));
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr84:
               }
               for(; §§pop(); §§goto(addr85))
               {
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        _loc2_.§?g§ = §;g§.§%Z§;
                        addr72:
                        break;
                     }
                     continue;
                  }
                  §§goto(addr72);
               }
               return _loc2_;
            }
            §§goto(addr84);
         }
         §§goto(addr72);
      }
      
      public static function §@!1§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§<!'§);
            if(!(_loc2_ && § for§))
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(_loc3_ || param1)
                     {
                        addr52:
                        §<!'§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
   }
}
