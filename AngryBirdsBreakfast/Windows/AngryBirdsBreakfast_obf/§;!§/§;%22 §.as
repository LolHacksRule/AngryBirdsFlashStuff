package §;!§
{
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §>1§.§2B§;
   import §?z§.§4!C§;
   
   public class §;" § extends §4!C§
   {
       
      
      protected var §&" §:§5!Y§;
      
      public function §;" §(param1:§5!Y§, param2:Boolean, param3:String, param4:§6h§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.§&" § = param1;
            do
            {
               super(param2,param3,param4);
            }
            while(!(_loc6_ || this));
            
         }
      }
      
      public function §!x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§&" §.loadLevel(this.§&" §.getNextLevelId());
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.activate(param1);
         }
         do
         {
            §6!!§.singleton.§@!>§.addLocalizationTarget(this);
         }
         while(_loc2_ && this);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
            do
            {
               §6!!§.singleton.§@!>§.removeLocalizationTarget(this);
            }
            while(_loc2_ && this);
            
         }
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(§#1§));
            if(_loc3_ || param1)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        loop7:
                        while(true)
                        {
                           §§push(§]P§ == §2B§.§0!&§);
                           loop8:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(Boolean(§§pop()));
                              if(!(_loc3_ || this))
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          §§push(§6!!§.singleton.§%![§.§%&§());
                                          if(!_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop8;
                                             }
                                             §§push(!§§pop());
                                          }
                                          if(!(_loc2_ && this))
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                while(§§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §#1§.run(param1);
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                return;
                                                addr48:
                                             }
                                             continue loop6;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop7;
                                 }
                                 continue loop0;
                                 addr95:
                              }
                           }
                        }
                     }
                     addr121:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr121);
         }
         §§goto(addr98);
      }
   }
}
