package
{
   import §"!i§.LevelManager;
   import §-!$§.§,w§;
   import §2m§.§<!?§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §<-§.§5Z§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsUltraBookCanvas extends §,w§
   {
      
      public static const §`!q§:String = "1.1.0.7 r106878)";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!q§ = "1.1.0.7 r106878)";
         }
      }
      
      private var §8e§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               if(!stage)
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     addr67:
                  }
                  else
                  {
                     addr80:
                  }
               }
               continue;
               return;
            }
            while(!(_loc2_ || _loc1_));
            
            this.init();
            §§goto(addr80);
         }
         §§goto(addr67);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §5Z§.§ !j§(stage,"UA-23082676-25");
            loop0:
            do
            {
               §!!K§.§`!m§();
               while(loaderInfo.bytesLoaded >= loaderInfo.bytesTotal)
               {
                  this.§?!7§();
                  if(_loc1_ || this)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr24);
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
               loaderInfo.addEventListener(Event.COMPLETE,this.§>!l§);
            }
            while(_loc2_ && _loc1_);
            
         }
         addr24:
      }
      
      private function §#Z§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
         }
         do
         {
            this.init();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      private function §>!l§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§>!l§);
            do
            {
               this.§?!7§();
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      private function §?!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§;b§);
         }
         do
         {
            new §<t§(this);
         }
         while(!_loc2_);
         
      }
      
      private function §;b§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:* = null;
         if(!(_loc13_ && param1))
         {
            §§push(this.§8e§);
            if(_loc14_)
            {
               if(!§§pop())
               {
                  if(_loc14_ || this)
                  {
                     this.§8e§ = true;
                     loop0:
                     while(true)
                     {
                        §§push(0);
                        while(true)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              _loc3_ = null;
                              while(!_loc13_)
                              {
                                 §§push("");
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc13_)
                                    {
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    addr155:
                                    addr155:
                                    addr155:
                                    §§push(int((_loc10_ = param1.error as Error).errorID));
                                    if(_loc14_ || _loc3_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc13_)
                                       {
                                          §§push(_loc10_.message);
                                          if(!_loc13_)
                                          {
                                             _loc5_ = §§pop();
                                             if(!_loc13_)
                                             {
                                                §§push(_loc10_.getStackTrace());
                                                if(!(_loc13_ && _loc2_))
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!(_loc13_ && this))
                                                   {
                                                      addr216:
                                                      §!!K§.§]!M§(_loc2_,_loc6_);
                                                      if(_loc14_)
                                                      {
                                                         §§push(§,!s§.§]!J§);
                                                         if(_loc14_ || param1)
                                                         {
                                                            if(§§pop() != null)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§,!s§.§]!J§);
                                                                  addr596:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§,^§());
                                                                     addr598:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr599:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr594:
                                                            }
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(null);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr572:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push("NoState");
                                                                                    addr573:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       addr574:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr572:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(LevelManager.§"L§);
                                                                                 loop16:
                                                                                 while(!_loc13_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_ = §§pop());
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(null);
                                                                                          if(!(_loc14_ || param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push("");
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      addr536:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc13_ && _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr572);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr573);
                                                                                                      addr395:
                                                                                                      if(!(_loc14_ || _loc3_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push("::");
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc13_ && _loc2_))
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc13_)
                                                                                                                  {
                                                                                                                     loop40:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push("::");
                                                                                                                        if(!(_loc13_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc14_ || this)
                                                                                                                           {
                                                                                                                              addr435:
                                                                                                                              loop42:
                                                                                                                              while(!(_loc13_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(!(_loc13_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    loop43:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push("::");
                                                                                                                                       addr452:
                                                                                                                                       loop39:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§`!q§);
                                                                                                                                             }
                                                                                                                                             addr460:
                                                                                                                                          }
                                                                                                                                          addr462:
                                                                                                                                          loop30:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop31:
                                                                                                                                             while(!_loc13_)
                                                                                                                                             {
                                                                                                                                                _loc9_ = §§pop();
                                                                                                                                                loop32:
                                                                                                                                                while(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   §!!K§.§&!v§(§5Z§.§^,§,_loc9_,_loc6_);
                                                                                                                                                   loop33:
                                                                                                                                                   while(!(_loc13_ && this))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               continue loop17;
                                                                                                                                                            }
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr600);
                                                                                                                                                            }
                                                                                                                                                            loop35:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                  if(!(_loc13_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + "::");
                                                                                                                                                                           if(_loc14_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc14_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop43;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop30;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc13_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop30;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           loop48:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop35;
                                                                                                                                                                                 addr551:
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop().length == 0);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc14_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr581:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    addr582:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop43;
                                                                                                                                                                     addr262:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                     loop36:
                                                                                                                                                                     for(; _loc14_; while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §!!K§.§&!v§(§5Z§.§<!q§,_loc12_,_loc6_);
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc14_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop19;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop35;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop36;
                                                                                                                                                                     })
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop32;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr510:
                                                                                                                                                                           loop26:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr331:
                                                                                                                                                                              addr509:
                                                                                                                                                                              loop27:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr333:
                                                                                                                                                                                 §§push(_loc2_.toString() + "::");
                                                                                                                                                                                 if(_loc13_ && param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc13_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push("::");
                                                                                                                                                                                    if(!(_loc14_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop39;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(!(_loc14_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc14_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc13_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc14_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr395);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr573);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                          continue loop27;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr497:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr461);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                                                                 continue loop26;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr331);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr594);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr598);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr262);
                                                                                                                                                      }
                                                                                                                                                      continue loop18;
                                                                                                                                                   }
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                §§goto(addr536);
                                                                                                                                             }
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr461);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§<!?§.§,=§ != null)
                                                                                                                                    {
                                                                                                                                       §§push(§<!?§.§@!_§);
                                                                                                                                       if(!(_loc13_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc14_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc13_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr497);
                                                                                                                                                §§push("CPU");
                                                                                                                                             }
                                                                                                                                             §§goto(addr498);
                                                                                                                                          }
                                                                                                                                          §§goto(addr331);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr509);
                                                                                                                                          §§push("NULL");
                                                                                                                                       }
                                                                                                                                       §§goto(addr582);
                                                                                                                                    }
                                                                                                                                    §§goto(addr510);
                                                                                                                                    §§goto(addr331);
                                                                                                                                 }
                                                                                                                                 §§goto(addr551);
                                                                                                                                 §§goto(addr435);
                                                                                                                              }
                                                                                                                              addr435:
                                                                                                                              addr513:
                                                                                                                           }
                                                                                                                           §§goto(addr462);
                                                                                                                        }
                                                                                                                        §§goto(addr452);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr460);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr509);
                                                                                                         }
                                                                                                         §§goto(addr435);
                                                                                                      }
                                                                                                      §§goto(addr452);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                                if(_loc13_ && _loc3_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr243);
                                                                                                }
                                                                                                §§goto(addr600);
                                                                                             }
                                                                                             §§goto(addr574);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr513);
                                                                                          }
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr581);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr596);
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   §§goto(addr574);
                                                }
                                                §§goto(addr520);
                                             }
                                             §§goto(addr572);
                                          }
                                          §§goto(addr465);
                                       }
                                       §§goto(addr468);
                                    }
                                    §§goto(addr333);
                                 }
                              }
                           }
                           §§push(int(Math.round(getTimer() / 1000)));
                           if(_loc13_ && _loc2_)
                           {
                              continue;
                           }
                           _loc6_ = §§pop();
                           if(!_loc13_)
                           {
                              continue loop0;
                           }
                           §§goto(addr155);
                        }
                     }
                  }
                  §§goto(addr206);
               }
               addr600:
               return;
            }
            §§goto(addr205);
         }
         §§goto(addr206);
      }
   }
}
