package §4!<§
{
   import §!!=§.§"l§;
   import §!!=§.§=H§;
   import §"a§.§!"J§;
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.Sprite;
   import §-"N§.§3!K§;
   import §-"N§.§4!W§;
   import §-p§.§7"4§;
   import §-r§.§!"M§;
   import §9!n§.§0"T§;
   import §<T§.§""#§;
   import §<T§.§#!2§;
   import §<T§.§'!O§;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §^"F§.§4!2§;
   import §^"F§.§?G§;
   import §`!G§.§8"=§;
   import §`!G§.§]"'§;
   import flash.display.Stage;
   
   public class §%6§ extends §'!S§
   {
       
      
      private var §,">§:Stage;
      
      private var §>!p§:§?G§;
      
      private var §+!J§:Array;
      
      public function §%6§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§,">§ = param1;
            do
            {
               super(param1);
            }
            while(_loc3_);
            
         }
      }
      
      public function §'!>§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§+!J§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr42);
                  }
               }
               return null;
            }
            §§goto(addr42);
         }
         addr42:
         return this.§+!J§.concat();
      }
      
      public function §1"R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§`"G§ as §3+§).§""M§ = false;
         }
      }
      
      public function §4!]§() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(!(_loc2_ && this))
         {
            §§push(this.§+!J§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§+!J§);
                     loop2:
                     while(true)
                     {
                        §§push(int(§§pop().length));
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr113:
                           while(true)
                           {
                              §§push((§?l§.§'h§ as §%6§).§'!>§());
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              if(§§pop().indexOf(§4!2§.§-Y§.§1!#§) != -1)
                              {
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 addr104:
                                 addr97:
                                 while(_loc2_ && this)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr96);
                  §§goto(addr104);
               }
               return §§pop();
            }
         }
         §§goto(addr113);
      }
      
      override public function addItemsToDisplayList() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§3!K§.§'A§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §<!A§(§#"O§.backgroundLayersSprite,false);
                     addr229:
                     while(true)
                     {
                     }
                  }
                  addr224:
               }
               while(true)
               {
                  this.§1"R§();
                  loop4:
                  while(true)
                  {
                     §<!A§(§6&§.getGroupSprite(§6!O§.§`U§),false);
                     loop5:
                     while(true)
                     {
                        §<!A§(§6&§.getGroupSprite(§6!O§.§-4§),true);
                        loop6:
                        while(true)
                        {
                           §<!A§((§'H§ as §]"'§).§!!Z§,true);
                           loop7:
                           while(true)
                           {
                              §<!A§(§6&§.getGroupSprite(§6!O§.PARTICLE_GROUP_BACKGROUND_EFFECTS),true);
                              while(true)
                              {
                                 §<!A§(§'H§.mainSprite,true);
                                 addr108:
                                 while(true)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       addr47:
                                       break;
                                       addr50:
                                    }
                                    while(true)
                                    {
                                       §<!A§(§6&§.getGroupSprite(§6!O§.§;m§),true);
                                       continue loop7;
                                    }
                                    if(_loc1_)
                                    {
                                       return;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       if(_loc1_ || this)
                                       {
                                          continue loop5;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §<!A§(§6&§.getGroupSprite(§6!O§.PARTICLE_GROUP_GAME_EFFECTS),true);
                                             while(!_loc2_)
                                             {
                                                §<!A§(§#"O§.groundSprite,false);
                                                continue loop12;
                                             }
                                             §§goto(addr229);
                                             addr152:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §<!A§(§`"G§.sprite,true);
                                                continue loop10;
                                             }
                                             addr170:
                                          }
                                       }
                                    }
                                    continue loop5;
                                    addr38:
                                    if(_loc2_ && this)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       continue loop6;
                                       addr84:
                                    }
                                    §§goto(addr47);
                                    §§goto(addr152);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§push(§3!K§.§'A§);
               if(_loc2_ && this)
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr84);
               }
               §§goto(addr50);
            }
         }
         §§goto(addr170);
      }
      
      public function §"!A§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§+!J§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     addr56:
                     §§push(false);
                     if(!(_loc2_ && _loc3_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr65:
                     return this.§+!J§.indexOf(param1) >= 0;
                  }
                  return §§pop();
               }
            }
            §§goto(addr65);
         }
         §§goto(addr56);
      }
      
      public function usePowerup(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§+!J§);
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     this.§+!J§ = [];
                     addr57:
                     while(true)
                     {
                     }
                     addr57:
                  }
                  §§goto(addr57);
               }
               while(true)
               {
                  §§push(this.§+!J§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(_loc3_ || this)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function init(param1:§0"T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.init(param1);
         }
         do
         {
            this.§+!J§ = [];
            do
            {
               this.§>!p§ = new §?G§();
            }
            while(!_loc2_);
            
         }
         while(_loc3_ && param1);
         
      }
      
      override public function setController(param1:§7"4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setController(param1);
            while(param1 is §!"M§)
            {
               if(_loc3_)
               {
                  this.§>!p§.setController(param1 as §!"M§);
               }
               if(!_loc2_)
               {
                  addr49:
                  break;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clearLevel();
            loop0:
            do
            {
               §§push(this.§>!p§);
               if(!(_loc1_ && this))
               {
                  if(!§§pop())
                  {
                     §§goto(addr30);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§>!p§);
                     addr68:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§>!p§ = null;
                        }
                        while(_loc1_);
                        
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr68);
            }
            while(!_loc2_);
            
         }
         addr30:
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§>!p§.run(param1);
         }
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.handleEngineUpdateStep(param1);
            do
            {
               this.§>!p§.§1"V§(param1);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      override protected function initThemeGraphicsManager() : §""#§
      {
         return new §'!O§(this.§,">§.loaderInfo.parameters.assetsRoot,this.§,">§.loaderInfo.parameters.assetsUrl || "",this.§,">§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : §""#§
      {
         return new §'!O§(this.§,">§.loaderInfo.parameters.assetsRoot,this.§,">§.loaderInfo.parameters.assetsUrl || "",this.§,">§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : §""#§
      {
         return new §'!O§(this.§,">§.loaderInfo.parameters.assetsRoot,this.§,">§.loaderInfo.parameters.assetsUrl || "",this.§,">§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : §`m§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§]"8§)
            {
               if(!_loc2_)
               {
                  return §]"8§.textureManager;
               }
            }
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§`m§) : §^!Y§
      {
         return new §#!2§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§`m§, param4:Number) : §3!K§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param1 == "BACKGROUND_FB_MOUNTAINS");
            if(_loc5_ || param2)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr104:
                     loop2:
                     while(true)
                     {
                        §§push(§!"J§.§!X§);
                        if(_loc5_ || this)
                        {
                           §§push(!§§pop());
                        }
                        if(!(_loc6_ && param2))
                        {
                           while(§§pop())
                           {
                              if(!(_loc5_ || param1))
                              {
                                 break;
                              }
                              if(!(_loc6_ && this))
                              {
                                 return new §4!W§(param1,param2,param3,param4);
                              }
                              continue loop2;
                           }
                           return new §3!K§(param1,param2,param3,param4);
                           addr57:
                        }
                     }
                  }
                  addr103:
               }
               §§goto(addr57);
            }
            §§goto(addr103);
         }
         §§goto(addr104);
      }
      
      override protected function initLevelSlingshot(param1:§0"T§) : §&=§
      {
         return new §3+§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§0"T§) : §8"=§
      {
         return new §]"'§(this,param1,new Sprite());
      }
      
      override protected function initParticleManager(param1:§^!Y§, param2:§`m§) : §6!O§
      {
         return new §="@§(param1,param2);
      }
      
      public function get §+"3§() : §?G§
      {
         return this.§>!p§;
      }
      
      override protected function initLevelCamera(param1:§0"T§) : §"l§
      {
         return new §=H§(this,param1);
      }
   }
}
