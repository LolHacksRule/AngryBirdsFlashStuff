package §2H§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'p§.§%+§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.Popup;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §>X§.§;!&§;
   import §>X§.§@!I§;
   import §^!y§.§'"#§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §7q§ extends Popup
   {
      
      private static const §^W§:int = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^W§ = 4000;
         }
      }
      
      private var static:§3^§;
      
      private var §?a§:Number = 1;
      
      private var §2j§:§%+§;
      
      private var §7d§:§@!I§;
      
      private var § !Q§:Vector.<§@!I§>;
      
      private var §^K§:Timer;
      
      private var §@!6§:int;
      
      private var §7!3§:int = 0;
      
      private var §%!L§:§`!T§;
      
      private var container:§`!T§;
      
      public function §7q§(param1:XML, param2:§'s§)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc3_))
         {
            super(param1,param2);
            while(true)
            {
               this.§ !Q§ = new Vector.<§@!I§>();
               while(_loc7_)
               {
                  loop2:
                  while(true)
                  {
                     this.container = param2.getItemByName("Container_LevelUp") as §`!T§;
                     do
                     {
                        this.§%!L§ = this.container.getItemByName("Container_LevelUp_Icon") as §`!T§;
                     }
                     while(!_loc7_);
                     
                     if(!_loc7_)
                     {
                        break;
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     var _loc3_:§`!<§ = this.§%!L§.getItemByName("TextField_Progress_Level") as §`!<§;
                     if(_loc7_ || param2)
                     {
                        _loc3_.setText((AngryBirdsFP11.§>" § as §'"#§).newXpLevel.toString());
                     }
                     var _loc4_:§%+§ = param2.getItemByName("MovieClip_LevelUp") as §%+§;
                     if(_loc7_)
                     {
                        this.§2j§ = getItemByName("MovieClip_LevelUp_Glow") as §%+§;
                        if(_loc7_)
                        {
                           §&!D§.addEventListener(Event.ENTER_FRAME,this.update);
                        }
                     }
                     var _loc5_:Array = new Array();
                     var _loc6_:§3^§ = §7!E§.§2=§.§7#§(§7!E§.§2=§.§<!C§(this.§%!L§.mClip,{
                        "scaleX":this.§?a§,
                        "scaleY":this.§?a§
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.8,§7!E§.§8""§),§7!E§.§2=§.§<!C§(this.§2j§.mClip,{
                        "scaleX":this.§?a§,
                        "scaleY":this.§?a§
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.6,§7!E§.§8""§),§7!E§.§2=§.§<!C§(_loc4_.mClip,{
                        "scaleX":this.§?a§,
                        "scaleY":this.§?a§
                     },{
                        "scaleX":0,
                        "scaleY":0
                     },0.4,§7!E§.§8""§));
                     if(_loc7_ || this)
                     {
                        _loc5_.push(_loc6_);
                        loop5:
                        while(true)
                        {
                           if(_loc5_.length > 0)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§!_§();
                                 loop7:
                                 while(!_loc8_)
                                 {
                                    this.static = §7!E§.§2=§.§2!u§.apply(§7!E§.§2=§,_loc5_);
                                    while(true)
                                    {
                                       §§push(this.static);
                                       loop13:
                                       while(true)
                                       {
                                          §§pop().onComplete = this.§'!r§;
                                          addr251:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(this.static);
                                             if(!(_loc7_ || this))
                                             {
                                                continue loop13;
                                             }
                                             §§pop().play();
                                             while(_loc8_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop13;
                                          }
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           loop8:
                           while(true)
                           {
                              §5!U§.playSound("Sound_Star_Pig");
                              while(_loc7_)
                              {
                                 §5!U§.playSound("Sound_Editor_Unlock");
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc8_ && param1))
                                 {
                                    if(_loc7_ || this)
                                    {
                                       break loop8;
                                    }
                                    §§goto(addr251);
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr242);
                           }
                           return;
                        }
                     }
                     §§goto(addr264);
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.open(param1);
         }
         var _loc2_:Timer = new Timer(§^W§,1);
         if(!_loc4_)
         {
            _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,this.§!!v§);
            do
            {
               _loc2_.start();
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      protected function §!!v§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.close();
         }
      }
      
      private function §'!r§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§3^§ = §7!E§.§2=§.§<!C§(this.§2j§.mClip,{"rotation":360},{"rotation":0},§^W§ / 1000);
         if(_loc2_)
         {
            _loc1_.play();
         }
      }
      
      public function update(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@!I§ = null;
         var _loc2_:int = getTimer() - this.§7!3§;
         if(!(_loc6_ && _loc2_))
         {
            this.§7!3§ = getTimer();
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  if(§§pop() > 100)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§goto(addr67);
                     }
                  }
                  §§push(0);
               }
               for each(_loc3_ in this.§ !Q§)
               {
                  if(_loc7_)
                  {
                     _loc3_.update(_loc2_);
                  }
               }
               return;
            }
         }
         addr67:
      }
      
      private function §#!x§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var splash:§@!I§ = null;
         if(_loc5_)
         {
            if(this.§^K§)
            {
               if(_loc5_)
               {
                  this.§^K§.stop();
                  try
                  {
                     §§goto(addr35);
                  }
                  catch(e:Error)
                  {
                  }
               }
               §§goto(addr35);
            }
            §§goto(addr63);
         }
         addr35:
         this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
         if(_loc5_ || this)
         {
            addr63:
            var _loc2_:int = 0;
            if(!_loc4_)
            {
               var _loc3_:* = this.§ !Q§;
               if(!(_loc4_ && this))
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
                              if(§&!D§.contains(splash))
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §&!D§.removeChild(splash);
                                    while(true)
                                    {
                                    }
                                    addr123:
                                 }
                                 §§goto(addr123);
                              }
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§pop().§§slot[1].clean();
                                 if(_loc5_ || this)
                                 {
                                    if(false)
                                    {
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr136);
               }
               §§goto(addr123);
            }
            addr136:
            if(!(_loc4_ && this))
            {
               this.§ !Q§ = new Vector.<§@!I§>();
            }
            §§goto(addr160);
         }
         addr160:
      }
      
      private function §0,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§7d§ = new §@!I§(§>"§.§^!N§,§>"§.§5!P§,param1,param2,§@!I§.§4"5§,80,0,§;!&§.§3!O§);
            while(true)
            {
               §&!D§.addChild(this.§7d§);
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     this.§ !Q§.push(this.§7d§);
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^K§ = new Timer(400);
            while(true)
            {
               this.§@!6§ = 0;
            }
            addr79:
         }
         while(true)
         {
            this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
            for(; !(_loc1_ && _loc2_); this.§^K§.start(),if(_loc2_)
            {
               return;
            })
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr79);
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.close();
            do
            {
               this.§#!x§();
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(this.§@!6§ == 0)
            {
               if(!_loc5_)
               {
                  this.§0,§(this.§%!L§.mClip.parent.parent.x + this.§%!L§.mClip.parent.x + this.§%!L§.mClip.x,this.§%!L§.mClip.parent.parent.y + this.§%!L§.mClip.parent.y + this.§%!L§.mClip.y);
                  addr24:
                  if(_loc5_ && _loc2_)
                  {
                  }
                  §§goto(addr113);
               }
               addr83:
               var _loc2_:*;
               §§push((_loc2_ = this).§@!6§);
               if(_loc4_ || _loc2_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc4_)
               {
                  _loc2_.§@!6§ = _loc3_;
               }
            }
            else
            {
               this.§^K§.stop();
               if(!_loc5_)
               {
                  §§goto(addr83);
               }
            }
            addr113:
            return;
         }
         §§goto(addr24);
      }
   }
}
