package
{
   import §"a§.§!"J§;
   import §%"J§.§!`§;
   import §9!n§.LevelManager;
   import §9@§.§3w§;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsFacebookCanvas extends §!`§
   {
      
      public static const §2&§:String = "r106667";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2&§ = "r106667";
         }
      }
      
      private var § !0§:Boolean = false;
      
      public function AngryBirdsFacebookCanvas()
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
                  addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
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
            §3w§.§&"B§(stage,"UA-23082676-15");
            loop0:
            do
            {
               §@q§.§7!q§();
               while(loaderInfo.bytesLoaded >= loaderInfo.bytesTotal)
               {
                  this.§'3§();
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
               loaderInfo.addEventListener(Event.COMPLETE,this.§`!#§);
            }
            while(_loc2_ && _loc1_);
            
         }
         addr24:
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         do
         {
            this.init();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      private function §`!#§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§`!#§);
            do
            {
               this.§'3§();
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      protected function §'3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§,7§);
         }
         do
         {
            new §%"S§(this);
         }
         while(!_loc2_);
         
      }
      
      private function §,7§(param1:UncaughtErrorEvent) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:Error = null;
         var _loc12_:ErrorEvent = null;
         var _loc13_:* = null;
         if(!(_loc14_ && param1))
         {
            §§push(this.§ !0§);
            if(_loc15_)
            {
               if(!§§pop())
               {
                  if(_loc15_ || this)
                  {
                     this.§ !0§ = true;
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
                              while(!_loc14_)
                              {
                                 §§push("");
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc14_)
                                    {
                                       if(_loc14_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    addr158:
                                    addr158:
                                    addr158:
                                    §§push(int((_loc11_ = param1.error as Error).errorID));
                                    if(_loc15_ || _loc3_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc14_)
                                       {
                                          §§push(_loc11_.message);
                                          if(!_loc14_)
                                          {
                                             _loc5_ = §§pop();
                                             if(!_loc14_)
                                             {
                                                §§push(_loc11_.getStackTrace());
                                                if(!_loc14_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!(_loc14_ && this))
                                                   {
                                                      addr214:
                                                      §@q§.§&d§(_loc2_,_loc6_,stage.loaderInfo.parameters.userId,_loc3_);
                                                      if(_loc15_)
                                                      {
                                                         §§push(§?l§.§ "G§);
                                                         if(!(_loc14_ && _loc2_))
                                                         {
                                                            if(§§pop() != null)
                                                            {
                                                               addr659:
                                                               while(true)
                                                               {
                                                                  §§push(§?l§.§ "G§);
                                                                  addr661:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§%^§());
                                                                     addr663:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr664:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr659:
                                                            }
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               while(true)
                                                               {
                                                                  §§push(null);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc14_ && param1))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr647:
                                                                              loop61:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr611:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().length == 0);
                                                                                    addr614:
                                                                                    while(_loc15_)
                                                                                    {
                                                                                    }
                                                                                    continue loop61;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr646:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push("NoState");
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    loop13:
                                                                                    while(_loc15_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(LevelManager.§ T§);
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop16:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   loop18:
                                                                                                   while(!_loc14_)
                                                                                                   {
                                                                                                      §§push(null);
                                                                                                      if(_loc14_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(§§pop() == §§pop())
                                                                                                      {
                                                                                                         loop19:
                                                                                                         for(; !(_loc14_ && this); while(true)
                                                                                                         {
                                                                                                            if(_loc14_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            §§goto(addr569);
                                                                                                            §§push("NULL");
                                                                                                         })
                                                                                                         {
                                                                                                            §§push("");
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               addr608:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               loop50:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc14_ && param1)
                                                                                                                  {
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  §§push(" ");
                                                                                                                  loop48:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     loop49:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§2&§);
                                                                                                                        loop39:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop40:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop41:
                                                                                                                              while(!_loc14_)
                                                                                                                              {
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 loop42:
                                                                                                                                 while(_loc15_)
                                                                                                                                 {
                                                                                                                                    §@q§.§#!0§(§3w§.§-!f§,_loc10_,_loc6_);
                                                                                                                                    loop43:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          addr380:
                                                                                                                                          if(_loc15_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             do
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc15_ || _loc2_))
                                                                                                                                                            {
                                                                                                                                                               continue loop41;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc14_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + "::");
                                                                                                                                                               if(_loc15_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc15_ || _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop40;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc14_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop50;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        addr304:
                                                                                                                                                                        if(!(_loc14_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           if(!(_loc15_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop39;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc14_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr339:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc14_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr346:
                                                                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr354:
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    loop46:
                                                                                                                                                                                    while(_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop42;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc14_ && _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr535:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push("[Server version not loaded yet]");
                                                                                                                                                                                                addr507:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop34:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      addr509:
                                                                                                                                                                                                      while(!_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                                                                         while(_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr390:
                                                                                                                                                                                                               §§push(_loc2_.toString() + "::");
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  if(_loc15_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop50;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push("::");
                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           while(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                              if(!(_loc15_ || _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop39;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop12;
                                                                                                                                                                                                                           addr417:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop48;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr569:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                        addr570:
                                                                                                                                                                                                                        while(!(_loc14_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr517:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(AngryBirdsFP11.§@!x§);
                                                                                                                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr529:
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       break loop46;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break loop46;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop18;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr581:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§!"J§.§1&§ == null)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§!"J§.§!X§);
                                                                                                                                                                                                                           if(_loc14_ && _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push("CPU");
                                                                                                                                                                                                                                    break loop43;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                 §§goto(addr380);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr608);
                                                                                                                                                                                                                              addr549:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr517);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr614);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     addr433:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push("::");
                                                                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc15_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop39;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr450:
                                                                                                                                                                                                                                 if(_loc14_ && _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop43;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push("::");
                                                                                                                                                                                                                                 if(_loc14_ && _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop48;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(!(_loc15_ || this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push("::");
                                                                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop48;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop50;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                 addr484:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr477);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr480);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr346);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                               addr393:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr659);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop13;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop40;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr507);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                    addr354:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr393);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr474);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr484);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc8_ = §§pop();
                                                                                                                                                                           §§goto(addr581);
                                                                                                                                                                           §§goto(addr304);
                                                                                                                                                                        }
                                                                                                                                                                        addr580:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr417);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr433);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr339);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr509);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr354);
                                                                                                                                                      }
                                                                                                                                                      continue loop49;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr663);
                                                                                                                                                }
                                                                                                                                                §§goto(addr354);
                                                                                                                                             }
                                                                                                                                             while(false);
                                                                                                                                             
                                                                                                                                             §§goto(addr665);
                                                                                                                                          }
                                                                                                                                          §§goto(addr549);
                                                                                                                                       }
                                                                                                                                       §§goto(addr512);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       break loop42;
                                                                                                                                       §§goto(addr450);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr517);
                                                                                                                                    }
                                                                                                                                    §§goto(addr570);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr535);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr580);
                                                                                                         §§goto(addr608);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr611);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr647);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr582);
                                                                        }
                                                                     }
                                                                     §§goto(addr646);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr661);
                                                      }
                                                      §§goto(addr577);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr529);
                                             }
                                             §§goto(addr664);
                                          }
                                          §§goto(addr663);
                                       }
                                       §§goto(addr659);
                                    }
                                    §§goto(addr390);
                                 }
                              }
                           }
                           §§push(int(Math.round(getTimer() / 1000)));
                           if(_loc14_ && _loc2_)
                           {
                              continue;
                           }
                           _loc6_ = §§pop();
                           if(!_loc14_)
                           {
                              continue loop0;
                           }
                           §§goto(addr158);
                        }
                     }
                  }
                  §§goto(addr204);
               }
               addr665:
               return;
            }
            §§goto(addr203);
         }
         §§goto(addr204);
      }
   }
}
