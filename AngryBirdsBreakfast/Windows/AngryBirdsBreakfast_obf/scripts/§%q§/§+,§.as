package §%q§
{
   import §'O§.§1,§;
   
   public class §+,§
   {
      
      public static const NONE:String = "none";
      
      public static const §7q§:String = "bilinear";
      
      public static const §]!h§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            NONE = "none";
         }
         do
         {
            §7q§ = "bilinear";
            do
            {
               §]!h§ = "trilinear";
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      public function §+,§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         throw new §1,§();
      }
      
      public static function §%"$§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            while(true)
            {
               §§push(NONE);
               addr97:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           continue;
                        }
                     }
                  }
                  §§goto(addr102);
               }
               if(_loc2_ && param1)
               {
                  continue;
               }
               §§push(§]!h§);
               if(!_loc2_)
               {
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc2_ && param1)
                     {
                        §§goto(addr79);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr97);
               }
               §§goto(addr66);
            }
         }
         §§goto(addr84);
      }
   }
}
