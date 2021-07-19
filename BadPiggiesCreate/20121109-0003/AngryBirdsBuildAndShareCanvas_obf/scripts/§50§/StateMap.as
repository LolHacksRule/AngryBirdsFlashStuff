package §50§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §1" §.§#!j§;
   import §6]§.§+!T§;
   import §7!@§.§+`§;
   import §;" §.§5L§;
   import §;<§.§'B§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateMap extends §'B§
   {
      
      private static const §5!§:Class;
      
      private static const §?!4§:int = 10;
      
      public static const §%!Q§:String = "StateMap";
      
      public static const §4h§:String = "MainMenuChannel";
      
      private static var §,!S§:XML;
      
      private static var §?n§:int = -1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!§ = §[q§;
            loop0:
            while(true)
            {
               §?!4§ = 10;
               while(true)
               {
                  §%!Q§ = "StateMap";
                  addr58:
                  if(_loc1_ || _loc1_)
                  {
                     §?n§ = -1;
                     addr65:
                     if(_loc1_ || StateMap)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           while(true)
                           {
                              §4h§ = "MainMenuChannel";
                              continue loop3;
                           }
                           return;
                           addr46:
                           addr80:
                        }
                        §§goto(addr58);
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private var §"d§:§8!e§;
      
      private var §0!m§:MapPig;
      
      private var §0!l§:Vector.<MapQuestIcon>;
      
      public function StateMap(param1:Boolean = true, param2:String = "StateMap")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§0!l§ = new Vector.<MapQuestIcon>();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc3_ && param1);
         
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            if(mNextState.length > 0)
            {
               if(_loc3_)
               {
                  return §'B§.STATE_STATUS_COMPLETED;
               }
            }
         }
         return _loc2_;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
            while(true)
            {
               §,!S§ = §+!T§.§`x§(§5!§);
               while(!(_loc1_ && _loc2_))
               {
                  §`!v§ = new §>!V§(this);
                  loop2:
                  while(true)
                  {
                     §`!v§.init(§]!M§.§"!V§.Views.View_Map[0]);
                     loop3:
                     while(true)
                     {
                        this.§"d§ = new §8!e§();
                        addr83:
                        while(!_loc1_)
                        {
                           this.§0!m§ = new MapPig(this.§"d§);
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      override public function activate() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super.activate();
         }
         var _loc1_:Vector.<Object> = (AngryBirdsFP11.§>!7§ as §+`§).completedQuests.concat();
         var _loc2_:* = int(_loc1_.length);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§?n§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc8_)
                     {
                        §?n§ = _loc2_;
                     }
                     while(true)
                     {
                        addr98:
                        _loc2_ = §§pop();
                        do
                        {
                           §?n§ = Math.min(§?n§ % §?!4§,_loc2_);
                        }
                        while(_loc7_);
                        
                        if(!(_loc8_ || this))
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc7_)
                                 {
                                    §§push(§?!4§);
                                    if(_loc8_ || _loc3_)
                                    {
                                       if(!_loc8_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() % §§pop());
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc7_ && _loc1_)
                                          {
                                             §§push(1);
                                          }
                                          else
                                          {
                                             addr110:
                                          }
                                          continue loop0;
                                          break;
                                       }
                                       var _loc3_:* = §§pop();
                                       §§push(_loc2_ + 1);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(§§pop() / §?!4§);
                                          if(_loc8_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc4_:* = §§pop();
                                       if(_loc8_)
                                       {
                                          this.§"d§.draw(§,!S§.map[0],_loc3_,_loc4_);
                                          loop6:
                                          while(true)
                                          {
                                             §`!v§.getItemByName("Map").mClip.addChildAt(this.§"d§,1);
                                             while(true)
                                             {
                                                this.§;!@§();
                                                while(!_loc7_)
                                                {
                                                   this.§&!Y§(0,§?n§);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      this.§&!Y§(§?n§,_loc2_,true);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         this.§0!m§.§4R§(_loc4_);
                                                         addr201:
                                                         while(true)
                                                         {
                                                            addr171:
                                                            while(true)
                                                            {
                                                               §`!v§.getItemByName("Map").mClip.addChild(this.§0!m§);
                                                               addr179:
                                                               while(!_loc7_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   if(!(_loc7_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         §?n§ = _loc2_;
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§push((AngryBirdsFP11.§>!7§ as §+`§).sandboxAvailable);
                                                      if(_loc8_ || _loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      var _loc5_:* = §§pop();
                                                      var _loc6_:§9"8§;
                                                      (_loc6_ = §`!v§.getItemByName("Button_Sandbox") as §9"8§).setEnabled(_loc5_);
                                                      if(_loc8_ || _loc1_)
                                                      {
                                                         _loc6_.mClip.alpha = !!_loc5_ ? Number(1) : Number(0.5);
                                                      }
                                                      do
                                                      {
                                                         §0"#§.§9"2§("BadPiggies_LevelSelecion",§4h§,1000);
                                                      }
                                                      while(!_loc8_);
                                                      
                                                      return;
                                                      addr195:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr195);
                                    }
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§push(§§pop() / §?!4§);
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr129);
                              addr61:
                           }
                           else
                           {
                              §§push(§?n§);
                           }
                           §§goto(addr110);
                        }
                     }
                  }
                  §§goto(addr61);
               }
            }
         }
         §§goto(addr59);
      }
      
      private function §;!@§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:MapQuestIcon = null;
         for each(_loc1_ in this.§0!l§)
         {
            if(!(_loc4_ && this))
            {
               _loc1_.parent.removeChild(_loc1_);
            }
         }
         if(!(_loc4_ && _loc1_))
         {
            this.§0!l§ = new Vector.<MapQuestIcon>();
         }
      }
      
      private function §&!Y§(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:§+!&§ = null;
         var _loc9_:MapQuestIcon = null;
         var _loc4_:Object = (AngryBirdsFP11.§>!7§ as §+`§).completedQuests;
         var _loc5_:int = 0;
         loop0:
         for each(_loc6_ in _loc4_)
         {
            if(!_loc13_)
            {
               §§push(_loc5_);
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr134:
                              while(true)
                              {
                                 addr95:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    addr97:
                                    while(true)
                                    {
                                       §§push(param2);
                                       addr98:
                                       while(_loc12_)
                                       {
                                          §§push(§§pop() >= §§pop());
                                          if(!(_loc12_ || param2))
                                          {
                                             continue loop4;
                                          }
                                          if(_loc13_ && param3)
                                          {
                                             continue loop3;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc13_ && this))
                              {
                                 _loc5_++;
                              }
                              addr125:
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§goto(addr134);
                           }
                           else
                           {
                              §§push(_loc5_);
                              if(_loc12_ || this)
                              {
                                 continue loop1;
                              }
                           }
                           §§goto(addr97);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr134);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            if("START" !== _loc4_)
            {
               if("SANDBOX" === _loc4_)
               {
                  §§goto(addr101);
               }
               else
               {
                  §§push(2);
               }
               addr119:
               loop2:
               switch(§§pop())
               {
                  case 0:
                     this.start();
                     break;
                     addr71:
                  case 1:
                     §0"#§.§9"2§("Sound_Button_Click");
                     loop0:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(§#!j§.§[E§);
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(§#!j§.§[E§);
                                 }
                                 break loop2;
                              }
                              addr17:
                              §5L§.§[E§.§["%§(null);
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(true)
                                    {
                                       break loop2;
                                    }
                                    continue;
                                 }
                                 §§goto(addr71);
                              }
                              break loop2;
                           }
                           §§pop().§9L§.§=D§();
                           if(!_loc5_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                        break loop2;
                     }
               }
               return;
            }
            if(_loc5_)
            {
               §§push(0);
               if(_loc6_ && param1)
               {
                  addr114:
               }
            }
            else
            {
               addr101:
               §§push(1);
               if(_loc5_)
               {
                  §§goto(addr114);
               }
            }
            §§goto(addr119);
         }
         §§goto(addr101);
      }
      
      private function start(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §0"#§.§9"2§("Sound_Button_Click");
            loop0:
            while(true)
            {
               §§push(§#!j§.§[E§);
               if(!(_loc2_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §5L§.§[E§.each(§5L§.§[E§.§#!b§());
                        if(!(_loc3_ || this))
                        {
                           continue loop0;
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        addr83:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     return;
                  }
                  while(true)
                  {
                     §§push(§#!j§.§[E§);
                  }
               }
               while(true)
               {
                  §§pop().§9L§.§=D§();
                  continue loop0;
               }
            }
         }
         §§goto(addr83);
      }
   }
}
