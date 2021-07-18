package §1!c§
{
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §37§.§9!c§;
   import §@3§.§]K§;
   
   public class §7X§ extends §9!c§
   {
       
      
      protected var §4a§:§0![§;
      
      public function §7X§(param1:§0![§, param2:Boolean, param3:String, param4:§+f§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§4a§ = param1;
         }
         do
         {
            super(param2,param3,param4);
         }
         while(!_loc5_);
         
      }
      
      public function §2G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4a§.loadLevel(this.§4a§.getNextLevelId());
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.activate(param1);
            do
            {
               § !4§.§%"7§.§,$§.addLocalizationTarget(this);
            }
            while(_loc3_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            do
            {
               § !4§.§%"7§.§,$§.removeLocalizationTarget(this);
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(Boolean(§@"+§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§,!f§ == §]K§.§,"3§);
                           if(!_loc3_)
                           {
                              §§push(!§§pop());
                              if(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr96:
                              }
                           }
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_ && param1)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          §@"+§.run(param1);
                                       }
                                    }
                                    §§goto(addr76);
                                 }
                                 addr24:
                              }
                              while(_loc2_ || _loc3_)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§ !4§.§%"7§.§+!J§.§8!5§());
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(!§§pop());
                                    }
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    addr76:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr24);
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              continue loop2;
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr96);
               }
            }
         }
         §§goto(addr73);
      }
   }
}
