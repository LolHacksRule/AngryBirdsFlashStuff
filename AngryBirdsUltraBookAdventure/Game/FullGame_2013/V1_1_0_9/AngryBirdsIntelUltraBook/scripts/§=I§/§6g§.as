package §=I§
{
   import §1!B§.§<m§;
   import §<-§.§[!N§;
   import §=`§.§6!I§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §6g§
   {
      
      private static var §`E§:Array;
      
      private static var §3V§:§[!N§;
      
      private static var §>o§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §`E§ = [];
            while(true)
            {
               §3V§ = new §[!N§();
               while(!(_loc1_ && _loc1_))
               {
                  §>o§ = new Dictionary();
                  if(!(_loc2_ || §6g§))
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §6g§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §7D§(param1:String, param2:ByteArray) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §3V§[param1] = param2;
         }
      }
      
      public static function §;u§(param1:String) : ByteArray
      {
         return §3V§[param1];
      }
      
      public static function §!!_§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§@x§ = null;
         loop0:
         for(_loc2_ in param1)
         {
            if(!_loc7_)
            {
               if(§>o§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §@x§(param1[_loc2_],_loc2_);
            if(!_loc7_)
            {
               §§push(§<m§);
               §§push("Initializing cutScene: ");
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §>o§[_loc2_] = _loc3_;
                     loop3:
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           if(§`E§.indexOf(_loc2_) >= 0)
                           {
                              if(_loc6_ || param1)
                              {
                                 if(!(_loc6_ || param1))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    _loc3_.§+l§ = §@x§.§4!X§;
                                    break loop3;
                                 }
                              }
                              break;
                           }
                           break loop2;
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        if(true)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr81);
         }
      }
      
      public static function §#!u§(param1:String, param2:§6!I§) : §@x§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§@x§ = §>o§[param1];
         if(!(_loc4_ && _loc3_))
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
      
      public static function §8!O§(param1:String) : §@x§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@x§ = §>o§[param1];
         if(_loc4_)
         {
            §§push(Boolean(_loc2_));
            if(_loc4_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr80:
                     while(true)
                     {
                        §§push(Boolean(§`E§.indexOf(param1)));
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr79:
               }
               while(§§pop())
               {
                  if(!(_loc3_ && §6g§))
                  {
                     if(_loc3_)
                     {
                        §§goto(addr80);
                        continue;
                     }
                     _loc2_.§+l§ = §@x§.§4!X§;
                  }
                  break;
               }
               return _loc2_;
            }
            §§goto(addr79);
         }
         §§goto(addr68);
      }
      
      public static function §6!!§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(§`E§);
            if(!_loc2_)
            {
               §§push(param1);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                  }
                  §§goto(addr58);
               }
               §§pop().push(§§pop());
               §§goto(addr58);
            }
            §§goto(addr56);
         }
         addr58:
         if(_loc3_ || _loc3_)
         {
            addr56:
            §§push(§`E§);
            §§push(param1);
         }
      }
   }
}
