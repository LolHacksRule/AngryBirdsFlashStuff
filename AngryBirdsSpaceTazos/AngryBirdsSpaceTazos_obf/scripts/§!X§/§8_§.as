package §!X§
{
   import flash.display.MovieClip;
   
   public class §8_§ extends §8!o§
   {
      
      private static const §#! §:String = "TUTORIAL_";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#! § = "TUTORIAL_";
         }
      }
      
      public function §8_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         if(_loc5_)
         {
            if("RedBigBird" === _loc3_)
            {
               if(_loc5_)
               {
                  addr79:
                  §§push(0);
                  if(!_loc5_)
                  {
                     addr120:
                  }
               }
               else
               {
                  addr140:
                  §§push(4);
                  if(_loc4_ && this)
                  {
                  }
               }
            }
            else if("SmallBlueBird" === _loc3_)
            {
               if(_loc5_ || param1)
               {
                  §§push(1);
                  if(!(_loc5_ || _loc2_))
                  {
                     §§goto(addr120);
                  }
               }
               else
               {
                  §§goto(addr140);
               }
            }
            else if("BlackBird" === _loc3_)
            {
               if(!_loc4_)
               {
                  §§push(2);
                  if(!_loc4_)
                  {
                     §§goto(addr120);
                  }
                  else
                  {
                     addr170:
                  }
               }
               else
               {
                  addr126:
                  §§push(3);
                  if(!_loc5_)
                  {
                  }
               }
            }
            else if("RedBird" === _loc3_)
            {
               if(_loc5_)
               {
                  §§goto(addr126);
               }
               else
               {
                  §§goto(addr140);
               }
            }
            else
            {
               if("LaserBird" === _loc3_)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr140);
                  }
               }
               else if("TazosBird" !== _loc3_)
               {
                  addr175:
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
                        _loc2_ = "Tutorial_Lazer";
                        break;
                     case 5:
                        _loc2_ = "Tutorial_Tazos";
                        break;
                     default:
                        return null;
                  }
                  return _loc2_;
                  §§push(6);
               }
               §§goto(addr175);
               if(!(_loc4_ && _loc2_))
               {
                  §§goto(addr170);
               }
            }
            §§goto(addr175);
         }
         §§goto(addr79);
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.solveLinkageName(param1));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return §?z§(_loc2_);
      }
   }
}
