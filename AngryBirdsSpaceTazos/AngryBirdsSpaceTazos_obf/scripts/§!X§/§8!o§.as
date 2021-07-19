package §!X§
{
   import flash.display.MovieClip;
   
   public class §8!o§ extends §;">§
   {
       
      
      public function §8!o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      protected function solveLinkageName(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = "";
         var _loc3_:* = param1;
         if(_loc5_)
         {
            if("BIRD_BLACK" === _loc3_)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  addr137:
                  §§push(3);
                  if(_loc4_)
                  {
                     addr195:
                  }
               }
            }
            else if("BIRD_BLUE" === _loc3_)
            {
               if(_loc5_)
               {
                  §§push(1);
                  if(!(_loc5_ || this))
                  {
                     addr159:
                  }
               }
               else
               {
                  addr151:
                  §§push(4);
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr159);
                  }
               }
            }
            else
            {
               if("BIRD_RED" === _loc3_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§push(2);
                     if(_loc4_)
                     {
                     }
                  }
               }
               else if("BIRD_WHITE" === _loc3_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr137);
                  }
               }
               else if("BIRD_YELLOW" === _loc3_)
               {
                  if(_loc5_ || this)
                  {
                     §§goto(addr151);
                  }
               }
               else if("BIRD_GREEN" === _loc3_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     §§push(5);
                     if(!(_loc4_ && this))
                     {
                        §§goto(addr200);
                     }
                     else
                     {
                        §§goto(addr195);
                     }
                  }
               }
               else if("BIRD_REDBIG" !== _loc3_)
               {
                  addr200:
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
               §§goto(addr200);
               if(_loc5_)
               {
                  §§goto(addr195);
               }
            }
            §§goto(addr200);
         }
         §§goto(addr137);
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.solveLinkageName(param1));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return §?z§(_loc2_);
      }
   }
}
