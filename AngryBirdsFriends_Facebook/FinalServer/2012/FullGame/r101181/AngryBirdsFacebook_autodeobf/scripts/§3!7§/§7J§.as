package §3!7§
{
   import § each§.§>v§;
   import §#^§.§7!A§;
   import §'!s§.§!'§;
   import §'!s§.§%?§;
   import §2!i§.§7'§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §7-§.§,!C§;
   import §9"!§.§2K§;
   import §9"!§.§2a§;
   import §9"!§.§4"F§;
   import §9"!§.§>"7§;
   import §]!A§.;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §7J§
   {
      
      public static var §function§:Boolean = false;
      
      public static var §^"B§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §function§ = false;
            do
            {
               §^"B§ = true;
            }
            while(_loc1_);
            
         }
      }
      
      private const §-b§:Number = -100;
      
      protected var §6w§:§7!A§;
      
      private var §3!s§:Number = 0;
      
      private var §3!P§:Number = 0;
      
      private var §^Y§:Number;
      
      private var §#!J§:Number;
      
      private var §#S§:Timer;
      
      private var §4!2§:Boolean;
      
      private var § "!§:Sprite;
      
      public function §7J§(param1:§7!A§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§6w§ = param1;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.init();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      private function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Sprite = null;
         var _loc2_:MovieClip = null;
         if(_loc3_ || this)
         {
            this.§#!J§ = (this.§6w§.getItemByName("Container_PowerUpButtons") as §08§).width - 25;
         }
         loop0:
         while(true)
         {
            this.§^Y§ = (this.§6w§.getItemByName("Container_PowerUpButtons") as §08§).x;
            while(true)
            {
               addr58:
               loop2:
               while(true)
               {
                  this.§#S§ = new Timer(1000,1);
                  while(true)
                  {
                     this.§#S§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ !_§);
                     if(!(_loc3_ || _loc1_))
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        if(_loc4_)
                        {
                           break loop2;
                        }
                        continue loop0;
                     }
                  }
                  addr103:
                  _loc1_ = (this.§6w§.getItemByName("Container_PowerUpButtons") as §08§).mClip;
                  if(_loc3_ || this)
                  {
                     this.§ "!§ = (this.§6w§.getItemByName("Movieclip_FrenzyAlert") as §7"-§).mClip;
                     if(!(_loc4_ && _loc1_))
                     {
                        this.§ "!§.y = _loc1_.y;
                     }
                  }
                  _loc2_ = (this.§6w§.getItemByName("Button_PowerUpMenuOpenWhole") as §^!D§).mClip;
                  addr165:
                  if(!_loc4_)
                  {
                     this.§ "!§.visible = false;
                  }
                  return;
               }
            }
         }
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§2G§ = null;
         if(_loc5_)
         {
            this.§'!H§();
            loop0:
            while(true)
            {
               this.§8J§(0);
               loop1:
               while(true)
               {
                  addr44:
                  while(true)
                  {
                     this.§6w§.setText(§?!F§.§;"§.§!!y§(§>,§.§^t§.§]6§).toString(),"TextField_PowerUpCountME");
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(false)
            {
               §§goto(addr44);
            }
            §§goto(addr82);
         }
      }
      
      public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§#S§)
            {
               while(true)
               {
                  this.§#S§.stop();
                  addr59:
                  while(true)
                  {
                  }
               }
               addr56:
            }
            loop0:
            while(true)
            {
               §?!F§.§;"§.removeEventListener(Event.CHANGE,this.§8z§);
               while(true)
               {
                  if(!_loc2_)
                  {
                     §^"B§ = §function§;
                     if(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           break loop0;
                        }
                        break;
                     }
                     continue;
                  }
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function run(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(§#6§.§6!z§.slingshot.mSlingShotState == §2a§.§0T§)
            {
               while(true)
               {
                  this.§#S§.reset();
                  addr75:
                  while(true)
                  {
                     this.§#S§.start();
                     addr64:
                     while(true)
                     {
                     }
                  }
               }
               addr72:
            }
            while(true)
            {
               this.§8J§(param1);
               if(!_loc3_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr72);
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function §-!X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§function§)
            {
               §function§ = true;
               if(!_loc2_)
               {
                  if(!_loc1_)
                  {
                     addr46:
                     §function§ = false;
                     addr49:
                  }
                  else
                  {
                     addr43:
                  }
                  return;
               }
               §§goto(addr49);
            }
            §§goto(addr46);
         }
         §§goto(addr43);
      }
      
      public function §""7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!§function§)
            {
               loop0:
               while(true)
               {
                  this.§#S§.reset();
                  addr80:
                  addr62:
                  while(true)
                  {
                     this.§#S§.start();
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function § "&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(§function§)
            {
               loop0:
               while(true)
               {
                  this.§#S§.reset();
                  loop1:
                  while(true)
                  {
                     this.§#S§.start();
                     do
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     while(§function§ = false, !(_loc2_ || _loc1_));
                     
                     addr60:
                  }
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      private function § !_§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §function§ = false;
         }
      }
      
      public function get §`b§() : Boolean
      {
         return §function§;
      }
      
      public function set §`b§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §function§ = param1;
         }
      }
      
      public function §4g§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§?!F§.§;"§.§!!y§(§>,§.§^t§.§]6§));
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§<w§(_loc1_));
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.§6w§.setText(_loc2_,"TextField_PowerUpCountME");
         }
      }
      
      public function § !2§(param1:String) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc2_:§2G§ = §>,§.§4!x§(param1);
         if(!(_loc11_ && param1))
         {
            if(_loc2_ == null)
            {
               if(_loc10_)
               {
                  throw new Error("Unknown powerup: " + param1);
               }
            }
         }
         §§push(§?!F§.§;"§.§!!y§(_loc2_.§]6§));
         if(!(_loc11_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc10_)
         {
            if(_loc3_ <= 0)
            {
               if(!(_loc11_ && _loc2_))
               {
                  addr105:
                  §§push(_loc2_.§]6§);
                  if(!(_loc11_ && param1))
                  {
                     §§push(§§pop());
                  }
                  _loc6_ = §§pop();
               }
               §§push(_loc6_);
               if(!_loc11_)
               {
                  var _loc8_:* = §§pop();
                  if(!_loc11_)
                  {
                     if(§>,§.§," §.§]6§ === _loc8_)
                     {
                        addr130:
                        §§push(0);
                        if(!_loc10_)
                        {
                        }
                     }
                     else
                     {
                        §§push(1);
                     }
                     if(!(_loc11_ && _loc2_))
                     {
                        loop26:
                        switch(§§pop())
                        {
                           case 0:
                              §%?§.§ ]§("extrabird0");
                              if(!(_loc10_ || _loc3_))
                              {
                                 break;
                              }
                              §§push(true);
                              if(!(_loc11_ && this))
                              {
                                 return §§pop();
                              }
                              §§goto(addr249);
                              break;
                           default:
                              if(!§>v§.§@",§)
                              {
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    §>v§.§ !y§(_loc6_);
                                    if(!(_loc10_ || this))
                                    {
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §!'§.showTutorials(this.§6w§);
                                             do
                                             {
                                                this.setPowerupActive(param1,false);
                                             }
                                             while(!_loc10_);
                                             
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                             §§push(_loc2_.§]6§);
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                addr261:
                                                var _loc4_:String;
                                                §§push(_loc4_ = §§pop());
                                                if(!_loc11_)
                                                {
                                                   §§push(§>,§.§^Q§.§]6§);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc10_ || this)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc11_ && param1))
                                                               {
                                                                  §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §§push(§>,§.§7!C§.§]6§);
                                                                        addr382:
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           addr383:
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr384:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          addr324:
                                                                                          addr390:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(§>,§.§%!X§.§]6§);
                                                                                                if(!(_loc11_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             continue loop24;
                                                                                          }
                                                                                          addr390:
                                                                                          var _loc5_:* = §§pop();
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             if((§#6§.§6!z§ as §2K§).§[^§() >= this.§"!%§())
                                                                                             {
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§#S§.reset();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§#S§.start();
                                                                                                      loop18:
                                                                                                      while(_loc10_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            addr415:
                                                                                                            while(_loc10_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            §§push(_loc5_);
                                                                                                            addr411:
                                                                                                            continue loop18;
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr403);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.§'!H§();
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§goto(addr411);
                                                                                                }
                                                                                                §§goto(addr415);
                                                                                             }
                                                                                             addr403:
                                                                                             return §§pop();
                                                                                          }
                                                                                          §§goto(addr434);
                                                                                       }
                                                                                       addr388:
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr342:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc10_ || _loc2_)
                                                                                          {
                                                                                             §§push(§#6§.§6!z§);
                                                                                             loop11:
                                                                                             while((§§pop().slingshot as §>"7§).§ L§.length <= 0)
                                                                                             {
                                                                                                if(_loc11_ && _loc3_)
                                                                                                {
                                                                                                   addr377:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      break loop11;
                                                                                                   }
                                                                                                   addr377:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§#6§.§6!z§);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   (§§pop() as §2K§).§-"#§.§ !2§(_loc4_);
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§goto(addr390);
                                                                                                            §§push(true);
                                                                                                         }
                                                                                                         §§goto(addr390);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr388);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr377);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr352);
                                                                                                }
                                                                                                §§goto(addr377);
                                                                                             }
                                                                                             addr352:
                                                                                             addr298:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§goto(addr390);
                                                                                          }
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr298);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr379:
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            §§goto(addr383);
                                                         }
                                                         §§goto(addr384);
                                                      }
                                                      §§goto(addr390);
                                                   }
                                                   §§goto(addr382);
                                                }
                                                §§goto(addr379);
                                             }
                                             §§goto(addr261);
                                          }
                                          loop3:
                                          while(!_loc10_)
                                          {
                                             break loop26;
                                             while(true)
                                             {
                                                §!'§.§0!J§(this.§6w§,param1);
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr210:
                                 }
                                 addr249:
                                 return §§pop();
                                 §§push(true);
                              }
                              else
                              {
                                 addr171:
                                 _loc8_ = 0;
                                 if(_loc10_ || param1)
                                 {
                                    for each(_loc7_ in §>v§.§@",§)
                                    {
                                       if(_loc7_.id == _loc6_)
                                       {
                                          if(_loc10_)
                                          {
                                             §%?§.§6!x§(_loc7_);
                                          }
                                       }
                                    }
                                 }
                                 if(_loc11_ && param1)
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr210);
                        }
                        continue loop4;
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr130);
               }
               §§goto(addr261);
            }
            §§goto(addr240);
         }
         §§goto(addr105);
      }
      
      private function §+i§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§function§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§3!P§);
                  loop1:
                  while(true)
                  {
                     if(§§pop() > 0)
                     {
                        if(!_loc3_)
                        {
                           §§push(this);
                           §§push(this.§3!P§);
                           if(_loc2_)
                           {
                              §§push(0.6);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop() * param1);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§3!P§ = §§pop();
                           loop5:
                           while(_loc2_)
                           {
                              §§push(this.§3!P§);
                              loop3:
                              while(true)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(0);
                                    loop4:
                                    while(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      this.§3!P§ = 0;
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!(_loc2_ || param1))
                                                         {
                                                            break loop6;
                                                         }
                                                      }
                                                      continue loop0;
                                                      addr165:
                                                   }
                                                   else
                                                   {
                                                      addr258:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§3!P§);
                                                      break loop3;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   addr19:
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                      if(_loc3_)
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         §§goto(addr111);
                                                      }
                                                      addr35:
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                addr175:
                                                addr155:
                                             }
                                             addr111:
                                             return §§pop();
                                             §§push(true);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§3!P§);
                                                   addr211:
                                                   while(true)
                                                   {
                                                      break loop4;
                                                   }
                                                }
                                                addr208:
                                             }
                                             addr262:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§3!P§);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(0.6);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() * param1);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().§3!P§ = §§pop();
                                                §§push(this.§3!P§);
                                                addr240:
                                                while(true)
                                                {
                                                   §§push(360);
                                                }
                                             }
                                          }
                                          addr261:
                                       }
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             break loop5;
                                          }
                                          addr231:
                                          while(true)
                                          {
                                             §§push(true);
                                             continue loop0;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          while(true)
                                          {
                                             this.§3!P§ = 360;
                                             addr216:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr206:
                                                      return §§pop();
                                                      §§push(true);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr262);
                                                   }
                                                }
                                                addr255:
                                                while(true)
                                                {
                                                   §§goto(addr231);
                                                }
                                             }
                                          }
                                          addr213:
                                       }
                                       else
                                       {
                                          §§goto(addr175);
                                       }
                                       §§goto(addr206);
                                    }
                                    addr143:
                                 }
                                 break;
                                 §§goto(addr203);
                              }
                              addr203:
                              while(true)
                              {
                                 §§goto(addr261);
                              }
                           }
                           while(true)
                           {
                              this.§3!P§ = 360;
                              §§goto(addr255);
                           }
                        }
                        §§goto(addr213);
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(this.§3!P§);
                           if(_loc3_ && _loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        addr64:
                     }
                     §§goto(addr135);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr258);
      }
      
      private function §`f§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(§function§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§3!s§);
                  loop1:
                  for(; _loc2_; while(true)
                  {
                     §§push(this.§3!s§);
                     if(!_loc3_)
                     {
                        if(_loc2_ || this)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 while(_loc2_ || _loc2_)
                                 {
                                    this.§3!s§ = 0;
                                    while(_loc2_)
                                    {
                                       §§push(this.§6w§);
                                       loop20:
                                       while(true)
                                       {
                                          §§push("Container_PowerUpButtons");
                                          addr166:
                                          while(_loc2_ || _loc3_)
                                          {
                                             §§push(§§pop().getItemByName(§§pop()));
                                             while(true)
                                             {
                                                §§push(false);
                                                addr175:
                                                while(true)
                                                {
                                                   §§pop().setVisibility(§§pop());
                                                   addr176:
                                                   while(_loc2_)
                                                   {
                                                      §§push(this.§6w§);
                                                      continue loop20;
                                                   }
                                                   §§goto(addr391);
                                                }
                                             }
                                          }
                                          §§goto(addr448);
                                       }
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       §§goto(addr80);
                                    }
                                    §§goto(addr260);
                                 }
                                 §§goto(addr442);
                              }
                              §§goto(addr43);
                           }
                           else
                           {
                              §§goto(addr233);
                           }
                        }
                        break;
                     }
                     continue loop1;
                  },§§goto(addr386))
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(0);
                        while(§§pop() > §§pop())
                        {
                           while(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§3!s§);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(0.5);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().§3!s§ = §§pop();
                                 while(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(this);
                                       §§push(this.§#!J§);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(§§pop() - 20);
                                       }
                                       §§pop().§3!s§ = §§pop();
                                       addr376:
                                       if(!_loc3_)
                                       {
                                          §§push(this.§3!s§);
                                          break loop1;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          addr448:
                                          this.§6w§.getItemByName("Container_PowerUpButtons").setVisibility(true);
                                          addr451:
                                          while(true)
                                          {
                                             §§push(this.§3!s§);
                                             addr403:
                                             while(true)
                                             {
                                                §§push(this.§#!J§);
                                                if(!(_loc3_ && this))
                                                {
                                                   §§push(20);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   addr423:
                                                }
                                                addr424:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(this);
                                                      §§push(this.§3!s§);
                                                      if(_loc2_)
                                                      {
                                                         §§push(0.5);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§3!s§ = §§pop();
                                                      addr386:
                                                      §§push(this.§3!s§);
                                                      §§push(this.§#!J§);
                                                      break loop5;
                                                      addr442:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr445:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§3!s§);
                                       addr347:
                                       while(true)
                                       {
                                          §§push(this.§#!J§);
                                          if(!_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(20);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                                 addr389:
                                 addr390:
                                 if(§§pop() > §§pop() - 20)
                                 {
                                    addr391:
                                    §§push(this);
                                    §§push(this.§#!J§);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() - 20);
                                    }
                                    §§pop().§3!s§ = §§pop();
                                 }
                                 addr381:
                                 return true;
                                 addr260:
                              }
                              §§goto(addr391);
                           }
                           while(_loc3_ && _loc2_)
                           {
                              §§goto(addr451);
                           }
                           §§push(this);
                           §§push(this.§#!J§);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() - 20);
                           }
                           §§pop().§3!s§ = §§pop();
                           §§push(true);
                           continue loop0;
                        }
                        §§push(false);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              return §§pop();
                           }
                           §§goto(addr381);
                        }
                        else
                        {
                           addr45:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 return §§pop();
                              }
                              continue loop0;
                           }
                           addr45:
                        }
                        addr233:
                     }
                     §§goto(addr403);
                  }
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(this.§#!J§);
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§push(20);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    if(_loc2_)
                                    {
                                       addr308:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                §§goto(addr323);
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr424);
                                       }
                                       §§goto(addr353);
                                    }
                                    §§goto(addr423);
                                 }
                                 §§goto(addr389);
                              }
                              §§goto(addr352);
                           }
                           §§goto(addr390);
                        }
                        §§goto(addr308);
                     }
                     §§goto(addr347);
                  }
               }
               §§goto(addr445);
            }
            return §§pop();
         }
         §§goto(addr262);
      }
      
      private function §8J§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Rectangle = null;
         §§push(this.§+i§(param1));
         if(_loc5_ || this)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`f§(param1));
         if(_loc5_ || this)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc6_ && param1))
         {
            §§push(_loc2_);
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§push(this.§6w§);
                     if(_loc5_)
                     {
                        §§push("Button_PowerUpMenuOpenWhole");
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           if(!(_loc6_ && _loc3_))
                           {
                              §§pop().mClip.MovieClip_PowerUpStar.rotation = this.§3!P§;
                              if(_loc5_)
                              {
                                 addr102:
                                 this.§6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§3!P§;
                                 if(!(_loc6_ && param1))
                                 {
                                    addr114:
                                    addr115:
                                    if(_loc3_)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          _loc4_ = new Rectangle(this.§#!J§ - this.§3!s§ - 20,0,this.§#!J§ + 30,this.§6w§.getItemByName("Container_PowerUpButtons").height);
                                          addr123:
                                          if(_loc5_)
                                          {
                                             this.§6w§.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    this.§2"E§();
                                    §§goto(addr165);
                                 }
                                 §§goto(addr123);
                              }
                              addr165:
                              return;
                           }
                        }
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr114);
            }
            §§goto(addr115);
         }
         §§goto(addr114);
      }
      
      private function §2"E§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Rectangle = null;
         var _loc2_:* = NaN;
         if(_loc4_ || _loc3_)
         {
            if(this.§ "!§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this.§6w§);
                  if(!_loc3_)
                  {
                     §§push("Container_PowerUpButtons");
                     if(!_loc3_)
                     {
                        §§push(§§pop().getItemByName(§§pop()));
                        if(!_loc3_)
                        {
                           if(§§pop().mClip.scrollRect == null)
                           {
                              this.§ "!§.visible = false;
                           }
                           §§goto(addr181);
                        }
                        _loc1_ = §§pop().mClip.scrollRect;
                        if(_loc4_)
                        {
                           §§push(_loc1_.width - _loc1_.x);
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(§§pop() + this.§-b§);
                           }
                           loop0:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc3_ && this))
                                    {
                                       continue loop0;
                                    }
                                    addr137:
                                    if(!_loc4_)
                                    {
                                       break;
                                       addr140:
                                    }
                                    _loc2_ = §§pop();
                                    while(_loc4_ || this)
                                    {
                                       loop5:
                                       while(_loc4_ || this)
                                       {
                                          this.§ "!§.visible = true;
                                          if(_loc3_ && this)
                                          {
                                             continue;
                                          }
                                          addr93:
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                this.§ "!§.x = this.§6w§.getItemByName("Container_PowerUpButtons").mClip.x + _loc2_;
                                                continue loop5;
                                                §§goto(addr93);
                                             }
                                             addr176:
                                             addr95:
                                          }
                                          else
                                          {
                                             §§goto(addr176);
                                          }
                                          §§goto(addr181);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr176);
                        }
                     }
                  }
                  §§goto(addr63);
               }
            }
            addr181:
            if(_loc4_ || _loc2_)
            {
               addr63:
               §§push(this.§6w§.getItemByName("Container_PowerUpButtons"));
            }
            return;
         }
         §§goto(addr63);
      }
      
      private function §'!H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§>_§("TextField_PowerUpCount1",§>,§.§^Q§);
         }
         loop0:
         while(true)
         {
            this.§>_§("TextField_PowerUpCount2",§>,§.§7!C§);
            loop1:
            while(true)
            {
               this.§>_§("TextField_PowerUpCount3",§>,§.§%!X§);
               while(true)
               {
                  this.§>_§("TextField_PowerUpCount4",§>,§.§&m§);
                  addr72:
                  while(_loc1_)
                  {
                     if(_loc1_)
                     {
                        this.§>_§("TextField_PowerUpCountVH",§>,§.§," §,false);
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §>_§(param1:String, param2:§2G§, param3:Boolean = true) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:§7'§ = null;
         var _loc12_:int = 0;
         §§push(§?!F§.§;"§.§!!y§(param2.§]6§));
         if(_loc13_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.§<w§(_loc4_));
         if(!_loc14_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         §§push(this.§6w§);
         §§push("TextField_");
         if(_loc13_)
         {
            §§push(§§pop() + param2.§6!+§);
         }
         var _loc6_:§-"E§ = §§pop().getItemByName(§§pop()) as §-"E§;
         §§push(this.§6w§);
         §§push("Infinite_");
         if(_loc13_)
         {
            §§push(§§pop() + param2.§6!+§);
         }
         var _loc7_:§7'§ = §§pop().getItemByName(§§pop());
         §§push(§?!F§.§;"§.§9K§(param2.§]6§));
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:*;
         if((_loc8_ = §§pop()) > 0)
         {
            if(!_loc14_)
            {
               _loc6_.setVisibility(false);
               if(!(_loc14_ && param1))
               {
                  if(_loc7_)
                  {
                     addr143:
                     while(true)
                     {
                        _loc7_.setVisibility(true);
                        if(_loc14_)
                        {
                        }
                        addr158:
                        _loc12_ = (_loc11_ = this.§6w§.getItemByName(param2.§6!+§ + "_BG") as §7'§).mClip.width;
                        addr224:
                        if(!(_loc14_ && this))
                        {
                           _loc11_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
                           if(!(_loc14_ && param3))
                           {
                              _loc11_.mClip.x = _loc6_.x + _loc6_.width / 2 - _loc11_.mClip.width / 2;
                           }
                        }
                        var _loc9_:* = true;
                        if(!_loc14_)
                        {
                           §§push(_loc4_);
                           if(!_loc14_)
                           {
                              §§push(0);
                              if(!_loc14_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc13_)
                                    {
                                       addr237:
                                       _loc9_ = true;
                                    }
                                 }
                                 §§push((§#6§.§6!z§ as §2K§).§[^§());
                                 if(!(_loc14_ && param2))
                                 {
                                    addr252:
                                    §§push(int(§§pop()));
                                    §§push(int(§§pop()));
                                 }
                                 §§goto(addr252);
                              }
                              var _loc10_:* = §§pop();
                              §§push(§§pop() >= this.§"!%§());
                              if(_loc13_ || this)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc14_ && param3))
                                    {
                                       addr273:
                                       §§pop();
                                       if(!_loc14_)
                                       {
                                          §§push(param2.§&!y§ == §>,§.§," §.§&!y§);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             addr346:
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         addr350:
                                                         while(true)
                                                         {
                                                            _loc9_ = §§pop();
                                                         }
                                                      }
                                                      addr349:
                                                   }
                                                   while(true)
                                                   {
                                                   }
                                                   addr351:
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   §§push((§#6§.§6!z§ as §2K§).§6!f§(param2.§]6§));
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            if(!(_loc14_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     break loop8;
                                                                  }
                                                                  addr334:
                                                               }
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  this.setPowerupActive(param2.§[2§,_loc9_);
                                                                  if(!(_loc14_ && param3))
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr334);
                                                                  }
                                                                  addr336:
                                                                  while(!_loc14_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop13;
                                                      }
                                                      §§goto(addr350);
                                                      §§goto(addr351);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   _loc9_ = §§pop();
                                                   §§goto(addr336);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr349);
                                    }
                                    §§goto(addr350);
                                 }
                                 §§goto(addr346);
                              }
                              §§goto(addr273);
                           }
                           §§goto(addr252);
                        }
                        §§goto(addr237);
                     }
                     addr143:
                  }
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§6w§);
                        if(_loc13_ || param1)
                        {
                           §§push(_loc5_);
                           if(_loc13_ || param3)
                           {
                              §§pop().setText(§§pop(),param1);
                              if(!_loc14_)
                              {
                                 addr108:
                                 if(_loc13_ || param1)
                                 {
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          §§push(param3);
                                          if(!(_loc14_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr158);
                                             }
                                             §§goto(addr224);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop2;
                                          }
                                          if(!_loc14_)
                                          {
                                             if(_loc13_ || this)
                                             {
                                                _loc7_.setVisibility(false);
                                             }
                                             else
                                             {
                                                §§goto(addr143);
                                             }
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr224);
                                    addr115:
                                 }
                                 while(true)
                                 {
                                    continue loop2;
                                    §§goto(addr108);
                                 }
                              }
                           }
                           §§goto(addr158);
                        }
                        break;
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr143);
            }
            §§goto(addr115);
         }
         else
         {
            _loc6_.setVisibility(true);
            if(!_loc14_)
            {
               §§goto(addr117);
            }
         }
         §§goto(addr158);
      }
      
      public function §"!%§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(§3T§.§67§.§<!W§().indexOf("Tournament") == -1);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr116:
                        loop2:
                        while(true)
                        {
                           §§push(String(§,!C§.§;"§.§0!&§).toUpperCase() == "LOTUS_BLACK");
                           if(!(_loc1_ && this))
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §4"F§.§6">§ = 4;
                                       break;
                                    }
                                    break;
                                 }
                                 §4"F§.§6">§ = 2;
                                 if(_loc1_ && _loc1_)
                                 {
                                    break;
                                 }
                                 if(_loc2_ || this)
                                 {
                                    §§goto(addr25);
                                 }
                                 continue loop2;
                              }
                              addr25:
                           }
                           continue;
                           return §4"F§.§6">§;
                        }
                     }
                     addr115:
                  }
                  §§goto(addr88);
               }
            }
            §§goto(addr115);
         }
         §§goto(addr116);
      }
      
      private function §<w§(param1:Number) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(_loc4_)
         {
            §§push(Number(Math.min(param1,99000000)));
            loop0:
            while(true)
            {
               param1 = §§pop();
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(100000);
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(1000);
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       break;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          §§push(param1);
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(1000);
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      addr139:
                                                      while(!_loc3_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               if(_loc4_ || param1)
                                                               {
                                                                  addr156:
                                                                  param1 = §§pop();
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr58:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ || param1))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(2);
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop().toPrecision(§§pop()) + "k");
                                                                           if(_loc4_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ || _loc2_))
                                                                                 {
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr194:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             addr195:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(1000000);
                                                                                                addr196:
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   addr197:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         break loop11;
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1 = §§pop();
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          addr160:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(2);
                                                                                             addr161:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().toPrecision(§§pop()).slice(0,3) + "M");
                                                                                                continue loop7;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr45:
                                                                                    }
                                                                                    return §§pop();
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr167);
                                                                        }
                                                                        §§goto(addr196);
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr157:
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr138:
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr157);
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr45);
                                             §§push(§§pop().toString());
                                          }
                                          §§goto(addr139);
                                       }
                                    }
                                    §§goto(addr58);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr138);
                           }
                           continue;
                        }
                        §§goto(addr194);
                     }
                  }
               }
            }
         }
         §§goto(addr189);
      }
      
      private function §8z§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§'!H§();
         }
      }
      
      public function setPowerupActive(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2G§ = §>,§.§4!x§(param1);
         if(!(_loc5_ && this))
         {
            if(!param2)
            {
               §§push(this.§6w§);
               loop0:
               while(_loc4_ || this)
               {
                  if(_loc4_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(_loc3_.§&!y§);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop().getItemByName(§§pop()));
                           addr211:
                           loop2:
                           while(!(_loc5_ && param1))
                           {
                              §§push(false);
                              if(!_loc5_)
                              {
                                 §§pop().setEnabled(§§pop());
                                 while(!(_loc5_ && _loc3_))
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§6w§);
                                       while(!(_loc5_ && param1))
                                       {
                                          §§push(_loc3_.§&!y§);
                                          continue loop1;
                                       }
                                       addr270:
                                       §§pop().getItemByName(_loc3_.§&!y§).mClip.alpha = 1;
                                       addr267:
                                       addr150:
                                    }
                                    addr273:
                                    if(!(_loc5_ && this))
                                    {
                                       §§goto(addr187);
                                    }
                                    while(true)
                                    {
                                       addr287:
                                       break loop2;
                                       §§goto(addr273);
                                    }
                                 }
                                 addr261:
                                 if(_loc5_)
                                 {
                                    addr290:
                                    while(true)
                                    {
                                       §§goto(addr267);
                                    }
                                    addr290:
                                 }
                                 addr187:
                                 if(this.§6w§.getItemByName(_loc3_.§6!+§ + "_BG"))
                                 {
                                    addr241:
                                    §§push(this.§6w§);
                                    break loop0;
                                 }
                                 return;
                                 addr222:
                              }
                              §§pop().setEnabled(§§pop());
                              §§goto(addr290);
                           }
                           §§goto(addr289);
                        }
                     }
                     §§goto(addr287);
                  }
                  §§goto(addr187);
               }
               while(true)
               {
                  §§goto(addr246);
                  §§goto(addr241);
               }
               §§goto(addr187);
            }
            §§goto(addr283);
         }
         §§goto(addr290);
      }
      
      public function get §;!7§() : Boolean
      {
         return this.§4!2§;
      }
      
      public function set §;!7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§4!2§ = param1;
         }
      }
   }
}
