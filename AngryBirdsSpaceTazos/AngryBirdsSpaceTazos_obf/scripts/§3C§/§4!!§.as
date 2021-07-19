package §3C§
{
   import §#!b§.§'y§;
   import §%!r§.§3!'§;
   import §7!H§.§#!f§;
   import §7!H§.§'!3§;
   import flash.display.MovieClip;
   
   public class §4!!§ extends §#!f§
   {
       
      
      public function §4!!§(param1:MovieClip, param2:§3!'§, param3:§'y§, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public function §,"+§(param1:Boolean = false, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§'!3§ = null;
         if(_loc7_ || param2)
         {
            super.§@;§(param1,param2);
         }
         for each(_loc4_ in §<M§)
         {
            §§push(Boolean(_loc4_));
            if(_loc7_ || this)
            {
               §§push(§§pop());
               if(!(_loc8_ && param2))
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(!_loc4_.isPersistentLayer);
                           if(_loc7_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc7_ || param1)
                              {
                                 addr90:
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                    }
                                    addr106:
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          addr119:
                                          _loc4_.§<!N§();
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr106);
                              }
                              §§pop();
                              if(!(_loc8_ && param3))
                              {
                                 §§push(param3);
                                 if(!_loc7_)
                                 {
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr106);
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr106);
         }
      }
   }
}
