package §=!L§
{
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   
   public class §%D§ implements §!!u§
   {
       
      
      public function §%D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      protected function §>!Q§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() == null);
               if(!(_loc4_ && this))
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§pop();
                        §§goto(addr71);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     return null;
                  }
                  §§goto(addr71);
               }
               §§goto(addr71);
            }
            §§goto(addr64);
         }
         addr71:
         if(_loc5_ || param1)
         {
            addr64:
            §§push(param1 == "");
         }
         var _loc2_:Class = §<V§.§"!,§(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ == null)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr103);
               }
            }
            return new _loc2_();
         }
         addr103:
         return null;
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§>!Q§(param1);
      }
   }
}
