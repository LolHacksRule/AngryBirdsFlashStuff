package
{
   import §#!e§.LevelManager;
   import §'6§.§"]§;
   import §-"6§.§5E§;
   import §<a§.§+!B§;
   import §<a§.§>f§;
   import §]!A§.;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   public class AngryBirdsFacebookCanvas extends §5E§
   {
      
      public static const §'P§:String = "r101181";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'P§ = "r101181";
         }
      }
      
      private var §?"-§:Boolean = false;
      
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
            §>f§.§;!$§(stage,"UA-23082676-15");
            loop0:
            do
            {
               §+!B§.§-o§();
               while(loaderInfo.bytesLoaded >= loaderInfo.bytesTotal)
               {
                  this.§=^§();
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
               loaderInfo.addEventListener(Event.COMPLETE,this.§#a§);
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
      
      private function §#a§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§#a§);
            do
            {
               this.§=^§();
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      protected function §=^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§;m§);
         }
         do
         {
            new §3T§(this);
         }
         while(!_loc2_);
         
      }
      
      private function §;m§(param1:UncaughtErrorEvent) : void
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
            §§push(this.§?"-§);
            if(_loc15_)
            {
               if(!§§pop())
               {
                  if(_loc15_ || this)
                  {
                     this.§?"-§ = true;
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
                                                      §+!B§.§@!g§(_loc2_,_loc6_);
                                                      if(_loc15_)
                                                      {
                                                         §§push(§#6§.§ q§);
                                                         if(!(_loc14_ && _loc2_))
                                                         {
                                                            if(§§pop() != null)
                                                            {
                                                               addr654:
                                                               while(true)
                                                               {
                                                                  §§push(§#6§.§ q§);
                                                                  addr656:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§<!W§());
                                                                     addr658:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr659:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr654:
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
                                                                              addr642:
                                                                              loop61:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 addr606:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().length == 0);
                                                                                    addr609:
                                                                                    while(_loc15_)
                                                                                    {
                                                                                    }
                                                                                    continue loop61;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr641:
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
                                                                                          §§push(LevelManager.§'!O§);
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
                                                                                                            §§goto(addr564);
                                                                                                            §§push("NULL");
                                                                                                         })
                                                                                                         {
                                                                                                            §§push("");
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               addr603:
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
                                                                                                                        §§push(§'P§);
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
                                                                                                                                    §+!B§.§""1§(§>f§.§0@§,_loc10_,_loc6_);
                                                                                                                                    loop43:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          addr375:
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
                                                                                                                                                                        addr299:
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
                                                                                                                                                                                 addr334:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc14_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop49;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr341:
                                                                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr349:
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
                                                                                                                                                                                             addr530:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push("[Server version not loaded yet]");
                                                                                                                                                                                                addr502:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop34:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      addr504:
                                                                                                                                                                                                      while(!_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                                                                         while(_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr385:
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
                                                                                                                                                                                                                           addr412:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop48;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr564:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                        addr565:
                                                                                                                                                                                                                        while(!(_loc14_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr512:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(AngryBirdsFP11.§&"D§);
                                                                                                                                                                                                                                 if(!(_loc14_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr524:
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
                                                                                                                                                                                                                        addr576:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§"]§.§!X§ == null)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§"]§.§4"!§);
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
                                                                                                                                                                                                                                 §§goto(addr375);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr603);
                                                                                                                                                                                                                              addr544:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr512);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr609);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     addr428:
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
                                                                                                                                                                                                                                 addr445:
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
                                                                                                                                                                                                                                 addr479:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr472);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr475);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr341);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                               addr388:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr654);
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
                                                                                                                                                                                       §§goto(addr502);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                    addr349:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr388);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr469);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr479);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc8_ = §§pop();
                                                                                                                                                                           §§goto(addr576);
                                                                                                                                                                           §§goto(addr299);
                                                                                                                                                                        }
                                                                                                                                                                        addr575:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr412);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr428);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr334);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr504);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr349);
                                                                                                                                                      }
                                                                                                                                                      continue loop49;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr658);
                                                                                                                                                }
                                                                                                                                                §§goto(addr349);
                                                                                                                                             }
                                                                                                                                             while(false);
                                                                                                                                             
                                                                                                                                             §§goto(addr660);
                                                                                                                                          }
                                                                                                                                          §§goto(addr544);
                                                                                                                                       }
                                                                                                                                       §§goto(addr507);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       break loop42;
                                                                                                                                       §§goto(addr445);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr512);
                                                                                                                                    }
                                                                                                                                    §§goto(addr565);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr530);
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
                                                                                                         §§goto(addr575);
                                                                                                         §§goto(addr603);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr606);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr642);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr577);
                                                                        }
                                                                     }
                                                                     §§goto(addr641);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr656);
                                                      }
                                                      §§goto(addr572);
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr524);
                                             }
                                             §§goto(addr659);
                                          }
                                          §§goto(addr658);
                                       }
                                       §§goto(addr654);
                                    }
                                    §§goto(addr385);
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
               addr660:
               return;
            }
            §§goto(addr203);
         }
         §§goto(addr204);
      }
   }
}
