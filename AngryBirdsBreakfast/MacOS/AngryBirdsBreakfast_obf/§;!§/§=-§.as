package §;!§
{
   import § ^§.§`!2§;
   import §"n§.§!!G§;
   import §&v§.§#!R§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §[!i§.§1v§;
   import com.angrybirds.§&!"§;
   
   public class §=-§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndStateRio";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!q§ = "LevelEndStateRio";
         }
      }
      
      private var §!!=§:§1v§;
      
      public function §=-§(param1:§5!Y§, param2:Boolean, param3:String, param4:§6h§, param5:§#!R§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super(param1,param2,param3,param4);
            do
            {
               this.§!!=§ = new §1v§(this,param5);
            }
            while(_loc6_ && param3);
            
         }
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.ViewLevelEndCustom[0];
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §?P§ = new §2W§(this);
               while(true)
               {
                  §?P§.init(this.§`!K§());
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     continue loop0;
                     while(true)
                     {
                        §?P§.movieClip.cacheAsBitmap = true;
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate(param1);
            while(true)
            {
               §§push(§6!!§.singleton);
               loop1:
               while(true)
               {
                  §§push(§§pop().§%![§);
                  addr83:
                  while(true)
                  {
                     §§pop().§[!"§();
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §!!G§.§2Z§.updateTextFields(§?P§.container,"StateEnd");
            if(_loc2_ || _loc2_)
            {
               break;
            }
            §§goto(addr59);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.update(param1);
            while(true)
            {
               §§push(this.§!!=§);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop().isOpen)
                  {
                     while(!_loc3_)
                     {
                        §§push(this.§!!=§);
                        while(true)
                        {
                           §§pop().update(param1);
                           addr86:
                           while(true)
                           {
                           }
                        }
                     }
                     continue;
                     addr70:
                  }
                  for(; nextState.length > 0; §§goto(addr86))
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        §&!"§.§1!D§.clearLevel();
                     }
                     if(!_loc3_)
                     {
                        addr57:
                        break;
                     }
                     §§goto(addr70);
                  }
                  return;
               }
               §§goto(addr84);
            }
         }
         §§goto(addr57);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
      
      public function §=!2§() : String
      {
         return §[j§.§-!q§;
      }
      
      public function §@y§() : String
      {
         return §`B§.§-!q§;
      }
      
      public function §=!V§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §<f§(param1);
         }
      }
      
      public function get §@!R§() : §5!Y§
      {
         return §&" §;
      }
      
      public function §[H§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§@!R§.getNextLevelId());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr29:
                  §§push(§&" §.getValidLevelId(this.§@!R§.getNextLevelId()));
                  if(!_loc4_)
                  {
                     addr37:
                  }
                  addr42:
                  §§push(§§pop());
               }
               else
               {
                  §§push(null);
                  if(_loc3_)
                  {
                     §§goto(addr42);
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc3_ || _loc1_)
               {
                  §§push(!_loc1_);
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§pop();
                           addr145:
                           while(true)
                           {
                              §§push(§`!2§.§'!d§(_loc2_));
                              if(!(_loc4_ && _loc3_))
                              {
                                 continue loop0;
                              }
                              addr117:
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §<f§(§+A§.§-!q§);
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && _loc1_))
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §§goto(addr52);
                                 }
                                 §&" §.loadLevel(_loc2_);
                                 addr126:
                              }
                              §<f§(StateCutScene.§-!q§);
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr126);
                     }
                  }
               }
               addr52:
               return;
            }
            §§goto(addr37);
         }
         §§goto(addr29);
      }
   }
}
