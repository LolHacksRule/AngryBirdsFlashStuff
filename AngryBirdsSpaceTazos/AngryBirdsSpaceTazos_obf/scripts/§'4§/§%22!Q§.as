package §'4§
{
   import §"!&§.§+W§;
   import §"!&§.§8X§;
   import §"!&§.§]!C§;
   import §,"&§.§9q§;
   import §1"H§.§=!3§;
   import §7!8§.Sprite;
   import §9!w§.§9!,§;
   import §]">§.§!!r§;
   import §]">§.§-%§;
   import §]">§.§1!f§;
   import §`!j§.§#b§;
   import flash.geom.Point;
   
   public class §"!Q§ extends §;!g§
   {
       
      
      private var §7!h§:§+W§;
      
      private var §[c§:§=!3§;
      
      private var §5"§:§-T§;
      
      private var §var §:§-T§;
      
      public function §"!Q§(param1:§^g§, param2:§#b§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override protected function initializeSlingshotObject(param1:§8X§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §-T§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:String = null;
         if(!(_loc7_ && param2))
         {
            if(!(param1 is §+W§))
            {
               return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
            }
            while(true)
            {
               this.§7!h§ = param1 as §+W§;
               addr92:
               if(!(_loc8_ || param3))
               {
                  continue;
               }
               return new §1!f§(this,param5,param1.itemName,param1 as §+W§,param2,param3,param4);
               addr99:
            }
            addr122:
         }
         while(true)
         {
            §§push(this.§7!h§);
            while(true)
            {
               _loc6_ = §§pop().getSound("activate");
               while(true)
               {
                  §§push(this.§7!h§);
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§pop().playSoundLua(_loc6_);
                  if(!(_loc8_ || param3))
                  {
                     continue;
                  }
                  §§goto(addr92);
               }
            }
            §§goto(addr122);
         }
         §§goto(addr99);
      }
      
      public function § "C§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§[c§ = §=!3§(§?>§.levelObjects.addObject(§=!3§.§!!p§,x / §^g§.§5!-§,y / §^g§.§5!-§,0,§-%§.§;!J§));
            while(true)
            {
               §§push(§9q§.§>!L§);
               loop1:
               while(true)
               {
                  §§push(§§pop().camera);
                  addr128:
                  while(true)
                  {
                     §§pop().§^!P§(§9!,§.§7"9§);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.shootCurrentBird(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§var § = null;
            while(true)
            {
               §§push(this.§[c§);
               if(!_loc3_)
               {
                  if(!§§pop())
                  {
                     return;
                  }
                  loop2:
                  while(_loc4_)
                  {
                     if(_loc4_)
                     {
                        §§push(this.§[c§);
                        while(true)
                        {
                           §§pop().dispose();
                           do
                           {
                              this.§[c§ = null;
                           }
                           while(_loc3_);
                           
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  continue;
               }
               §§goto(addr60);
            }
         }
      }
      
      override public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§var §);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr48);
                  }
                  §§goto(addr76);
               }
               §§goto(addr78);
            }
            addr48:
            §§push((this.§var § as §1!f§).§%">§());
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr76:
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr78);
                  }
               }
               addr78:
               return super.canStartDragging(param1);
            }
            return §§pop();
         }
         §§goto(addr76);
      }
      
      override protected function playStretchSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7!h§.playSoundLua("slingshot_stretched");
         }
      }
      
      override protected function playBirdShotSound() : void
      {
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.update(param1,param2);
         }
         while(true)
         {
            §§push(this.§[c§);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§[c§);
                        break;
                     }
                     continue;
                  }
                  addr87:
               }
               return;
            }
            break;
         }
         §§push(this.§5"§.x);
         if(!_loc3_)
         {
            §§push(§^g§.§5!-§);
            if(_loc4_)
            {
               addr66:
               §§push(§§pop() / §§pop());
               §§push(this.§5"§.y);
               if(_loc4_)
               {
                  addr71:
                  §§push(§§pop() / §^g§.§5!-§);
               }
               §§pop().§[!T§(§§pop(),§§pop(),false,true);
               §§goto(addr87);
            }
            §§goto(addr71);
         }
         §§goto(addr66);
      }
      
      override protected function showScoreForRemainingBird(param1:§-T§, param2:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = true;
         var _loc4_:§]!C§;
         §§push(Boolean(_loc4_ = param1.levelItem as §]!C§));
         if(!(_loc6_ && this))
         {
            if(§§pop())
            {
               if(_loc5_ || this)
               {
                  §§pop();
                  if(_loc5_ || this)
                  {
                     §§push(Boolean(_loc4_.spriteScore));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              §?>§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§-%§.§;!J§,false,false,false,3,true);
                              addr124:
                              loop0:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(false);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 addr85:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr86:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              addr124:
                           }
                           §§goto(addr124);
                        }
                        while(true)
                        {
                           §?>§.addScore(param2,§!!t§.§9j§,_loc3_,param1.x,param1.y - 3);
                           if(!_loc6_)
                           {
                              return;
                           }
                           §§goto(addr86);
                        }
                     }
                     addr92:
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr92);
         }
         §§goto(addr85);
      }
      
      private function §;!>§(param1:§-T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §?>§.levelObjects.addObject("birdSpecial_laser_activation",§9q§.§>!L§.slingshot.x,§9q§.§>!L§.slingshot.y,0,§-%§.§;!J§,false,false,false,1,true);
         }
      }
   }
}
