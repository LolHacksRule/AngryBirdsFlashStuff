package §`a§
{
   import §-!0§.§2! §;
   import §<!<§.§7E§;
   
   public class §,!-§ extends § !U§
   {
      
      public static const §<!,§:int = 6;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §<!,§ = 6;
         }
      }
      
      private var §+V§:Number = 0;
      
      private var §'6§:Number = 0;
      
      private var §=[§:Number = 0;
      
      private var §"!r§:Number = 0;
      
      private var §%!R§:§&W§;
      
      private var §@!K§:Boolean = false;
      
      public function §,!-§(param1:§7E§, param2:§2! §)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§%!R§ = new §&W§(0,0,1,false);
            if(!(_loc3_ && this))
            {
               super(param1,param2);
            }
         }
      }
      
      public function get §2!r§() : Number
      {
         return this.§+V§;
      }
      
      public function get §<8§() : Number
      {
         return this.§'6§;
      }
      
      public function get §^$§() : Number
      {
         return this.§=[§;
      }
      
      public function get §,!_§() : Number
      {
         return this.§"!r§;
      }
      
      public function get §"b§() : Number
      {
         return this.§%!R§.x;
      }
      
      public function get §1!@§() : Number
      {
         return this.§%!R§.y;
      }
      
      public function set §"b§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!R§.x = param1;
         }
      }
      
      public function set §1!@§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%!R§.y = param1;
         }
      }
      
      public function set xCenterB2(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §^T§ = param1;
         }
      }
      
      public function get xCenterB2() : Number
      {
         return §^T§;
      }
      
      public function set yCenterB2(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §<9§ = param1;
         }
      }
      
      public function get yCenterB2() : Number
      {
         return §<9§;
      }
      
      public function §-#§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§@!K§ = true;
         }
         §§push(this.§%!R§);
         if(!(_loc6_ && this))
         {
            §§pop().x = §^T§;
            §§push(this.§%!R§);
            if(_loc5_ || this)
            {
               addr51:
               §§pop().y = §<9§;
               if(_loc5_)
               {
                  this.§+V§ = param1;
               }
               this.§'6§ = param3;
               if(_loc5_ || param2)
               {
                  this.§=[§ = param2;
                  if(_loc5_)
                  {
                     this.§"!r§ = param4;
                     if(_loc5_)
                     {
                        addr90:
                        this.§%!R§.scale = §?C§;
                        addr88:
                     }
                  }
                  return;
               }
               §§goto(addr88);
            }
            §§goto(addr90);
         }
         §§goto(addr51);
      }
      
      override protected function updateCameraLocations() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc1_)
         {
            super.updateCameraLocations();
            if(_loc5_)
            {
               §§push(this.§%!R§);
               if(!_loc6_)
               {
                  §§pop().scale = §"Y§;
                  if(_loc5_)
                  {
                     addr35:
                     §§push(SCREEN_WIDTH_B2 / this.§%!R§.scale);
                     if(!_loc6_)
                     {
                        §§push(this.§'6§);
                        if(_loc5_ || _loc1_)
                        {
                           §§push(§§pop() - this.§+V§);
                        }
                        if(§§pop() > §§pop())
                        {
                           if(_loc5_ || _loc1_)
                           {
                              §§push(this.§%!R§);
                              if(_loc5_ || this)
                              {
                                 addr71:
                                 §§push(SCREEN_WIDTH_B2 / (this.§'6§ - this.§+V§));
                                 if(_loc5_ || _loc1_)
                                 {
                                    §§pop().scale = §§pop();
                                    if(_loc5_)
                                    {
                                       addr88:
                                       §§push(this.§%!R§);
                                       if(_loc5_)
                                       {
                                          addr92:
                                          §§push(this.§%!R§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(§§pop().scale < §-`§);
                                             if(!_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(Number(§-`§));
                                                      if(!_loc6_)
                                                      {
                                                         addr143:
                                                         §§pop().scale = §§pop();
                                                         §§push(this.§%!R§);
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   addr146:
                                                   §§push(§§pop().x - SCREEN_WIDTH_B2 * 0.5 / this.§%!R§.scale);
                                                   if(!_loc6_)
                                                   {
                                                      addr157:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc1_:* = §§pop();
                                                   if(!(_loc6_ && _loc1_))
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(§§pop() < this.§+V§)
                                                         {
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               §§push(this.§%!R§);
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  §§pop().y = this.§%!R§.y + (this.§+V§ - _loc1_);
                                                                  addr212:
                                                                  §§push(this.§%!R§);
                                                               }
                                                               §§push(Number(§§pop().x + SCREEN_WIDTH_B2 * 0.5 / this.§%!R§.scale));
                                                            }
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      var _loc2_:* = §§pop();
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc5_ || this)
                                                         {
                                                            if(§§pop() > this.§'6§)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(this.§%!R§);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§pop().x = this.§%!R§.x + (this.§'6§ - _loc2_);
                                                                     addr268:
                                                                     §§push(this.§%!R§);
                                                                  }
                                                                  §§push(§§pop().y - SCREEN_HEIGHT_B2 * 0.5 / this.§%!R§.scale);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         var _loc3_:* = §§pop();
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§push(this.§=[§);
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr350:
                                                                        §§push(this.§%!R§);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§pop().y = this.§%!R§.y + (this.§=[§ - _loc3_);
                                                                           addr328:
                                                                           §§push(this.§%!R§);
                                                                        }
                                                                        §§push(Number(§§pop().y + SCREEN_HEIGHT_B2 * 0.5 / this.§%!R§.scale));
                                                                        §§push(Number(§§pop().y + SCREEN_HEIGHT_B2 * 0.5 / this.§%!R§.scale));
                                                                     }
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               var _loc4_:* = §§pop();
                                                               if(§§pop() > this.§"!r§)
                                                               {
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     this.§%!R§.y += this.§"!r§ - _loc4_;
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr350);
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      §§goto(addr268);
                                                   }
                                                   §§goto(addr212);
                                                }
                                                else
                                                {
                                                   §§push(this.§%!R§);
                                                   if(!(_loc6_ && _loc1_))
                                                   {
                                                      addr126:
                                                      if(§§pop().scale > §0u§)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr129:
                                                            §§push(Number(§0u§));
                                                            if(_loc6_ && this)
                                                            {
                                                            }
                                                            §§goto(addr143);
                                                         }
                                                         §§goto(addr146);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§%!R§);
                                                      }
                                                   }
                                                   §§goto(addr143);
                                                   §§push(Number(§§pop().scale));
                                                }
                                                §§goto(addr143);
                                             }
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr129);
                                    }
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr143);
               }
               §§goto(addr71);
            }
            §§goto(addr88);
         }
         §§goto(addr35);
      }
      
      override protected function moveCameraTowardsTarget(param1:§9!2§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(this.§@!K§)
         {
            if(_loc4_)
            {
               §§push(this.§%!R§);
               if(_loc4_ || param2)
               {
                  §§push(param1.x);
                  if(_loc4_)
                  {
                     §§pop().x = §§pop();
                     addr36:
                     §§push(this.§%!R§);
                     if(!(_loc3_ && this))
                     {
                        §§push(param1.y);
                        if(!(_loc3_ && this))
                        {
                           §§pop().y = §§pop();
                           §"Y§ = param1.scale;
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr88);
                  }
                  §§pop().scale = §§pop();
                  if(_loc3_ && param1)
                  {
                  }
                  §§goto(addr103);
               }
               §§goto(addr88);
            }
            §§goto(addr36);
         }
         else
         {
            super.moveCameraTowardsTarget(param1,param2);
         }
         addr103:
         if(!(_loc3_ && this))
         {
            addr88:
            §§push(this.§%!R§);
            §§push(param1.scale);
         }
      }
      
      override protected function updateCameraSliderNoBird(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(this.§@!K§)
            {
               if(!§5u§)
               {
                  param2 = 1;
               }
               §^T§ -= (§^T§ - this.§%!R§.x) * param2;
               if(!(_loc3_ && param1))
               {
                  §<9§ -= (§<9§ - this.§%!R§.y) * param2;
                  addr81:
                  §?C§ -= (§?C§ - this.§%!R§.scale) * param2;
               }
            }
            else
            {
               super.updateCameraSliderNoBird(param1,param2);
            }
            return;
         }
         §§goto(addr81);
      }
      
      override protected function updateCameraActions(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(mCurrentAction == §<!,§)
            {
               if(!(_loc2_ && this))
               {
                  this.§7!5§(param1);
                  if(!_loc2_)
                  {
                     addr44:
                  }
               }
               §§goto(addr44);
            }
            else
            {
               super.updateCameraActions(param1);
            }
            return;
         }
         §§goto(addr44);
      }
      
      override protected function setDraggingAction() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§@!K§)
            {
               if(!_loc2_)
               {
                  §'!6§(§<!,§);
                  if(!_loc1_)
                  {
                  }
               }
            }
            else
            {
               super.setDraggingAction();
            }
         }
      }
      
      override protected function isDragging() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(super.isDragging());
            if(!(_loc2_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(_loc1_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc1_)
                     {
                        addr54:
                        §§pop();
                        §§push(mCurrentAction == set);
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr54);
      }
      
      public function §7!5§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%!R§);
            if(!_loc2_)
            {
               §§push(this.§%!R§);
               if(_loc3_)
               {
                  §§pop().x = §§pop().x + (§[!r§ - §0!G§) * §7E§.§8!'§;
                  if(!(_loc2_ && param1))
                  {
                     addr67:
                     this.§%!R§.y += (§%#§ - §2!,§) * §7E§.§8!'§;
                     if(!(_loc2_ && _loc2_))
                     {
                        §[!r§ = §0!G§;
                        if(_loc2_)
                        {
                        }
                        §§goto(addr91);
                     }
                  }
                  §%#§ = §2!,§;
                  §§goto(addr91);
               }
            }
            §§goto(addr67);
         }
         addr91:
      }
      
      override protected function manualScaleChanged() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§@!K§)
            {
               if(!_loc1_)
               {
                  §'!6§(§<!,§);
                  if(_loc2_)
                  {
                     addr44:
                  }
               }
            }
            else
            {
               super.manualScaleChanged();
            }
            return;
         }
         §§goto(addr44);
      }
   }
}
