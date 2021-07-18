package §`",§
{
   import §6]§.§,"0§;
   import §;"7§.§="<§;
   import flash.utils.Dictionary;
   
   public class §2M§
   {
      
      private static var §8">§:Array;
      
      private static var §`"&§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8">§ = [];
            do
            {
               §`"&§ = new Dictionary();
            }
            while(!(_loc1_ || §2M§));
            
         }
      }
      
      public function §2M§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §[!R§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§37§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!(_loc6_ && _loc2_))
            {
               if(§`"&§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §37§(param1[_loc2_],_loc2_);
            if(!_loc6_)
            {
               §,"0§.log("Initializing cutScene: " + _loc2_);
               loop1:
               while(true)
               {
                  addr95:
                  while(true)
                  {
                     §`"&§[_loc2_] = _loc3_;
                     while(true)
                     {
                        if(§8">§.indexOf(_loc2_) >= 0)
                        {
                           if(!(_loc7_ || _loc2_))
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              _loc3_.§6! § = §37§.§"!a§;
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
               §§goto(addr95);
            }
         }
      }
      
      public static function §1!I§(param1:String, param2:§="<§) : §37§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§37§ = §`"&§[param1];
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
      
      public static function §#!F§(param1:String) : §37§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§37§ = §`"&§[param1];
         if(!_loc4_)
         {
            §§push(Boolean(_loc2_));
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr84:
                     while(true)
                     {
                        §§push(Boolean(§8">§.indexOf(param1)));
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr83:
               }
               while(§§pop())
               {
                  if(_loc3_)
                  {
                     _loc2_.§6! § = §37§.§"!a§;
                  }
                  if(_loc3_ || _loc2_)
                  {
                     addr61:
                     break;
                  }
                  §§goto(addr84);
               }
               return _loc2_;
            }
            §§goto(addr83);
         }
         §§goto(addr61);
      }
      
      public static function §]!e§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§8">§);
            if(!(_loc2_ && param1))
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr63);
               }
               §§pop().push(§§pop());
               §§goto(addr63);
            }
            §§goto(addr61);
         }
         addr63:
         if(_loc3_)
         {
            addr61:
            §§push(§8">§);
            §§push(param1);
         }
      }
   }
}
