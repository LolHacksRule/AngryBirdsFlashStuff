package §!X§
{
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   
   public class §;">§ implements §&"E§
   {
       
      
      public function §;">§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      protected function §?z§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() == null);
               if(_loc4_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§goto(addr60);
                        }
                        §§goto(addr63);
                     }
                  }
               }
               addr60:
               §§goto(addr58);
            }
            addr58:
            §§goto(addr57);
         }
         addr57:
         if(param1 == "")
         {
            if(_loc4_)
            {
               addr63:
               return null;
            }
         }
         var _loc2_:Class = § !h§.§["3§(param1);
         if(!_loc5_)
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
      
      public function solve(param1:String) : MovieClip
      {
         return this.§?z§(param1);
      }
   }
}
