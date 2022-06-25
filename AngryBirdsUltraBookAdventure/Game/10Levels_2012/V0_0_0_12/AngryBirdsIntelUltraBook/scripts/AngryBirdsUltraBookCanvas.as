package
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §,!O§.§3![§;
   import §0P§.Starling;
   import §7p§.§+!N§;
   import §7p§.GoogleAnalyticsTracker;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.utils.getTimer;
   
   [SWF(frameRate="60",backgroundColor="#000000",width="940",height="570")]
   public class AngryBirdsUltraBookCanvas extends §3![§
   {
      
      public static const AB_FACEBOOK_VERSION:String = "0.0.0.12 r97123)";
      
      {
         var AB_FACEBOOK_VERSION:Boolean = false;
         var _loc2_:Boolean = true;
         if(!AB_FACEBOOK_VERSION)
         {
            do
            {
               AB_FACEBOOK_VERSION = "0.0.0.12 r97123)";
            }
            while(AB_FACEBOOK_VERSION && AngryBirdsUltraBookCanvas);
            
         }
      }
      
      private var §;!$§:Boolean = false;
      
      public function AngryBirdsUltraBookCanvas()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc1_ || this)
         {
            while(true)
            {
               addr133:
               while(!_loc2_)
               {
               }
            }
         }
         while(true)
         {
            super();
            loop3:
            while(true)
            {
               loop4:
               do
               {
                  if(!stage)
                  {
                     addEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
                     for(; !(_loc2_ && _loc2_); if(_loc1_ || _loc1_)
                     {
                        break loop3;
                     })
                     {
                        if(!(_loc1_ || this))
                        {
                           continue loop4;
                        }
                        if(!_loc1_)
                        {
                           continue loop3;
                        }
                        if(_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr133);
                     }
                     this.init();
                  }
                  else
                  {
                     addr123:
                     addr109:
                  }
                  continue;
                  return;
               }
               while(!(_loc1_ || _loc1_));
               
               §§goto(addr123);
            }
            if(!(_loc1_ || this))
            {
               §§goto(addr109);
            }
            §§goto(addr123);
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            while(true)
            {
               GoogleAnalyticsTracker.§6=§(stage,"UA-23082676-25");
            }
            addr159:
         }
         while(true)
         {
            loop2:
            do
            {
               §+!N§.§@d§();
               loop3:
               while(true)
               {
                  do
                  {
                     if(loaderInfo.bytesLoaded >= loaderInfo.bytesTotal)
                     {
                        this.loadingComplete();
                        for(; _loc1_; if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        },if(!_loc2_)
                        {
                           §§goto(addr33);
                        },§§goto(addr159))
                        {
                           if(!(_loc1_ || _loc2_))
                           {
                              continue loop3;
                           }
                           if(!(_loc2_ && _loc1_))
                           {
                              continue;
                           }
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  while(_loc2_ && _loc1_);
                  
                  continue loop2;
               }
            }
            while(!(_loc1_ || this));
            
            addr33:
            return;
         }
      }
      
      private function §?!0§(event:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  removeEventListener(Event.ADDED_TO_STAGE,this.§?!0§);
                  loop2:
                  for(; !(_loc3_ && _loc3_); while(!(_loc3_ && this))
                  {
                     this.init();
                     while(_loc2_)
                     {
                        if(_loc2_ || this)
                        {
                           return;
                        }
                     }
                  })
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      private function §>>§(event:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loaderInfo.removeEventListener(Event.COMPLETE,this.§>>§);
               while(!_loc3_)
               {
                  continue loop0;
                  addr53:
                  if(_loc2_ || _loc2_)
                  {
                     addr70:
                     if(_loc2_ || _loc3_)
                     {
                        return;
                     }
                     loop4:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr53);
                        }
                        else
                        {
                           while(true)
                           {
                              this.loadingComplete();
                              continue loop4;
                           }
                           addr73:
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function loadingComplete() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         loop0:
         while(true)
         {
            loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§0u§);
            do
            {
               continue loop0;
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      private function §0u§(event:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || this)
         {
         }
         var errorID:* = 0;
         var stackTrace:* = null;
         var state:* = null;
         var message:* = null;
         var time:* = 0;
         var currentLevel:* = null;
         var renderingMode:* = null;
         var log:* = null;
         var error:Error = null;
         var errorEvent:ErrorEvent = null;
         var traceLog:* = null;
         if(!_loc13_)
         {
            if(_loc14_)
            {
               while(true)
               {
                  §§push(this.§;!$§);
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!(_loc13_ && errorID))
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 while(_loc14_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc13_)
                                          {
                                             while(true)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      loop10:
                                                      while(!_loc13_)
                                                      {
                                                         this.§;!$§ = true;
                                                         loop11:
                                                         while(true)
                                                         {
                                                            loop12:
                                                            for(; !_loc13_; if(_loc13_ && event)
                                                            {
                                                               continue;
                                                            },if(_loc13_)
                                                            {
                                                               continue loop10;
                                                            },§§goto(addr89))
                                                            {
                                                               §§push(0);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               while(true)
                                                               {
                                                                  errorID = §§pop();
                                                                  while(!_loc13_)
                                                                  {
                                                                     while(_loc14_)
                                                                     {
                                                                        §§push(null);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           stackTrace = §§pop();
                                                                           addr218:
                                                                           while(true)
                                                                           {
                                                                              §§push("");
                                                                              if(_loc13_)
                                                                              {
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 §§push("-");
                                                                                 addr213:
                                                                                 continue loop16;
                                                                                 if(_loc13_)
                                                                                 {
                                                                                 }
                                                                                 if(_loc13_ && event)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc14_ || errorID))
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 message = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 errorEvent = event.error as ErrorEvent;
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       addr419:
                                                                                       while(true)
                                                                                       {
                                                                                          errorID = int(errorEvent.errorID);
                                                                                          continue loop23;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr434:
                                                                                       §+!N§.§+!X§(errorID,time);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§]!B§.§%h§);
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() == null)
                                                                                                {
                                                                                                   loop34:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(state);
                                                                                                      loop35:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(null);
                                                                                                         loop36:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            loop37:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               loop38:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr950:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(state);
                                                                                                                           addr902:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().length == 0);
                                                                                                                              addr905:
                                                                                                                              while(!(_loc13_ && event))
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                              continue loop38;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr600:
                                                                                                                        if(_loc13_ && event)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc14_ || event)
                                                                                                                              {
                                                                                                                                 loop96:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          loop97:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc13_)
                                                                                                                                             {
                                                                                                                                                continue loop96;
                                                                                                                                             }
                                                                                                                                             §§push(log);
                                                                                                                                             if(!(_loc13_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + "::");
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      §§push(stackTrace);
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc13_ && event))
                                                                                                                                                            {
                                                                                                                                                               addr540:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        addr546:
                                                                                                                                                                        if(_loc14_ || stackTrace)
                                                                                                                                                                        {
                                                                                                                                                                           addr554:
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!(_loc13_ && errorID))
                                                                                                                                                                           {
                                                                                                                                                                              traceLog = §§pop();
                                                                                                                                                                              loop98:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop99:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §+!N§.§1`§(GoogleAnalyticsTracker.§#-§,traceLog,time);
                                                                                                                                                                                                continue loop98;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop72:
                                                                                                                                                                                             for(; _loc14_ || this; if(_loc13_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             },§§goto(addr463))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr758:
                                                                                                                                                                                                if(_loc14_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop77:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(errorID);
                                                                                                                                                                                                      addr646:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().toString() + "::");
                                                                                                                                                                                                         addr649:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(state);
                                                                                                                                                                                                            addr650:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(_loc14_ || event)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push("::");
                                                                                                                                                                                                                     if(_loc14_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(!(_loc13_ && event))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(message);
                                                                                                                                                                                                                           loop80:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(_loc14_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push("::");
                                                                                                                                                                                                                                 if(!(_loc13_ && event))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr686:
                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(renderingMode);
                                                                                                                                                                                                                                             if(_loc14_ || errorID)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc14_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push("::");
                                                                                                                                                                                                                                                         if(_loc14_ || event)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr713:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(currentLevel);
                                                                                                                                                                                                                                                                        if(_loc14_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr727:
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push("::");
                                                                                                                                                                                                                                                                              addr728:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                 addr729:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(AB_FACEBOOK_VERSION);
                                                                                                                                                                                                                                                                                    addr731:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       addr732:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          break loop97;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr727:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr731);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr802:
                                                                                                                                                                                                                                                                     loop74:
                                                                                                                                                                                                                                                                     while(_loc14_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        while(_loc14_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           renderingMode = §§pop();
                                                                                                                                                                                                                                                                           break loop96;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           currentLevel = §§pop();
                                                                                                                                                                                                                                                                           addr870:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr837:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push("GPU");
                                                                                                                                                                                                                                                                                 break loop74;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr840:
                                                                                                                                                                                                                                                                        loop62:
                                                                                                                                                                                                                                                                        while(_loc14_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           loop63:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    renderingMode = §§pop();
                                                                                                                                                                                                                                                                                    addr848:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop72;
                                                                                                                                                                                                                                                                                       §§goto(addr758);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr848:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr851:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(null);
                                                                                                                                                                                                                                                                                    if(!(_loc14_ || stackTrace))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop98;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr837);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       state = §§pop();
                                                                                                                                                                                                                                                                                       addr963:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop34;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr962:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr581:
                                                                                                                                                                                                                                                                              continue loop36;
                                                                                                                                                                                                                                                                              if(_loc13_ && this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!_loc13_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc13_ && event))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr600);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr905);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(_loc14_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break loop99;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop77;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr773:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr914:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          loop45:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc13_ && event))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc13_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push("NoState");
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop62;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop45;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr970:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop28;
                                                                                                                                                                                                                                                                                          addr915:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr874:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(LevelManager.§var§);
                                                                                                                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop63;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop35;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr590:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr902);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr905);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(_loc14_ || errorID)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              currentLevel = §§pop();
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr873:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr851);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr463:
                                                                                                                                                                                                                                                                                 if(!(_loc14_ || stackTrace))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr974);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr472);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              state = §§pop();
                                                                                                                                                                                                                                                                              addr928:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr899:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr874);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr927);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr802);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr716:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr727);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr713:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr728);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr869);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr868:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop80;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr781:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr727);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr731);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr840);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr716);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr713);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr686);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc13_ && errorID))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    renderingMode = §§pop();
                                                                                                                                                                                                                                    addr791:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop72;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr574:
                                                                                                                                                                                                                                    while(!(_loc13_ && stackTrace))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr581);
                                                                                                                                                                                                                                       §§goto(addr554);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr790:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr925);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr672:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr729);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr713);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr729);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr801:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr802);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr546);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr644:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr848);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr472:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc13_ && errorID))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop34;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(Starling.§!!F§ != null)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr773);
                                                                                                                                                                                                      §§push(Starling.isSoftware);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(!_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr801);
                                                                                                                                                                                                      §§push("NULL");
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr873);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr915);
                                                                                                                                                                                                §§goto(addr751);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr751:
                                                                                                                                                                                          }
                                                                                                                                                                                          loop92:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §+!N§.§1`§(GoogleAnalyticsTracker.§3!7§,log,time);
                                                                                                                                                                                             addr638:
                                                                                                                                                                                             while(_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr574);
                                                                                                                                                                                                   §§push(stackTrace);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr950);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr741:
                                                                                                                                                                                             while(!(_loc13_ && stackTrace))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop92;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr963);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr781);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr780:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr798);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr502:
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr625);
                                                                                                                                                                              }
                                                                                                                                                                              while(_loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push("");
                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr868);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr928);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr574);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr649);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr727);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr729);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr732);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr650);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr672);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr731);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr540);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr554);
                                                                                                                                          }
                                                                                                                                          while(_loc14_ || event)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                log = §§pop();
                                                                                                                                                §§goto(addr741);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr810);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr638);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc14_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr644);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr870);
                                                                                                                                 }
                                                                                                                                 §§goto(addr899);
                                                                                                                                 addr618:
                                                                                                                              }
                                                                                                                              §§goto(addr791);
                                                                                                                           }
                                                                                                                           §§goto(addr618);
                                                                                                                        }
                                                                                                                        §§goto(addr974);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr914);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr970);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr748);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  §§push(int(Math.round(getTimer() / 1000)));
                                                                  continue loop3;
                                                                  if(!_loc14_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  time = §§pop();
                                                                  if(!(_loc13_ && stackTrace))
                                                                  {
                                                                     if(_loc13_)
                                                                     {
                                                                        §§goto(addr221);
                                                                     }
                                                                     if(!(_loc13_ && errorID))
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                                  §§goto(addr398);
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr398);
                                       }
                                    }
                                    if(_loc13_ && errorID)
                                    {
                                       continue;
                                    }
                                    if(!(_loc13_ && stackTrace))
                                    {
                                       §§goto(addr69);
                                    }
                                    §§goto(addr398);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        addr974:
                        return;
                     }
                     §§goto(addr381);
                  }
               }
            }
            §§goto(addr398);
         }
         §§goto(addr87);
      }
   }
}
