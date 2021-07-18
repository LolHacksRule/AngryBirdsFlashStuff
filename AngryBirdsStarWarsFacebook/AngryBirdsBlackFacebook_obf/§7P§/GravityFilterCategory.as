package §7P§
{
   [SecureSWF(rename="false")]
   public class GravityFilterCategory
   {
      
      public static const DEFAULT:int = -1;
      
      public static const FORCE_OBJECT:int = 32;
      
      public static const IGNOREGRAVITY:int = 64;
      
      public static const YODA_FORCE_OBJECT:int = 128;
      
      public static const LEIA_FORCE_OBJECT:int = 512;
      
      public static const LEIA_FORCE_DISABLED_OBJECT:int = 1024;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            DEFAULT = -1;
            while(true)
            {
               FORCE_OBJECT = 32;
            }
            addr96:
         }
         loop1:
         while(true)
         {
            IGNOREGRAVITY = 64;
            loop2:
            while(true)
            {
               if(_loc2_ && GravityFilterCategory)
               {
                  continue loop1;
               }
               YODA_FORCE_OBJECT = 128;
               do
               {
                  LEIA_FORCE_OBJECT = 512;
                  continue loop2;
               }
               while(!(_loc1_ || GravityFilterCategory));
               
               if(!_loc2_)
               {
                  break loop1;
               }
               §§goto(addr96);
            }
         }
      }
      
      public function GravityFilterCategory()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
   }
}
