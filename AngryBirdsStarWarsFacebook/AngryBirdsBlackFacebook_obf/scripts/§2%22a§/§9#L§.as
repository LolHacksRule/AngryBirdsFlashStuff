package §2"a§
{
   import §1!i§.§,#_§;
   import §5t§.Log;
   import §7!F§.§7§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §9#L§
   {
      
      private static var §3#`§:Array;
      
      private static var §+"o§:§,#_§;
      
      private static var §;`§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3#`§ = [];
            while(true)
            {
               §+"o§ = new §,#_§();
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            §;`§ = new Dictionary();
            if(!(_loc2_ && §9#L§))
            {
               if(!(_loc2_ && §9#L§))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §9#L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §7!g§(param1:String, param2:ByteArray) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §+"o§[param1] = param2;
         }
      }
      
      public static function §0j§(param1:String) : ByteArray
      {
         return §+"o§[param1];
      }
      
      public static function §0"U§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§9E§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!_loc7_)
            {
               if(§;`§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §9E§(param1[_loc2_],_loc2_);
            if(!(_loc7_ && _loc3_))
            {
               Log.log("Initializing cutScene: " + _loc2_);
            }
            loop1:
            while(true)
            {
               loop2:
               do
               {
                  §;`§[_loc2_] = _loc3_;
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        if(§3#`§.indexOf(_loc2_) < 0)
                        {
                           break loop2;
                        }
                        if(_loc7_ && _loc2_)
                        {
                           break;
                        }
                        if(!(_loc7_ && param1))
                        {
                           _loc3_.§""Y§ = §9E§.§2!T§;
                           break;
                        }
                        continue;
                     }
                     continue loop1;
                  }
               }
               while(false);
               
               continue loop0;
            }
         }
      }
      
      public static function §1q§(param1:String, param2:§7#5§) : §9E§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§9E§ = §;`§[param1];
         if(!(_loc4_ && §9#L§))
         {
            if(_loc3_)
            {
               addr51:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr51);
      }
      
      public static function getCutScene(param1:String) : §9E§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9E§ = §;`§[param1];
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr90:
                     while(true)
                     {
                        §§push(Boolean(§3#`§.indexOf(param1)));
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc4_)
                     {
                        _loc2_.§""Y§ = §9E§.§2!T§;
                     }
                     else
                     {
                        §§goto(addr90);
                     }
                  }
                  break;
               }
               return _loc2_;
            }
         }
         §§goto(addr90);
      }
      
      public static function §&"X§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§3#`§);
            if(_loc2_)
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr57);
               }
               §§pop().push(§§pop());
               §§goto(addr57);
            }
            §§goto(addr55);
         }
         addr57:
         if(_loc2_ || param1)
         {
            addr55:
            §§push(§3#`§);
            §§push(param1);
         }
      }
   }
}
