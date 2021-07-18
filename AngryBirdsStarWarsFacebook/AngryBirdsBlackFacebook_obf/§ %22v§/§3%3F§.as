package § "v§
{
   import §+!c§.§5"$§;
   import §1!i§.§6"#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   
   public class §3?§ extends EventDispatcher
   {
      
      public static const EVENT_ANIMATION_INTRO_OVER:String = "EVENT_ANIMATION_INTRO_OVER";
      
      public static const EVENT_ANIMATION_ATTACK_OVER:String = "EVENT_ANIMATION_ATTACK_OVER";
      
      public static const EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER:String = "EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER";
      
      public static const EVENT_ANIMATION_GO_TO_CENTER_OVER:String = "EVENT_ANIMATION_GO_TO_CENTER_OVER";
      
      public static const EVENT_ANIMATION_CENTER_OUTRO_OVER:String = "EVENT_ANIMATION_CENTER_OUTRO_OVER";
      
      public static const EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED:String = "EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED";
      
      public static const EVENT_ANIMATION_GET_ATTACKED_OVER:String = "EVENT_ANIMATION_GET_ATTACKED_OVER";
      
      private static const §#!W§:String = "avatar_container_intro_start";
      
      private static const § case§:String = "avatar_container_attack_start";
      
      private static const §!#>§:String = "avatar_container_return_start";
      
      private static const §9#!§:String = "avatar_container_go_to_center_start";
      
      private static const §;#D§:String = "avatar_container_get_attacked_start";
      
      private static const §>#'§:String = "avatar_container_disappear_start";
      
      private static const §7"4§:String = "avatar_container_reappear_start";
      
      private static const §!#K§:String = "avatar_container_center_outro_start";
      
      private static const §+"P§:String = "avatar_container_intro_end";
      
      private static const § 9§:String = "avatar_container_attack_end";
      
      private static const §##1§:String = "avatar_container_return_end";
      
      private static const §`!C§:String = "avatar_container_go_to_center_end";
      
      private static const §0"Q§:String = "avatar_container_get_attacked_end";
      
      private static const §5Q§:String = "avatar_container_disappear_end";
      
      private static const §'"`§:String = "avatar_container_reappear_end";
      
      private static const §;6§:String = "avatar_container_center_outro_end";
      
      private static const §`!9§:String = "start_get_attacked_animation";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §3?§))
         {
            EVENT_ANIMATION_INTRO_OVER = "EVENT_ANIMATION_INTRO_OVER";
            loop0:
            while(true)
            {
               EVENT_ANIMATION_ATTACK_OVER = "EVENT_ANIMATION_ATTACK_OVER";
               addr264:
               while(true)
               {
                  EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER = "EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER";
                  continue loop0;
               }
            }
         }
         §§goto(addr167);
      }
      
      private var §1"0§:MovieClip;
      
      private var §!?§:MovieClip;
      
      private var §?!a§:§5"$§;
      
      private var §0! §:Boolean;
      
      private var §,"8§:Boolean;
      
      private var §8#-§:int;
      
      private var mName:String;
      
      private var §;"m§:int;
      
      private var §>#T§:String;
      
      public function §3?§(param1:MovieClip, param2:Boolean = true)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§1"0§ = param1;
               loop1:
               for(; _loc4_; if(_loc3_ && this)
               {
                  continue;
               },§§goto(addr59))
               {
                  this.§0! § = param2;
                  while(true)
                  {
                     this.§1"0§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     loop4:
                     while(_loc4_ || this)
                     {
                        this.§,"8§ = false;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr35:
                           if(!(_loc4_ || param2))
                           {
                              while(true)
                              {
                                 this.§!?§ = this.§1"0§["avatar"];
                                 continue loop4;
                                 §§goto(addr35);
                              }
                           }
                           else
                           {
                              addr59:
                              addr83:
                           }
                           continue loop1;
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §2"1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§1"0§.gotoAndPlay(§#!W§);
         }
      }
      
      public function § "f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1"0§.gotoAndPlay(§ case§);
         }
      }
      
      public function §["C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1"0§.gotoAndPlay(§;#D§);
         }
      }
      
      public function §3"m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1"0§.gotoAndPlay(§!#>§);
         }
      }
      
      public function §%u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1"0§.gotoAndPlay(§9#!§);
         }
      }
      
      public function §;n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§1"0§.gotoAndPlay(§7"4§);
         }
      }
      
      public function §2!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1"0§.gotoAndPlay(§>#'§);
         }
      }
      
      public function §+`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1"0§.gotoAndPlay(§!#K§);
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>#T§ = param1.u;
            loop0:
            while(true)
            {
               this.§8#-§ = param1.r;
               while(true)
               {
                  this.mName = param1.n;
                  addr63:
                  while(!(_loc3_ && _loc3_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§;"m§ = param1.p;
            §§goto(addr63);
            §§goto(addr40);
         }
      }
      
      public function §1!Q§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§8#-§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 loop5:
                                 while(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       this.§8#-§ = param1;
                                    }
                                    for(; !_loc2_; this.§;f§(),if(!_loc2_)
                                    {
                                       break loop5;
                                    })
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          continue;
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param1);
                                          continue loop0;
                                          addr141:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop7;
                                          }
                                       }
                                    }
                                    loop13:
                                    while(true)
                                    {
                                       §§push(this.§8#-§);
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       addr40:
                                       §§push(3);
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() > §§pop());
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc2_ && param1)
                                          {
                                             continue;
                                          }
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             while(true)
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      continue loop13;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr141);
                                                }
                                             }
                                             continue loop2;
                                             addr107:
                                          }
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§goto(addr40);
                                          }
                                          addr106:
                                       }
                                       §§goto(addr107);
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                     }
                     §§goto(addr141);
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = this.§1"0§.currentFrameLabel;
         if(!_loc4_)
         {
            §§push(§+"P§);
            if(_loc3_ || param1)
            {
               if(§§pop() === _loc2_)
               {
                  if(!(_loc4_ && param1))
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        addr211:
                     }
                  }
                  else
                  {
                     addr166:
                     §§push(2);
                     if(_loc3_ || _loc2_)
                     {
                        addr174:
                     }
                     else
                     {
                        addr228:
                     }
                  }
               }
               else
               {
                  §§push(§ 9§);
                  if(_loc3_ || param1)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(1);
                           if(_loc4_)
                           {
                              §§goto(addr174);
                           }
                        }
                        else
                        {
                           addr203:
                           §§push(4);
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr211);
                           }
                        }
                     }
                     else
                     {
                        §§push(§##1§);
                        if(!_loc4_)
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr166);
                              }
                              else
                              {
                                 §§goto(addr187);
                              }
                           }
                           else
                           {
                              §§push(§`!C§);
                              if(!_loc4_)
                              {
                                 addr178:
                                 if(§§pop() === _loc2_)
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr187:
                                       §§push(3);
                                       if(_loc4_)
                                       {
                                       }
                                       §§goto(addr233);
                                    }
                                    else
                                    {
                                       §§goto(addr203);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§`!9§);
                                    if(_loc4_)
                                    {
                                    }
                                    addr213:
                                    if(§§pop() === _loc2_)
                                    {
                                       addr215:
                                       §§push(5);
                                       if(_loc3_)
                                       {
                                          §§goto(addr228);
                                       }
                                       §§goto(addr233);
                                    }
                                    else
                                    {
                                       addr233:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             dispatchEvent(new Event(EVENT_ANIMATION_INTRO_OVER));
                                             break;
                                             addr92:
                                          case 1:
                                             dispatchEvent(new Event(EVENT_ANIMATION_ATTACK_OVER));
                                             break;
                                             addr84:
                                          case 2:
                                             dispatchEvent(new Event(EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER));
                                             break;
                                             addr75:
                                          case 3:
                                             dispatchEvent(new Event(EVENT_ANIMATION_GO_TO_CENTER_OVER));
                                             addr35:
                                             break;
                                             addr66:
                                          case 4:
                                             dispatchEvent(new Event(EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED));
                                             addr43:
                                             if(!(_loc4_ && this))
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr75);
                                             }
                                             else
                                             {
                                                §§goto(addr66);
                                             }
                                             break;
                                          case 5:
                                             dispatchEvent(new Event(EVENT_ANIMATION_GET_ATTACKED_OVER));
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr92);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr84);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr43);
                                                }
                                                §§goto(addr35);
                                             }
                                       }
                                       return;
                                       §§push(6);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr233);
                              }
                              if(§§pop() === _loc2_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr203);
                                 }
                                 §§goto(addr233);
                              }
                              else
                              {
                                 §§goto(addr213);
                                 §§push(§0"Q§);
                              }
                              §§goto(addr215);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr178);
                     }
                  }
                  §§goto(addr213);
               }
               §§goto(addr233);
            }
            §§goto(addr213);
         }
         §§goto(addr187);
      }
      
      private function §;f§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:MovieClip = null;
         var _loc2_:TextField = null;
         if(!_loc5_)
         {
            if(this.§,"8§)
            {
               if(_loc4_)
               {
                  this.§ #>§();
                  addr31:
                  §§push(this.§8#-§);
                  if(!_loc5_)
                  {
                     var _loc3_:* = §§pop();
                     if(!_loc5_)
                     {
                        §§push(1);
                        if(_loc4_ || _loc1_)
                        {
                           §§push(_loc3_);
                           if(!_loc5_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(0);
                                    if(!_loc4_)
                                    {
                                       addr108:
                                       §§push(_loc3_);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                addr119:
                                                §§push(1);
                                                if(_loc5_)
                                                {
                                                   addr131:
                                                   if(§§pop() === _loc3_)
                                                   {
                                                      addr133:
                                                      §§push(2);
                                                      if(_loc5_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                   }
                                                }
                                                else
                                                {
                                                   addr122:
                                                }
                                             }
                                             §§goto(addr133);
                                          }
                                          else
                                          {
                                             §§push(3);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§goto(addr131);
                                             }
                                          }
                                       }
                                       §§goto(addr131);
                                    }
                                    addr142:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc1_ = this.§!?§["frame_gold"] as MovieClip;
                                          if(_loc4_ || _loc1_)
                                          {
                                             break;
                                          }
                                          addr158:
                                          _loc1_.txtName.txt.text = this.mName;
                                          _loc2_ = _loc1_.txtName.txt;
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             §6"#§.§7s§(_loc2_,int(_loc2_.getTextFormat().size),_loc2_.width,_loc2_.height);
                                             loop0:
                                             while(true)
                                             {
                                                (_loc1_.txtName.txt as TextField).mouseEnabled = false;
                                                while(true)
                                                {
                                                   (_loc1_.MovieClip_Scores as MovieClip).visible = this.§0! §;
                                                   addr231:
                                                   if(!(_loc4_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      this.§?!a§ = new §5"$§(this.§>#T§);
                                                      if(!_loc5_)
                                                      {
                                                         addr197:
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            if(!(_loc4_ || _loc2_))
                                                            {
                                                               while(true)
                                                               {
                                                                  (_loc1_.MovieClip_Scores.txtScores.txt as TextField).mouseEnabled = false;
                                                                  if(!(_loc4_ || _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§<!6§();
                                                                     break loop7;
                                                                  }
                                                               }
                                                               addr320:
                                                            }
                                                            else
                                                            {
                                                               addr267:
                                                            }
                                                            continue loop0;
                                                            return;
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr320);
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr231);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(this.§0! §)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc1_.MovieClip_Scores.txtScores.txt.text = this.§;"m§;
                                                                     break loop6;
                                                                  }
                                                                  addr260:
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            addr276:
                                                         }
                                                      }
                                                      §§goto(addr260);
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr267);
                                                }
                                             }
                                          }
                                          §§goto(addr276);
                                       case 1:
                                          _loc1_ = this.§!?§["frame_silver"] as MovieClip;
                                          break;
                                       case 2:
                                          _loc1_ = this.§!?§["frame_bronze"] as MovieClip;
                                          break;
                                       default:
                                          _loc1_ = this.§!?§["frame_normal"] as MovieClip;
                                    }
                                    _loc1_.visible = true;
                                    if(_loc5_)
                                    {
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr119);
                              }
                              else
                              {
                                 §§push(2);
                                 if(_loc4_)
                                 {
                                    §§goto(addr108);
                                 }
                                 §§goto(addr122);
                              }
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr142);
                  addr31:
               }
               §§goto(addr31);
            }
            §§goto(addr267);
         }
         §§goto(addr31);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§<!6§();
         }
      }
      
      private function §<!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?!a§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§?!a§);
                     addr75:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr76);
      }
      
      private function § #>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (this.§!?§["frame_normal"] as MovieClip).visible = false;
            while(true)
            {
               (this.§!?§["frame_silver"] as MovieClip).visible = false;
               loop1:
               while(_loc1_ || this)
               {
                  (this.§!?§["frame_bronze"] as MovieClip).visible = false;
                  while(true)
                  {
                     (this.§!?§["frame_gold"] as MovieClip).visible = false;
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
   }
}
