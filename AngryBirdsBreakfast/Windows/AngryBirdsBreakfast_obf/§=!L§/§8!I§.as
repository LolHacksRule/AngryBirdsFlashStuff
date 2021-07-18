package §=!L§
{
   import flash.display.MovieClip;
   
   public class §8!I§ extends §%D§
   {
       
      
      public function §8!I§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      protected function solveLinkageName(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:String = "";
         var _loc3_:* = param1;
         if(_loc4_ || _loc3_)
         {
            if("BIRD_BLACK" === _loc3_)
            {
               if(!_loc5_)
               {
                  §§push(0);
                  if(!(_loc4_ || param1))
                  {
                     addr192:
                  }
               }
               else
               {
                  addr103:
                  §§push(1);
                  if(_loc5_ && _loc2_)
                  {
                     addr159:
                  }
               }
            }
            else if("BIRD_BLUE" === _loc3_)
            {
               if(_loc4_)
               {
                  §§goto(addr103);
               }
               else
               {
                  addr132:
                  §§push(2);
                  if(!(_loc4_ || param1))
                  {
                     addr214:
                  }
               }
            }
            else if("BIRD_RED" === _loc3_)
            {
               if(!(_loc5_ && this))
               {
                  §§goto(addr132);
               }
               else
               {
                  addr151:
                  §§push(3);
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr159);
                  }
               }
            }
            else
            {
               if("BIRD_WHITE" === _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr151);
                  }
               }
               else if("BIRD_YELLOW" === _loc3_)
               {
                  if(_loc4_)
                  {
                     §§push(4);
                     if(_loc5_ && param1)
                     {
                     }
                     §§goto(addr219);
                  }
                  else
                  {
                     §§goto(addr184);
                  }
               }
               else
               {
                  if("BIRD_GREEN" === _loc3_)
                  {
                     if(!(_loc5_ && param1))
                     {
                        addr184:
                        §§push(5);
                        if(!(_loc5_ && this))
                        {
                           §§goto(addr192);
                        }
                     }
                  }
                  else if("BIRD_REDBIG" !== _loc3_)
                  {
                     addr219:
                     switch(§§pop())
                     {
                        case 0:
                           _loc2_ = "TUTORIAL_BLACK";
                           break;
                        case 1:
                           _loc2_ = "TUTORIAL_BLUE";
                           break;
                        case 2:
                           _loc2_ = "TUTORIAL_RED";
                           break;
                        case 3:
                           _loc2_ = "TUTORIAL_WHITE";
                           break;
                        case 4:
                           _loc2_ = "TUTORIAL_YELLOW";
                           break;
                        case 5:
                           _loc2_ = "TUTORIAL_BOOMERANG";
                           break;
                        case 6:
                           _loc2_ = "TUTORIAL_BIG_BROTHER";
                           break;
                        default:
                           return null;
                     }
                     return _loc2_;
                     §§push(7);
                  }
                  §§goto(addr219);
               }
               §§goto(addr219);
               if(_loc4_ || param1)
               {
                  §§goto(addr214);
               }
            }
            §§goto(addr219);
         }
         §§goto(addr132);
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.solveLinkageName(param1));
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return §>!Q§(_loc2_);
      }
   }
}
