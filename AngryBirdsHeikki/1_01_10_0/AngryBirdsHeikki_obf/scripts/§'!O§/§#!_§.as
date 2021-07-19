package §'!O§
{
   import §-!"§.§=p§;
   import §1m§.§0!%§;
   import §20§.§"!b§;
   import §2`§.HighscoreSidebar;
   import §3!b§.§;F§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import §9I§.§,i§;
   import §9I§.§1F§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §?!a§.§"5§;
   import §?!a§.§`§;
   import flash.events.AsyncErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.SyncEvent;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §#!_§ extends §=j§
   {
      
      public static const §@o§:String = "LoginState";
      
      public static const §7x§:String = "userLoggedIn";
      
      public static const §3t§:String = "a-z A-Z 0-9 \\-";
      
      public static const §64§:String = "a-z A-Z 0-9";
      
      public static const §37§:String = "a-z     0-9  \'\\-_@.";
      
      public static const §!j§:int = 60;
      
      private static var §!!B§:SharedObject;
      
      public static var §<!9§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@o§ = "LoginState";
            while(true)
            {
               §7x§ = "userLoggedIn";
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     §3t§ = "a-z A-Z 0-9 \\-";
                     loop3:
                     while(true)
                     {
                        §64§ = "a-z A-Z 0-9";
                        while(true)
                        {
                           §37§ = "a-z     0-9  \'\\-_@.";
                           while(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 §!j§ = 60;
                                 do
                                 {
                                    §<!9§ = false;
                                 }
                                 while(!_loc2_);
                                 
                                 if(_loc2_ || _loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      private var §5y§:Boolean;
      
      private var §>!O§:Boolean;
      
      private var §]'§:Boolean;
      
      private var §&!'§:String;
      
      private var §1!a§:String;
      
      private var §1Z§:String;
      
      private var §+H§:String;
      
      private var §6![§:§"5§;
      
      private var § @§:§`§;
      
      private var §%;§:§;F§ = null;
      
      private var §%S§:§1F§;
      
      public function §#!_§(param1:Boolean = false, param2:String = "LoginState")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               if(_loc5_ && _loc3_)
               {
                  break;
               }
               §§pop().§§slot[2] = param2;
               while(true)
               {
                  if(_loc5_)
                  {
                     break;
                     addr35:
                  }
                  while(true)
                  {
                     §§push(this);
                     if(_loc6_)
                     {
                        §§push(§,L§.§;]§);
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        if(!§§pop())
                        {
                           §§push(false);
                           continue;
                        }
                     }
                     §§push(true);
                     if(!_loc6_)
                     {
                     }
                  }
                  §§pop().§5y§ = §§pop();
                  do
                  {
                     super(initObject,name);
                  }
                  while(!_loc6_);
                  
                  if(_loc6_)
                  {
                     if(false)
                     {
                        §§goto(addr35);
                     }
                     try
                     {
                        §!!B§ = SharedObject.getLocal("loginData");
                        if(!(_loc5_ && this))
                        {
                           §!!B§.addEventListener(NetStatusEvent.NET_STATUS,this.§^!a§);
                           loop5:
                           while(true)
                           {
                              addr113:
                              while(true)
                              {
                                 §!!B§.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.§?!$§);
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       §!!B§.addEventListener(SyncEvent.SYNC,this.§,!V§);
                                       if(!(_loc5_ && param2))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        while(false)
                        {
                           §§goto(addr113);
                        }
                     }
                     catch(e:*)
                     {
                     }
                     return;
                  }
               }
            }
         }
      }
      
      private function §,!V§(param1:SyncEvent) : void
      {
      }
      
      private function §?!$§(param1:AsyncErrorEvent) : void
      {
      }
      
      private function §^!a§(param1:NetStatusEvent) : void
      {
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.init();
         }
         while(true)
         {
            §]!9§ = new §]!Q§(this);
            loop1:
            while(_loc1_)
            {
               §]!9§.init(§;A§.§=I§.Views.View_Login[0]);
               loop2:
               while(true)
               {
                  this.§6![§ = new §"5§(this);
                  do
                  {
                     this.§ @§ = new §`§(this);
                     do
                     {
                        if(this.§5y§)
                        {
                           §]!9§.getItemByName("MovieClip_LoginBackGround").setVisibility(true);
                           loop5:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    continue loop2;
                                 }
                                 addr80:
                                 while(_loc1_)
                                 {
                                    this.§%;§ = new §0!%§(§"!S§.§-!7§,"INGAME_THEME_" + int(Math.random() * 12 + 1),false,15);
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                           continue;
                        }
                        §§goto(addr80);
                     }
                     while(!_loc1_);
                     
                  }
                  while(_loc2_);
                  
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.activate();
            loop0:
            while(true)
            {
               if(this.§5y§)
               {
                  §§push(§"!S§.§-!7§);
                  loop1:
                  while(true)
                  {
                     §§push(false);
                     addr114:
                     while(true)
                     {
                        §§pop().§%2§(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              if(_loc2_ || this)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    §"!S§.§8m§(this.§%;§);
                                    addr163:
                                    while(true)
                                    {
                                       this.§%;§.init();
                                    }
                                 }
                                 addr175:
                              }
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(§"!S§.§-!7§);
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                §§push(true);
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§pop().§%2§(§§pop());
                                                      while(true)
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            this.§ @§.activate();
                                                            while(_loc2_)
                                                            {
                                                               this.§2!2§();
                                                               if(!_loc1_)
                                                               {
                                                                  addr34:
                                                                  if(_loc1_ && _loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc1_ && _loc2_))
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        addr193:
                                                                        while(true)
                                                                        {
                                                                           §§push(§"!S§.§-!7§);
                                                                           addr195:
                                                                           while(true)
                                                                           {
                                                                              §§push(true);
                                                                              addr196:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§%2§(§§pop());
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr34);
                                                                     }
                                                                     addr59:
                                                                  }
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     break loop3;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                            addr97:
                                                            while(true)
                                                            {
                                                               §"!S§.§99§();
                                                               §§goto(addr59);
                                                            }
                                                         }
                                                      }
                                                      addr143:
                                                   }
                                                   §§goto(addr196);
                                                }
                                                addr140:
                                             }
                                             §§goto(addr195);
                                          }
                                          else
                                          {
                                             while(_loc2_ || _loc2_)
                                             {
                                                §§pop().clearLevel();
                                                §§goto(addr175);
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                §§push(true);
                                                addr180:
                                                while(true)
                                                {
                                                   §§pop().§3g§(§§pop());
                                                   continue loop13;
                                                }
                                                continue loop0;
                                             }
                                             addr167:
                                             addr179:
                                          }
                                       }
                                       addr135:
                                    }
                                    while(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr167);
                                       §§push(§"!S§.§-!7§);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr163);
                              }
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr48);
                     }
                  }
               }
               §§goto(addr193);
            }
         }
         addr48:
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
         }
         do
         {
            this.§ @§.dispose();
         }
         while(_loc2_);
         
      }
      
      private function §2!2§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(§<!9§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§]9§();
                  if(_loc3_ && _loc2_)
                  {
                  }
                  try
                  {
                     addr43:
                     §!!B§.clear();
                     if(!_loc3_)
                     {
                        addr61:
                        this.§>!O§ = false;
                        if(!_loc3_)
                        {
                           this.§]'§ = false;
                           loop41:
                           while(true)
                           {
                              this.§&!'§ = "";
                              addr386:
                              addr388:
                              while(_loc3_)
                              {
                                 continue loop41;
                              }
                              this.§1!a§ = "";
                              loop1:
                              while(true)
                              {
                                 this.§1Z§ = "";
                                 loop2:
                                 while(true)
                                 {
                                    this.§+H§ = "";
                                    addr347:
                                    addr361:
                                    while(true)
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          break;
                                       }
                                       §§goto(addr386);
                                    }
                                    while(true)
                                    {
                                       §<!9§ = false;
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr347);
                                       §§goto(addr361);
                                    }
                                    addr342:
                                    §§push(§§newactivation());
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§27§());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       §§pop().§§slot[1] = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          §§push(Boolean(§!!B§));
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop8:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr309:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§!!B§.data));
                                                      }
                                                   }
                                                   addr308:
                                                }
                                                while(true)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§!!B§.data.rememberMe));
                                                                  }
                                                                  addr301:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr308);
                                                               }
                                                            }
                                                            §§goto(addr309);
                                                            addr298:
                                                         }
                                                         while(true)
                                                         {
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§>!O§ = true;
                                                                     addr289:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr286:
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§ @§.§+!O§();
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     this.§6![§.§-!W§();
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§1!a§);
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §]!9§.setText(this.§&!'§,"TextField_UserNameField");
                                                                                             addr243:
                                                                                             while(true)
                                                                                             {
                                                                                                §]!9§.setText(this.§1!a§,"TextField_PasswordField");
                                                                                                addr206:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr238:
                                                                                       }
                                                                                       loop32:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§,L§.§`!+§());
                                                                                          while(_loc4_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §]!9§.getItemByName("Button_Mute").setVisibility(true);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §]!9§.getItemByName("MovieClip_SoundOff").setVisibility(true);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop32;
                                                                                                addr128:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             §§push(§§pop().§§slot[1]);
                                                                                             continue loop6;
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc4_ || _loc1_)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               sHighscoreSidebar.changeState(HighscoreSidebar.§4!@§);
                                                                                                               addr106:
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§goto(addr67);
                                                                                                                     }
                                                                                                                     §§goto(addr238);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_ || this)
                                                                                                                        {
                                                                                                                           §,L§.§`!]§();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ && this))
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              addr264:
                                                                                                                              addr264:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop23;
                                                                                                                                    }
                                                                                                                                    §§goto(addr309);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr301);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           addr136:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr286);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr150:
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr128);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §]!9§.getItemByName("MovieClip_SoundOff").setVisibility(false);
                                                                                                                        §§goto(addr150);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr289);
                                                                                                               addr180:
                                                                                                            }
                                                                                                            §§goto(addr243);
                                                                                                         }
                                                                                                         §§goto(addr136);
                                                                                                      }
                                                                                                      §§goto(addr119);
                                                                                                   }
                                                                                                   §§goto(addr106);
                                                                                                }
                                                                                                addr67:
                                                                                             }
                                                                                             continue;
                                                                                             return;
                                                                                          }
                                                                                          addr218:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                §§goto(addr298);
                                                                                             }
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    addr236:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  catch(e:Error)
                  {
                     var _loc2_:* = e;
                     §§goto(addr61);
                  }
                  §§goto(addr342);
               }
               this.§&!+§();
               §§goto(addr43);
            }
            §§goto(addr361);
         }
         §§goto(addr43);
      }
      
      override protected function setInitialState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]!9§.getItemByName("Button_Tutorial").setVisibility(false);
         }
         do
         {
            sHighscoreSidebar.enableCreditsButton(true);
            do
            {
               sHighscoreSidebar.enableLogOutButton(false);
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc1_);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() == §=p§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     if(!this.§5y§)
                     {
                        while(!(_loc4_ && param1))
                        {
                           §"!S§.§]O§.update(param1);
                           while(true)
                           {
                              addr49:
                              if(!(_loc4_ && param1))
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§goto(addr73);
                                 }
                                 else
                                 {
                                    addr121:
                                 }
                                 return _loc2_;
                              }
                           }
                        }
                        continue;
                        addr88:
                     }
                     while(true)
                     {
                        if(mNextState.length > 0)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr49);
                           }
                           else
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 break;
                              }
                              §§goto(addr88);
                           }
                        }
                        break;
                        §§goto(addr99);
                     }
                     return §=p§.STATE_STATUS_RUNNING;
                  }
               }
            }
            §§goto(addr121);
         }
         addr73:
         return §=p§.STATE_STATUS_COMPLETED;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§4!Y§ = null;
         if(_loc7_ || param2)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         loop0:
         while(true)
         {
            var _loc5_:* = param2;
            if(_loc7_ || param2)
            {
               if("SUBMIT" === _loc5_)
               {
                  if(!_loc6_)
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        addr427:
                     }
                  }
                  else
                  {
                     addr461:
                     §§push(6);
                     if(!_loc6_)
                     {
                        addr464:
                     }
                  }
               }
               else
               {
                  if("SUBMIT_REGISTER" === _loc5_)
                  {
                     if(_loc7_)
                     {
                        §§push(1);
                        if(_loc7_ || param1)
                        {
                           addr514:
                           switch(§§pop())
                           {
                              case 0:
                                 this.§ @§.§%!7§();
                                 break loop0;
                                 addr46:
                              case 1:
                                 this.§6![§.§%!7§();
                                 if(!_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(true)
                                       {
                                          break loop0;
                                       }
                                       continue;
                                    }
                                    §§goto(addr46);
                                 }
                                 break loop0;
                              case 2:
                                 _loc4_ = §]!9§.getItemByName("Checkbox_RememberMe") as §4!Y§;
                                 if(_loc7_)
                                 {
                                    §§push(this);
                                    §§push(this.§>!O§);
                                    if(_loc7_)
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().§>!O§ = §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(this.§>!O§)
                                          {
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                             if(!_loc6_)
                                             {
                                                _loc4_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                break;
                                             }
                                             continue loop12;
                                          }
                                          _loc4_.setComponentState(§4!Y§.§=?§);
                                          if(!(_loc7_ || param1))
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          addr102:
                                          _loc4_ = §]!9§.getItemByName("Checkbox_RememberMe_Register") as §4!Y§;
                                          if(_loc7_)
                                          {
                                             if(this.§>!O§)
                                             {
                                                if(!_loc6_)
                                                {
                                                   _loc4_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                   if(!_loc7_)
                                                   {
                                                   }
                                                   addr127:
                                                   break loop0;
                                                }
                                             }
                                             else
                                             {
                                                _loc4_.setComponentState(§4!Y§.§=?§);
                                             }
                                          }
                                          §§goto(addr127);
                                       }
                                    }
                                 }
                                 §§goto(addr102);
                              case 3:
                                 _loc4_ = §]!9§.getItemByName("Checkbox_Marketing") as §4!Y§;
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(this);
                                    §§push(this.§]'§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(!§§pop());
                                    }
                                    §§pop().§]'§ = §§pop();
                                    if(this.§]'§)
                                    {
                                       addr352:
                                       _loc4_.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       addr356:
                                    }
                                    else
                                    {
                                       _loc4_.setComponentState(§4!Y§.§=?§);
                                       addr347:
                                    }
                                    break loop0;
                                    addr369:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
                                       addr316:
                                       while(true)
                                       {
                                          §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
                                          loop2:
                                          while(true)
                                          {
                                             §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
                                             loop3:
                                             while(true)
                                             {
                                                §]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
                                                addr284:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            addr269:
                                                            §§push(this.§1!D§);
                                                            while(true)
                                                            {
                                                               §§pop().hide();
                                                               continue loop3;
                                                            }
                                                            addr269:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr369);
                                                         }
                                                      }
                                                      break loop3;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr323:
                                 }
                                 §§goto(addr356);
                              case 4:
                              case 5:
                                 §"!b§.§1+§(§]!9§);
                                 break loop0;
                                 addr339:
                              case 6:
                                 §]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
                                 §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
                                 §§goto(addr323);
                                 addr332:
                              case 7:
                                 §]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
                                 §]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
                                 loop4:
                                 while(_loc7_)
                                 {
                                    §§push(this.§1!D§);
                                    if(_loc7_)
                                    {
                                       §§pop().hide();
                                       while(_loc7_)
                                       {
                                          this.§6![§.activate();
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   addr182:
                                                   break loop0;
                                                }
                                                §§goto(addr339);
                                             }
                                             else
                                             {
                                                §§goto(addr270);
                                             }
                                          }
                                          §§goto(addr269);
                                       }
                                       §§goto(addr316);
                                       addr223:
                                    }
                                    §§goto(addr269);
                                 }
                                 §§goto(addr284);
                                 addr243:
                              case 8:
                                 navigateToURL(new URLRequest("http://www.rovio.com/Privacy"),"_blank");
                                 addr191:
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 if(!_loc6_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr347);
                                 break;
                              case 9:
                                 navigateToURL(new URLRequest("http://www.rovio.com/eula/"),"_blank");
                                 if(_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc7_ || this)
                                       {
                                          if(!(_loc6_ && param2))
                                          {
                                             if(_loc7_ || param3)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop0;
                                                   }
                                                   §§goto(addr182);
                                                }
                                                else
                                                {
                                                   §§goto(addr352);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr332);
                                             }
                                             §§goto(addr352);
                                          }
                                          else
                                          {
                                             §§goto(addr243);
                                          }
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr200);
                                 }
                                 else
                                 {
                                    §§goto(addr191);
                                 }
                           }
                           continue loop1;
                        }
                        addr455:
                        §§goto(addr514);
                     }
                  }
                  else if("CHECKBOX_CHANGE" === _loc5_)
                  {
                     if(!(_loc6_ && param2))
                     {
                        §§push(2);
                        if(_loc6_)
                        {
                           addr478:
                        }
                        §§goto(addr514);
                     }
                     else
                     {
                        §§goto(addr461);
                     }
                  }
                  else
                  {
                     if("CHECKBOX_MARKETING_CHANGE" === _loc5_)
                     {
                        if(_loc7_)
                        {
                           §§push(3);
                           if(_loc7_)
                           {
                              §§goto(addr427);
                           }
                           else
                           {
                              §§goto(addr478);
                           }
                        }
                     }
                     else if("FORGOT_PASSWORD" === _loc5_)
                     {
                        if(!_loc6_)
                        {
                           §§push(4);
                           if(_loc7_)
                           {
                              §§goto(addr514);
                           }
                           else
                           {
                              §§goto(addr464);
                           }
                        }
                        else
                        {
                           addr447:
                           §§push(5);
                           if(_loc7_ || param1)
                           {
                              §§goto(addr455);
                           }
                           §§goto(addr514);
                        }
                     }
                     else if("LOGOUT" === _loc5_)
                     {
                        if(_loc7_ || param1)
                        {
                           §§goto(addr447);
                        }
                        else
                        {
                           addr484:
                           §§push(8);
                           if(_loc6_)
                           {
                              addr509:
                           }
                           §§goto(addr514);
                        }
                     }
                     else
                     {
                        if("TAB_LOGIN" === _loc5_)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr461);
                           }
                        }
                        else if("TAB_REGISTER" === _loc5_)
                        {
                           if(!_loc6_)
                           {
                              §§push(7);
                              if(!(_loc6_ && param3))
                              {
                                 §§goto(addr478);
                              }
                              §§goto(addr514);
                           }
                           else
                           {
                              §§goto(addr484);
                           }
                        }
                        else
                        {
                           if("SUBMIT_PRIVACYPOLICY" === _loc5_)
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr484);
                              }
                           }
                           else if("SUBMIT_EULA" !== _loc5_)
                           {
                              §§goto(addr514);
                              §§push(10);
                           }
                           §§goto(addr514);
                        }
                        §§goto(addr514);
                     }
                     §§goto(addr514);
                  }
                  §§goto(addr514);
                  if(!(_loc6_ && param2))
                  {
                     §§goto(addr509);
                  }
               }
               §§goto(addr514);
            }
            §§goto(addr447);
         }
      }
      
      private function §27§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr145:
            while(true)
            {
               §§push(§§pop());
               addr146:
               while(true)
               {
                  §§pop().§§slot[1] = §§pop();
                  continue loop0;
               }
            }
         }
      }
      
      public function §=!8§(param1:String, param2:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§pop().§§slot[1] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(param2);
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = §§pop();
                        loop5:
                        while(!(_loc6_ && this))
                        {
                           §§push(§§newactivation());
                           loop6:
                           for(; !_loc6_; loop9:
                           while(!(_loc6_ && this))
                           {
                              §§push(§]!9§.getText("TextField_PasswordField"));
                              loop10:
                              for(; !(_loc6_ && this); if(!(_loc5_ || param2))
                              {
                                 continue;
                              },§§pop().§§slot[4] = §§pop(),§§goto(addr121))
                              {
                                 §§pop().§§slot[4] = §§pop();
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop12:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(§,i§.§8![§(idLocal));
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   §§pop().§§slot[3] = §§pop();
                                                   continue loop12;
                                                   addr93:
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop());
                                                         continue loop10;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr178);
                                             }
                                          }
                                          continue loop1;
                                       }
                                       continue loop9;
                                    }
                                    continue loop0;
                                    addr34:
                                    if(!(_loc6_ && this))
                                    {
                                       if(true)
                                       {
                                          try
                                          {
                                             §!!B§.flush();
                                          }
                                          catch(e:*)
                                          {
                                          }
                                       }
                                       loop18:
                                       while(true)
                                       {
                                          §!!B§.data.password = passwordLocal;
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                addr51:
                                                if(_loc6_ && this)
                                                {
                                                   break;
                                                }
                                                §!!B§.data.rememberMe = this.§>!O§;
                                                if(_loc5_ || _loc3_)
                                                {
                                                   continue loop18;
                                                }
                                                continue;
                                             }
                                             addr65:
                                             while(_loc5_ || this)
                                             {
                                                continue loop18;
                                             }
                                             §§goto(addr147);
                                          }
                                          addr121:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!(_loc5_ || param1))
                                                {
                                                   break;
                                                }
                                                §!!B§.data.id = idLocal;
                                                §§goto(addr65);
                                             }
                                             §§goto(addr179);
                                             §§goto(addr51);
                                          }
                                          continue loop5;
                                       }
                                       continue;
                                       return;
                                    }
                                 }
                              }
                              continue loop4;
                           })
                           {
                              §§push(§]!9§.getText("TextField_UserNameField"));
                              while(true)
                              {
                                 §§pop().§§slot[3] = §§pop();
                                 addr179:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    continue loop6;
                                 }
                              }
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      public function §&!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]!9§.setText("","TextField_UserNameField");
         }
         while(true)
         {
            §]!9§.setText("","TextField_PasswordField");
            while(_loc2_ || _loc2_)
            {
               §]!9§.getItemByName("MovieClip_ErrorLoginMarkEmail").setVisibility(false);
               while(!_loc1_)
               {
                  §]!9§.getItemByName("MovieClip_ErrorLoginMarkPassword").setVisibility(false);
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §]9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §]!9§.setText("","TextField_EmailField_Register");
            loop0:
            while(true)
            {
               §]!9§.setText("","TextField_PasswordField_Register");
               while(true)
               {
                  §]!9§.setText("","TextField_PasswordFieldRepeat_Register");
                  loop2:
                  while(!(_loc1_ && this))
                  {
                     while(true)
                     {
                        §]!9§.setText("","TextField_NickNameField_Register");
                        while(true)
                        {
                           §]!9§.getItemByName("MovieClip_ErrorRegisterMarkEmail").setVisibility(false);
                           addr91:
                           while(!_loc1_)
                           {
                              §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPassword").setVisibility(false);
                              while(_loc2_ || _loc1_)
                              {
                                 §]!9§.getItemByName("MovieClip_ErrorRegisterMarkPasswordRepeat").setVisibility(false);
                                 do
                                 {
                                    §]!9§.getItemByName("MovieClip_ErrorRegisterMarkNick").setVisibility(false);
                                 }
                                 while(!_loc2_);
                                 
                                 if(!(_loc2_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr91);
                              }
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function §,!N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§&!'§ = this.§1Z§;
            loop0:
            while(true)
            {
               this.§1!a§ = this.§+H§;
               while(true)
               {
                  §]!9§.setText(this.§&!'§,"TextField_UserNameField");
                  loop2:
                  while(_loc1_ || _loc2_)
                  {
                     §]!9§.setText(this.§1!a§,"TextField_PasswordField");
                     for(; this.§>!O§; if(_loc1_ || _loc1_)
                     {
                        if(!_loc2_)
                        {
                           addr61:
                           break;
                        }
                        continue loop0;
                     })
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              this.§=!8§(this.§&!'§,this.§1!a§);
                              continue;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function get §"!a§() : Boolean
      {
         return this.§>!O§;
      }
      
      public function get §1"§() : String
      {
         return this.§1Z§;
      }
      
      public function set §1"§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1Z§ = param1;
         }
      }
      
      public function get §4!e§() : String
      {
         return this.§+H§;
      }
      
      public function set §4!e§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§+H§ = param1;
         }
      }
      
      public function get §1!D§() : §1F§
      {
         return this.§%S§;
      }
      
      public function get §[-§() : Boolean
      {
         return this.§]'§;
      }
   }
}
