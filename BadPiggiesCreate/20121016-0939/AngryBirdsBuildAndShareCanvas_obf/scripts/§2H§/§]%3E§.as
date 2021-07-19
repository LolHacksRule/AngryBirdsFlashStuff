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
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §]>§ extends Popup
   {
       
      
      private var §8!g§:§3^§;
      
      private var §?!_§:§3^§;
      
      private var §?a§:Number = 1;
      
      private var §7d§:§@!I§;
      
      private var § !Q§:Vector.<§@!I§>;
      
      private var §^K§:Timer;
      
      private var §@!6§:int;
      
      private var §%"3§:Array;
      
      private var §7!3§:int = 0;
      
      private var §=!d§:int = 0;
      
      public function §]>§(param1:XML, param2:§'s§, param3:int)
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc16_:MovieClip = null;
         var _loc24_:§3^§ = null;
         if(!(_loc28_ && param1))
         {
            this.§%"3§ = new Array();
            while(true)
            {
               super(param1,param2);
            }
            addr70:
         }
         while(true)
         {
            while(true)
            {
               this.§ !Q§ = new Vector.<§@!I§>();
               do
               {
                  this.§=!d§ = param3;
               }
               while(!(_loc27_ || param3));
               
               if(_loc28_ && param3)
               {
                  break;
               }
               if(!_loc28_)
               {
                  if(false)
                  {
                     continue;
                  }
                  var _loc4_:Number = (getItemByName("ContainerLevelUp") as §`!T§).width;
                  var _loc5_:Number = (getItemByName("ContainerLevelUp") as §`!T§).height;
                  var _loc6_:Number = (getItemByName("ContainerLevelUp") as §`!T§).x;
                  var _loc7_:Number;
                  §§push(_loc7_ = (getItemByName("ContainerLevelUp") as §`!T§).y);
                  if(!(_loc28_ && param3))
                  {
                     §§push(_loc5_);
                     if(!_loc28_)
                     {
                        §§push(§§pop() / 2);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc27_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  §§push(_loc6_);
                  if(_loc27_ || param2)
                  {
                     §§push(_loc4_);
                     if(!(_loc28_ && param1))
                     {
                        §§push(§§pop() / 2);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc28_ && this))
                     {
                        addr147:
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     var _loc10_:Class;
                     var _loc11_:MovieClip = new (_loc10_ = §>!]§.§1!8§("SurprisePigIcon"))();
                     var _loc12_:MovieClip = new _loc10_();
                     var _loc13_:MovieClip = new _loc10_();
                     if(!_loc28_)
                     {
                        §§push(this.§%"3§);
                        loop4:
                        while(true)
                        {
                           §§pop().push(_loc11_);
                           addr204:
                           while(true)
                           {
                              addr187:
                              while(true)
                              {
                                 §§push(this.§%"3§);
                                 continue loop4;
                              }
                           }
                        }
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr147);
               }
               else
               {
                  §§goto(addr70);
               }
            }
         }
      }
      
      private function §,!X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!_§();
         }
      }
      
      public function update(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@!I§ = null;
         var _loc2_:int = getTimer() - this.§7!3§;
         if(!(_loc6_ && param1))
         {
            this.§7!3§ = getTimer();
            if(_loc7_ || this)
            {
               §§push(_loc2_);
               if(_loc7_ || _loc3_)
               {
                  if(§§pop() > 100)
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr67);
                     }
                     else
                     {
                        addr68:
                        §§push(0);
                     }
                  }
                  §§goto(addr68);
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
            §§goto(addr68);
         }
         addr67:
      }
      
      private function §#!x§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var splash:§@!I§ = null;
         if(!_loc5_)
         {
            if(this.§^K§)
            {
               if(!_loc5_)
               {
                  this.§^K§.stop();
                  try
                  {
                     addr34:
                     this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
                     if(_loc4_ || _loc2_)
                     {
                        addr62:
                        var _loc2_:int = 0;
                        if(_loc4_ || this)
                        {
                           var _loc3_:* = this.§ !Q§;
                           if(!_loc5_)
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
                                          if(!§&!D§.contains(splash))
                                          {
                                             continue loop1;
                                          }
                                          if(!_loc5_)
                                          {
                                             §&!D§.removeChild(splash);
                                          }
                                          while(true)
                                          {
                                             continue loop1;
                                             addr97:
                                             §§pop().§§slot[1].clean();
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             if(_loc5_)
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
                                    }
                                 }
                              }
                              if(!_loc5_)
                              {
                                 this.§ !Q§ = new Vector.<§@!I§>();
                                 §§goto(addr154);
                              }
                              addr154:
                              return;
                              addr135:
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr154);
                  }
                  catch(e:Error)
                  {
                  }
               }
               §§goto(addr34);
            }
            §§goto(addr62);
         }
         §§goto(addr34);
      }
      
      private function §0,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§7d§ = new §@!I§(§>"§.§^!N§,§>"§.§5!P§,param1,param2,§@!I§.§4"5§,40,0,§;!&§.§3!O§);
            while(true)
            {
               §&!D§.addChild(this.§7d§);
               while(!_loc3_)
               {
                  this.§ !Q§.push(this.§7d§);
                  if(!_loc3_)
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §!_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§^K§ = new Timer(250);
            loop0:
            while(true)
            {
               this.§@!6§ = 0;
               while(true)
               {
                  this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§^K§.start();
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.close();
            do
            {
               this.§#!x§();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:§`!<§ = null;
         if(!(_loc7_ && _loc3_))
         {
            §§push(this.§@!6§);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() == 0)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     addr50:
                     §§push(1);
                     if(!(_loc7_ && _loc2_))
                     {
                        addr58:
                        _loc2_ = §§pop();
                        addr59:
                        §§push(0);
                     }
                     loop0:
                     for each(_loc3_ in this.§%"3§)
                     {
                        if(_loc8_)
                        {
                           if(_loc3_.currentLabel != "filled")
                           {
                              continue;
                           }
                           if(_loc8_)
                           {
                              addr80:
                              _loc3_.gotoAndStop("empty");
                              if(_loc8_ || _loc2_)
                              {
                                 addr90:
                                 (getItemByName("TextField_XPBar") as §`!<§).setVisibility(true);
                              }
                              (_loc4_ = getItemByName("TextField_XPBar") as §`!<§).setVisibility(true);
                              if(!(_loc7_ && param1))
                              {
                                 _loc4_.setText("+020");
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    §§push(-_loc4_.width);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    §§pop().x = §§pop();
                                    loop2:
                                    for(; _loc8_ || param1; if(_loc7_ && this)
                                    {
                                       continue;
                                    },_loc2_++,if(_loc8_)
                                    {
                                       §§goto(addr119);
                                    },§§goto(addr160))
                                    {
                                       §§push(_loc4_);
                                       §§push(-_loc4_.height);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(2);
                                          if(!_loc7_)
                                          {
                                             addr208:
                                             §§push(§§pop() / §§pop());
                                             if(_loc8_)
                                             {
                                                §§push(8);
                                             }
                                             §§pop().y = §§pop();
                                             loop3:
                                             while(true)
                                             {
                                                _loc3_.addChild(_loc4_.mClip);
                                                while(true)
                                                {
                                                   §5!U§.playSound("Sound_Editor_Unlock");
                                                   while(_loc8_)
                                                   {
                                                      §5!U§.playSound("Sound_Star_Pig");
                                                      loop6:
                                                      while(true)
                                                      {
                                                         addr145:
                                                         while(true)
                                                         {
                                                            this.§0,§(_loc3_.x + _loc3_.parent.x,_loc3_.y + _loc3_.parent.y);
                                                            addr160:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop0;
                                                      }
                                                      if(!(_loc7_ && this))
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr208);
                                    }
                                 }
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr80);
                     }
                     if(_loc8_ || param1)
                     {
                     }
                     §§goto(addr249);
                  }
                  §§goto(addr59);
               }
               else
               {
                  this.§^K§.stop();
                  if(_loc8_)
                  {
                     §§goto(addr249);
                  }
               }
               addr249:
               var _loc5_:*;
               §§push((_loc5_ = this).§@!6§);
               if(_loc8_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc6_:* = §§pop();
               if(!(_loc7_ && this))
               {
                  _loc5_.§@!6§ = _loc6_;
               }
               return;
            }
            §§goto(addr58);
         }
         §§goto(addr50);
      }
   }
}
