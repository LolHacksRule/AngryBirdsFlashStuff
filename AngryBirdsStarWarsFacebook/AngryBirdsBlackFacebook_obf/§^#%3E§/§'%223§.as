package §^#>§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+!c§.§;!d§;
   import §2"Y§.§"t§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!F§.§8!W§;
   import §7P§.§]!-§;
   import com.angrybirds.§,!q§;
   
   public class §'"3§ extends §-y§
   {
      
      private static const §5#M§:Number = 10;
      
      public static const §6&§:Number = 1.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §5#M§ = 10;
         }
         do
         {
            §6&§ = 1;
         }
         while(_loc2_);
         
      }
      
      private var §!#Q§:Boolean = false;
      
      private var §?#%§:Boolean = false;
      
      private var §3#;§:Boolean = false;
      
      private var §+9§:§#"t§;
      
      private var §!P§:Sprite;
      
      private var §6"b§:Number = 0;
      
      private var §6"i§:Boolean = false;
      
      private var §@#,§:§[#R§ = null;
      
      private var §0!2§:Object;
      
      private var §=#"§:§;!d§;
      
      public function §'"3§(param1:§;x§, param2:Sprite, param3:String, param4:§"t§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc9_)
         {
            this.§0!2§ = new Object();
         }
         do
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
         }
         while(_loc9_);
         
      }
      
      public function get §!#?§() : Boolean
      {
         return this.§!#Q§;
      }
      
      public function get §="U§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§6"b§);
         if(!(_loc2_ && this))
         {
            §§push(Math.PI / 180);
            if(_loc1_ || _loc2_)
            {
               §§goto(addr69);
            }
            §§push(§§pop() - §§pop());
         }
         addr69:
         §§push(§§pop() * §§pop());
         if(!(_loc2_ && _loc2_))
         {
            return Math.PI / 2;
         }
      }
      
      public function get §[g§() : Boolean
      {
         return this.§?#%§;
      }
      
      public function §@#Y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc1_)
         {
            if(this.§!#Q§)
            {
               if(_loc4_)
               {
                  return;
               }
            }
            else
            {
               addr36:
               this.§!#Q§ = true;
            }
            var _loc1_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("LASERDROID_01");
            var _loc2_:§#"t§ = new §#"t§(_loc1_.texture);
            if(_loc4_ || _loc3_)
            {
               _loc2_.x = -_loc1_.pivotX;
               if(!_loc5_)
               {
                  _loc2_.y = -_loc1_.pivotY;
                  if(_loc4_ || this)
                  {
                     loop0:
                     while(true)
                     {
                        this.§!P§ = new Sprite();
                        while(true)
                        {
                           §§push(this.§!P§);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§pop().addChild(_loc2_);
                           if(!_loc5_)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                        }
                        addr118:
                        §§push(this.§!P§);
                        §§push(§15§.§ "e§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() / scale);
                        }
                        §§pop().scaleX = §§pop().scaleY = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           this.§6"b§ = §15§.§8!a§;
                           addr139:
                        }
                        §§goto(addr156);
                     }
                  }
                  §§goto(addr139);
                  addr115:
               }
               addr156:
               do
               {
                  sprite.addChild(this.§!P§);
                  do
                  {
                     this.§#6§();
                  }
                  while(_loc5_);
                  
               }
               while(_loc5_ && _loc2_);
               
               return;
            }
            §§goto(addr115);
         }
         §§goto(addr36);
      }
      
      private function §#6§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§="U§);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(Math.cos(_loc1_) * §15§.§[#F§);
         if(_loc5_)
         {
            §§push(§§pop() / §#_§.§8]§);
            if(_loc5_ || _loc3_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(Math.sin(_loc1_) * §15§.§[#F§);
            if(_loc5_ || this)
            {
               §§push(§§pop() / §#_§.§8]§);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            if(_loc5_)
            {
               §§push(this.§!P§);
               while(true)
               {
                  §§push(_loc2_);
                  loop1:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§!P§);
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              break;
                              addr110:
                           }
                           §§pop().y = §§pop();
                           while(!(_loc4_ && _loc2_))
                           {
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §#W§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(this.§?#%§)
            {
               if(!_loc8_)
               {
                  return;
               }
            }
         }
         this.§?#%§ = true;
         var _loc1_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("THERMAL_DETONATOR_01");
         if(!(_loc8_ && _loc2_))
         {
            this.§+9§ = new §#"t§(_loc1_.texture);
            if(!_loc8_)
            {
               §§push(this.§+9§);
               §§push(this.§+9§);
               §§push(§15§.§1E§);
               if(!(_loc8_ && _loc3_))
               {
                  §§push(§§pop() / scale);
               }
               §§pop().scaleX = §§pop().scaleY = §§pop();
            }
         }
         §§push(§15§.§]!4§);
         if(_loc7_ || this)
         {
            §§push(§§pop() * (Math.PI / 180));
            if(_loc7_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(§;B§.getItemWidth() * §;B§.scale);
         if(_loc7_)
         {
            §§push(§§pop() / §#_§.§8]§);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(Math.cos(_loc2_) * (_loc3_ + §15§.§]&§));
         if(!(_loc8_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(Math.sin(_loc2_) * (_loc3_ + §15§.§]&§));
         if(_loc7_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            §§push(this.§+9§);
            loop0:
            while(true)
            {
               §§push(_loc4_);
               addr230:
               while(true)
               {
                  §§push(_loc1_.pivotX);
                  addr232:
                  while(true)
                  {
                     §§push(this.§+9§);
                     addr234:
                     while(true)
                     {
                        §§push(§§pop() * §§pop().scaleX);
                        addr236:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr237:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      public function §3i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6"i§ = true;
            loop0:
            while(!this.§=#"§)
            {
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  this.§=#"§ = new §;!d§(§15§.§1!6§);
                  while(true)
                  {
                     sprite.addChildAt(this.§=#"§,0);
                     while(_loc2_ || _loc2_)
                     {
                        if(!_loc1_)
                        {
                           this.§6"N§();
                           if(!(_loc1_ && _loc1_))
                           {
                              break loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr88);
      }
      
      public function §#">§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§3#;§ = true;
            loop0:
            while(§?!%§)
            {
               if(_loc2_)
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  §§push(this.§=#"§);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr97:
                        while(true)
                        {
                           this.§=#"§ = new §;!d§();
                           addr101:
                           loop5:
                           while(true)
                           {
                              sprite.addChildAt(this.§=#"§,0);
                              loop6:
                              while(true)
                              {
                                 this.§6"N§();
                                 addr55:
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        addr97:
                     }
                     while(true)
                     {
                        §§push(this.§=#"§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop().§^"G§(§15§.§!![§);
                        if(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              break loop0;
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr55);
                     }
                  }
               }
               §§goto(addr97);
            }
            return;
         }
         §§goto(addr101);
      }
      
      private function §6"N§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(mName.indexOf(§]!-§.§+"§) != -1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§=#"§.scaleX = this.§=#"§.scaleY = §]!-§.§0!;§;
                  addr46:
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      override public function setOnSlingshot(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setOnSlingshot(param1);
            loop0:
            while(this.§3#;§)
            {
               loop1:
               while(!§?!%§)
               {
                  sprite.removeChild(this.§=#"§);
                  while(true)
                  {
                     if(_loc3_)
                     {
                        break loop1;
                     }
                     if(_loc2_)
                     {
                        continue;
                     }
                     continue loop1;
                  }
                  break loop0;
               }
               this.§#">§();
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr72);
      }
      
      override public function fallFromSlingshot() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§3#;§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr93:
                        while(true)
                        {
                           §§push(Boolean(this.§=#"§));
                           if(_loc1_)
                           {
                              break;
                           }
                           if(_loc1_ && _loc1_)
                           {
                              continue loop1;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        sprite.removeChild(this.§=#"§);
                     }
                     loop5:
                     while(!_loc1_)
                     {
                        while(true)
                        {
                           this.§=#"§ = null;
                           if(!(_loc1_ && this))
                           {
                              break loop4;
                           }
                           continue loop5;
                        }
                     }
                     §§goto(addr93);
                  }
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get § !c§() : Boolean
      {
         return this.§6"i§;
      }
      
      public function get §^"x§() : Boolean
      {
         return this.§3#;§;
      }
      
      public function §^w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§!#?§);
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     sprite.removeChild(this.§!P§);
                     while(true)
                     {
                        this.§!P§ = null;
                        while(!_loc1_)
                        {
                           if(!(_loc2_ || this))
                           {
                              continue loop1;
                           }
                           this.§!#Q§ = false;
                           while(true)
                           {
                              addr49:
                              if(!(_loc1_ && this))
                              {
                                 §§goto(addr25);
                              }
                           }
                           loop7:
                           while(_loc2_ || _loc2_)
                           {
                              this.§+9§ = null;
                              do
                              {
                                 this.§?#%§ = false;
                              }
                              while(!(_loc2_ || this));
                              
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              if(!_loc1_)
                              {
                                 §§goto(addr49);
                              }
                              while(true)
                              {
                                 sprite.removeChild(this.§+9§);
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§[g§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     §§goto(addr78);
                  }
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §1V§(param1:Number, param2:Number, param3:Boolean = true) : §[#R§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §&#O§ = false;
            loop0:
            while(true)
            {
               §#"=§ = false;
               while(true)
               {
                  §@§ = -1;
                  loop2:
                  while(!(_loc5_ && param2))
                  {
                     while(true)
                     {
                        this.§0!2§.x = §8!+§;
                        loop4:
                        while(true)
                        {
                           this.§0!2§.y = §=!Z§;
                           loop5:
                           while(true)
                           {
                              this.§0!2§.rotation = §<#W§;
                              loop6:
                              while(true)
                              {
                                 if(!param3)
                                 {
                                    this.§@#,§ = §-#C§.§%!E§.§^!H§(null,null,null,§6&§);
                                    loop7:
                                    while(true)
                                    {
                                       addr57:
                                       while(true)
                                       {
                                          §§push(this.§@#,§);
                                          while(true)
                                          {
                                             §§pop().play();
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop7;
                                                }
                                                if(_loc4_ || param2)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(this.§@#,§);
                                                         while(true)
                                                         {
                                                            §§pop().onComplete = this.§9]§;
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             continue loop2;
                                          }
                                          return §§pop();
                                       }
                                       continue loop6;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       this.§@#,§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§0!2§,{
                                          "x":param1,
                                          "rotation":-360
                                       },null,§6&§),§-#C§.§%!E§.§'#T§(§-#C§.§%!E§.§^!H§(this.§0!2§,{"y":this.§0!2§.y - §5#M§},null,§6&§ / 2,§-#C§.§]"0§),§-#C§.§%!E§.§^!H§(this.§0!2§,{"y":param2},{"y":this.§0!2§.y - §5#M§},§6&§ / 2,§-#C§.§#t§)));
                                       continue loop6;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr208);
      }
      
      private function §9]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@#,§ = null;
            loop0:
            while(true)
            {
               §<#W§ = this.§0!2§.rotation;
               addr99:
               while(true)
               {
                  setPosition(this.§0!2§.x,this.§0!2§.y);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §#"=§ = false;
            while(true)
            {
               §&#O§ = true;
               while(_loc1_ || _loc1_)
               {
                  §@§ = -1;
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr29);
               }
            }
         }
         §§goto(addr38);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§@#,§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  super.update(param1,param2,param3);
                  loop1:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§=#"§);
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       if(_loc4_)
                                       {
                                          addr40:
                                          this.§=#"§.update(param1);
                                          addr42:
                                          if(!_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          if(!(_loc4_ || param1))
                                          {
                                             continue loop0;
                                          }
                                          if(!_loc5_)
                                          {
                                             §§goto(addr19);
                                          }
                                          else
                                          {
                                             addr112:
                                          }
                                          while(true)
                                          {
                                             §<#W§ = this.§0!2§.rotation;
                                          }
                                       }
                                       while(true)
                                       {
                                          setPosition(this.§0!2§.x,this.§0!2§.y);
                                          addr97:
                                          while(true)
                                          {
                                             this.updateRenderer();
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr42);
                                 }
                                 addr19:
                                 return;
                              }
                              §§goto(addr40);
                              addr83:
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop0;
                           addr23:
                        }
                        §§goto(addr97);
                     }
                     else
                     {
                        §§goto(addr83);
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      override public function updateRenderer() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.updateRenderer();
            while(this.§!#Q§)
            {
               if(!(_loc1_ && this))
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  this.§#6§();
               }
               break;
            }
            return;
         }
         §§goto(addr62);
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§@#,§ != null)
            {
               if(_loc2_ || this)
               {
                  §§goto(addr49);
               }
            }
            return super.applyGravity(param1);
         }
         addr49:
         return false;
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§@#,§ != null)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr71);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr38);
                  }
               }
            }
            addr38:
            while(true)
            {
               super.updateGroundControl(param1);
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr71:
      }
   }
}
