package §5§#7
{
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   
   public class § #-§ implements §6!X§
   {
       
      
      public function § #-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      protected function §;J§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(param1);
            if(_loc4_ || this)
            {
               §§push(§§pop() == null);
               if(!(_loc5_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!(_loc5_ && _loc2_))
                        {
                           addr65:
                           if(param1 == "")
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr68);
                              }
                           }
                        }
                        var _loc2_:Class = §5_§.§`"G§(param1);
                        if(!(_loc5_ && _loc3_))
                        {
                           if(_loc2_ == null)
                           {
                              if(_loc4_ || this)
                              {
                                 return null;
                              }
                           }
                        }
                        return new _loc2_();
                     }
                  }
               }
            }
            §§goto(addr65);
         }
         addr68:
         return null;
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§;J§(param1);
      }
   }
}
