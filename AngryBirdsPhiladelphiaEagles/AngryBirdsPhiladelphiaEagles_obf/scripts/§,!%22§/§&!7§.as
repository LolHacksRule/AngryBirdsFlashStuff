package §,!"§
{
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§`M§;
   import §6v§.§var §;
   import §8!B§.§#! §;
   import §]p§.§9!,§;
   import §^]§.§`!K§;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class §&!7§ extends § true§
   {
      
      private static const §&!=§:int = 750;
      
      private static const §?!M§:String = "EndScreenEffectChannel";
      
      private static const §`,§:Number = 30;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&!=§ = 750;
            while(true)
            {
               §?!M§ = "EndScreenEffectChannel";
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     §`,§ = 30;
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      private var §=r§:§[!9§;
      
      private var §2Q§:Number;
      
      private var §`!I§:Number = 0.0;
      
      private var §'^§:Number = 0.0;
      
      private var §]!G§:Boolean = false;
      
      private var §!9§:Boolean = false;
      
      private var §&G§:Number = 0.0;
      
      private var §5!?§:Number = 0.0;
      
      private var §`x§:§[!9§ = null;
      
      private var §@Y§:Boolean = false;
      
      private var §=!7§:Number = 0;
      
      private var native:int;
      
      private var §@!M§:int = -1;
      
      public function §&!7§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §[!7§.§'<§(§?!M§,3,1);
               while(_loc1_)
               {
                  this.§=!7§ = (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.y;
                  if(!_loc2_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc1_))
         {
            this.§@Y§ = false;
         }
         §§push(§#! §.controller.getEagleScore());
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§));
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = _loc1_ > _loc2_;
         if(_loc6_ || _loc2_)
         {
            §9!,§.§>o§.addEventListener(§9!,§.SERVER_CALL_COMPLETE,this.§6!"§);
         }
         if(_loc3_)
         {
            §!D§.§#!O§(§!D§.§5!%§ + §`!K§.§5g§,_loc1_);
         }
         this.§2Q§ = -1;
         this.native = _loc1_;
         loop0:
         while(true)
         {
            §#! §.§`'§.background.§,+§();
            while(true)
            {
               super.activate();
               while(true)
               {
                  this.§]!G§ = false;
                  do
                  {
                     this.§!9§ = false;
                  }
                  while(_loc7_);
                  
                  if(!(_loc6_ || _loc2_))
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     continue;
                  }
                  var _loc4_:Rectangle = new Rectangle(0,0,§=!I§,(§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).height);
                  (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).mClip.scrollRect = _loc4_;
                  (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = "0%";
                  (§0q§.getItemByName("TextField_ScoreToBeat") as §@4§).§!!@§.text = _loc2_ + "%";
                  addr244:
                  addr235:
                  addr225:
                  §§push(_loc2_);
                  if(_loc6_)
                  {
                     if(§§pop() != 0)
                     {
                        (§0q§.getItemByName("TextField_ScoreToBeat") as §var §).visible = true;
                        (§0q§.getItemByName("MovieClip_ScoreToBeatTitle") as §var §).visible = true;
                        addr213:
                     }
                     addr175:
                     (§0q§.getItemByName("MovieClip_HighScore") as §var §).visible = false;
                     if(!(_loc7_ && _loc3_))
                     {
                        (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).visible = false;
                        if(!(_loc7_ && this))
                        {
                           if(!_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    if(!_loc7_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr175);
                                       }
                                       addr255:
                                       var _loc5_:int = int(§`!K§.§5g§.split("-")[1]) - 1;
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(!§!D§.§%2§(_loc5_))
                                          {
                                             §0q§.getItemByName("Button_NextLevel").setVisibility(true);
                                             if(_loc6_ || this)
                                             {
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   addr305:
                                                   §0q§.getItemByName("Button_NextLevel").setVisibility(false);
                                                   addr310:
                                                }
                                                return;
                                             }
                                             §§goto(addr310);
                                          }
                                       }
                                       §§goto(addr305);
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr213);
                  }
                  §§goto(addr255);
               }
            }
         }
      }
      
      private function §<!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!this.§@Y§)
         {
            (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.visible = true;
            while(true)
            {
               (§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip.y = this.§=!7§ + 100;
               loop1:
               while(!(_loc1_ && this))
               {
                  this.§`x§ = §3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_Achievement") as §!o§).mClip,{"y":this.§=!7§},null,1,§3C§.§4Z§);
                  do
                  {
                     this.§@Y§ = true;
                  }
                  while(!_loc2_);
                  
                  §§push(this.§`x§);
                  while(true)
                  {
                     §§pop().onComplete = this.§<!Q§;
                     while(true)
                     {
                        §§push(this.§`x§);
                        if(_loc1_)
                        {
                           break;
                        }
                        §§pop().play();
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr18);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         addr18:
      }
      
      private function §4c§() : void
      {
      }
      
      private function §6!"§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = int(§`!K§.§5g§.split("-")[1]) - 1;
         if(_loc4_ || this)
         {
            if(!§!D§.§%2§(_loc2_))
            {
               §0q§.getItemByName("Button_NextLevel").setVisibility(true);
               if(_loc4_)
               {
                  addr70:
               }
               else
               {
                  addr87:
               }
               return;
            }
            if(_loc4_ || this)
            {
               §0q§.getItemByName("Button_NextLevel").setVisibility(false);
            }
            §§goto(addr87);
         }
         §§goto(addr70);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param2);
         loop0:
         while(true)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param3))
            {
               §§push("NEXT_LEVEL");
               if(_loc5_ || param1)
               {
                  §§push(_loc4_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && param3))
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr174:
                           }
                        }
                        else
                        {
                           addr171:
                           §§push(2);
                           if(!_loc6_)
                           {
                              §§goto(addr174);
                           }
                        }
                        addr179:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(§`!K§.§6J§());
                              if(_loc5_)
                              {
                                 if(§§pop() != null)
                                 {
                                    §-O§.§ b§();
                                    break;
                                 }
                                 §`!K§.§!e§(§`!K§.§]!F§("1-1"));
                                 break;
                              }
                              continue;
                              addr105:
                              break;
                           case 1:
                              §-O§.§8!5§();
                              mNextState = §-O§.§-A§;
                              addr56:
                              if(!(_loc6_ && param1))
                              {
                                 addr36:
                                 break loop0;
                              }
                              §§goto(addr105);
                              break;
                           case 2:
                              mNextState = §@f§.§-A§;
                              if(!(_loc6_ && this))
                              {
                                 break loop0;
                              }
                              break loop0;
                           default:
                              super.uiInteractionHandler(param1,param2,param3);
                              if(!(_loc6_ && param2))
                              {
                                 if(_loc5_)
                                 {
                                    if(true)
                                    {
                                       break loop0;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr56);
                                 }
                                 §§goto(addr36);
                              }
                        }
                        mNextState = §-O§.§-A§;
                        break;
                     }
                     §§push("REPLAY");
                     if(_loc5_)
                     {
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           addr156:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 addr159:
                                 §§push(1);
                                 if(!(_loc5_ || param3))
                                 {
                                    §§goto(addr174);
                                 }
                              }
                              else
                              {
                                 §§goto(addr171);
                              }
                              §§goto(addr179);
                           }
                           else
                           {
                              addr169:
                              §§push("MENU");
                              §§push(_loc4_);
                           }
                           §§goto(addr171);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr171);
                        }
                        else
                        {
                           §§push(3);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr169);
                     §§goto(addr171);
                  }
                  §§goto(addr156);
               }
               §§goto(addr169);
            }
            §§goto(addr159);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         §§push(super.run(param1));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         loop0:
         while(true)
         {
            if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
            {
               loop1:
               while(true)
               {
                  (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = int(mEagleScoreCounter) + "%";
                  loop2:
                  while(true)
                  {
                     (§0q§.getItemByName("TextField_EaglePercentageEffects") as §@4§).§!!@§.text = int(mEagleScoreCounter) + "%";
                     §§push(this.§2Q§);
                     loop3:
                     while(true)
                     {
                        §§push(-1);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr390:
                                    while(true)
                                    {
                                       §§pop();
                                       §§push(mEagleScoreCounter > §&!1§);
                                    }
                                    addr390:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             §§push(mEagleScoreCounter >= this.native);
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop36:
                                                   while(_loc4_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            §§push(this.§]!G§);
                                                            addr332:
                                                            do
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            while(!_loc5_);
                                                            
                                                            continue loop8;
                                                         }
                                                         addr365:
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr437);
                                                            }
                                                            §§push(this.§@!M§);
                                                            §§push(-1);
                                                            while(true)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  §§push(getTimer() - this.§@!M§);
                                                                  continue loop3;
                                                               }
                                                               this.§@!M§ = getTimer();
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr342:
                                                         }
                                                         addr194:
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(this.§2Q§);
                                                            if(!(_loc4_ || _loc2_))
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr214:
                                                            §§push(0);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  this.§!9§ = true;
                                                                  addr228:
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  this.§@!,§(param1);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§!9§);
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              this.§!9§ = false;
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr228);
                                                                              }
                                                                              addr26:
                                                                              return §'!#§.STATE_STATUS_RUNNING;
                                                                              addr181:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr325:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§]!G§ = true;
                                                                              break loop23;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     loop34:
                                                                     while(!(_loc5_ && _loc3_))
                                                                     {
                                                                        addr129:
                                                                        §§pop();
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              addr137:
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(3);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop34;
                                                                                       }
                                                                                       addr91:
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§goto(addr332);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop34;
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop36;
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop34;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                    addr111:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       this.§<!Q§();
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§=r§);
                                                                                          do
                                                                                          {
                                                                                             §§pop().onComplete = this.onBadgeLanded;
                                                                                             §§push(this.§=r§);
                                                                                          }
                                                                                          while(!_loc4_);
                                                                                          
                                                                                          §§pop().play();
                                                                                          addr237:
                                                                                          while(!(_loc5_ && this))
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       addr97:
                                                                                       addr275:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§2Q§ = -0.99;
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop33;
                                                                                          }
                                                                                          (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x = this.§&G§;
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y = this.§5!?§;
                                                                                                while(_loc4_)
                                                                                                {
                                                                                                   this.§`!I§ = 0;
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr97);
                                                                                          }
                                                                                          §§goto(addr181);
                                                                                       }
                                                                                       §§goto(addr237);
                                                                                    }
                                                                                    §§goto(addr91);
                                                                                 }
                                                                                 §§goto(addr332);
                                                                                 addr144:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       this.§&G§ = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x;
                                                                                       this.§5!?§ = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y;
                                                                                       this.§=r§ = §3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).mClip,{
                                                                                          "scaleX":1,
                                                                                          "scaleY":1
                                                                                       },{
                                                                                          "scaleX":7,
                                                                                          "scaleY":7
                                                                                       },0.1);
                                                                                       §§goto(addr275);
                                                                                    }
                                                                                    §§goto(addr137);
                                                                                 }
                                                                                 addr305:
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              §§goto(addr111);
                                                                              §§push(100);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr437);
                                                                           }
                                                                           §§goto(addr144);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).mClip.visible = true;
                                                                     §§goto(addr305);
                                                                  }
                                                               }
                                                               §§goto(addr26);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               addr324:
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                                addr355:
                                             }
                                             §§goto(addr365);
                                          }
                                       }
                                       §§goto(addr355);
                                    }
                                 }
                              }
                           }
                           §§goto(addr390);
                        }
                     }
                  }
               }
            }
            addr437:
            return _loc2_;
         }
      }
      
      protected function §#F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`!I§ = 0;
            while(true)
            {
               this.§'^§ = 0;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§2Q§ = §`,§;
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr46);
      }
      
      private function onBadgeLanded() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§=r§ = null;
         do
         {
            (§0q§.getItemByName("MovieClip_HighScore") as §!o§).visible = true;
         }
         while(_loc2_);
         
         §[!7§.playSound("Hiscore_Badge",§?!M§);
         (§0q§.getItemByName("TextField_ScoreToBeat") as §@4§).setVisibility(false);
         do
         {
            (§0q§.getItemByName("MovieClip_ScoreToBeatTitle") as §!o§).setVisibility(false);
            do
            {
               this.§#F§();
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private function §@!,§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x - this.§`!I§;
            (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y - this.§'^§;
            loop0:
            while(true)
            {
               if(this.§2Q§ > 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(Math.random() - 0.5);
                     if(!_loc3_)
                     {
                        §§push(this.§2Q§);
                        if(_loc2_)
                        {
                           §§push(§§pop() / §`,§);
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc2_ || _loc2_)
                        {
                           addr161:
                           §§push(§§pop() * 20);
                        }
                        §§pop().§`!I§ = §§pop();
                        loop2:
                        for(; _loc2_; while(true)
                        {
                           §§push(this);
                           §§push(this.§2Q§);
                           if(_loc2_)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 §§push(§§pop() / 10);
                              }
                              §§push(§§pop() - §§pop());
                           }
                           §§pop().§2Q§ = §§pop();
                           if(_loc2_ || _loc2_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        },return)
                        {
                           §§push(this);
                           §§push(Math.random() - 0.5);
                           if(!(_loc3_ && param1))
                           {
                              §§push(this.§2Q§);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() / §`,§);
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * 20);
                              }
                           }
                           §§pop().§'^§ = §§pop();
                           do
                           {
                              (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).x + this.§`!I§;
                              do
                              {
                                 (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y = (§0q§.getItemByName("Container_LevelEndEagleStripe") as §[Q§).y + this.§'^§;
                              }
                              while(_loc3_ && this);
                              
                           }
                           while(!(_loc2_ || _loc2_));
                           
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr161);
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr50);
                  }
               }
               §§goto(addr23);
            }
         }
         §§goto(addr81);
      }
   }
}
