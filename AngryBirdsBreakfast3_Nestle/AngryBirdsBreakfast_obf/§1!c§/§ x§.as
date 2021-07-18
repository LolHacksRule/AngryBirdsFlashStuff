package §1!c§
{
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §'!3§.§>!F§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4!i§.§@"#§;
   import §4[§.§2P§;
   
   public class § x§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §8"%§ = "LevelEndStateRio";
         }
      }
      
      private var §>o§:§>!F§;
      
      public function § x§(param1:§0![§, param2:Boolean, param3:String, param4:§+f§, param5:§4O§)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            this.§>o§ = new §>!F§(this,param5);
         }
         while(!_loc6_);
         
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            do
            {
               §^!T§ = new §9%§(this);
               do
               {
                  §^!T§.init(this.§'!,§());
               }
               while(_loc1_);
               
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
         }
         while(true)
         {
            §§push(§ !4§.§%"7§);
            loop1:
            while(true)
            {
               §§push(§§pop().§+!J§);
               addr84:
               while(true)
               {
                  §§pop().closeAllPopups();
                  continue loop1;
               }
            }
            if(_loc3_ || this)
            {
               return;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.update(param1);
            loop0:
            while(true)
            {
               §§push(this.§>o§);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop().isOpen)
                  {
                     while(true)
                     {
                        §§push(this.§>o§);
                        addr72:
                        while(true)
                        {
                           §§pop().update(param1);
                           addr74:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              addr76:
                           }
                        }
                     }
                     addr60:
                  }
                  while(true)
                  {
                     if(nextState.length > 0)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 §@!S§.§2A§.clearLevel();
                                 addr47:
                                 break;
                              }
                              §§goto(addr60);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr47);
                     }
                     break;
                     §§goto(addr76);
                  }
                  return;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr47);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      public function §!!n§() : String
      {
         return §'8§.§8"%§;
      }
      
      public function §>-§() : String
      {
         return §;D§.§8"%§;
      }
      
      public function §'l§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §7"6§(param1);
         }
      }
      
      public function get §[!,§() : §0![§
      {
         return §4a§;
      }
      
      public function §,"#§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§[!,§.getNextLevelId());
         if(!(_loc3_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc4_ || _loc1_)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr40:
                  §§push(§4a§.getValidLevelId(this.§[!,§.getNextLevelId()));
                  if(!_loc3_)
                  {
                     addr58:
                     §§push(§§pop());
                  }
               }
               else
               {
                  §§push(null);
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr58);
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  §§push(!_loc1_);
                  if(_loc4_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           addr151:
                           while(true)
                           {
                              §§push(§2P§.§0!a§(_loc2_));
                              if(!_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                        }
                        addr150:
                     }
                     for(; !§§pop(); §§goto(addr151))
                     {
                        §7"6§(§^j§.§8"%§);
                        if(!_loc3_)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              if(!(_loc4_ || this))
                              {
                                 break;
                              }
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr73);
                              }
                              continue;
                           }
                           §7"6§(StateCutScene.§8"%§);
                           addr128:
                        }
                        addr73:
                        return;
                     }
                     §4a§.loadLevel(_loc2_);
                     §§goto(addr128);
                  }
                  §§goto(addr150);
               }
               §§goto(addr128);
            }
            §§goto(addr58);
         }
         §§goto(addr40);
      }
   }
}
