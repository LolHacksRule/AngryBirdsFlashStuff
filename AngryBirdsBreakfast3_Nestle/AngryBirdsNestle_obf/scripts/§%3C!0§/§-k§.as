package §<!0§
{
   import §24§.;
   import §2`§.§%!!§;
   import §4!i§.§0]§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §-k§
   {
      
      private static var §9b§:Array;
      
      private static var §"F§:§0]§;
      
      private static var §'J§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9b§ = [];
            while(true)
            {
               §"F§ = new §0]§();
               §§goto(addr59);
            }
         }
         addr59:
         while(true)
         {
            §'J§ = new Dictionary();
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §-k§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §9!9§(param1:String, param2:ByteArray) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §"F§[param1] = param2;
         }
      }
      
      public static function §]t§(param1:String) : ByteArray
      {
         return §"F§[param1];
      }
      
      public static function §5" §(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§5a§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!(_loc7_ && _loc2_))
            {
               if(§'J§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §5a§(param1[_loc2_],_loc2_);
            if(_loc6_ || param1)
            {
               §#7§.log("Initializing cutScene: " + _loc2_);
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §'J§[_loc2_] = _loc3_;
                     loop3:
                     while(§9b§.indexOf(_loc2_) >= 0)
                     {
                        if(_loc6_)
                        {
                           if(_loc7_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              _loc3_.§&p§ = §5a§.§;"$§;
                              break loop3;
                           }
                        }
                        break;
                     }
                     break;
                     while(true)
                     {
                        if(_loc6_)
                        {
                           if(true)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr81);
         }
      }
      
      public static function §<a§(param1:String, param2:§%!!§) : §5a§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§5a§ = §'J§[param1];
         if(!_loc5_)
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
      
      public static function getCutScene(param1:String) : §5a§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5a§ = §'J§[param1];
         if(_loc3_)
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
                        §§push(Boolean(§9b§.indexOf(param1)));
                        if(!_loc3_)
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
                  if(_loc3_ || _loc3_)
                  {
                     if(!(_loc4_ && §-k§))
                     {
                        _loc2_.§&p§ = §5a§.§;"$§;
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
      
      public static function §^W§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§9b§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr61:
                        §9b§.push(param1);
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
