package §^"F§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §,l§.§#!,§;
   import §-p§.§4!`§;
   import §-r§.§!"M§;
   import §0D§.§3!R§;
   import §1!t§.§!>§;
   import §4!<§.§%6§;
   import §4!<§.§&=§;
   import §4!<§.§3+§;
   import §4!<§.§^!Z§;
   import §5!Y§.§8y§;
   import §5!Y§.§9"6§;
   import §7"G§.§7!n§;
   import §9!n§.LevelManager;
   import §9@§.§`!=§;
   import §>!G§.§20§;
   import §@!"§.§?l§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §!!I§ extends EventDispatcher
   {
      
      public static var §["@§:Boolean = false;
      
      public static var §&P§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §["@§ = false;
            do
            {
               §&P§ = true;
            }
            while(!_loc1_);
            
         }
      }
      
      private const §]"E§:Number = -125;
      
      protected var §2"@§:§`_§;
      
      private var §""J§:Number = 0;
      
      private var §0t§:Number = 0;
      
      private var §,"#§:Number;
      
      private var §1m§:Number;
      
      private var §4"6§:Timer;
      
      private var §,!j§:Boolean;
      
      private var §<!b§:MovieClip;
      
      public function §!!I§(param1:§`_§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§2"@§ = param1;
               while(!(_loc2_ && param1))
               {
                  this.init();
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      private function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Sprite = null;
         var _loc2_:MovieClip = null;
         if(_loc3_)
         {
            this.§1m§ = (this.§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).width - 25;
            loop0:
            while(true)
            {
               this.§,"#§ = (this.§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).x;
               loop1:
               while(true)
               {
                  addr56:
                  while(true)
                  {
                     this.§4"6§ = new Timer(1000,1);
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr108);
      }
      
      protected function §!!+§(param1:§20§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1.state);
            if(_loc3_ || this)
            {
               §§push(§4!`§.§6!Y§);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        while(true)
                        {
                           §§push((§?l§.§'h§ as §%6§).§4!]§());
                           addr114:
                           while(true)
                           {
                              §§push(this.getMaxPowerupsToUse());
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr120:
                                          §§goto(addr25);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             this.§<!b§.gotoAndPlay("start");
                                          }
                                          if(_loc3_ || param1)
                                          {
                                          }
                                       }
                                       §§goto(addr25);
                                    }
                                 }
                              }
                           }
                        }
                        addr109:
                     }
                     §§goto(addr120);
                  }
                  addr25:
                  while(true)
                  {
                     §§push(this.getMaxPowerupsToUse());
                     if(_loc2_)
                     {
                        continue loop2;
                     }
                     §§push(2);
                     if(_loc2_ && _loc3_)
                     {
                        continue loop3;
                     }
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §§push(§§pop() > §§pop());
                     if(_loc2_)
                     {
                        continue loop5;
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue loop4;
                     }
                  }
                  addr25:
                  return;
               }
            }
            §§goto(addr114);
         }
         §§goto(addr109);
      }
      
      protected function §%O§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(Boolean(this.§<!b§));
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr90:
                     while(true)
                     {
                        §§push(this.§<!b§.currentFrameLabel == "end");
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr89:
               }
               loop0:
               for(; §§pop(); §§goto(addr90))
               {
                  if(!(_loc2_ && this))
                  {
                     while(true)
                     {
                        this.§<!b§.stop();
                     }
                     addr66:
                  }
                  while(true)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr66);
      }
      
      public function activate() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§!>§ = null;
         var _loc2_:§^"K§ = null;
         if(!(_loc6_ && _loc1_))
         {
            this.§#!p§();
            loop0:
            while(true)
            {
               this.§]n§(0);
               while(true)
               {
                  this.§;=§();
                  addr138:
                  while(true)
                  {
                     this.§2"@§.setText(§#!,§.§&"5§.§]![§(§4!2§.§6"O§.§1!#§).toString(),"TextField_PowerUpCountME");
                     loop3:
                     while(true)
                     {
                        §§push(§?l§.§'h§);
                        addr110:
                        while(true)
                        {
                           (§§pop() as §%6§).§+"3§.§'k§();
                           continue loop3;
                        }
                     }
                  }
                  addr78:
                  if(_loc5_ || this)
                  {
                     this.§<!b§.visible = false;
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            if(this.§<!b§)
            {
               §§goto(addr76);
            }
            §§goto(addr56);
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§4"6§)
            {
               while(true)
               {
                  this.§4"6§.stop();
                  addr119:
                  while(true)
                  {
                  }
                  addr74:
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  addr91:
                  loop5:
                  while(true)
                  {
                     §&P§ = §["@§;
                     if(_loc1_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        addr56:
                        while(true)
                        {
                           this.§<!b§.removeEventListener(Event.ENTER_FRAME,this.§%O§);
                        }
                        addr56:
                     }
                     while(true)
                     {
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_ && _loc1_)
                              {
                                 break loop5;
                              }
                              §§goto(addr74);
                           }
                           while(true)
                           {
                              (§?l§.§'h§.getController() as §!"M§).removeEventListener(§20§.STATE_CHANGED,this.§!!+§);
                           }
                           addr112:
                        }
                        while(true)
                        {
                           if(!this.§<!b§)
                           {
                              continue loop5;
                           }
                           §§goto(addr56);
                        }
                     }
                  }
                  §§goto(addr119);
               }
            }
            while(true)
            {
               §#!,§.§&"5§.removeEventListener(Event.CHANGE,this.§+r§);
               §§goto(addr112);
               §§goto(addr119);
            }
         }
         §§goto(addr56);
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(§?l§.§'h§.slingshot.mSlingShotState == §&=§.§+!`§)
            {
               loop0:
               while(true)
               {
                  this.§4"6§.reset();
                  addr89:
                  while(true)
                  {
                     this.§4"6§.start();
                     addr78:
                     while(true)
                     {
                        this.setPowerupActive(§4!2§.§-Y§.§,§,false);
                        addr71:
                        addr73:
                        while(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               this.§]n§(param1);
               if(_loc2_ || this)
               {
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr78);
               }
               §§goto(addr71);
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr78);
      }
      
      public function §"" §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!§["@§)
            {
               §["@§ = true;
               if(_loc1_)
               {
                  addr55:
               }
               return;
            }
            if(!_loc1_)
            {
               addr52:
               §["@§ = false;
            }
            §§goto(addr55);
         }
         §§goto(addr52);
      }
      
      public function §&Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!§["@§)
            {
               do
               {
                  this.§4"6§.reset();
                  do
                  {
                     this.§4"6§.start();
                     do
                     {
                        §["@§ = false;
                     }
                     while(_loc2_ && _loc1_);
                     
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_);
               
               addr71:
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §9!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(§["@§)
            {
               loop0:
               while(true)
               {
                  this.§4"6§.reset();
                  while(true)
                  {
                     this.§4"6§.start();
                     while(_loc1_ || _loc2_)
                     {
                        continue loop0;
                        §["@§ = false;
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr24);
                        }
                     }
                  }
               }
               addr81:
            }
            addr24:
            return;
         }
         §§goto(addr81);
      }
      
      private function §?Q§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §["@§ = false;
         }
      }
      
      public function get §@3§() : Boolean
      {
         return §["@§;
      }
      
      public function set §@3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §["@§ = param1;
         }
      }
      
      public function §-!T§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§#!,§.§&"5§.§]![§(§4!2§.§6"O§.§1!#§));
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§`!=§.§;"D§(_loc1_));
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            this.§2"@§.setText(_loc2_,"TextField_PowerUpCountME");
         }
      }
      
      public function usePowerup(param1:String) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§^"K§ = §4!2§.§7=§(param1);
         if(!_loc7_)
         {
            if(_loc2_ == null)
            {
               if(_loc6_ || _loc2_)
               {
                  throw new Error("Unknown powerup: " + param1);
               }
            }
         }
         §§push(§#!,§.§&"5§.§]![§(_loc2_.§1!#§));
         if(_loc6_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc7_ && _loc3_))
         {
            if(_loc3_ > 0)
            {
               loop0:
               while(true)
               {
                  §8y§.§7"?§(this.§2"@§,param1);
                  loop1:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        loop2:
                        do
                        {
                           §8y§.showTutorials(this.§2"@§);
                           while(_loc6_ || _loc2_)
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 this.setPowerupActive(param1,false);
                                 if(_loc6_ || _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 continue;
                              }
                              if(_loc7_ && this)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        while(false);
                        
                        §§push(_loc2_.§1!#§);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(§§pop());
                        }
                        var _loc4_:*;
                        §§push(_loc4_ = §§pop());
                        if(_loc6_)
                        {
                           §§push(§4!2§.§`!4§.§1!#§);
                           if(_loc6_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc7_)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc6_ || _loc2_)
                                       {
                                          addr166:
                                          §§pop();
                                          if(_loc6_ || param1)
                                          {
                                             §§push(_loc4_);
                                             loop21:
                                             while(true)
                                             {
                                                §§push(§4!2§.§<"O§.§1!#§);
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   addr252:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr253:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr255:
                                                               while(true)
                                                               {
                                                                  addr194:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc6_ || param1))
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     §§push(§4!2§.§3"$§.§1!#§);
                                                                     if(!(_loc6_ || _loc3_))
                                                                     {
                                                                        continue loop22;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(!(_loc6_ || _loc3_))
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        addr257:
                                                                        var _loc5_:* = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           if((§?l§.§'h§ as §%6§).§4!]§() >= this.getMaxPowerupsToUse())
                                                                           {
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 this.§4"6§.reset();
                                                                                 addr331:
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§4"6§.start();
                                                                                    addr312:
                                                                                    addr319:
                                                                                    addr302:
                                                                                    while(_loc7_ && _loc2_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§push(false);
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr303:
                                                                                       addr307:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§goto(addr312);
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§#!p§();
                                                                              do
                                                                              {
                                                                                 this.§;=§();
                                                                              }
                                                                              while(_loc7_);
                                                                              
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr302);
                                                                              }
                                                                              §§goto(addr303);
                                                                              §§goto(addr307);
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                  }
                                                                  continue loop22;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§?l§.§'h§);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     if((§§pop().slingshot as §3+§).§9!L§.length <= 0)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr240:
                                                                           §§push(true);
                                                                           if(_loc6_)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           break;
                                                                        }
                                                                     }
                                                                     addr175:
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(§?l§.§'h§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        addr180:
                                                                        (§§pop() as §%6§).§+"3§.usePowerup(_loc4_);
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(true);
                                                                              break loop17;
                                                                           }
                                                                           §§goto(addr194);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(_loc6_)
                                                                           {
                                                                              continue loop19;
                                                                              §§goto(addr180);
                                                                           }
                                                                           addr244:
                                                                        }
                                                                        §§goto(addr255);
                                                                     }
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr244);
                                                            }
                                                            §§goto(addr175);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr248:
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr252);
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr248);
                     }
                  }
                  §§goto(addr122);
               }
            }
            §9"6§.§;!w§(_loc2_.§1!#§);
            addr122:
            return true;
         }
         §§goto(addr114);
      }
      
      public function § A§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§,j§();
         }
         var _loc2_:* = "";
         var _loc5_:* = param1;
         if(!(_loc7_ && param1))
         {
            §§push(§4!2§.§`!4§.§1!#§);
            if(_loc6_)
            {
               §§push(_loc5_);
               if(!(_loc7_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc7_)
                     {
                        addr159:
                        §§push(0);
                        if(_loc7_ && this)
                        {
                           addr307:
                        }
                     }
                     else
                     {
                        addr219:
                        §§push(2);
                        if(!_loc6_)
                        {
                           addr247:
                        }
                     }
                  }
                  else
                  {
                     §§push(§4!2§.§<"O§.§1!#§);
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(_loc5_);
                        if(_loc6_)
                        {
                           addr181:
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(!(_loc7_ && this))
                                 {
                                    addr326:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          addr131:
                                          _loc2_ = "MovieClip_PowerUp_SuperSeeds";
                                          break;
                                          addr132:
                                       case 1:
                                          addr124:
                                          _loc2_ = "MovieClip_PowerUp_KingSling";
                                          addr125:
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          §§goto(addr132);
                                          break;
                                       case 2:
                                          addr111:
                                          _loc2_ = "MovieClip_PowerUp_SlingScope";
                                          if(_loc6_ || param1)
                                          {
                                             break;
                                          }
                                          §§goto(addr125);
                                          break;
                                       case 3:
                                          addr105:
                                          _loc2_ = "MovieClip_PowerUp_Birdquake";
                                          break;
                                       case 4:
                                          addr95:
                                          §§push("MovieClip_PowerUp_TNTDRop");
                                          if(!_loc7_)
                                          {
                                             if(_loc6_)
                                             {
                                                _loc2_ = §§pop();
                                                break;
                                                addr100:
                                             }
                                             else
                                             {
                                                §§goto(addr131);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr105);
                                          }
                                          break;
                                       case 5:
                                          addr78:
                                          §§push("MovieClip_PowerUp_Wingman");
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   _loc2_ = §§pop();
                                                   break;
                                                   addr90:
                                                }
                                                else
                                                {
                                                   §§goto(addr124);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr111);
                                             }
                                             §§goto(addr124);
                                          }
                                          else
                                          {
                                             §§goto(addr95);
                                          }
                                       case 6:
                                          §§push("MovieClip_PowerUp_Mushroom");
                                          if(_loc6_ || this)
                                          {
                                             _loc2_ = §§pop();
                                             if(!(_loc7_ && param1))
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr90);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr78);
                                          }
                                          §§goto(addr100);
                                       default:
                                          return;
                                    }
                                    var _loc3_:§0!Y§ = this.§2"@§.getItemByName("Container_PowerUp_Intro2") as §0!Y§;
                                    if(_loc6_)
                                    {
                                       _loc3_.visible = true;
                                    }
                                    var _loc4_:§^n§;
                                    (_loc4_ = _loc3_.getItemByName(_loc2_) as §^n§).visible = true;
                                    if(!_loc7_)
                                    {
                                       _loc4_.mClip.gotoAndPlay(0);
                                       while(true)
                                       {
                                          _loc4_.mClip.addEventListener(Event.ENTER_FRAME,this.§`"#§);
                                          while(_loc6_ || this)
                                          {
                                             dispatchEvent(new §7!n§(§7!n§.§?"?§,_loc4_.mClip));
                                             if(!(_loc6_ || this))
                                             {
                                                continue;
                                             }
                                             return;
                                             addr384:
                                          }
                                       }
                                    }
                                    §§goto(addr384);
                                 }
                                 §§goto(addr326);
                              }
                              else
                              {
                                 addr299:
                                 §§push(5);
                                 if(_loc6_ || this)
                                 {
                                    §§goto(addr307);
                                 }
                                 else
                                 {
                                    addr321:
                                    §§goto(addr326);
                                 }
                              }
                              §§goto(addr326);
                           }
                           else
                           {
                              §§push(§4!2§.§3"$§.§1!#§);
                              if(!_loc7_)
                              {
                                 §§push(_loc5_);
                                 if(_loc6_)
                                 {
                                    addr211:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          §§goto(addr219);
                                       }
                                       else
                                       {
                                          addr239:
                                          §§push(3);
                                          if(_loc7_ && param1)
                                          {
                                             §§goto(addr307);
                                          }
                                          §§goto(addr326);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§4!2§.§8"1§.§1!#§);
                                       if(!_loc7_)
                                       {
                                          addr228:
                                          §§push(_loc5_);
                                          if(_loc6_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§goto(addr239);
                                                }
                                                else
                                                {
                                                   addr264:
                                                   §§push(4);
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      §§goto(addr326);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr321);
                                                   }
                                                }
                                                §§goto(addr326);
                                             }
                                             else
                                             {
                                                §§push(§4!2§.§%!U§.§1!#§);
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc6_)
                                                   {
                                                      addr256:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            §§goto(addr264);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr299);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§4!2§.§-Y§.§1!#§);
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr283:
                                                            §§push(_loc5_);
                                                            if(_loc7_ && param1)
                                                            {
                                                            }
                                                            addr312:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               addr313:
                                                               §§push(6);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§goto(addr321);
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr326);
                                                               §§push(7);
                                                            }
                                                            §§goto(addr326);
                                                         }
                                                         addr311:
                                                         §§goto(addr312);
                                                         §§push(_loc5_);
                                                      }
                                                      §§goto(addr326);
                                                   }
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         §§goto(addr299);
                                                      }
                                                      §§goto(addr326);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr311);
                                                      §§push(§4!2§.§!! §.§1!#§);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr311);
                                             }
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr326);
                                 }
                                 §§goto(addr283);
                              }
                              §§goto(addr228);
                           }
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr311);
                  }
                  §§goto(addr326);
               }
               §§goto(addr181);
            }
            §§goto(addr228);
         }
         §§goto(addr159);
      }
      
      private function §`"#§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(!_loc3_)
         {
            if(_loc2_.currentFrame == _loc2_.totalFrames)
            {
               do
               {
                  this.§,j§();
                  do
                  {
                     dispatchEvent(new §7!n§(§7!n§.§+F§,_loc2_));
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(_loc3_ && _loc2_);
               
               addr78:
            }
            return;
         }
         §§goto(addr78);
      }
      
      private function §,j§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!>§ = null;
         var _loc1_:§0!Y§ = this.§2"@§.getItemByName("Container_PowerUp_Intro2") as §0!Y§;
         var _loc3_:int = 0;
         loop0:
         for each(_loc2_ in _loc1_.§+?§)
         {
            if(_loc6_ || _loc1_)
            {
               _loc2_.mClip.stop();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     _loc2_.mClip.removeEventListener(Event.ENTER_FRAME,this.§`"#§);
                     do
                     {
                        _loc2_.visible = false;
                     }
                     while(_loc5_);
                     
                     if(!(_loc6_ || _loc3_))
                     {
                        break;
                        addr82:
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr82);
         }
         if(_loc6_)
         {
            _loc1_.visible = false;
         }
      }
      
      private function §3i§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§["@§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§0t§);
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(§§pop() <= 0)
                        {
                           §§push(this.§0t§);
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              if(_loc2_ || this)
                              {
                                 §§push(0);
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc2_ || param1))
                                                {
                                                   addr170:
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§0t§);
                                                      if(_loc2_)
                                                      {
                                                         §§push(0.6);
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().§0t§ = §§pop();
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(this.§0t§);
                                                            continue loop1;
                                                         }
                                                         addr199:
                                                         if(_loc3_)
                                                         {
                                                            addr241:
                                                            if(this.§0t§ < 360)
                                                            {
                                                               §§goto(addr242);
                                                            }
                                                         }
                                                         if(this.§0t§ > 360)
                                                         {
                                                            §§goto(addr200);
                                                         }
                                                         else
                                                         {
                                                            addr19:
                                                            §§push(false);
                                                            if(!_loc3_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr28);
                                                            addr161:
                                                         }
                                                      }
                                                      addr184:
                                                   }
                                                   break;
                                                }
                                                if(_loc2_)
                                                {
                                                   this.§0t§ = 0;
                                                   addr99:
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      addr28:
                                                      §§push(true);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(_loc2_ || param1)
                                                         {
                                                            return §§pop();
                                                         }
                                                         break loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr146:
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               addr107:
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                               }
                                                            }
                                                            addr160:
                                                         }
                                                         else
                                                         {
                                                            addr242:
                                                            §§push(this);
                                                            §§push(this.§0t§);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               §§push(0.6);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() * param1);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().§0t§ = §§pop();
                                                            addr221:
                                                            addr220:
                                                            if(this.§0t§ > 360)
                                                            {
                                                               addr222:
                                                               this.§0t§ = 360;
                                                               break;
                                                            }
                                                            §§push(true);
                                                            continue loop0;
                                                            addr264:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(true);
                                                         break loop0;
                                                         addr203:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   addr200:
                                                   this.§0t§ = 360;
                                                }
                                                §§goto(addr203);
                                                §§goto(addr242);
                                             }
                                             §§goto(addr99);
                                          }
                                          §§goto(addr19);
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr199);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      this.§0t§ = 0;
                                                      §§goto(addr146);
                                                   }
                                                   else if(_loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr161);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr264);
                                                      }
                                                   }
                                                   §§goto(addr222);
                                                }
                                                else
                                                {
                                                   §§goto(addr184);
                                                }
                                             }
                                             §§goto(addr146);
                                          }
                                          break;
                                       }
                                       addr133:
                                    }
                                    §§goto(addr107);
                                 }
                              }
                              §§goto(addr241);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr242);
               }
               §§goto(addr241);
            }
            return §§pop();
         }
         §§goto(addr160);
      }
      
      private function §9&§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(§["@§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§""J§);
                  loop1:
                  for(; !(_loc2_ && this); §§push(this.§""J§),if(_loc2_ && this)
                  {
                     continue;
                  },§§push(0),if(!_loc2_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        §§goto(addr187);
                     }
                     §§goto(addr36);
                  },§§goto(addr239))
                  {
                     §§push(0);
                     loop2:
                     while(§§pop() > §§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§""J§);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(0.5);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop() * param1);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§""J§ = §§pop();
                           loop4:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    continue loop1;
                                 }
                                 if(!_loc2_)
                                 {
                                    addr332:
                                    §§push(this.§""J§);
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(this.§1m§);
                                          if(!_loc2_)
                                          {
                                             if(_loc3_)
                                             {
                                                addr343:
                                                §§push(20);
                                                loop11:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         while(_loc3_ || _loc3_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  break loop4;
                                                               }
                                                               addr226:
                                                               break loop2;
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(20);
                                                               addr429:
                                                               addr396:
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr430:
                                                                  addr392:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§""J§);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(0.5);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() * param1);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().§""J§ = §§pop();
                                                                        §§push(this.§""J§);
                                                                        break;
                                                                        addr443:
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               break loop11;
                                                            }
                                                         }
                                                         addr398:
                                                         if(§§pop() > §§pop())
                                                         {
                                                            addr399:
                                                            §§push(this);
                                                            §§push(this.§1m§);
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               §§push(§§pop() - 20);
                                                            }
                                                            §§pop().§""J§ = §§pop();
                                                         }
                                                         return true;
                                                         addr359:
                                                      }
                                                      §§goto(addr429);
                                                   }
                                                   break;
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr398);
                                                §§push(§§pop() - §§pop());
                                                addr344:
                                             }
                                             §§goto(addr430);
                                          }
                                          §§goto(addr359);
                                       }
                                       §§goto(addr392);
                                    }
                                    addr335:
                                 }
                                 else
                                 {
                                    §§push(this.§""J§);
                                    addr452:
                                 }
                                 §§goto(addr426);
                              }
                              else if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr226);
                              addr196:
                              this.§""J§ = 0;
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 continue loop3;
                              }
                              if(_loc3_ || this)
                              {
                                 §§push(this.§2"@§);
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push("Container_PowerUpButtons");
                                       loop7:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
                                             while(true)
                                             {
                                                §§push(false);
                                                addr171:
                                                while(true)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   addr172:
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(this.§2"@§);
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push("Button_PowerUpMenuOpenWhole");
                                                         addr139:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().getItemByName(§§pop()));
                                                            addr140:
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               addr141:
                                                               while(!(_loc2_ && param1))
                                                               {
                                                                  §§pop().setVisibility(§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!(_loc2_ && _loc3_))
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if((§?l§.§'h§ as §%6§).§4!]§() >= this.getMaxPowerupsToUse())
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(!(_loc3_ || this))
                                                                                       {
                                                                                          §§push(this.§""J§);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr382:
                                                                                       }
                                                                                       continue loop20;
                                                                                       break loop1;
                                                                                    }
                                                                                    addr187:
                                                                                    addr318:
                                                                                    addr274:
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       if(!(_loc3_ || this))
                                                                                       {
                                                                                          addr449:
                                                                                          §§push(this.§2"@§.getItemByName("Container_PowerUpButtons"));
                                                                                          break loop7;
                                                                                       }
                                                                                       §§goto(addr196);
                                                                                    }
                                                                                    §§push(this);
                                                                                    §§push(this.§1m§);
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       §§push(§§pop() - 20);
                                                                                    }
                                                                                    §§pop().§""J§ = §§pop();
                                                                                    §§push(true);
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr398);
                                                                                    addr331:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr132:
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr36:
                                                                              §§push(true);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr443);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               continue loop19;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr170:
                                          }
                                          §§goto(addr449);
                                          addr102:
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop().getItemByName(§§pop()));
                                          if(_loc3_ || param1)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(false);
                                                   if(!_loc2_)
                                                   {
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         §§pop().setVisibility(§§pop());
                                                         §§goto(addr132);
                                                      }
                                                      addr451:
                                                      §§pop().setVisibility(§§pop());
                                                      §§goto(addr452);
                                                   }
                                                   §§goto(addr141);
                                                }
                                                break;
                                             }
                                             §§goto(addr170);
                                             §§goto(addr171);
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr451);
                                       §§push(true);
                                    }
                                    §§goto(addr449);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push("Container_PowerUpButtons");
                                    if(_loc3_ || this)
                                    {
                                       §§goto(addr102);
                                    }
                                    §§goto(addr139);
                                 }
                              }
                              §§goto(addr399);
                           }
                           §§push(this);
                           §§push(this.§1m§);
                           if(_loc3_ || this)
                           {
                              §§push(§§pop() - 20);
                           }
                           §§pop().§""J§ = §§pop();
                           §§goto(addr382);
                        }
                     }
                     §§push(false);
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr274);
                     }
                     else
                     {
                        §§goto(addr36);
                     }
                  }
                  while(true)
                  {
                     if(!(_loc2_ && this))
                     {
                        §§push(this.§1m§);
                        if(_loc3_)
                        {
                           §§push(20);
                           if(_loc3_ || _loc2_)
                           {
                              addr308:
                              §§push(§§pop() - §§pop());
                              if(!_loc2_)
                              {
                                 if(!(_loc2_ && param1))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       §§goto(addr318);
                                    }
                                    §§goto(addr187);
                                 }
                                 else
                                 {
                                    §§goto(addr396);
                                 }
                              }
                              else
                              {
                                 §§goto(addr398);
                              }
                              §§goto(addr398);
                           }
                           §§goto(addr344);
                        }
                        §§goto(addr308);
                     }
                     §§goto(addr335);
                     §§goto(addr382);
                  }
               }
               §§goto(addr449);
            }
         }
         §§goto(addr172);
      }
      
      private function §]n§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Rectangle = null;
         §§push(this.§3i§(param1));
         if(_loc6_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§9&§(param1));
         if(!_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc6_ || param1)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§push(this.§2"@§);
                     if(_loc6_)
                     {
                        §§push("Button_PowerUpMenuOpenWhole");
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           if(_loc6_)
                           {
                              §§pop().mClip.MovieClip_PowerUpStar.rotation = this.§0t§;
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr98:
                                 this.§2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§0t§;
                                 if(!_loc5_)
                                 {
                                    addr105:
                                    addr106:
                                    if(_loc3_)
                                    {
                                       if(_loc6_)
                                       {
                                          _loc4_ = new Rectangle(this.§1m§ - this.§""J§ - 20,0,this.§1m§ + 30,this.§2"@§.getItemByName("Container_PowerUpButtons").height);
                                          addr109:
                                          if(_loc6_ || _loc2_)
                                          {
                                             this.§2"@§.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
                                          }
                                       }
                                       §§goto(addr156);
                                    }
                                    this.§2[§();
                                    §§goto(addr156);
                                 }
                                 §§goto(addr109);
                              }
                              addr156:
                              return;
                           }
                        }
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr105);
            }
            §§goto(addr106);
         }
         §§goto(addr98);
      }
      
      private function §2[§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Rectangle = null;
         var _loc2_:* = NaN;
         if(!_loc3_)
         {
            if(this.§<!b§)
            {
               if(!_loc3_)
               {
                  §§push(this.§2"@§);
                  if(_loc4_)
                  {
                     §§push("Container_PowerUpButtons");
                     if(!_loc3_)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        if(!_loc3_)
                        {
                           if(§§pop().mClip.scrollRect == null)
                           {
                              this.§<!b§.visible = false;
                           }
                           §§goto(addr206);
                        }
                        _loc1_ = §§pop().mClip.scrollRect;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(_loc1_.width - _loc1_.x);
                           if(_loc4_ || _loc1_)
                           {
                              §§push(§§pop() + this.§]"E§);
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr198:
                           }
                           loop1:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop2:
                              while(this.§2"@§.getItemByName("Button_PowerUp5").visible)
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(70);
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                          }
                                          addr167:
                                       }
                                       addr178:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr181:
                                             §§push(Number(§§pop()));
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr182:
                                                while(true)
                                                {
                                                   break loop2;
                                                }
                                             }
                                             addr181:
                                          }
                                          §§goto(addr198);
                                       }
                                    }
                                 }
                                 §§goto(addr182);
                              }
                              loop9:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc4_ || _loc2_))
                                       {
                                          continue loop1;
                                       }
                                       §§push(0);
                                       if(!_loc3_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(Number(0));
                                                addr133:
                                                while(!(_loc3_ && _loc2_))
                                                {
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                §§goto(addr181);
                                             }
                                             addr131:
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             this.§<!b§.x = this.§2"@§.getItemByName("Container_PowerUpButtons").mClip.x + _loc2_;
                                             for(; _loc4_; this.§<!b§.visible = true,if(!(_loc4_ || _loc3_))
                                             {
                                                continue;
                                             },if(false)
                                             {
                                                continue loop5;
                                             },§§goto(addr206))
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop9;
                                                }
                                                §§goto(addr131);
                                             }
                                             §§goto(addr141);
                                          }
                                          continue;
                                       }
                                       §§goto(addr167);
                                       §§goto(addr181);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr133);
                              }
                           }
                        }
                        §§goto(addr158);
                     }
                  }
                  §§goto(addr53);
               }
            }
         }
         addr206:
         if(_loc4_ || _loc1_)
         {
            addr53:
            §§push(this.§2"@§.getItemByName("Container_PowerUpButtons"));
         }
      }
      
      private function §#!p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§6"U§("TextField_PowerUpCount1",§4!2§.§`!4§);
            loop0:
            while(true)
            {
               this.§6"U§("TextField_PowerUpCount2",§4!2§.§<"O§);
               while(true)
               {
                  this.§6"U§("TextField_PowerUpCount3",§4!2§.§3"$§);
                  loop2:
                  while(true)
                  {
                     this.§6"U§("TextField_PowerUpCount4",§4!2§.§8"1§);
                     while(true)
                     {
                        this.§6"U§("TextField_PowerUpCountWM",§4!2§.§-Y§);
                        addr84:
                        while(_loc1_ || _loc2_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  while(!(_loc2_ && _loc2_))
                  {
                     continue loop0;
                     §§goto(addr33);
                  }
               }
            }
         }
         while(true)
         {
            this.§6"U§("TextField_PowerUpCount6",§4!2§.§!! §);
            §§goto(addr75);
         }
      }
      
      public function §6"U§(param1:String, param2:§^"K§, param3:Boolean = true) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:§!>§ = null;
         var _loc12_:int = 0;
         §§push(§#!,§.§&"5§.§]![§(param2.§1!#§));
         if(_loc13_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(§`!=§.§;"D§(_loc4_));
         if(_loc13_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(this.§2"@§);
         §§push("TextField_");
         if(_loc13_)
         {
            §§push(§§pop() + param2.§0"0§);
         }
         var _loc6_:§4"9§ = §§pop().getItemByName(§§pop()) as §4"9§;
         §§push(this.§2"@§);
         §§push("Infinite_");
         if(_loc13_ || param2)
         {
            §§push(§§pop() + param2.§0"0§);
         }
         var _loc7_:§!>§ = §§pop().getItemByName(§§pop());
         if(!(_loc14_ && param1))
         {
            if(!param2.§ !T§)
            {
               _loc6_.setVisibility(false);
            }
            else
            {
               §§push(§#!,§.§&"5§.§1!r§(param2.§1!#§));
               if(_loc13_ || this)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:*;
               §§push((_loc8_ = §§pop()) > 0);
               if(_loc13_)
               {
                  if(!§§pop())
                  {
                     if(_loc13_ || param3)
                     {
                        §§pop();
                        if(!(_loc14_ && this))
                        {
                           §§push(§#!,§.§[!f§());
                           if(!_loc14_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc14_ && this))
                              {
                                 addr241:
                                 if(§§pop())
                                 {
                                    if(!(_loc14_ && param3))
                                    {
                                       _loc6_.setVisibility(false);
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          while(!_loc13_)
                                          {
                                             continue loop4;
                                          }
                                          _loc7_.setVisibility(true);
                                          addr228:
                                          while(true)
                                          {
                                          }
                                          addr228:
                                          addr223:
                                       }
                                       while(true)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(this.§2"@§);
                                             if(!(_loc14_ && param1))
                                             {
                                                §§push(_loc5_);
                                                if(_loc13_)
                                                {
                                                   §§pop().setText(§§pop(),param1);
                                                   if(!_loc14_)
                                                   {
                                                      if(_loc13_ || param3)
                                                      {
                                                         if(!(_loc14_ && param2))
                                                         {
                                                            if(true)
                                                            {
                                                               §§push(param3);
                                                               if(!_loc14_)
                                                               {
                                                                  addr256:
                                                                  if(§§pop())
                                                                  {
                                                                     addr261:
                                                                     _loc12_ = (_loc11_ = this.§2"@§.getItemByName(param2.§0"0§ + "_BG") as §!>§).mClip.width;
                                                                     addr257:
                                                                     if(!(_loc14_ && this))
                                                                     {
                                                                        _loc11_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
                                                                        if(_loc13_ || param3)
                                                                        {
                                                                           _loc11_.mClip.x = _loc6_.x + _loc6_.width / 2 - _loc11_.mClip.width / 2;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr314:
                                                                  var _loc9_:* = true;
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc14_ && param3))
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc13_)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 _loc9_ = true;
                                                                                 addr338:
                                                                                 §§push((§?l§.§'h§ as §%6§).§4!]§());
                                                                                 if(_loc13_ || param1)
                                                                                 {
                                                                                    addr351:
                                                                                    §§push(int(§§pop()));
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(§§pop() >= this.getMaxPowerupsToUse());
                                                                        if(!_loc14_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(param2.§#;§ == §4!2§.§-Y§.§#;§);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          addr437:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(false);
                                                                                                addr439:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc9_ = §§pop();
                                                                                                   addr440:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr438:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push((§?l§.§'h§ as §%6§).§"!A§(param2.§1!#§));
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         addr415:
                                                                                                         while(_loc13_ || param1)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc9_ = §§pop();
                                                                                                               addr423:
                                                                                                               addr425:
                                                                                                               while(!_loc13_)
                                                                                                               {
                                                                                                                  §§goto(addr438);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr439);
                                                                                                      }
                                                                                                      addr414:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.setPowerupActive(param2.§,§,_loc9_);
                                                                                                      if(_loc13_ || param2)
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr440);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr414);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr423);
                                                                                                      §§goto(addr425);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                addr413:
                                                                                             }
                                                                                             §§goto(addr415);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr439);
                                                                                 }
                                                                                 §§goto(addr440);
                                                                              }
                                                                              §§goto(addr413);
                                                                           }
                                                                           §§goto(addr437);
                                                                        }
                                                                        §§goto(addr422);
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  §§goto(addr338);
                                                               }
                                                            }
                                                            §§goto(addr314);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr228);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               break loop2;
                                                            }
                                                         }
                                                         addr217:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(_loc13_)
                                                         {
                                                            _loc7_.setVisibility(false);
                                                            if(_loc13_ || param2)
                                                            {
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr257);
                                                }
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr223);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc6_.setVisibility(true);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr314);
                           }
                           §§goto(addr256);
                        }
                        §§goto(addr228);
                     }
                  }
                  §§goto(addr241);
               }
               §§goto(addr256);
            }
         }
         if(_loc7_)
         {
            _loc7_.setVisibility(false);
         }
      }
      
      public function getMaxPowerupsToUse() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§%"S§.§!C§.§%^§().indexOf("Tournament") == -1);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc1_ || this)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             §^!Z§.§;"=§ = 4;
                                             addr103:
                                             if(_loc1_ || _loc1_)
                                             {
                                                break;
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                §§push(§3!R§.§&"5§);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §§push(§§pop().§%!^§);
                                                   if(_loc1_)
                                                   {
                                                      §§push(§§pop().§=l§);
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr156:
                                                               while(true)
                                                               {
                                                                  §§push(§3!R§.§&"5§);
                                                                  break loop5;
                                                               }
                                                            }
                                                            addr155:
                                                         }
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop3;
                                                      }
                                                      addr132:
                                                      while(!_loc2_)
                                                      {
                                                         §§pop();
                                                         continue loop5;
                                                      }
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr115:
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr115);
                                             }
                                          }
                                          §§goto(addr156);
                                       }
                                    }
                                    else
                                    {
                                       §^!Z§.§;"=§ = 2;
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§goto(addr24);
                                       }
                                    }
                                    §§goto(addr103);
                                 }
                                 addr24:
                                 return §^!Z§.§;"=§;
                                 addr94:
                                 addr110:
                              }
                              §§goto(addr132);
                           }
                           continue;
                        }
                     }
                  }
                  §§goto(addr155);
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §+r§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§#!p§();
            do
            {
               this.§;=§();
            }
            while(!_loc2_);
            
         }
      }
      
      private function §;=§() : void
      {
      }
      
      public function setPowerupActive(param1:String, param2:Boolean = true) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(param2)
            {
               addr20:
               §§push(Number(1));
               if(!(_loc8_ && _loc3_))
               {
                  addr56:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(0.4);
               if(!(_loc8_ && param1))
               {
                  §§push(Number(§§pop()));
                  if(_loc7_ || param2)
                  {
                     §§goto(addr56);
                  }
               }
            }
            var _loc3_:* = §§pop();
            var _loc4_:§^"K§ = §4!2§.§7=§(param1);
            var _loc5_:§!>§;
            if(_loc5_ = this.§2"@§.getItemByName(_loc4_.§#;§))
            {
               if(_loc7_)
               {
                  _loc5_.setEnabled(param2);
                  if(!_loc8_)
                  {
                     _loc5_.mClip.alpha = _loc3_;
                  }
               }
            }
            var _loc6_:§!>§;
            if(_loc6_ = this.§2"@§.getItemByName(_loc4_.§0"0§ + "_BG"))
            {
               if(!_loc8_)
               {
                  _loc6_.mClip.alpha = _loc3_;
               }
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function get powerUpsUsable() : Boolean
      {
         return this.§,!j§;
      }
      
      public function set powerUpsUsable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!j§ = param1;
         }
      }
   }
}
