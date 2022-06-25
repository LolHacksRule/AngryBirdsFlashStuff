package §9!5§
{
   import §%e§.§[P§;
   import §0!N§.§4n§;
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §;!5§.§5>§;
   import §^;§.§6!S§;
   import §true§.§ _§;
   
   public class §#!c§ extends §[!k§
   {
      
      public static const §?h§:String = "LevelLoadStateClassic";
      
      private static var §[v§:Number;
      
      private static var §6!J§:§6!S§;
      
      private static var §&!,§:§[P§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?h§ = "LevelLoadStateClassic";
         }
      }
      
      public function §#!c§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      public static function § !0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            LevelManager.§1!+§(LevelManager.§9!j§());
            do
            {
               §&!B§ = §9u§;
            }
            while(!_loc1_);
            
         }
      }
      
      public static function §1!'§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §5!"§ = param1;
            do
            {
               §&!B§ = §9u§;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public static function §6d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §#!c§))
         {
            if(§ _§.§!6§.camera)
            {
               if(_loc2_)
               {
                  addr67:
                  §[v§ = § _§.§!6§.camera.§=!I§;
               }
               while(true)
               {
                  §§goto(addr49);
               }
            }
            addr49:
            while(true)
            {
               §&!B§ = §9u§;
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr67);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§6!J§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     addr46:
                     §6!J§.§4!B§();
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§4n§ = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:§=+§ = LevelManager.§-V§(LevelManager.§4Y§);
         if(_loc6_)
         {
            if(_loc1_)
            {
               loop30:
               while(true)
               {
                  initLevelMain(_loc1_);
                  addr72:
                  while(true)
                  {
                     addr49:
                     addr73:
                     while(!isNaN(§[v§))
                     {
                        continue loop30;
                     }
                  }
               }
            }
            else
            {
               _loc2_ = LevelManager.§2!9§(LevelManager.§4Y§);
               if(!_loc7_)
               {
                  if(_loc2_)
                  {
                     loop0:
                     while(true)
                     {
                        if(!§&!,§)
                        {
                           while(true)
                           {
                              §&!,§ = new §[P§();
                              addr317:
                              while(true)
                              {
                              }
                           }
                           addr313:
                        }
                        while(true)
                        {
                           §§push(§6!J§);
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §6!J§ = new §6!S§();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§'!;§.assetsUrl);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop8:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr300:
                                                   while(true)
                                                   {
                                                      §§push("");
                                                   }
                                                }
                                                addr299:
                                             }
                                             while(true)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ || _loc3_))
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(_loc6_ || _loc1_)
                                                         {
                                                            §§push(§'!;§.buildNumber);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ || _loc2_))
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        §§push("");
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                                  addr250:
                                                               }
                                                               while(true)
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(§6!J§);
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().init(§5>§.§?T§(),_loc4_,_loc5_,§&!,§);
                                                                                 loop19:
                                                                                 while(!_loc7_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§6!J§);
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§%G§();
                                                                                          loop24:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push("packages/chapter");
                                                                                             if(!(_loc7_ && _loc2_))
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                §§push(§§pop() + _loc2_.name);
                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() + ".pak");
                                                                                                }
                                                                                             }
                                                                                             _loc3_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!(_loc6_ || _loc3_))
                                                                                                {
                                                                                                   break loop24;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   do
                                                                                                   {
                                                                                                      §§push(§6!J§);
                                                                                                      while(!_loc7_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   while(false);
                                                                                                   
                                                                                                   §§goto(addr318);
                                                                                                }
                                                                                                addr140:
                                                                                                while(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr299);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr260);
                                                                  §§goto(addr262);
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr205);
                              addr92:
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue;
                              }
                              §§pop().§7![§(this.§?;§);
                              if(_loc6_)
                              {
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§goto(addr118);
                                    }
                                    §§goto(addr300);
                                 }
                                 §§goto(addr260);
                              }
                              §§goto(addr140);
                           }
                        }
                     }
                  }
                  §§goto(addr318);
               }
               §§goto(addr204);
            }
            addr318:
            return;
         }
         §§goto(addr61);
      }
      
      protected function §?;§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§=+§ = LevelManager.§-V§(LevelManager.§4Y§);
         if(_loc3_ || this)
         {
            if(_loc1_)
            {
               if(_loc3_ || _loc2_)
               {
                  initLevelMain(_loc1_);
               }
               loop0:
               while(!isNaN(§[v§))
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        § _§.§!6§.camera.§7!<§(§[v§);
                     }
                     addr74:
                  }
                  while(_loc3_)
                  {
                     §[v§ = NaN;
                     if(!(_loc2_ && _loc3_))
                     {
                        break loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      override public function isReady() : Boolean
      {
         return § _§.§!6§.mReadyToRun;
      }
      
      override public function hasError() : Boolean
      {
         return § _§.§!6§.§%!Z§;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            mNextState = this.§,w§();
         }
      }
      
      protected function §,w§() : String
      {
         return StatePlay.§?h§;
      }
      
      override public function onLevelLoadError() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            mNextState = § B§.§?h§;
         }
      }
   }
}
