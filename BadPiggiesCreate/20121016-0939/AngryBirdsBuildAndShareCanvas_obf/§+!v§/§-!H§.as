package §+!v§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§9!!§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import flash.display.MovieClip;
   
   public class §-!H§ extends §`!T§
   {
       
      
      private var §?E§:§'s§;
      
      private var §,!y§:§3^§;
      
      private var §0!Z§:§3^§;
      
      private var §^!=§:§3^§;
      
      private var §8F§:§3^§;
      
      private var § !A§:§3^§;
      
      private var §]B§:§3^§;
      
      private var §3!D§:§3^§;
      
      private var §,"7§:§="#§;
      
      private var §;h§:§="#§;
      
      private var §3"7§:§="#§;
      
      private var §'5§:§="#§;
      
      private var §=!x§:§="#§;
      
      private var §-u§:MovieClip;
      
      private var §#n§:§%+§;
      
      private var startX:Number;
      
      private var § !L§:Number;
      
      private var §"![§:Number;
      
      private var §`!m§:Number;
      
      private var §+Q§:Number;
      
      private const §[!V§:String = "Open";
      
      private const §6T§:String = "Closed";
      
      private const §<!X§:String = "Moving";
      
      private const §+!J§:String = "Normal";
      
      private const §!r§:String = "FullScreen";
      
      private const §^i§:Number = 0.1;
      
      private const §^!8§:Number = 0.1;
      
      private var §@! §:Function;
      
      private var status:String = "Closed";
      
      private const §+c§:int = 6;
      
      public function §-!H§(param1:XML, param2:§`!T§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§@! § = §7!E§.§+!E§;
            while(true)
            {
               super(param1,param2,null);
               loop1:
               while(true)
               {
                  param2.§;!R§(this);
                  loop2:
                  while(true)
                  {
                     this.§,"7§ = getItemByName("Button_Tool") as §="#§;
                     addr378:
                     while(true)
                     {
                        §§push(this.§,"7§);
                        addr366:
                        while(true)
                        {
                           §§pop().setComponentState(§9!!§.§,!0§);
                           loop5:
                           while(true)
                           {
                              this.§;h§ = getItemByName("Button_Help") as §="#§;
                              addr362:
                              while(true)
                              {
                                 §§push(this.§;h§);
                                 addr341:
                                 while(true)
                                 {
                                    §§pop().setComponentState(§9!!§.§,!0§);
                                    addr344:
                                    while(_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                     addr75:
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     addr82:
                     §§push(this.§'5§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§pop().setVisibility(false);
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              addr40:
                              if(!(_loc4_ || this))
                              {
                                 loop31:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             this.§#n§.setVisibility(false);
                                             loop32:
                                             while(true)
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   addr132:
                                                   if(_loc4_ || this)
                                                   {
                                                      addr139:
                                                      if(!(_loc3_ && this))
                                                      {
                                                         addr146:
                                                         §§push(this.§,"7§);
                                                         if(!_loc3_)
                                                         {
                                                            §§pop().setVisibility(false);
                                                            loop33:
                                                            while(true)
                                                            {
                                                               §§push(this.§;h§);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop().setVisibility(false);
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              addr111:
                                                                              §§push(this.§3"7§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§pop().setVisibility(false);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop34;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop33;
                                                                                    }
                                                                                    addr61:
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          §§goto(addr75);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§3"7§);
                                                                                             addr168:
                                                                                             addr325:
                                                                                             while(_loc4_)
                                                                                             {
                                                                                                §§pop().x = this.§=!x§.x;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ || param2)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(this.§'5§);
                                                                                                         while(_loc4_)
                                                                                                         {
                                                                                                            §§pop().x = this.§=!x§.x;
                                                                                                            continue loop31;
                                                                                                            §§goto(addr82);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(!_loc3_)
                                                                                                         {
                                                                                                            §§push(this.§'5§);
                                                                                                         }
                                                                                                         §§goto(addr378);
                                                                                                         addr319:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().setComponentState(§9!!§.§,!0§);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr61);
                                                                                                }
                                                                                                §§goto(addr362);
                                                                                                §§goto(addr111);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().setComponentState(§9!!§.§,!0§);
                                                                                                break loop34;
                                                                                             }
                                                                                          }
                                                                                          addr203:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§=!x§ = getItemByName("Button_Settings") as §="#§;
                                                                                          addr303:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§#n§ = getItemByName("MovieClip_Settings_Block") as §%+§;
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§-u§ = this.§=!x§.mClip.getChildByName("MovieClip_Settings_Icon") as MovieClip;
                                                                                                while(true)
                                                                                                {
                                                                                                   this.startX = this.§=!x§.mClip.x;
                                                                                                   addr274:
                                                                                                   addr243:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§ !L§ = this.§,"7§.mClip.x;
                                                                                                      addr266:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§"![§ = this.§;h§.mClip.x;
                                                                                                         break loop32;
                                                                                                      }
                                                                                                      §§goto(addr139);
                                                                                                   }
                                                                                                   addr243:
                                                                                                   while(_loc4_ || param2)
                                                                                                   {
                                                                                                      this.§+Q§ = this.§3"7§.mClip.x;
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr174);
                                                                                 }
                                                                                 continue loop2;
                                                                                 addr57:
                                                                              }
                                                                              §§goto(addr168);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§'5§ = getItemByName("Button_Fullscreen") as §="#§;
                                                                        §§goto(addr319);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               addr199:
                                                               while(true)
                                                               {
                                                                  §§pop().x = this.§=!x§.x;
                                                                  continue loop33;
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            §§goto(addr341);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop().x = this.§=!x§.x;
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr199);
                                                                  }
                                                                  addr213:
                                                               }
                                                               break;
                                                               §§goto(addr146);
                                                            }
                                                            §§goto(addr366);
                                                            addr207:
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr221);
                                             }
                                             while(true)
                                             {
                                                this.§`!m§ = this.§'5§.mClip.x;
                                                §§goto(addr243);
                                                §§goto(addr132);
                                             }
                                          }
                                          §§goto(addr303);
                                       }
                                       §§goto(addr266);
                                    }
                                    §§goto(addr213);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr325);
                                 }
                                 addr337:
                              }
                              if(!_loc3_)
                              {
                                 return;
                              }
                              §§goto(addr344);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr150);
                  }
               }
               if(!(_loc4_ || this))
               {
                  continue;
               }
               §§goto(addr207);
               §§push(this.§,"7§);
            }
         }
         while(true)
         {
            this.§3"7§ = getItemByName("Button_Sound") as §="#§;
            §§goto(addr337);
         }
      }
      
      public function §#!s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.status);
            loop0:
            while(true)
            {
               §§push(this.§<!X§);
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.status);
                     loop3:
                     while(!_loc2_)
                     {
                        §§push(this.§[!V§);
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.status);
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                           §§push(this.§6T§);
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(!(_loc1_ || _loc2_))
                           {
                              break loop2;
                           }
                           if(§§pop() == §§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop2;
                                    }
                                    this.§"!5§();
                                    loop9:
                                    while(true)
                                    {
                                       addr28:
                                       addr42:
                                       addr49:
                                       while(true)
                                       {
                                          this.status = this.§<!X§;
                                          if(_loc1_)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                          continue loop9;
                                       }
                                       if(_loc2_ && _loc1_)
                                       {
                                          break loop4;
                                       }
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          return;
                                       }
                                       break loop1;
                                    }
                                 }
                                 addr118:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           §§goto(addr28);
                        }
                        while(true)
                        {
                           this.§[o§();
                           §§goto(addr118);
                           §§goto(addr42);
                        }
                        §§goto(addr49);
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §"!5§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§3!D§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr33:
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.§3!D§);
                  }
                  var _loc1_:Number = 0;
                  var _loc2_:Number = 1;
                  if(_loc3_)
                  {
                     this.§0!Z§ = §7!E§.§2=§.§<!C§(this.§,"7§.mClip,{
                        "scaleX":_loc2_,
                        "scaleY":_loc2_,
                        "rotation":0,
                        "x":this.§ !L§
                     },{
                        "scaleX":_loc1_,
                        "scaleY":_loc1_,
                        "rotation":360,
                        "x":this.startX
                     },this.§^i§,this.§@! §);
                     loop0:
                     while(true)
                     {
                        this.§,!y§ = §7!E§.§2=§.§<!C§(this.§;h§.mClip,{
                           "scaleX":_loc2_,
                           "scaleY":_loc2_,
                           "rotation":0,
                           "x":this.§"![§
                        },{
                           "scaleX":_loc1_,
                           "scaleY":_loc1_,
                           "rotation":360,
                           "x":this.startX
                        },this.§^i§,this.§@! §);
                        while(true)
                        {
                           this.§^!=§ = §7!E§.§2=§.§<!C§(this.§'5§.mClip,{
                              "scaleX":_loc2_,
                              "scaleY":_loc2_,
                              "rotation":0,
                              "x":this.§`!m§
                           },{
                              "scaleX":_loc1_,
                              "scaleY":_loc1_,
                              "rotation":360,
                              "x":this.startX
                           },this.§^i§,this.§@! §);
                           while(_loc3_)
                           {
                              this.§8F§ = §7!E§.§2=§.§<!C§(this.§3"7§.mClip,{
                                 "scaleX":_loc2_,
                                 "scaleY":_loc2_,
                                 "rotation":0,
                                 "x":this.§+Q§
                              },{
                                 "scaleX":_loc1_,
                                 "scaleY":_loc1_,
                                 "rotation":360,
                                 "x":this.startX
                              },this.§^i§,this.§@! §);
                              while(true)
                              {
                                 this.§ !A§ = §7!E§.§2=§.§<!C§(this.§-u§,{"rotation":-180},{"rotation":0},0.4,this.§@! §);
                                 loop4:
                                 while(true)
                                 {
                                    if(§>"§.§%d§.§^!'§())
                                    {
                                       §§push(this.§,"7§);
                                       if(_loc3_)
                                       {
                                          §§push(true);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().setVisibility(§§pop());
                                             while(true)
                                             {
                                                §§push(this.§'5§);
                                                if(_loc3_)
                                                {
                                                   §§push(true);
                                                   if(!_loc4_)
                                                   {
                                                      §§pop().setVisibility(§§pop());
                                                      while(true)
                                                      {
                                                         §§push(this.§;h§);
                                                         if(_loc3_)
                                                         {
                                                            §§push(true);
                                                            if(_loc3_)
                                                            {
                                                               §§pop().setVisibility(§§pop());
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().setVisibility(§§pop());
                                                               addr247:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr232:
                                                                     §§push(this.§3"7§);
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        addr233:
                                                                        while(true)
                                                                        {
                                                                           §§pop().setVisibility(§§pop());
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     addr232:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§'5§);
                                                                        addr253:
                                                                        while(true)
                                                                        {
                                                                           §§push(true);
                                                                           addr254:
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§pop().setVisibility(§§pop());
                                                                              addr255:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§;h§);
                                                                                 continue loop20;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr265:
                                                                  }
                                                               }
                                                            }
                                                            addr246:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr246);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr253);
                                             }
                                          }
                                          §§goto(addr264);
                                       }
                                       §§goto(addr263);
                                    }
                                    §§goto(addr261);
                                 }
                              }
                           }
                           continue loop0;
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           §§goto(addr93);
                        }
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr33);
            }
            §§pop().stop();
         }
         §§goto(addr33);
      }
      
      private function §[o§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§3!D§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     addr37:
                     this.§3!D§.stop();
                  }
               }
               var _loc1_:Number = 1;
               var _loc2_:Number = 0;
               if(!_loc4_)
               {
                  this.§0!Z§ = §7!E§.§2=§.§<!C§(this.§,"7§.mClip,{
                     "scaleX":_loc2_,
                     "scaleY":_loc2_,
                     "rotation":360,
                     "x":this.§ !L§
                  },{
                     "scaleX":_loc1_,
                     "scaleY":_loc1_,
                     "rotation":0,
                     "x":this.startX
                  },this.§^!8§,this.§@! §);
                  while(true)
                  {
                     this.§,!y§ = §7!E§.§2=§.§<!C§(this.§;h§.mClip,{
                        "scaleX":_loc2_,
                        "scaleY":_loc2_,
                        "rotation":360,
                        "x":this.§"![§
                     },{
                        "scaleX":_loc1_,
                        "scaleY":_loc1_,
                        "rotation":0,
                        "x":this.startX
                     },this.§^!8§,this.§@! §);
                     while(true)
                     {
                        this.§^!=§ = §7!E§.§2=§.§<!C§(this.§'5§.mClip,{
                           "scaleX":_loc2_,
                           "scaleY":_loc2_,
                           "rotation":360,
                           "x":this.§`!m§
                        },{
                           "scaleX":_loc1_,
                           "scaleY":_loc1_,
                           "rotation":0,
                           "x":this.startX
                        },this.§^!8§,this.§@! §);
                        loop2:
                        while(true)
                        {
                           this.§8F§ = §7!E§.§2=§.§<!C§(this.§3"7§.mClip,{
                              "scaleX":_loc2_,
                              "scaleY":_loc2_,
                              "rotation":360,
                              "x":this.§+Q§
                           },{
                              "scaleX":_loc1_,
                              "scaleY":_loc1_,
                              "rotation":0,
                              "x":this.startX
                           },this.§^!8§,this.§@! §);
                           addr349:
                           while(true)
                           {
                              this.§ !A§ = §7!E§.§2=§.§<!C§(this.§-u§,{"rotation":0},{"rotation":-180},0.4,this.§@! §);
                              continue loop2;
                           }
                        }
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        return;
                     }
                  }
               }
               §§goto(addr280);
            }
         }
         §§goto(addr37);
      }
      
      private function §6A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.status = this.§[!V§;
         }
      }
      
      private function §7!B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§,"7§.setVisibility(false);
            loop0:
            while(true)
            {
               this.§;h§.setVisibility(false);
               while(true)
               {
                  this.§3"7§.setVisibility(false);
                  while(_loc2_ || _loc2_)
                  {
                     this.§'5§.setVisibility(false);
                     continue loop0;
                     if(_loc2_ || _loc2_)
                     {
                        return;
                        addr53:
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
   }
}
