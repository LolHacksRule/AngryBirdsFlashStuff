package §^"!§
{
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   
   public class §;,§ implements §>!n§
   {
       
      
      public function §;,§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      protected function §-!C§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(param1);
            if(_loc4_ || param1)
            {
               §§push(§§pop() == null);
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc4_ || this)
                        {
                           addr60:
                           if(param1 == "")
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr63);
                              }
                           }
                        }
                        var _loc2_:Class = §=!V§.§?!O§(param1);
                        if(_loc4_ || param1)
                        {
                           if(_loc2_ == null)
                           {
                              if(!_loc5_)
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
            §§goto(addr60);
         }
         addr63:
         return null;
      }
      
      public function solve(param1:String) : MovieClip
      {
         return this.§-!C§(param1);
      }
   }
}
