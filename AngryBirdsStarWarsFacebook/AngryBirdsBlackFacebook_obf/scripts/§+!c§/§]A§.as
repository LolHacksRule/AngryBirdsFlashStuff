package §+!c§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §]A§ extends §3#<§
   {
      
      private static const §@"P§:Number = 0.9;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@"P§ = 0.9;
         }
      }
      
      protected var mAsset:MovieClip;
      
      protected var §["G§:MovieClip;
      
      protected var §[!i§:Number;
      
      protected var §;"L§:int;
      
      protected var §4#<§:int;
      
      protected var §?#3§:int;
      
      protected var §[!w§:Boolean;
      
      protected var §-#%§:Boolean;
      
      protected var §,!]§:Boolean;
      
      protected var §6a§:Boolean;
      
      protected var §8"O§:Boolean;
      
      public function §]A§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               this.mAsset = new §5_§.§`"G§(param1)();
               while(true)
               {
                  addChild(this.mAsset);
                  while(_loc2_ || this)
                  {
                     continue loop0;
                     buttonMode = true;
                     do
                     {
                        mouseChildren = false;
                        do
                        {
                           this.mAsset.z = 0;
                        }
                        while(_loc3_);
                        
                     }
                     while(!_loc2_);
                     
                     if(_loc2_)
                     {
                        return;
                        addr39:
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      override protected function onOver(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.locked);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr81:
                        while(true)
                        {
                           §§push(this.§2p§);
                           if(_loc2_ || param1)
                           {
                              §§push(!§§pop());
                           }
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!(_loc2_ || _loc3_))
                           {
                              continue loop1;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           super.onOver(param1);
                        }
                        else
                        {
                           §§goto(addr81);
                        }
                     }
                     break;
                  }
                  return;
               }
            }
         }
         §§goto(addr81);
      }
      
      override protected function onOut(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.locked);
            if(_loc3_ || param1)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr128:
                        loop6:
                        while(true)
                        {
                           §§push(this.§2p§);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc2_ && param1)
                              {
                                 continue;
                              }
                              §§push(!§§pop());
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    loop1:
                                    while(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(this.§-#%§);
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §%#V§.stop();
                                                   addr104:
                                                   while(true)
                                                   {
                                                      this.§^!b§();
                                                   }
                                                   addr104:
                                                }
                                                §§goto(addr104);
                                             }
                                             else
                                             {
                                                super.onOut(param1);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break loop1;
                                                }
                                             }
                                             while(!(_loc3_ || _loc3_))
                                             {
                                                §§goto(addr104);
                                             }
                                             if(_loc3_ || _loc3_)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          break;
                                          addr94:
                                       }
                                       §§goto(addr104);
                                    }
                                    return;
                                    addr88:
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr94);
                        }
                     }
                     addr127:
                  }
                  §§goto(addr88);
               }
            }
            §§goto(addr127);
         }
         §§goto(addr128);
      }
      
      public function get hasOutro() : Boolean
      {
         return this.§6a§;
      }
      
      public function set hasOutro(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§6a§ = param1;
         }
         do
         {
            this.mAsset.hasOutro.visible = this.§6a§;
         }
         while(_loc3_);
         
      }
      
      public function get hasIntro() : Boolean
      {
         return this.§,!]§;
      }
      
      public function set hasIntro(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!]§ = param1;
         }
         do
         {
            this.mAsset.hasIntro.visible = this.§,!]§;
         }
         while(_loc3_);
         
      }
      
      public function get §3P§() : Boolean
      {
         return this.§-#%§;
      }
      
      public function set §3P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-#%§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§-#%§);
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(this.§-#%§);
                     while(_loc2_)
                     {
                        §§push(!§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(§§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       §%#V§.stop();
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          loop5:
                                          while(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(Boolean(§%#V§));
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   continue loop3;
                                                }
                                                addr92:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop5;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr132);
                                             }
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr115);
                                       addr79:
                                    }
                                    else
                                    {
                                       §§goto(addr130);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr79);
                              }
                              §§goto(addr19);
                              addr56:
                           }
                           §§goto(addr92);
                        }
                     }
                     continue;
                  }
                  addr130:
                  if(§%#V§)
                  {
                     addr132:
                     §%#V§.stop();
                  }
                  hoverScale = 1;
                  loop10:
                  while(true)
                  {
                     this.§7#P§();
                     addr103:
                     addr19:
                     while(_loc3_ && _loc3_)
                     {
                        continue loop10;
                     }
                     return;
                  }
                  addr115:
                  §§goto(addr132);
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §^!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":1},null,§@"P§,§9!Z§.easeInOut);
            while(true)
            {
               §%#V§.onComplete = this.§7#P§;
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     §%#V§.play();
                     if(!(_loc1_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      private function §7#P§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §%#V§ = §-#C§.§%!E§.§^!H§(this,{"hoverScale":1.2},null,§@"P§,§9!Z§.easeInOut);
         }
         loop0:
         while(true)
         {
            if(!param1)
            {
               while(true)
               {
                  §%#V§.play();
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            else
            {
               addr24:
            }
            if(!_loc2_)
            {
               §%#V§.onComplete = this.§^!b§;
            }
            continue;
            return;
         }
      }
      
      public function get §,!M§() : int
      {
         return this.§?#3§;
      }
      
      public function set §,!M§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?#3§ = param1;
            while(true)
            {
               this.mAsset.falconBadge.visible = this.§?#3§ > 0;
               §§goto(addr90);
            }
         }
         addr90:
         while(true)
         {
            this.mAsset.falconBadge.gotoAndStop(this.§?#3§ < 50 ? 3 : (this.§?#3§ == 100 ? 1 : 2));
            if(!(_loc3_ && _loc3_))
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §[!F§() : int
      {
         return this.§4#<§;
      }
      
      public function set §[!F§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4#<§ = param1;
            do
            {
               this.mAsset.levelStars.gotoAndStop(this.§4#<§.toString() + "_stars");
            }
            while(_loc3_);
            
         }
      }
      
      public function get §@"T§() : int
      {
         return this.§;"L§;
      }
      
      public function set §@"T§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§;"L§ = param1;
            do
            {
               this.mAsset.txtLevelNumber.text = this.§;"L§.toString();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get locked() : Boolean
      {
         return this.§[!w§;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!w§ = param1;
            while(true)
            {
               this.mAsset.gotoAndStop(!!this.§[!w§ ? "locked" : "unlocked");
               addr62:
               if(_loc2_ || _loc2_)
               {
                  this.mAsset.txtLevelNumber.visible = !this.§[!w§;
                  addr69:
                  if(!(_loc2_ || param1))
                  {
                     while(!(_loc3_ && param1))
                     {
                        §§goto(addr62);
                        §§goto(addr69);
                     }
                     while(true)
                     {
                        buttonMode = !this.§[!w§;
                        §§goto(addr55);
                     }
                     addr55:
                     addr92:
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      public function get §2p§() : Boolean
      {
         return this.§8"O§;
      }
      
      public function set §2p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§8"O§ = param1;
            loop0:
            while(this.§8"O§)
            {
               if(!(_loc3_ && this))
               {
                  this.mAsset.gotoAndStop("comingSoon");
               }
               loop1:
               while(_loc2_ || this)
               {
                  buttonMode = false;
                  while(true)
                  {
                     this.mAsset.txtLevelNumber.visible = false;
                     if(!(_loc3_ && this))
                     {
                        if(!(_loc3_ && this))
                        {
                           break loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr63);
      }
   }
}
