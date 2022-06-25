package §&p§
{
   import §+!B§.§8n§;
   import §3a§.§7!+§;
   import §9K§.§5!H§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §^!C§
   {
      
      private static var §>e§:Array;
      
      private static var §?!?§:§8n§;
      
      private static var §,J§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §^!C§)
         {
            §>e§ = [];
            if(!(_loc1_ && _loc1_))
            {
               §?!?§ = new §8n§();
               if(_loc2_ || _loc1_)
               {
                  addr55:
                  §,J§ = new Dictionary();
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      public function §^!C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §throw§(param1:String, param2:ByteArray) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §^!C§))
         {
            §?!?§[param1] = param2;
         }
      }
      
      public static function §;_§(param1:String) : ByteArray
      {
         return §?!?§[param1];
      }
      
      public static function §[!&§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§-r§ = null;
         for(_loc2_ in param1)
         {
            if(_loc6_)
            {
               if(§,J§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §-r§(param1[_loc2_],_loc2_);
            if(!(_loc7_ && §^!C§))
            {
               §§push(§7!+§);
               §§push("Initializing cutScene: ");
               if(!(_loc7_ && _loc3_))
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               if(_loc6_ || _loc3_)
               {
                  §,J§[_loc2_] = _loc3_;
                  if(_loc6_)
                  {
                     addr100:
                     if(§>e§.indexOf(_loc2_) < 0)
                     {
                        continue;
                     }
                     if(!(_loc6_ || §^!C§))
                     {
                        continue;
                     }
                  }
                  _loc3_.§"Z§ = §-r§.§>A§;
               }
               continue;
            }
            §§goto(addr100);
         }
      }
      
      public static function §`T§(param1:String, param2:§5!H§) : §-r§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§-r§ = §,J§[param1];
         if(!(_loc4_ && param1))
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
      
      public static function §1w§(param1:String) : §-r§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§-r§ = §,J§[param1];
         if(_loc4_ || _loc3_)
         {
            §§push(Boolean(_loc2_));
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc4_ || §^!C§)
                  {
                     addr67:
                     §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr74);
                     }
                     §§goto(addr77);
                  }
               }
               addr74:
               §§goto(addr70);
            }
            §§goto(addr67);
         }
         addr70:
         if(§>e§.indexOf(param1))
         {
            if(_loc4_)
            {
               addr77:
               _loc2_.§"Z§ = §-r§.§>A§;
            }
         }
         return _loc2_;
      }
      
      public static function §3b§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§>e§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(param1);
               if(_loc2_ || §^!C§)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr52);
               }
               §§pop().push(§§pop());
               §§goto(addr52);
            }
            §§goto(addr50);
         }
         addr52:
         if(!_loc3_)
         {
            addr50:
            §§push(§>e§);
            §§push(param1);
         }
      }
   }
}
