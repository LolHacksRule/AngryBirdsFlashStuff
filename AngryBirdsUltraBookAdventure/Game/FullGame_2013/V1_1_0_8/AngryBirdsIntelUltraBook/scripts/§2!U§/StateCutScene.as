package §2!U§
{
   import §"!i§.LevelManager;
   import §2m§.§<!?§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §=I§.§6g§;
   import §=I§.§@x§;
   import §=`§.§ !;§;
   import §=`§.§6!I§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import flash.events.Event;
   
   public class StateCutScene extends §9![§
   {
      
      public static const §'!q§:String = "StateCutScene";
      
      private static const §0X§:Number = 500;
      
      protected static var §&!Y§:Boolean;
      
      protected static var §->§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'!q§ = "StateCutScene";
            do
            {
               §0X§ = 500;
            }
            while(!(_loc2_ || StateCutScene));
            
         }
      }
      
      protected var §!H§:§@x§;
      
      private var §-!F§:Boolean;
      
      private var §!!l§:Number = 0;
      
      private var §3!4§:Number = 0;
      
      private var §[p§:§ !;§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function §3!a§(param1:Boolean, param2:int = -2147483648) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §&!Y§ = param1;
            do
            {
               §->§ = param2;
            }
            while(!_loc4_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
         }
         do
         {
            §'!Q§ = new §&!G§(this);
            do
            {
               §'!Q§.init(§2!z§.§ _§.Views.View_CutScene[0]);
            }
            while(_loc2_ && _loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      protected function §@!p§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  §§push(this.§[p§);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§5t§();
                        if(!_loc2_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              loop3:
                              while(true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       continue loop0;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§[p§);
                                       addr168:
                                       addr175:
                                       while(true)
                                       {
                                          §§pop().removeEventListener(Event.COMPLETE,this.§35§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          addr181:
                                          while(true)
                                          {
                                             §'!Q§.getItemByName("MovieClip_Loading").setVisibility(true);
                                             continue loop6;
                                          }
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§[p§);
                                          addr159:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§[p§);
                                    continue loop3;
                                 }
                              }
                              continue loop1;
                           }
                           loop7:
                           while(true)
                           {
                              §§push(this.§[p§);
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr117);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§pop().addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr159);
                                 addr106:
                              }
                           }
                           continue;
                           §§goto(addr168);
                        }
                        break;
                     }
                     §§goto(addr181);
                  }
               }
            }
            else
            {
               §§push(false);
               if(_loc3_ || _loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr175);
      }
      
      private function §35§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§[p§);
            loop0:
            while(§§pop())
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§[p§);
                  loop1:
                  while(true)
                  {
                     §§pop().removeEventListener(Event.COMPLETE,this.§35§);
                     addr91:
                     while(true)
                     {
                        §§push(this.§[p§);
                        if(!(_loc3_ && _loc3_))
                        {
                           if(_loc2_)
                           {
                              §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                              do
                              {
                                 this.§5t§();
                              }
                              while(!(_loc2_ || _loc3_));
                              
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
               §§goto(addr91);
            }
            return;
         }
         §§goto(addr91);
      }
      
      protected function §5t§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            §'!Q§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.§8!Y§());
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:§6!I§ = §6!I§.§[U§;
         if(!_loc4_)
         {
            §§push(this.§[p§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr59:
                     _loc2_ = this.§[p§.textureManager;
                     addr62:
                     this.§!H§ = §6g§.§#!u§(_loc1_,_loc2_);
                     if(!_loc4_)
                     {
                        §§push(this.§!H§);
                        loop6:
                        while(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              AngryBirdsFP11.sUserProgress.§8?§(_loc1_);
                              addr182:
                              loop0:
                              while(true)
                              {
                                 §§push(§,!s§.§=!I§);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(true);
                                    loop2:
                                    while(true)
                                    {
                                       §§pop().§!C§(§§pop());
                                       addr167:
                                       while(!(_loc4_ && _loc2_))
                                       {
                                          §§push(§,!s§.§=!I§);
                                          while(true)
                                          {
                                             §§push(false);
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                break;
                                             }
                                             §§pop().§1!9§(§§pop());
                                             loop5:
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§!H§);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§pop().update(0);
                                                         continue loop5;
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr111:
                                                   break loop6;
                                                   addr161:
                                                }
                                                continue loop7;
                                             }
                                             §§push(§,!s§.§=!I§);
                                             continue loop7;
                                             if(_loc3_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr182);
               }
               §§goto(addr62);
            }
            §§goto(addr59);
         }
         §§goto(addr111);
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§[p§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this.§[p§);
                     loop2:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§35§);
                        addr86:
                        loop3:
                        while(true)
                        {
                           §§push(this.§[p§);
                           if(!_loc3_)
                           {
                              §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                              while(_loc3_)
                              {
                                 continue loop3;
                              }
                              addr61:
                              while(true)
                              {
                                 this.end();
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr59);
                                 §§goto(addr61);
                              }
                              addr59:
                              return;
                              addr23:
                           }
                           continue loop2;
                        }
                     }
                     addr81:
                  }
                  §§goto(addr86);
               }
               §§goto(addr23);
            }
            §§goto(addr81);
         }
         §§goto(addr86);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.activate();
            loop0:
            while(true)
            {
               if(!this.§[p§)
               {
                  addr135:
                  while(true)
                  {
                     this.§[p§ = §,!s§.§=!I§.§!n§;
                     addr140:
                     while(true)
                     {
                     }
                  }
                  addr135:
               }
               loop3:
               while(true)
               {
                  §§push(§<!?§.§,=§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§<!?§.§,=§);
                           addr128:
                           while(true)
                           {
                              §§pop().color = 0;
                              addr130:
                              while(true)
                              {
                              }
                           }
                           addr112:
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           while(true)
                           {
                              this.§3!4§ = 0;
                              loop10:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §'!Q§.getItemByName("Button_Skip").setVisibility(false);
                                 loop11:
                                 while(_loc3_)
                                 {
                                    §'!Q§.getItemByName("Button_Skip").mClip.alpha = this.§!!l§;
                                    continue loop10;
                                    addr50:
                                    if(!(_loc3_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    §'!Q§.getItemByName("MovieClip_Loading").setVisibility(false);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          addr40:
                                          if(_loc3_)
                                          {
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   this.§-!F§ = false;
                                                   addr48:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§goto(addr50);
                                                   }
                                                   continue loop11;
                                                   §§goto(addr40);
                                                }
                                                continue loop3;
                                                addr44:
                                             }
                                             §§push(this.§8!Y§());
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop());
                                             }
                                             var _loc1_:* = §§pop();
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(!this.§@!p§(_loc1_))
                                                {
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      this.end();
                                                   }
                                                }
                                             }
                                             return;
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             §§goto(addr44);
                                          }
                                          else
                                          {
                                             §§goto(addr135);
                                          }
                                       }
                                       addr61:
                                    }
                                    §§goto(addr48);
                                 }
                                 while(!_loc2_)
                                 {
                                    §§goto(addr112);
                                 }
                                 §§goto(addr130);
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        this.§!!l§ = 0;
                        §§goto(addr110);
                        §§goto(addr130);
                     }
                  }
                  §§goto(addr128);
               }
            }
         }
         §§goto(addr119);
      }
      
      protected function §8!Y§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(LevelManager.§>l§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(LevelManager.§+!$§().§8!O§(_loc1_ + "-OUTRO"));
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(LevelManager.§"L§);
                     addr118:
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        addr119:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(LevelManager.§+!$§().§8!O§(_loc1_ + "-INTRO"));
                              addr93:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr94:
                                 addr106:
                                 while(true)
                                 {
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                 }
                              }
                           }
                           continue loop6;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_ || _loc1_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           break;
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr94);
                  §§goto(addr106);
               }
               return §§pop();
            }
            §§goto(addr118);
         }
         §§goto(addr106);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§!H§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§push(this.§[p§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           while(!_loc2_)
                           {
                              §§push(this.§[p§);
                              loop12:
                              while(true)
                              {
                                 §§pop().removeEventListener(Event.COMPLETE,this.§35§);
                                 addr130:
                                 addr92:
                                 addr97:
                                 while(true)
                                 {
                                    §§push(this.§[p§);
                                    if(!(_loc2_ && this))
                                    {
                                       break;
                                    }
                                    continue loop12;
                                 }
                                 §§pop().removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
                                 addr104:
                                 while(_loc2_ && _loc2_)
                                 {
                                    §§goto(addr130);
                                    §§goto(addr92);
                                 }
                              }
                           }
                           continue;
                           addr111:
                        }
                        loop7:
                        while(true)
                        {
                           §§push(§,!s§.§=!I§);
                           if(_loc1_ || _loc1_)
                           {
                              §§pop().§1!9§(true);
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    LevelManager.§>l§ = null;
                                    continue;
                                 }
                                 §§goto(addr97);
                              }
                              while(_loc1_)
                              {
                                 this.§!H§ = null;
                                 continue loop5;
                              }
                              while(true)
                              {
                                 §§push(§,!s§.§=!I§);
                                 break loop7;
                              }
                              addr148:
                              addr142:
                           }
                           break;
                           §§goto(addr104);
                        }
                        while(true)
                        {
                           §§pop().§]!_§.removeChild(this.§!H§.sprite);
                           continue loop0;
                        }
                     }
                     §§goto(addr125);
                  }
               }
               §§goto(addr148);
            }
         }
         §§goto(addr135);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("SKIP");
            if(_loc5_)
            {
               §§push(_loc4_);
               if(!(_loc6_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc6_ && param2)
                        {
                        }
                     }
                     else
                     {
                        addr88:
                        §§push(1);
                        if(!_loc5_)
                        {
                        }
                     }
                     §§goto(addr96);
                  }
                  else
                  {
                     addr86:
                     §§push("FULLSCREEN_BUTTON");
                     §§push(_loc4_);
                  }
                  §§goto(addr88);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr88);
               }
               else
               {
                  §§push(2);
               }
               addr96:
               switch(§§pop())
               {
                  case 0:
                     this.§-!F§ = true;
                     if(_loc5_ || param3)
                     {
                        break;
                     }
                     addr45:
                     break;
                  case 1:
                     AngryBirdsFP11.§'!g§.§]8§();
                     if(_loc5_)
                     {
                        §§goto(addr45);
                     }
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr88);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§3!4§);
            loop0:
            while(true)
            {
               if(§§pop() <= §0X§)
               {
                  §§push(this);
                  §§push(this.§3!4§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§3!4§ = §§pop();
                  loop1:
                  for(; this.§-!F§; while(true)
                  {
                     continue loop1;
                  })
                  {
                     if(_loc4_)
                     {
                        if(_loc3_ && this)
                        {
                           continue loop0;
                        }
                        if(_loc3_ && param1)
                        {
                           loop2:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr146:
                              while(true)
                              {
                                 §'!Q§.getItemByName("Button_Skip").setVisibility(!§&!Y§);
                                 continue loop2;
                              }
                           }
                           §'!Q§.getItemByName("Button_Skip").mClip.alpha = this.§!!l§;
                           continue loop0;
                        }
                        this.end();
                     }
                     if(_loc4_ || _loc2_)
                     {
                        return §9![§.STATE_STATUS_COMPLETED;
                     }
                     addr99:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  §§push(super.run(param1));
                  if(_loc4_ || _loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(_loc2_);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop() == §9![§.STATE_STATUS_RUNNING)
                        {
                           addr247:
                           if(mNextState.length > 0)
                           {
                              §§goto(addr252);
                           }
                           addr209:
                           §§push(§&!Y§);
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 addr219:
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr228:
                                    §§push(Boolean(this.§!H§));
                                    if(!_loc3_)
                                    {
                                       addr231:
                                       if(§§pop())
                                       {
                                          addr243:
                                          §§pop();
                                          if(_loc4_)
                                          {
                                             §§push(this.§!H§);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop().update(param1));
                                                if(!_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr191:
                                                      §§push(!§§pop());
                                                   }
                                                   §§goto(addr243);
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         this.end();
                                                      }
                                                      addr270:
                                                      return _loc2_;
                                                      addr269:
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr243);
                                 }
                                 §§goto(addr252);
                              }
                              addr173:
                              return §9![§.STATE_STATUS_RUNNING;
                           }
                           §§goto(addr231);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr270);
                  }
                  addr252:
                  if(!_loc4_)
                  {
                     §§goto(addr247);
                  }
                  return §9![§.STATE_STATUS_COMPLETED;
               }
               §§goto(addr146);
            }
         }
         §§goto(addr99);
      }
      
      protected function end() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = null;
         if(!_loc2_)
         {
            §§push(this.§!H§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr234:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§!H§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().§+l§);
                                 addr218:
                                 addr116:
                                 while(true)
                                 {
                                    §§push(§@x§.§<""§);
                                    addr220:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop().§+l§);
                                 loop19:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc1_)
                                    {
                                       §§push(§@x§.§4!X§);
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr148:
                                             if(_loc3_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr207:
                                                      if(!_loc2_)
                                                      {
                                                         mNextState = §<&§.§'!q§;
                                                      }
                                                      loop12:
                                                      while(!_loc2_)
                                                      {
                                                         if(!(_loc2_ && _loc1_))
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §3!a§(false);
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  loop14:
                                                                  for(; _loc3_; mNextState = this.§8!X§())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           §§push(_loc1_);
                                                                           if(!_loc3_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              continue loop19;
                                                                              addr85:
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 mNextState = this.§[!Q§();
                                                                                 break loop14;
                                                                              }
                                                                              addr72:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §2!=§.§%!i§ = StateCutScene.§'!q§;
                                                                              }
                                                                              addr223:
                                                                           }
                                                                        }
                                                                        §§goto(addr218);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        mNextState = this.§8!X§();
                                                                        while(true)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               §§goto(addr65);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§!H§);
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr116);
                                                         addr206:
                                                         §§pop();
                                                      }
                                                      continue loop5;
                                                      addr207:
                                                   }
                                                   §§push(LevelManager.§"L§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr85);
                                                   §§goto(addr148);
                                                }
                                                addr150:
                                             }
                                             continue loop1;
                                          }
                                          addr194:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr207);
                                       }
                                       else
                                       {
                                          §§goto(addr220);
                                       }
                                       addr221:
                                    }
                                    else
                                    {
                                       §§goto(addr218);
                                    }
                                    §§goto(addr220);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr221);
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      protected function §8!X§() : String
      {
         return §2!=§.§'!q§;
      }
      
      protected function §[!Q§() : String
      {
         return §3!;§.§'!q§;
      }
   }
}
