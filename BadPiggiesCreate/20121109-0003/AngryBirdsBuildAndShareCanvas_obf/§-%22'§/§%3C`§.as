package §-"'§
{
   import §!N§.§2U§;
   import §!N§.§@!3§;
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §7!@§.§+`§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§@u§;
   import §?!'§.Popup;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §<`§ extends Popup
   {
      
      private static const §&" §:int = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&" § = 4000;
         }
      }
      
      private var §4@§:§=!r§;
      
      private var §=9§:Number = 1;
      
      private var §7^§:§@u§;
      
      private var §@"#§:§2U§;
      
      private var §!!N§:Vector.<§2U§>;
      
      private var §1!"§:Timer;
      
      private var §7!S§:int;
      
      private var §1"6§:int = 0;
      
      private var §;!&§:§6W§;
      
      private var container:§6W§;
      
      public function §<`§(param1:XML, param2:§>!V§)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(param1,param2);
         }
         loop0:
         while(true)
         {
            this.§!!N§ = new Vector.<§2U§>();
            loop1:
            while(true)
            {
               addr45:
               while(true)
               {
                  this.container = param2.getItemByName("Container_LevelUp") as §6W§;
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.open(param1);
         }
         var _loc2_:Timer = new Timer(§&" §,1);
         if(_loc4_)
         {
            _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§]Q§);
            do
            {
               _loc2_.start();
            }
            while(!(_loc4_ || _loc2_));
            
         }
      }
      
      protected function §]Q§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.close();
         }
      }
      
      private function §?!-§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§=!r§ = §7I§.§[E§.§ ";§(this.§7^§.mClip,{"rotation":360},{"rotation":0},§&" § / 1000);
         if(!_loc2_)
         {
            _loc1_.play();
         }
      }
      
      public function update(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§2U§ = null;
         var _loc2_:int = getTimer() - this.§1"6§;
         if(_loc7_ || _loc2_)
         {
            this.§1"6§ = getTimer();
            if(_loc7_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  if(§§pop() > 100)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr62);
                     }
                     else
                     {
                        addr63:
                        §§push(0);
                     }
                  }
                  §§goto(addr63);
               }
               for each(_loc3_ in this.§!!N§)
               {
                  if(_loc7_)
                  {
                     _loc3_.update(_loc2_);
                  }
               }
               return;
            }
            addr62:
            return;
         }
         §§goto(addr63);
      }
      
      private function §&V§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§2U§ = null;
         if(!(_loc5_ && _loc1_))
         {
            if(this.§1!"§)
            {
               if(_loc4_ || _loc3_)
               {
                  this.§1!"§.stop();
                  try
                  {
                     §§goto(addr44);
                  }
                  catch(e:Error)
                  {
                  }
               }
               §§goto(addr44);
            }
            §§goto(addr82);
         }
         addr44:
         this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
         if(_loc4_ || _loc2_)
         {
            addr82:
            var _loc2_:int = 0;
            if(!_loc5_)
            {
               var _loc3_:* = this.§!!N§;
               if(!(_loc5_ && _loc3_))
               {
                  loop0:
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     loop1:
                     while(true)
                     {
                        §§pop().§§slot[1] = §§nextvalue(_loc2_,_loc3_);
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§-^§.contains(splash))
                              {
                                 if(_loc4_)
                                 {
                                    §-^§.removeChild(splash);
                                 }
                                 while(true)
                                 {
                                    addr102:
                                    §§pop().§§slot[1].clean();
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       break loop3;
                                    }
                                    while(true)
                                    {
                                       if(false)
                                       {
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr102);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr140);
               }
               §§goto(addr113);
            }
            addr140:
            if(_loc4_ || _loc2_)
            {
               this.§!!N§ = new Vector.<§2U§>();
            }
            §§goto(addr164);
         }
         addr164:
      }
      
      private function §"v§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§@"#§ = new §2U§(§[!^§.§["3§,§[!^§.§7$§,param1,param2,§2U§.§^9§,80,0,§@!3§.§?H§);
            do
            {
               §-^§.addChild(this.§@"#§);
               do
               {
                  this.§!!N§.push(this.§@"#§);
               }
               while(!_loc3_);
               
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      private function §&D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§1!"§ = new Timer(400);
         }
         while(true)
         {
            this.§7!S§ = 0;
            while(_loc2_)
            {
               this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
               while(_loc2_)
               {
                  this.§1!"§.start();
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.close();
            do
            {
               this.§&V§();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(this.§7!S§ != 0)
            {
               this.§1!"§.stop();
               if(_loc5_)
               {
                  if(_loc5_)
                  {
                     if(false)
                     {
                        loop0:
                        while(true)
                        {
                           §0"#§.§9"2§("Sound_Editor_Star_1");
                           addr41:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              if(_loc5_ || param1)
                              {
                                 break;
                              }
                              addr55:
                              while(true)
                              {
                                 this.§"v§(this.§;!&§.mClip.parent.parent.x + this.§;!&§.mClip.parent.x + this.§;!&§.mClip.x,this.§;!&§.mClip.parent.parent.y + this.§;!&§.mClip.parent.y + this.§;!&§.mClip.y);
                                 continue loop0;
                              }
                              continue loop0;
                           }
                        }
                     }
                     var _loc2_:*;
                     §§push((_loc2_ = this).§7!S§);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc2_.§7!S§ = _loc3_;
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr41);
               }
               §§goto(addr132);
            }
            §§goto(addr55);
         }
         addr132:
      }
   }
}
