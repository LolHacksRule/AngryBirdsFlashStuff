package §=!L§
{
   import flash.display.MovieClip;
   
   public class §4""§ extends §8!I§
   {
      
      private static const §`!c§:String = "TUTORIAL_";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!c§ = "TUTORIAL_";
         }
      }
      
      public function §4""§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
         if(!(_loc4_ && param1))
         {
            if("BIRD_REDBIG" !== _loc3_)
            {
               if("BIRD_BLUE" === _loc3_)
               {
                  if(_loc5_)
                  {
                     §§push(1);
                     if(_loc4_)
                     {
                        §§goto(addr165);
                     }
                  }
                  else
                  {
                     addr122:
                     §§push(2);
                     if(_loc4_)
                     {
                        addr139:
                     }
                  }
               }
               else if("BIRD_BLACK" === _loc3_)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr122);
                  }
                  else
                  {
                     §§goto(addr131);
                  }
               }
               else if("BIRD_RED" === _loc3_)
               {
                  if(_loc5_)
                  {
                     addr131:
                     §§push(3);
                     if(!(_loc5_ || _loc3_))
                     {
                        §§goto(addr148);
                     }
                     §§goto(addr170);
                  }
                  else
                  {
                     addr145:
                     §§push(4);
                     if(!_loc4_)
                     {
                        §§goto(addr148);
                     }
                  }
               }
               else
               {
                  if("BIRD_YELLOW" === _loc3_)
                  {
                     if(_loc5_)
                     {
                        §§goto(addr145);
                     }
                     else
                     {
                        §§goto(addr152);
                     }
                  }
                  else if("BIRD_WHITE" === _loc3_)
                  {
                     §§goto(addr152);
                  }
                  else
                  {
                     §§push(6);
                  }
                  §§goto(addr152);
               }
               addr170:
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
            }
            if(_loc5_ || param1)
            {
               §§push(0);
               if(!(_loc5_ || this))
               {
                  addr148:
               }
            }
            else
            {
               addr152:
               §§push(5);
               if(!_loc4_)
               {
                  addr165:
               }
            }
            §§goto(addr170);
            §§goto(addr152);
         }
         §§goto(addr131);
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.solveLinkageName(param1));
         if(_loc3_ || param1)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return §>!Q§(_loc2_);
      }
   }
}
