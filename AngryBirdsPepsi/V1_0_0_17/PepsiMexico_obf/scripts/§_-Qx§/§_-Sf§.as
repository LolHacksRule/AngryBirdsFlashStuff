package §_-Qx§
{
   import §_-ya§.§_-oc§;
   import §_-ya§.§_-u-§;
   
   public class §_-Sf§
   {
      
      private static var §_-mw§:Array = null;
      
      private static var §_-ae§:Array;
      
      public static var §_-vj§:String = null;
      
      public static var §_-6M§:String = null;
      
      public static var §_-LD§:Boolean;
      
      public static var §_-wf§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-mw§ = null;
            if(_loc2_)
            {
               §_-ae§ = new Array();
               if(_loc2_)
               {
                  addr34:
                  §_-vj§ = null;
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr64);
               }
               §_-6M§ = null;
               if(_loc2_ || _loc2_)
               {
                  §_-wf§ = 0;
                  §§goto(addr64);
               }
               addr64:
               return;
            }
         }
         §§goto(addr34);
      }
      
      public function §_-Sf§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §_-Do§(param1:Object) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§_-JO§ = null;
         var _loc4_:* = null;
         if(_loc9_)
         {
            §_-mw§ = new Array();
         }
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-JO§();
            if(_loc9_)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               if(_loc9_)
               {
                  _loc3_.name = _loc2_.name;
                  _loc3_.menuImage = _loc2_.menuImage;
                  if(_loc10_ && §_-Sf§)
                  {
                     continue;
                  }
               }
               _loc3_.§_-ZS§ = _loc2_.leftCorner;
               _loc3_.§_-aZ§ = _loc2_.rightCorner;
               _loc3_.§_-OD§ = _loc2_.pageColors;
               if(_loc9_)
               {
                  _loc3_.pageIndexes = _loc2_.pageIndexes;
                  _loc3_.levelButtons = _loc2_.levelButtons;
                  if(!_loc2_.cutscenes)
                  {
                  }
                  addr142:
                  §_-mw§.push(_loc3_);
                  continue;
               }
               var _loc7_:int = 0;
               if(_loc9_ || _loc2_)
               {
                  var _loc8_:* = _loc2_.cutscenes;
                  if(!_loc10_)
                  {
                     for(_loc4_ in _loc8_)
                     {
                        if(!_loc9_)
                        {
                           continue;
                        }
                     }
                     addr141:
                     §§goto(addr142);
                     addr131:
                  }
                  while(true)
                  {
                     _loc3_.§_-N6§(_loc4_,_loc2_.cutscenes[_loc4_]);
                     §§goto(addr131);
                  }
               }
               §§goto(addr141);
            }
            §§goto(addr142);
         }
      }
      
      public static function §_-6s§() : void
      {
      }
      
      public static function §_-in§(param1:String) : §_-JO§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-JO§ = null;
         for each(_loc2_ in §_-mw§)
         {
            if(!_loc5_)
            {
               if(_loc2_.§_-Sr§(param1))
               {
                  if(_loc6_ || param1)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §_-Gd§(param1:int) : §_-JO§
      {
         return §_-mw§[param1];
      }
      
      public static function §_-DG§() : int
      {
         return §_-mw§.length;
      }
      
      public static function §_-L0§(param1:String) : §_-Wv§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(§_-ae§);
            if(!_loc2_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc3_)
                     {
                        throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                     }
                     addr53:
                     §§push(§_-ae§);
                     §§push(param1);
                  }
                  §§goto(addr53);
               }
               return §§pop()[§§pop()];
            }
         }
         §§goto(addr53);
      }
      
      public static function §_-DJ§(param1:String, param2:§_-Wv§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §_-ae§[param1] = param2;
         }
      }
      
      public static function §_-mF§(param1:String, param2:int) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-Wv§ = §_-Sf§.§_-L0§(param1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() <= 0)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr45);
                  }
               }
               §§push(param2);
               §§push(_loc3_.§_-Xf§);
               if(_loc5_)
               {
                  if(§§pop() < §§pop())
                  {
                     return 1;
                  }
                  §§push(param2);
                  §§push(_loc3_.§for §);
               }
               if(§§pop() < §§pop())
               {
                  return 2;
               }
               else
               {
                  return 3;
               }
            }
         }
         addr45:
         return 0;
      }
      
      public static function §_-JA§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1 != §_-vj§)
            {
               if(_loc2_ || §_-Sf§)
               {
                  §_-6M§ = §_-vj§;
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr52);
               }
               §_-vj§ = param1;
            }
         }
         addr52:
      }
      
      public static function §_-gF§() : String
      {
         return §_-vj§.substring(5);
      }
      
      public static function §_-Xv§() : §_-JO§
      {
         return §_-mw§[§_-wf§];
      }
      
      public static function §_-Lt§() : Boolean
      {
         return true;
      }
      
      public static function §_-fS§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§_-ZP§());
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§_-Xv§().§_-4B§(§_-vj§ + "-OUTRO"));
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            if(!_loc2_)
            {
               if(!_loc5_)
               {
                  return false;
               }
            }
         }
         var _loc3_:§_-oc§ = §_-u-§.§_-4B§(_loc2_);
         §§push(_loc1_);
         if(!(_loc5_ && _loc1_))
         {
            if(§§pop() != null)
            {
               if(!(_loc5_ && _loc2_))
               {
                  addr77:
                  if(_loc1_.charAt(0) != §_-vj§.charAt(0))
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(true);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr115);
                  }
                  §§push(false);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr114:
                  §§push(true);
               }
               addr115:
               return §§pop();
            }
            _loc3_.§_-99§ = §_-oc§.§_-Qf§;
            §§goto(addr114);
         }
         §§goto(addr77);
      }
      
      public static function §_-ZP§() : String
      {
         return §_-Xv§().§_-ZP§(§_-vj§);
      }
   }
}
