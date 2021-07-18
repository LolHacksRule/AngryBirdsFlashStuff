package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§0'§;
   import §7!F§.§>"G§;
   import §7!F§.§`y§;
   import §<"B§.§94§;
   import §="2§.§4!5§;
   import §="2§.§?!r§;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class §"!?§ extends §`#G§ implements §;!i§
   {
      
      private static const §#C§:String = "EmperorHologramAnimation";
      
      private static const §@3§:Number = 100;
      
      private static const §4!H§:Number = 400;
      
      public static const §7"9§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §+"c§:String = "BLOCK_SENSOR_PIG_B";
      
      public static const §?!P§:Number = 7000;
      
      public static const §@j§:Number = 7000;
      
      private static const §?"G§:uint = 2;
      
      private static const §3"`§:uint = 0;
      
      private static const LAUGH_FRAME_1:uint = 1;
      
      private static const LAUGH_FRAME_2:uint = 2;
      
      private static const BREAK_FRAME_1:uint = 3;
      
      private static const BREAK_FRAME_2:uint = 4;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#C§ = "EmperorHologramAnimation";
            loop0:
            while(true)
            {
               §@3§ = 100;
               loop1:
               while(true)
               {
                  §4!H§ = 400;
                  while(true)
                  {
                     §7"9§ = "BLOCK_SENSOR_PIG_A";
                     addr142:
                     loop10:
                     while(_loc2_ || _loc2_)
                     {
                        LAUGH_FRAME_2 = 2;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              addr84:
                              if(!(_loc2_ || _loc1_))
                              {
                                 break;
                              }
                              if(!_loc1_)
                              {
                                 BREAK_FRAME_1 = 3;
                                 continue;
                              }
                              §§goto(addr132);
                           }
                           else
                           {
                              while(true)
                              {
                                 LAUGH_FRAME_1 = 1;
                                 if(!(_loc2_ || §"!?§))
                                 {
                                    continue loop10;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr127);
                                 continue loop10;
                              }
                              addr110:
                           }
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        §+"c§ = "BLOCK_SENSOR_PIG_B";
                        addr137:
                        while(true)
                        {
                           §?!P§ = 7000;
                           addr132:
                           while(true)
                           {
                              §@j§ = 7000;
                              addr127:
                              while(true)
                              {
                                 §?"G§ = 2;
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §3"`§ = 0;
            §§goto(addr110);
         }
         §§goto(addr53);
      }
      
      private var §3"I§:§0'§;
      
      private var §'"k§:Number = -1;
      
      private var §4"^§:Number = -1;
      
      private var §]!%§:Boolean = false;
      
      private var §#"n§:String = "ChannelPig";
      
      private var §!q§:§4!5§;
      
      private var §8"S§:Boolean = false;
      
      private var §7#0§:Boolean = true;
      
      private var §4"E§:Number = -1;
      
      private var §;"t§:Number = -1;
      
      private var §?f§:§4!5§;
      
      protected var §^1§:§ "=§;
      
      protected var §2#1§:§ "=§;
      
      private var §,!n§:Boolean = false;
      
      public function §"!?§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
         do
         {
            this.§9#&§();
         }
         while(_loc8_);
         
      }
      
      private function §5#O§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            return Math.random() >= 0.5 ? "pigs_emperor_hologram_laugh_1" : "pigs_emperor_hologram_laugh_2";
         }
         §§goto(addr33);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§3"I§)
            {
               loop0:
               while(true)
               {
                  this.§5#4§(param1);
                  addr138:
                  while(true)
                  {
                     this.§ #M§(param1);
                     addr131:
                     loop2:
                     while(true)
                     {
                        addr109:
                        loop6:
                        while(true)
                        {
                           if(_loc3_ && param1)
                           {
                              continue loop2;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(!this.§2#1§);
                              if(_loc4_ || param2)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§5!3§();
                                       if(_loc3_ && param1)
                                       {
                                          addr79:
                                          if(_loc3_ && param2)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr25);
                                    }
                                    if(_loc4_ || param1)
                                    {
                                       this.§#z§(param2);
                                    }
                                    §§goto(addr79);
                                    continue loop7;
                                 }
                                 continue loop2;
                                 addr57:
                              }
                              continue loop6;
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(param2)
               {
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && param2))
                     {
                        §§push(!this.§^1§);
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              §§goto(addr108);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr109);
               }
               break;
               §§goto(addr131);
            }
            addr25:
            return super.update(param1,param2);
         }
         §§goto(addr116);
      }
      
      private function §#z§(param1:§;$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§^1§ = this.§>3§(§7"9§,param1);
            do
            {
               this.§2#1§ = this.§>3§(§+"c§,param1);
            }
            while(_loc2_);
            
         }
      }
      
      private function §>3§(param1:String, param2:§;$§) : § "=§
      {
         var _loc3_:b2Vec2 = §3!t§().GetPosition();
         var _loc4_:§ "=§;
         (_loc4_ = param2.addObject(param1,_loc3_.x,_loc3_.y,0,§;=§.§""3§) as § "=§).§=?§ = this;
         return _loc4_;
      }
      
      private function §5!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§+,§(this.§^1§);
         }
         do
         {
            this.§+,§(this.§2#1§);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §+,§(param1:§ "=§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.§3!t§().SetPosition(§3!t§().GetPosition());
         }
      }
      
      private function §^_§(param1:§;$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§^1§)
            {
               while(true)
               {
                  if(param1)
                  {
                     if(_loc3_)
                     {
                        param1.removeObject(this.§^1§);
                     }
                     while(true)
                     {
                     }
                     addr103:
                  }
                  while(true)
                  {
                     this.§^1§ = null;
                     addr81:
                     while(true)
                     {
                     }
                  }
               }
               addr95:
            }
            while(this.§2#1§)
            {
               loop4:
               while(true)
               {
                  if(param1)
                  {
                     loop5:
                     while(true)
                     {
                        param1.removeObject(this.§2#1§);
                        loop6:
                        while(_loc3_)
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 this.§2#1§ = null;
                                 if(_loc3_)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              addr29:
                           }
                           else
                           {
                              §§goto(addr95);
                           }
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr29);
               }
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr81);
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function §7`§(param1:§7B§, param2:§ "=§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param2 == this.§^1§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr85:
                     while(true)
                     {
                        §§push(param2 == this.§2#1§);
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(!_loc4_)
                  {
                     this.§,k§(param1,true);
                  }
                  if(!(_loc4_ && _loc3_))
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
            }
         }
         §§goto(addr85);
      }
      
      private function §,k§(param1:§7B§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§,!n§ = param2;
            loop0:
            while(true)
            {
               §§push(param1 is §?"N§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§3"I§);
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc4_ && param1))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§,!n§);
                                          addr108:
                                          loop5:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             if(§§pop())
                                             {
                                                continue loop0;
                                             }
                                             §§push(this.§4"E§);
                                             if(_loc3_)
                                             {
                                                §§push(0);
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  this.§&!k§();
                                                                  addr54:
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr19);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr122:
                                                               this.§4"E§ = -1;
                                                               while(true)
                                                               {
                                                                  this.§?f§.stop();
                                                               }
                                                               addr125:
                                                            }
                                                            while(!_loc3_)
                                                            {
                                                               §§goto(addr125);
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr90:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  break loop5;
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr79:
                                                         }
                                                      }
                                                      §§goto(addr54);
                                                   }
                                                   §§goto(addr19);
                                                }
                                                else
                                                {
                                                   addr121:
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                                §§goto(addr122);
                                             }
                                             else
                                             {
                                                addr120:
                                                §§push(0);
                                             }
                                             §§goto(addr121);
                                             continue loop9;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                    addr19:
                                    return;
                                 }
                              }
                              §§goto(addr108);
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr104);
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §0">§(param1:§7B§, param2:§ "=§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(param1 is §?"N§)
            {
               if(!(_loc3_ && this))
               {
                  addr45:
                  if(param2 == this.§2#1§)
                  {
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr65);
               }
               this.§,k§(param1,false);
            }
            addr65:
            return;
         }
         §§goto(addr45);
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§?f§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§?f§);
                     addr126:
                     while(true)
                     {
                        §§pop().stop();
                        addr127:
                        while(true)
                        {
                        }
                     }
                  }
                  addr124:
               }
               loop1:
               while(true)
               {
                  §§push(this.§!q§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§!q§);
                           addr100:
                           loop7:
                           while(true)
                           {
                              §§pop().stop();
                              addr101:
                              while(true)
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§!q§);
                                    if(_loc2_ && param1)
                                    {
                                       continue loop7;
                                    }
                                    §§pop().removeEventListener(Event.SOUND_COMPLETE,this.§"#Z§);
                                    while(true)
                                    {
                                    }
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        addr98:
                     }
                     loop3:
                     while(true)
                     {
                        this.§7#0§ = false;
                        while(_loc3_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              this.§^_§(param1);
                              for(; !_loc2_; super.updateBeforeRemoving(param1),if(_loc3_ || this)
                              {
                                 return;
                              })
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr124);
                              }
                              continue;
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr126);
         }
         §§goto(addr108);
      }
      
      private function § #M§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§3"I§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§4"E§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(this.§,!n§);
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(this.§3"I§);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                §§push(this.§3"I§.currentFrame);
                                                if(!(_loc2_ && this))
                                                {
                                                   if(§§pop() == LAUGH_FRAME_1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(LAUGH_FRAME_2);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(!_loc2_)
                                                            {
                                                               addr264:
                                                               while(true)
                                                               {
                                                                  §§pop().currentFrame = §§pop();
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           addr150:
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§4"^§);
                                                                              loop18:
                                                                              for(; _loc3_ || _loc2_; §§push(this.§4"^§),if(!_loc3_)
                                                                              {
                                                                                 continue;
                                                                              },§§push(0),if(_loc3_)
                                                                              {
                                                                                 if(!(_loc3_ || this))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             this.§&!k§();
                                                                                             addr53:
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§goto(addr55);
                                                                                             }
                                                                                             §§goto(addr81);
                                                                                          }
                                                                                          §§goto(addr281);
                                                                                       }
                                                                                       §§goto(addr101);
                                                                                    }
                                                                                    §§goto(addr53);
                                                                                 }
                                                                                 §§goto(addr25);
                                                                              },§§goto(addr173))
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§push(-1);
                                                                                 while(_loc3_)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       §§push(this.§7#0§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() == false)
                                                                                          {
                                                                                             loop22:
                                                                                             while(!_loc2_)
                                                                                             {
                                                                                                this.§,!n§ = false;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc2_ && param1))
                                                                                                   {
                                                                                                      this.§8"S§ = true;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§!q§ = §?!r§.§"#_§("pigs_emperor_hologram_loop",§?!r§.§2!1§);
                                                                                                         addr101:
                                                                                                         while(_loc3_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            this.§!q§.addEventListener(Event.SOUND_COMPLETE,this.§"#Z§);
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr72:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§4"^§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - param1);
                                                                                                                  }
                                                                                                                  §§pop().§4"^§ = §§pop();
                                                                                                                  addr81:
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr176:
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      this.§4"^§ = 500;
                                                                                                   }
                                                                                                   if(!(_loc3_ || this))
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      §§goto(addr25);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(_loc3_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(this.§;"t§);
                                                                                                         break loop18;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§;"t§);
                                                                                                         if(!(_loc2_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() - param1);
                                                                                                         }
                                                                                                         §§pop().§;"t§ = §§pop();
                                                                                                         §§goto(addr296);
                                                                                                      }
                                                                                                      addr296:
                                                                                                      addr332:
                                                                                                   }
                                                                                                }
                                                                                                while(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                             §§goto(addr336);
                                                                                          }
                                                                                          §§goto(addr72);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr176);
                                                                                 }
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§;"t§ = §@3§;
                                                                                       break loop14;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr277);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§4"E§);
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              §§push(§§pop() - param1);
                                                                           }
                                                                           §§pop().§4"E§ = §§pop();
                                                                        }
                                                                        addr309:
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                               }
                                                               addr264:
                                                            }
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      addr250:
                                                   }
                                                   else
                                                   {
                                                      §§push(LAUGH_FRAME_1);
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                   addr263:
                                                }
                                                §§goto(addr264);
                                             }
                                          }
                                          §§goto(addr250);
                                       }
                                       §§goto(addr278);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr150);
                              }
                           }
                           §§goto(addr309);
                        }
                     }
                  }
               }
               addr336:
               return;
            }
         }
         §§goto(addr278);
      }
      
      private function §"#Z§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§8"S§ = false;
         }
      }
      
      private function §&!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§3"I§);
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
                        addr132:
                        while(true)
                        {
                           §§push(this.§7#0§);
                           if(!_loc2_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc1_)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop3:
                  while(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        this.§?f§ = §?!r§.§"#_§(this.§5#O§(),§?!r§.§2!1§,0,2);
                        do
                        {
                           §§push(this);
                           §§push(§?!P§);
                           if(_loc1_)
                           {
                              §§push(§§pop() + Math.random() * §@j§);
                           }
                           §§pop().§4"^§ = §§pop();
                           while(true)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 this.§4"E§ = 3000;
                                 continue;
                              }
                              continue loop4;
                           }
                        }
                        while(!_loc1_);
                        
                        break loop3;
                     }
                  }
                  return;
               }
               §§push(this.§3"I§);
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr38);
            }
         }
         §§goto(addr132);
      }
      
      private function §5#4§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            §§push(this.§'"k§);
            loop0:
            while(true)
            {
               §§push(-1);
               loop1:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     §§push(this);
                     §§push(this.§]!%§);
                     if(_loc4_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§]!%§ = §§pop();
                     loop2:
                     while(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           loop11:
                           while(true)
                           {
                              §§push(this.§]!%§);
                              if(_loc4_ || this)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(this.§3"I§);
                                          if(_loc4_ || param1)
                                          {
                                             §§push(0.75);
                                             if(!(_loc3_ && param1))
                                             {
                                                §§push(§§pop() + Math.random() * 0.25);
                                             }
                                             §§pop().alpha = §§pop();
                                             addr69:
                                             if(!_loc4_)
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                this.§7#0§ = false;
                                                addr174:
                                                while(true)
                                                {
                                                   this.§!q§.stop();
                                                   loop6:
                                                   while(true)
                                                   {
                                                      this.§3"I§ = null;
                                                      addr162:
                                                      while(_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§'"k§);
                                                            if(_loc4_ || this)
                                                            {
                                                               §§push(§§pop() - param1);
                                                            }
                                                            §§pop().§'"k§ = §§pop();
                                                            addr221:
                                                            while(true)
                                                            {
                                                               §§push(this.§'"k§);
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(0);
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     continue;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     sprite.removeChild(this.§3"I§);
                                                                     continue loop14;
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                            §§push(int(§§pop()));
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr151);
                                                            }
                                                            §§goto(addr152);
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr74:
                                                      break loop11;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop().currentFrame = _loc2_;
                                          }
                                          addr92:
                                       }
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr174);
                                          }
                                          §§goto(addr74);
                                       }
                                    }
                                    §§goto(addr69);
                                 }
                                 break;
                              }
                              §§goto(addr130);
                           }
                           return;
                           addr88:
                        }
                        §§goto(addr162);
                     }
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr92);
                              §§push(this.§3"I§);
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr189);
                     }
                  }
                  §§goto(addr198);
               }
            }
         }
         §§goto(addr88);
      }
      
      override protected function setDamageState(param1:Number, param2:§;$§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() > 0.02);
               addr139:
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§3"I§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                          addr117:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             loop9:
                                             while(§§pop())
                                             {
                                                while(_loc4_ || param1)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §?!r§.§"#_§("pigs_emperor_hologram_break");
                                                      do
                                                      {
                                                         this.§'"k§ = §4!H§;
                                                         continue loop6;
                                                      }
                                                      while(_loc3_);
                                                      
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         break loop9;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop0;
                                                if(_loc4_ || _loc3_)
                                                {
                                                   continue;
                                                }
                                                continue loop1;
                                             }
                                             return super.setDamageState(param1,param2);
                                          }
                                       }
                                       continue loop3;
                                    }
                                    addr122:
                                    while(!_loc3_)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr117);
                     }
                  }
               }
            }
            addr137:
         }
         while(true)
         {
            §§push(this.§'"k§);
            if(!(_loc3_ && param2))
            {
               §§push(§§pop() == -1);
               if(_loc4_)
               {
                  §§goto(addr81);
               }
               §§goto(addr122);
            }
            else
            {
               §§goto(addr137);
            }
         }
      }
      
      private function §9#&§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§`y§ = §,!q§.§9!,§.animationManager;
         var _loc2_:§>"G§ = _loc1_.getAnimation(§#C§);
         if(_loc3_ || _loc3_)
         {
            if(!_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  _loc2_ = _loc1_.§%#M§(§#C§,["HOLOGRAM_EMPEROR_BASIC","HOLOGRAM_EMPEROR_SMILE","HOLOGRAM_EMPEROR_SCREAM","HOLOGRAM_EMPEROR_BREAK_1","HOLOGRAM_EMPEROR_BREAK_2"]);
                  addr63:
                  this.§3"I§ = new §0'§(_loc2_);
                  if(!_loc4_)
                  {
                     sprite.addChild(this.§3"I§);
                     do
                     {
                        this.§3"I§.y = -90;
                     }
                     while(!(_loc3_ || this));
                     
                     addr102:
                  }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr102);
      }
   }
}
