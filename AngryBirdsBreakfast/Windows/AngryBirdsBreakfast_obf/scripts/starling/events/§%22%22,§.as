package starling.events
{
   import §'O§.§1,§;
   
   public final class §"",§
   {
      
      public static const HOVER:String = "hover";
      
      public static const §"!A§:String = "began";
      
      public static const §#D§:String = "moved";
      
      public static const §'w§:String = "stationary";
      
      public static const §5!=§:String = "ended";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            HOVER = "hover";
            while(true)
            {
               §"!A§ = "began";
               addr59:
               if(!(_loc1_ && _loc1_))
               {
                  §5!=§ = "ended";
                  addr66:
                  if(!_loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc2_ || §"",§)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr59);
                        }
                        addr81:
                        while(true)
                        {
                           §'w§ = "stationary";
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        §#D§ = "moved";
                        §§goto(addr81);
                     }
                     addr86:
                  }
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §"",§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         throw new §1,§();
      }
   }
}
