package §^"!§
{
   import flash.display.MovieClip;
   
   public class §=!p§ extends §6H§
   {
      
      private static const §^r§:String = "TUTORIAL_";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §^r§ = "TUTORIAL_";
         }
      }
      
      public function §=!p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override protected function solveLinkageName(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = "";
         var _loc3_:* = param1;
         if(!(_loc4_ && _loc2_))
         {
            if("BIRD_REDBIG" === _loc3_)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr180);
               }
               else
               {
                  §§goto(addr126);
               }
            }
            else if("BIRD_BLUE" === _loc3_)
            {
               if(_loc5_)
               {
                  addr98:
                  §§push(1);
                  if(_loc4_ && _loc2_)
                  {
                     §§goto(addr134);
                  }
               }
               else
               {
                  addr145:
                  §§push(4);
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr153);
                  }
               }
            }
            else if("BIRD_BLACK" === _loc3_)
            {
               if(_loc5_)
               {
                  §§push(2);
                  if(_loc4_)
                  {
                     §§goto(addr134);
                  }
               }
               else
               {
                  §§goto(addr145);
               }
            }
            else
            {
               if("BIRD_RED" === _loc3_)
               {
                  if(_loc5_ || this)
                  {
                     addr126:
                     §§push(3);
                     if(!(_loc4_ && _loc2_))
                     {
                        addr134:
                     }
                  }
               }
               else if("BIRD_YELLOW" === _loc3_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr145);
                  }
               }
               else if("BIRD_WHITE" !== _loc3_)
               {
                  addr180:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_ = "Tutorial_Big_Brother";
                        break;
                     case 1:
                        _loc2_ = "Tutorial_Blue";
                        break;
                     case 2:
                        _loc2_ = "Tutorial_Bomb";
                        break;
                     case 3:
                        _loc2_ = "Tutorial_Red";
                        break;
                     case 4:
                        _loc2_ = "Tutorial_Yellow";
                        break;
                     case 5:
                        _loc2_ = "Tutorial_White";
                        break;
                     default:
                        return null;
                  }
                  return _loc2_;
                  §§push(6);
               }
               §§goto(addr180);
               if(_loc5_ || _loc2_)
               {
               }
            }
            §§goto(addr180);
         }
         §§goto(addr98);
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.solveLinkageName(param1));
         if(!(_loc3_ && param1))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return §-!C§(_loc2_);
      }
   }
}
