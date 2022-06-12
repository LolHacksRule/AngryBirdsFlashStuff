package §`!]§
{
   import §6!D§.§0Y§;
   import §6o§.§+!k§;
   import flash.utils.Dictionary;
   
   public class §3x§
   {
      
      private static var §56§:Array;
      
      private static var §8b§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §3x§)
         {
            §56§ = [];
         }
         do
         {
            §8b§ = new Dictionary();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function §3x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §#!%§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§="A§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               if(§8b§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §="A§(param1[_loc2_],_loc2_);
            if(_loc7_)
            {
               §§push(§+!k§);
               §§push("Initializing cutScene: ");
               if(_loc7_ || _loc2_)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               while(true)
               {
                  addr95:
                  addr72:
                  while(true)
                  {
                     §8b§[_loc2_] = _loc3_;
                  }
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  _loc3_.§]"+§ = §="A§.§72§;
                  addr93:
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr95);
               }
            }
            while(§56§.indexOf(_loc2_) >= 0)
            {
               if(_loc7_)
               {
                  if(_loc6_)
                  {
                     continue;
                  }
                  §§goto(addr72);
               }
               §§goto(addr93);
            }
         }
      }
      
      public static function §<!8§(param1:String, param2:§0Y§) : §="A§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§="A§ = §8b§[param1];
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
      
      public static function §<!5§(param1:String) : §="A§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§="A§ = §8b§[param1];
         if(!(_loc4_ && param1))
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
                     if(!(_loc4_ && _loc3_))
                     {
                        while(true)
                        {
                           _loc2_.§]"+§ = §="A§.§72§;
                        }
                        addr82:
                     }
                     while(true)
                     {
                        if(_loc3_)
                        {
                           break loop3;
                        }
                        addr93:
                        while(true)
                        {
                           §§push(Boolean(§56§.indexOf(param1)));
                           if(!(_loc3_ || param1))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr94);
                        }
                        addr94:
                     }
                  }
                  return _loc2_;
                  addr73:
               }
               §§goto(addr93);
            }
         }
         §§goto(addr82);
      }
      
      public static function §<!'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§56§);
            if(!(_loc2_ && param1))
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
         if(!(_loc2_ && _loc2_))
         {
            addr51:
            §§push(§56§);
            §§push(param1);
         }
      }
   }
}
