package §^]§
{
   import §'7§.§-!K§;
   
   public class §`!K§
   {
      
      public static const §?!%§:String = "1-1";
      
      protected static var §[O§:Array = null;
      
      protected static var §8m§:Array;
      
      protected static var §]!§:Array;
      
      public static var §5g§:String = null;
      
      public static var §0r§:String = null;
      
      public static var §#B§:Boolean;
      
      public static var §%;§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         do
         {
            §8m§ = [];
            §]!§ = [];
            §5g§ = null;
            §0r§ = null;
            §%;§ = 0;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §`!K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §0!#§(param1:Object) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§7!K§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         if(!(_loc12_ && §`!K§))
         {
            §[O§ = new Array();
         }
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §7!K§();
            if(!_loc12_)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               while(true)
               {
                  _loc3_.name = _loc2_.name;
                  _loc3_.menuImage = _loc2_.menuImage;
                  if(_loc12_ && _loc2_)
                  {
                     break;
                  }
                  _loc3_.§9`§ = _loc2_.leftCorner;
               }
               continue;
               addr134:
            }
            while(true)
            {
               _loc3_.§@<§ = _loc2_.rightCorner;
               if(_loc12_)
               {
                  break;
               }
               _loc3_.§8!L§ = _loc2_.pageColors;
               do
               {
                  _loc3_.pageIndexes = _loc2_.pageIndexes;
               }
               while(_loc12_ && _loc2_);
               
               while(true)
               {
                  _loc3_.levelButtons = _loc2_.levelButtons;
                  if(_loc12_)
                  {
                     break;
                  }
                  if(!_loc12_)
                  {
                     continue;
                  }
                  §§goto(addr134);
               }
            }
            §§goto(addr219);
            §§push(0);
         }
      }
      
      public static function §^z§() : void
      {
      }
      
      public static function §0@§(param1:String) : §7!K§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7!K§ = null;
         for each(_loc2_ in §[O§)
         {
            if(!_loc5_)
            {
               if(_loc2_.§1e§(param1))
               {
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §?!0§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7!K§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ || §`!K§))
            {
               break;
            }
            if(§§pop() >= §[O§.length)
            {
               break;
            }
            _loc3_ = §[O§[_loc2_];
            if(_loc4_)
            {
               if(_loc3_.§1e§(param1))
               {
                  if(_loc4_)
                  {
                     return _loc2_;
                  }
               }
            }
            _loc2_++;
         }
         return §§pop();
      }
      
      public static function §5!<§(param1:int) : §7!K§
      {
         return §[O§[param1];
      }
      
      public static function §?`§(param1:String) : §7!K§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7!K§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §[O§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && param1)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §<u§() : int
      {
         return §[O§.length;
      }
      
      public static function §!I§(param1:String) : §[z§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§8m§);
            if(_loc2_ || §`!K§)
            {
               §§push(param1);
               if(!(_loc3_ && param1))
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc2_ || _loc3_)
                     {
                        §§push(§]!§);
                        if(_loc2_)
                        {
                           §§push(param1);
                           if(_loc2_ || param1)
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§goto(addr84);
                                 }
                              }
                           }
                           §§goto(addr94);
                        }
                        addr93:
                        addr94:
                        return §§pop()[§§pop()];
                        §§push(param1);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr93);
                  §§push(§8m§);
               }
               §§goto(addr94);
            }
            §§goto(addr93);
         }
         addr84:
         throw new Error("Error! Level \'" + param1 + "\' does not exist.");
      }
      
      public static function §<R§(param1:String, param2:§[z§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §8m§[param1] = param2;
         }
      }
      
      public static function §;$§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr64:
            while(true)
            {
               addr55:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     addr59:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(!(_loc5_ || param2))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public static function §]!F§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§]!§[param1])
            {
               if(!(_loc3_ && param1))
               {
                  addr39:
                  §§push(§?!%§);
                  if(_loc2_ || §`!K§)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return param1;
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr39);
      }
      
      public static function §!e§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§7!K§ = null;
         if(param1 != §5g§)
         {
            while(true)
            {
               §§push(§?!0§(param1));
               if(!_loc5_)
               {
                  §§push(int(§§pop()));
               }
               do
               {
                  _loc2_ = §§pop();
                  §§push(_loc2_);
               }
               while(!(_loc4_ || §`!K§));
               
               if(§§pop() >= 0)
               {
                  if(_loc4_)
                  {
                     §%;§ = _loc2_;
                  }
                  continue;
               }
               §0r§ = §5g§;
               if(_loc4_ || _loc2_)
               {
                  addr135:
                  §5g§ = null;
               }
            }
         }
      }
      
      public static function §35§() : String
      {
         return §5g§.substring(5);
      }
      
      public static function §]V§() : §7!K§
      {
         return §[O§[§%;§];
      }
      
      public static function §2!+§() : Boolean
      {
         return true;
      }
      
      public static function § !;§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§6J§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§]V§().§?3§(§5g§ + "-OUTRO"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(§§pop() != null)
                     {
                        break;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           break loop0;
                        }
                        §-!K§.§8Z§(_loc2_);
                     }
                     if(!_loc3_)
                     {
                        addr98:
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§push(true);
               if(_loc4_ || _loc1_)
               {
                  return §§pop();
               }
               §§goto(addr102);
            }
            addr102:
            return §§pop();
            §§push(false);
         }
         §§goto(addr98);
      }
      
      public static function §6J§() : String
      {
         return §]V§().§6J§(§5g§);
      }
   }
}
