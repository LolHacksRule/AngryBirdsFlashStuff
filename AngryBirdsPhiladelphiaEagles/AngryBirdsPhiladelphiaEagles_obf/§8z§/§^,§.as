package §8z§
{
   import §7!O§.§^!§;
   
   public class §^,§
   {
      
      public static const NONE:String = "none";
      
      public static const §#b§:String = "bilinear";
      
      public static const §1K§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §^,§))
         {
            NONE = "none";
            while(true)
            {
               §#b§ = "bilinear";
               while(!_loc2_)
               {
                  §1K§ = "trilinear";
                  if(!(_loc2_ && §^,§))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §^,§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         throw new §^!§();
      }
      
      public static function §1!6§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(NONE);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc3_)
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
                  §§goto(addr111);
               }
               while(true)
               {
                  if(_loc3_ && param1)
                  {
                     continue loop0;
                  }
                  §§goto(addr72);
                  §§push(§#b§);
               }
            }
         }
         §§goto(addr103);
      }
   }
}
