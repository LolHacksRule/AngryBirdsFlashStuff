package §4!o§
{
   import § ! §.§5!x§;
   import §"n§.§<!Z§;
   import each.§!!'§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §+!N§
   {
      
      private static var §3U§:Array;
      
      private static var §%!'§:§<!Z§;
      
      private static var §2!e§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3U§ = [];
            while(true)
            {
               §%!'§ = new §<!Z§();
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     §2!e§ = new Dictionary();
                     if(_loc2_)
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
      
      public function §+!N§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §#L§(param1:String, param2:ByteArray) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §%!'§[param1] = param2;
         }
      }
      
      public static function §3q§(param1:String) : ByteArray
      {
         return §%!'§[param1];
      }
      
      public static function §,!d§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§?!Z§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(_loc7_ || param1)
            {
               if(§2!e§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §?!Z§(param1[_loc2_],_loc2_);
            if(_loc7_)
            {
               §!!'§.log("Initializing cutScene: " + _loc2_);
               while(true)
               {
                  addr90:
                  addr81:
                  while(true)
                  {
                     §2!e§[_loc2_] = _loc3_;
                  }
                  if(!(_loc7_ || §+!N§))
                  {
                     continue;
                  }
                  if(true)
                  {
                     continue loop0;
                  }
                  §§goto(addr90);
               }
            }
            while(§3U§.indexOf(_loc2_) >= 0)
            {
               if(!_loc6_)
               {
                  _loc3_.§^R§ = §?!Z§.§extends§;
               }
               if(!_loc7_)
               {
                  continue;
               }
               §§goto(addr81);
            }
         }
      }
      
      public static function §2! §(param1:String, param2:§5!x§) : §?!Z§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§?!Z§ = §2!e§[param1];
         if(_loc4_ || param2)
         {
            if(_loc3_)
            {
               addr50:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr50);
      }
      
      public static function getCutScene(param1:String) : §?!Z§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?!Z§ = §2!e§[param1];
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        if(_loc4_ || param1)
                        {
                           _loc2_.§^R§ = §?!Z§.§extends§;
                           addr94:
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(§3U§.indexOf(param1)));
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop0;
                           }
                           addr99:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr94);
                  }
                  return _loc2_;
                  addr64:
               }
               §§goto(addr99);
            }
         }
         §§goto(addr94);
      }
      
      public static function § t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§3U§);
            if(_loc3_ || _loc3_)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(_loc3_)
                     {
                        addr62:
                        §3U§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
   }
}
