package §@!"§
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            DEFAULT = -1;
            while(true)
            {
               FORCE_OBJECT = 32;
               while(!(_loc1_ && _loc2_))
               {
                  LEIA_FORCE_OBJECT = 512;
                  loop4:
                  while(_loc2_)
                  {
                     LEIA_FORCE_DISABLED_OBJECT = 1024;
                     if(!(_loc1_ && GravityFilterCategory))
                     {
                        addr35:
                        if(!_loc2_)
                        {
                           loop2:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 YODA_FORCE_OBJECT = 128;
                                 break loop4;
                              }
                              addr88:
                              while(true)
                              {
                                 IGNOREGRAVITY = 64;
                                 continue loop2;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function GravityFilterCategory()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
   }
}
