package §;C§
{
   import §4&§.§'!,§;
   import §4&§.§,C§;
   
   public class §%"$§ extends §'!,§
   {
       
      
      public function §%"$§(param1:§,C§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super(param1);
         }
      }
      
      override public function initializeAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.initializeAnimations();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§'x§));
               §§push("BIRD_RED");
               §§push(["normal",["BIRD_SPACE_RED_NORMAL"]]);
               if(_loc2_)
               {
                  §§push(null);
               }
               §§pop().§'x§(§§pop(),§§pop());
               while(true)
               {
                  §§push(§§findproperty(§'x§));
                  §§push("BIRD_BLUE");
                  §§push(["normal",["BIRD_SPACE_BLUE_NORMAL"]]);
                  if(!_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§'x§(§§pop(),§§pop());
                  addr193:
                  while(!_loc1_)
                  {
                  }
                  addr158:
                  continue loop0;
                  while(_loc2_ || _loc2_)
                  {
                     §§push(§§findproperty(§'x§));
                     §§push("BIRD_YELLOW");
                     §§push(["normal",["BIRD_SPACE_LAZER_NORMAL"]]);
                     if(!_loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§'x§(§§pop(),§§pop());
                     for(; !(_loc1_ && _loc1_); §§push(§§findproperty(§'x§)),§§push("BIRD_BLACK"),§§push(["normal",["BIRD_SPACE_BLACK_NORMAL"]]),if(!(_loc1_ && _loc2_))
                     {
                        §§push(null);
                     },§§pop().§'x§(§§pop(),§§pop()),if(!(_loc1_ && _loc1_))
                     {
                        return;
                     })
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr193);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(§§findproperty(§'x§));
            §§push("BIRD_REDBIG");
            §§push(["normal",["BIRD_SPACE_BB_NORMAL"]]);
            if(_loc2_ || _loc2_)
            {
               §§push(null);
            }
            §§pop().§'x§(§§pop(),§§pop());
            §§goto(addr158);
         }
      }
   }
}
