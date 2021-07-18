package §<"c§
{
   import § §.§4#`§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §]!$§.§6y§;
   
   public class §]"_§ extends §4#`§
   {
       
      
      protected var §+!b§:§+"2§;
      
      public function §]"_§(param1:§+"2§, param2:Boolean, param3:String, param4:§5"H§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§+!b§ = param1;
         }
         do
         {
            super(param2,param3,param4);
         }
         while(!(_loc6_ || param1));
         
      }
      
      public function §'$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+!b§.loadLevel(this.§+!b§.getNextLevelId());
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.activate(param1);
         }
         do
         {
            §4#;§.singleton.§4#,§.addLocalizationTarget(this);
         }
         while(_loc3_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
         }
         do
         {
            §4#;§.singleton.§4#,§.removeLocalizationTarget(this);
         }
         while(!(_loc1_ || this));
         
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(Boolean(§7!=§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§`"B§ == §6y§.§8"@§);
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr89:
                              }
                           }
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    while(§§pop())
                                    {
                                       addr49:
                                       if(!(_loc3_ && param1))
                                       {
                                          §7!=§.run(param1);
                                       }
                                       if(_loc2_)
                                       {
                                          addr71:
                                          break;
                                       }
                                       addr102:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(§4#;§.singleton.popupManager.§""n§());
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(!§§pop());
                                                   continue loop4;
                                                }
                                                continue loop0;
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                          §§goto(addr49);
                                       }
                                       continue loop4;
                                    }
                                 }
                                 else
                                 {
                                    addr47:
                                 }
                                 continue loop0;
                                 return;
                              }
                              break;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr89);
               }
            }
         }
         §§goto(addr71);
      }
   }
}
