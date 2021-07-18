package §[k§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §="V§.§""v§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §8K§
   {
      
      public static const §;I§:int = 7000;
      
      public static const §7_§:int = 200;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §;I§ = 7000;
            do
            {
               §7_§ = 200;
            }
            while(_loc2_);
            
         }
      }
      
      private var §^"a§:MovieClip;
      
      private var §!#8§:Array;
      
      private var §=!x§:int = 0;
      
      private var §4"@§:Timer;
      
      private var §[$§:§[#R§;
      
      private var §0!S§:Number;
      
      public function §8K§(param1:MovieClip)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§^"a§ = param1;
               loop1:
               while(true)
               {
                  this.§0!S§ = this.§^"a§.txtTip.y;
                  loop2:
                  while(true)
                  {
                     this.§!#8§ = this.§"2§(this.§]#W§());
                     loop3:
                     while(true)
                     {
                        §§push(this.§!#8§);
                        while(§§pop().length != 0)
                        {
                           this.§^"a§.visible = true;
                           §§push(this.§!#8§);
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           if(§§pop().length > 1)
                           {
                              if(!_loc3_)
                              {
                                 addr38:
                                 if(!(_loc3_ && param1))
                                 {
                                    this.§!s§();
                                    §§goto(addr47);
                                 }
                                 §§goto(addr64);
                              }
                              addr47:
                              if(_loc2_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§'#5§ = this.§!#8§[0];
                                    addr64:
                                    while(_loc2_ || _loc2_)
                                    {
                                       continue loop3;
                                       §§goto(addr38);
                                    }
                                    continue loop1;
                                    §§goto(addr47);
                                 }
                                 addr98:
                              }
                           }
                           §§goto(addr19);
                        }
                        continue loop2;
                     }
                  }
                  this.§^"a§.visible = false;
               }
               addr19:
               return;
            }
         }
         §§goto(addr98);
      }
      
      private function §!s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§4"@§)
            {
               addr71:
               while(true)
               {
                  this.§4"@§ = new Timer(§;I§);
                  loop3:
                  while(true)
                  {
                     this.§4"@§.addEventListener(TimerEvent.TIMER,this.§3"g§);
                     addr50:
                     addr57:
                     while(!(_loc1_ || _loc2_))
                     {
                        continue loop3;
                     }
                  }
               }
               addr71:
            }
            while(true)
            {
               this.§4"@§.start();
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr71);
               }
               §§goto(addr50);
               §§goto(addr57);
            }
            return;
         }
         §§goto(addr71);
      }
      
      private function §3"g§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4"@§.stop();
            do
            {
               this.§'#0§();
            }
            while(_loc3_ && param1);
            
         }
      }
      
      private function §'#0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§[$§ = §-#C§.§%!E§.§^!H§(this.§^"a§.txtTip,{"alpha":0},null,§7_§ / 1000,§9!Z§.easeOut);
         }
         loop0:
         while(true)
         {
            §§push(this.§[$§);
            while(true)
            {
               §§pop().onComplete = this.§@&§;
               §§push(this.§[$§);
               addr66:
               continue loop0;
               if(!_loc1_)
               {
                  §§pop().play();
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §@&§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§=!x§);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               _loc1_.§=!x§ = _loc2_;
            }
            if(!_loc4_)
            {
               if(this.§=!x§ >= this.§!#8§.length)
               {
                  while(true)
                  {
                     this.§=!x§ = 0;
                     addr103:
                     while(true)
                     {
                     }
                  }
                  addr100:
               }
               while(true)
               {
                  this.§'#5§ = this.§!#8§[this.§=!x§];
                  addr81:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr103);
               }
            }
         }
         while(true)
         {
            this.§"U§();
            if(_loc3_ || _loc2_)
            {
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr103);
            }
            §§goto(addr81);
         }
      }
      
      private function §"U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§[$§ = §-#C§.§%!E§.§^!H§(this.§^"a§.txtTip,{"alpha":1},null,§7_§ / 1000,§9!Z§.easeOut);
            loop0:
            while(true)
            {
               §§push(this.§[$§);
               while(true)
               {
                  §§pop().onComplete = this.§&8§;
                  §§push(this.§[$§);
                  addr60:
                  continue loop0;
                  if(_loc1_ || _loc2_)
                  {
                     §§pop().play();
                     if(_loc1_)
                     {
                        return;
                        addr46:
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §&8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!s§();
         }
      }
      
      private function §]#W§() : Array
      {
         try
         {
            return JSON.parse(§""v§.§&R§("getTips") as String) as Array;
         }
         catch(e:Error)
         {
            return [];
         }
      }
      
      private function §"2§(param1:Array) : Array
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         param1 = param1.concat();
         var _loc2_:Array = [];
         while(param1.length > 0)
         {
            _loc2_.push(param1.splice(Math.round(Math.random() * (param1.length - 1)),1)[0]);
            if(_loc4_)
            {
               break;
            }
         }
         return _loc2_;
      }
      
      private function set §'#5§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§^"a§.txtTip.text = param1;
            do
            {
               this.§^"a§.txtTip.y = this.§0!S§ + Math.round((this.§^"a§.txtTip.height - this.§^"a§.txtTip.textHeight) / 2);
            }
            while(_loc2_);
            
         }
      }
   }
}
