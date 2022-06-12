package §9"!§
{
   import §#!e§.§1"B§;
   import §'6§.§"]§;
   import §1!$§.Sprite;
   import §3!7§.§#A§;
   import §3!7§.§>,§;
   import §3![§.§5!@§;
   import §6!D§.§0Y§;
   import §6!D§.§7"?§;
   import §6!D§.§;";§;
   import §6!D§.§[t§;
   import §9"%§.§1!Q§;
   import §9"%§.§]a§;
   import §]!4§.§^!f§;
   import §]!A§.;
   import §^j§.§7>§;
   import §`!W§.§[!x§;
   import §`!W§.§]!G§;
   import flash.display.Stage;
   
   public class §2K§ extends §9"3§
   {
       
      
      private var §^!w§:Stage;
      
      private var §"!<§:§#A§;
      
      private var §+"3§:Array;
      
      public function §2K§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!w§ = param1;
         }
         do
         {
            super(param1);
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function §[v§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§+"3§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§+"3§);
                  }
                  else
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            return §§pop().concat();
         }
         addr49:
         return null;
      }
      
      public function §0h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (§5^§ as §>"7§).§?!k§ = param1;
         }
      }
      
      public function §[^§() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§+"3§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr87:
                        while(true)
                        {
                           §§push(int(§§pop() - 1));
                        }
                     }
                     while(true)
                     {
                        if(_loc3_)
                        {
                           _loc1_ = §§pop();
                           break;
                        }
                     }
                     addr92:
                     while(true)
                     {
                        continue loop3;
                     }
                  }
                  return §§pop();
                  addr27:
               }
               if(_loc3_)
               {
                  §§push(this.§+"3§);
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop().length));
                     addr103:
                     while(true)
                     {
                        §§push((§#6§.§6!z§ as §2K§).§[v§());
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr103);
               while(true)
               {
                  _loc1_ = §§pop();
               }
            }
         }
         §§goto(addr103);
      }
      
      override public function addItemsToDisplayList() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§[!x§.§50§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §6!§(§4J§.backgroundLayersSprite,false);
                     addr193:
                     while(true)
                     {
                     }
                  }
                  addr188:
               }
               while(true)
               {
                  §6!§(§3">§.getGroupSprite(§^!f§.§6d§),false);
                  loop4:
                  while(true)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §6!§(§3">§.getGroupSprite(§^!f§.§?i§),true);
                        while(true)
                        {
                           §6!§((§%!O§ as §1!Q§).§;'§,true);
                           while(true)
                           {
                              §6!§(§3">§.getGroupSprite(§^!f§.§4N§),true);
                              loop8:
                              while(!(_loc1_ && _loc2_))
                              {
                                 §6!§(§5^§.sprite,true);
                                 loop9:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop8;
                                    }
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    §6!§(§3">§.getGroupSprite(§^!f§.§>"F§),true);
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          break loop4;
                                       }
                                       §6!§(§4J§.groundSprite,false);
                                       continue loop0;
                                       addr55:
                                       if(_loc2_ || _loc1_)
                                       {
                                          continue loop9;
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr188);
                     }
                  }
                  §§goto(addr193);
               }
            }
         }
         §§goto(addr140);
      }
      
      public function §6!f§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+"3§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(!(_loc3_ && param1))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr49:
                     return this.§+"3§.indexOf(param1) >= 0;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr49);
      }
      
      public function § !2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§+"3§);
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     while(true)
                     {
                        this.§+"3§ = [];
                     }
                     addr69:
                  }
                  while(true)
                  {
                     addr49:
                     §§pop().push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§+"3§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr49);
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function init(param1:§1"B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.init(param1);
            do
            {
               this.§+"3§ = [];
               do
               {
                  this.§"!<§ = new §#A§();
               }
               while(!(_loc2_ || _loc3_));
               
            }
            while(_loc3_);
            
         }
      }
      
      override public function setController(param1:§5!@§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setController(param1);
         }
         while(param1 is §7>§)
         {
            if(_loc2_)
            {
               this.§"!<§.setController(param1 as §7>§);
            }
            if(!(_loc3_ && _loc2_))
            {
               break;
            }
         }
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.clearLevel();
         }
         do
         {
            §§push(this.§"!<§);
            if(!(_loc1_ && this))
            {
               if(!§§pop())
               {
                  break;
               }
               if(!_loc2_)
               {
                  continue;
               }
               §§push(this.§"!<§);
            }
            §§pop().dispose();
         }
         while(do
         {
            this.§"!<§ = null;
         }
         while(_loc1_);
         , !_loc2_);
         
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§"!<§.run(param1);
         }
         return super.updateWithTime(param1,param2,param3,param4);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.handleEngineUpdateStep(param1);
         }
         do
         {
            this.§"!<§.§2c§(param1);
         }
         while(_loc3_ && _loc2_);
         
      }
      
      override protected function initThemeGraphicsManager() : §;";§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§;";§));
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§^!w§.loaderInfo.parameters.assetsUrl);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr64:
                        §§pop();
                        addr66:
                        §§push("");
                        §§push(this.§^!w§.loaderInfo.parameters.buildNumber);
                        if(_loc2_)
                        {
                           return new §§pop().§;";§(§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr66);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr64);
      }
      
      override protected function initThemeSoundsManager() : §;";§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§;";§));
         if(_loc2_ || this)
         {
            §§push(this.§^!w§.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc2_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr92);
                  }
                  §§push(this.§^!w§.loaderInfo.parameters.buildNumber);
                  if(_loc2_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        addr91:
                        §§pop();
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr91);
            }
            addr92:
            if(!(_loc1_ && this))
            {
               §§pop();
               addr75:
               §§push("");
            }
            return new §§pop().§;";§(§§pop(),"",false);
         }
         §§goto(addr75);
      }
      
      override protected function initCutSceneManager() : §;";§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§;";§));
         if(!_loc1_)
         {
            §§push(this.§^!w§.loaderInfo.parameters.assetsUrl);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(!(_loc1_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr82);
                  }
                  §§push(this.§^!w§.loaderInfo.parameters.buildNumber);
                  if(_loc2_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        addr81:
                        §§pop();
                     }
                     §§goto(addr82);
                  }
               }
               §§goto(addr81);
            }
            addr82:
            if(_loc2_ || this)
            {
               §§pop();
               addr65:
               §§push("");
            }
            return new §§pop().§;";§(§§pop(),"");
         }
         §§goto(addr65);
      }
      
      override public function get backgroundTextureManager() : §0Y§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§3<§)
            {
               if(_loc2_)
               {
                  §§goto(addr28);
               }
            }
            return null;
         }
         addr28:
         return §3<§.textureManager;
      }
      
      override protected function initAnimationManager(param1:§0Y§) : §[t§
      {
         return new §7"?§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§0Y§, param4:Number) : §[!x§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param1 == "BACKGROUND_FB_MOUNTAINS");
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr90:
                     do
                     {
                        §§push(§"]§.§4"!§);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc5_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc6_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc5_ && this)
                  {
                     addr83:
                     break;
                  }
                  if(_loc6_ || param3)
                  {
                     return new §]!G§(param1,param2,param3,param4);
                  }
                  §§goto(addr90);
               }
               return new §[!x§(param1,param2,param3,param4);
            }
         }
         §§goto(addr83);
      }
      
      override protected function initLevelSlingshot(param1:§1"B§) : §2a§
      {
         return new §>"7§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§1"B§) : §]a§
      {
         return new §1!Q§(this,param1,new Sprite());
      }
      
      public function get §-"#§() : §#A§
      {
         return this.§"!<§;
      }
   }
}
