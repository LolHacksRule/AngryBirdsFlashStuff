package §^#>§
{
   import § #§.§]p§;
   import §!!U§.Sprite;
   import §1!i§.§;7§;
   import §2"Y§.§"#`§;
   import §2"Y§.§,§;
   import §2d§.§;H§;
   import §69§.§!!u§;
   import §69§.§4!e§;
   import §7!F§.§+W§;
   import §7!F§.§1x§;
   import §7!F§.§7§;
   import §7P§.§;=§;
   import §7P§.§^!K§;
   import §9#@§.§1"6§;
   import §?m§.§+"2§;
   import §?m§.§8!B§;
   import §?m§.§=!z§;
   import §finally§.§<V§;
   import flash.display.Stage;
   
   public class §'6§ extends §;!;§
   {
      
      public static const §#!B§:§;7§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §#!B§ = new §;7§(8 - 3);
         }
      }
      
      protected var §<6§:§+W§;
      
      protected var §,"!§:§+W§;
      
      public function §'6§(param1:Stage, param2:§,#5§, param3:§!!u§, param4:§+"2§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §?!5§("Boss_TrenchRun",§]p§);
         }
         while(_loc6_ && param2);
         
      }
      
      override public function get damageScoreMultiplier() : int
      {
         return §'6§.§#!B§.getValue();
      }
      
      override protected function initializeLevelObjectManager(param1:§8!B§) : §;=§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:§1"6§ = null;
         §§push(§4!e§.§0!K§);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc6_ && this))
         {
            if(param1 is §=!z§)
            {
               if(_loc7_)
               {
                  §§push("");
                  if(!_loc6_)
                  {
                     _loc3_ = §§pop();
                     §§goto(addr73);
                  }
                  _loc4_ = §§pop();
               }
               addr73:
               if(!(_loc6_ && this))
               {
                  addr71:
                  §§push("");
               }
               if(_loc5_ = §1!C§ as §1"6§)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(_loc5_.§?c§);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && param1))
                        {
                           _loc3_ = §§pop();
                           §§push(_loc5_.§ "&§);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(§§pop());
                           }
                        }
                     }
                     _loc4_ = §§pop();
                  }
               }
               return this.initializeLevelObjectManagerBlack(param1,_loc2_,_loc3_,_loc4_);
            }
            return super.initializeLevelObjectManager(param1);
         }
         §§goto(addr71);
      }
      
      protected function initializeLevelObjectManagerBlack(param1:§8!B§, param2:String, param3:String = "", param4:String = "") : §^!K§
      {
         return new §^!K§(this,param1 as §=!z§,new Sprite(),param2,param3,param4);
      }
      
      override protected function initThemeGraphicsManager() : §1x§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§<V§));
         if(_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr65);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(_loc2_)
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr64);
               }
               addr52:
               if(!§§pop())
               {
                  addr64:
                  §§pop();
               }
               §§goto(addr65);
            }
            addr65:
            if(!_loc1_)
            {
               §§pop();
               addr44:
               §§push("");
            }
            return new §§pop().§<V§(§§pop(),"",§+!b§,§"#`§(§?4§));
         }
         §§goto(addr44);
      }
      
      override protected function initThemeSoundsManager() : §1x§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§<V§));
         if(!_loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc1_)
            {
               §§push(§§pop());
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr74);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(_loc1_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        addr73:
                        §§pop();
                     }
                     §§goto(addr74);
                  }
               }
               §§goto(addr73);
            }
            addr74:
            if(_loc1_ || _loc1_)
            {
               §§pop();
               addr48:
               §§push("");
            }
            return new §§pop().§<V§(§§pop(),"",§+!b§,§"#`§(§?4§),false);
         }
         §§goto(addr48);
      }
      
      override protected function initCutSceneManager() : §1x§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§<V§));
         if(_loc1_ || _loc2_)
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr74);
                  }
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        addr73:
                        §§pop();
                     }
                     §§goto(addr74);
                  }
               }
               §§goto(addr73);
            }
            addr74:
            if(!_loc2_)
            {
               §§pop();
               addr53:
               §§push("");
            }
            return new §§pop().§<V§(§§pop(),"",§+!b§,§"#`§(§?4§));
         }
         §§goto(addr53);
      }
      
      override protected function getThemeGraphicsLoadList(param1:String) : Array
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = super.getThemeGraphicsLoadList(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  _loc2_.push("THEME_COMMON");
               }
            }
         }
         return _loc2_;
      }
      
      override protected function initializeLevelSlingshot(param1:§8!B§) : §;x§
      {
         return new § !Y§(this,param1,new Sprite());
      }
      
      override public function get backgroundTextureManager() : §7#5§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§<6§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  this.§<6§ = new §+W§();
                  while(true)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        while(true)
                        {
                        }
                        addr107:
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(this.§<6§);
                           addr113:
                           while(true)
                           {
                              §§pop().reset();
                              addr114:
                              while(true)
                              {
                              }
                           }
                        }
                        addr111:
                     }
                     while(true)
                     {
                        §§push(this.§<6§);
                        continue loop0;
                     }
                     addr75:
                     loop5:
                     for(; _loc1_ || _loc1_; §§pop().§+#T§(super.textureManager),if(_loc2_ && _loc1_)
                     {
                        continue;
                     },if(_loc1_)
                     {
                        §§goto(addr61);
                     },§§goto(addr114))
                     {
                        §§push(this.§<6§);
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop5;
                           }
                           §§goto(addr113);
                           addr61:
                           §§push(this.§<6§);
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               §§goto(addr111);
            }
         }
         §§goto(addr107);
      }
      
      override public function get textureManager() : §7#5§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§,"!§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,"!§);
                     addr119:
                     while(true)
                     {
                        §§pop().reset();
                     }
                  }
                  addr117:
               }
               else
               {
                  this.§,"!§ = new §+W§();
                  while(true)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§,"!§);
                           addr69:
                           while(!(_loc1_ && this))
                           {
                              continue loop0;
                           }
                           addr120:
                           §§goto(addr119);
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  addr96:
               }
            }
         }
         §§goto(addr120);
      }
      
      override protected function getSpriteSheetGroup(param1:§;H§) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1.name);
         if(!_loc4_)
         {
            §§push(§§pop().toLowerCase());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop().indexOf("bird") >= 0);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr158:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr124:
                              while(true)
                              {
                                 §§push(§§pop().indexOf("pig") >= 0);
                              }
                           }
                        }
                        addr157:
                     }
                     while(true)
                     {
                        loop7:
                        for(; !§§pop(); while(true)
                        {
                           if(!(_loc3_ || this))
                           {
                              continue loop7;
                           }
                           if(_loc3_)
                           {
                              §§pop();
                              §§goto(addr121);
                           }
                           else
                           {
                              §§goto(addr157);
                           }
                        },§§goto(addr158))
                        {
                           loop8:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop9:
                              while(!_loc4_)
                              {
                                 §§push(§§pop().indexOf("blocks") >= 0);
                                 loop10:
                                 while(_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          while(§§pop())
                                          {
                                             if(!(_loc3_ || param1))
                                             {
                                                addr87:
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr96:
                                                      break;
                                                   }
                                                   break loop7;
                                                }
                                                addr121:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().indexOf("decorations") >= 0);
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§goto(addr57);
                                                         continue loop10;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop9;
                                                   §§goto(addr87);
                                                }
                                                continue loop0;
                                             }
                                             if(_loc3_)
                                             {
                                                break loop8;
                                             }
                                             if(!(_loc4_ && this))
                                             {
                                                continue loop8;
                                             }
                                             §§goto(addr158);
                                          }
                                          §§push(0);
                                          if(_loc3_ || this)
                                          {
                                             return §§pop();
                                          }
                                          addr69:
                                       }
                                       else
                                       {
                                          addr57:
                                       }
                                       continue loop7;
                                       if(!(_loc4_ && param1))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr131);
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr69);
                           §§push(2);
                        }
                        addr131:
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
   }
}
