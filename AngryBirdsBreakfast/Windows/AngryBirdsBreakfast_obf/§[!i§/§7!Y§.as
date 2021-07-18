package §[!i§
{
   import §48§.§5E§;
   import §48§.§^A§;
   import §;0§.§6h§;
   import §?""§.§6!A§;
   import flash.display.MovieClip;
   
   public class §7!Y§ extends §5E§
   {
       
      
      public function §7!Y§(param1:MovieClip, param2:§6h§, param3:§6!A§, param4:Number, param5:Number, param6:int = 11)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function §==§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§^A§ = null;
         if(_loc8_)
         {
            super.§[!"§(param1,param2);
         }
         for each(_loc4_ in §"x§)
         {
            §§push(Boolean(_loc4_));
            if(!(_loc7_ && param1))
            {
               §§push(§§pop());
               if(_loc8_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && param2))
                     {
                        §§pop();
                        if(_loc8_ || param1)
                        {
                           §§push(!_loc4_.isPersistentLayer);
                           if(_loc8_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc7_)
                              {
                                 addr96:
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       addr105:
                                       §§pop();
                                       if(!(_loc7_ && this))
                                       {
                                          addr113:
                                          §§push(param3);
                                          if(_loc8_ || param3)
                                          {
                                             addr122:
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                             if(_loc7_ && param3)
                                             {
                                                continue;
                                             }
                                          }
                                          §§goto(addr122);
                                       }
                                       _loc4_.§9§();
                                       continue;
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr113);
                     }
                  }
               }
            }
            §§goto(addr96);
         }
      }
   }
}
