package §@R§
{
   import §+?§.§,!N§;
   import §0v§.§-'§;
   import §8!8§.§4!C§;
   import §@,§.§4h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §']§ extends §]^§
   {
       
      
      public var mParentContainer:§4!C§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §4!>§:Boolean = false;
      
      public var §+F§:Boolean = true;
      
      public var §,P§:Boolean = false;
      
      public var §+L§:Boolean = false;
      
      private var §[Y§:§!r§;
      
      private var §'!;§:Boolean = false;
      
      protected var § ^§:Boolean = false;
      
      private var §3i§:Number;
      
      private var §&!=§:Number;
      
      private var §00§:Number;
      
      private var §=&§:Number;
      
      private var §#!7§:String;
      
      private var §8-§:String;
      
      private var §1$§:String;
      
      private var §var§:String;
      
      private var §=H§:String;
      
      private var §4!§:String;
      
      public function §']§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[4] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(!_loc6_)
                     {
                        §§pop().§§slot[5] = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(true)
                           {
                              §§push(NaN);
                              loop7:
                              while(true)
                              {
                                 §§pop().§§slot[6] = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(NaN);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§§slot[7] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(null);
                                                if(!(_loc5_ || param2))
                                                {
                                                   break;
                                                }
                                                §§pop().§§slot[8] = §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§pop().§§slot[1] = param1;
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§newactivation());
                                                         while(true)
                                                         {
                                                            §§pop().§§slot[2] = param2;
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§pop().§§slot[3] = param3;
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     this.mParentContainer = parentContainer;
                                                                     loop20:
                                                                     while(_loc5_ || param1)
                                                                     {
                                                                        this.mName = data.@name;
                                                                        loop21:
                                                                        while(!_loc6_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           loop22:
                                                                           for(; _loc5_; while(_loc5_ || param1)
                                                                           {
                                                                              §§push(§§pop().§§slot[2]);
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 if(!§§pop().§,P§)
                                                                                 {
                                                                                    §§goto(addr174);
                                                                                    §§push(§§newactivation());
                                                                                 }
                                                                                 §§goto(addr268);
                                                                              }
                                                                              §§goto(addr301);
                                                                           })
                                                                           {
                                                                              if(!§§pop().§§slot[3])
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    if(§§pop().§§slot[1].@fromLibrary.toString().toUpperCase() != "TRUE")
                                                                                    {
                                                                                       §§push(this.mParentContainer);
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop25:
                                                                                                      while(!_loc6_)
                                                                                                      {
                                                                                                         this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(this.mClip == null)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                               }
                                                                                                               addr516:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§newactivation());
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop().§§slot[1].@isOverlay.toString().toUpperCase() != "TRUE")
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§,P§ = true;
                                                                                                                        loop35:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           addr470:
                                                                                                                           loop36:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(16777215));
                                                                                                                              loop37:
                                                                                                                              while(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§pop().§§slot[6] = §§pop();
                                                                                                                                 loop38:
                                                                                                                                 while(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    loop39:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0.5);
                                                                                                                                       addr449:
                                                                                                                                       while(!(_loc6_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          loop41:
                                                                                                                                          while(!(_loc6_ && param1))
                                                                                                                                          {
                                                                                                                                             §§pop().§§slot[7] = §§pop();
                                                                                                                                             loop42:
                                                                                                                                             while(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop().§§slot[1].@overlayColor.toString() != "")
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            continue loop34;
                                                                                                                                                         }
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(parseInt(data.@overlayColor)));
                                                                                                                                                               addr435:
                                                                                                                                                               while(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§§slot[6] = §§pop();
                                                                                                                                                                  loop46:
                                                                                                                                                                  for(; _loc5_ || param2; while(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr337);
                                                                                                                                                                     §§goto(addr109);
                                                                                                                                                                  })
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                        addr369:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                 continue loop39;
                                                                                                                                                                              }
                                                                                                                                                                              addr374:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§newactivation());
                                                                                                                                                                                 addr339:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr588:
                                                                                                                                                                                             break;
                                                                                                                                                                                             addr588:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§§slot[8] = this.getParentView().§ 2§(color,alpha);
                                                                                                                                                                                          while(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.mClip.addChildAt(tmp,0);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc5_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr109:
                                                                                                                                                                                                if(!(_loc6_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop46;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(!(_loc6_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.mParentContainer);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.mParentContainer);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().mClip.addChild(this.mClip);
                                                                                                                                                                                                            addr581:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr577:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr596:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop32;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr633:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr573:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop32;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop11;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr517:
                                                                                                                                                                                    while(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push("Asset instance not found!! [" + this.mName);
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + "] parent: [");
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + this.mParentContainer.mName);
                                                                                                                                                                                             if(_loc5_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             addr542:
                                                                                                                                                                                             §§pop().§§slot[5] = §§pop();
                                                                                                                                                                                             break loop46;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() + "]");
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr542);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop0;
                                                                                                                                                                              }
                                                                                                                                                                              addr337:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §4h§.log(error);
                                                                                                                                                                     break loop38;
                                                                                                                                                                     §§goto(addr438);
                                                                                                                                                                  }
                                                                                                                                                                  addr438:
                                                                                                                                                               }
                                                                                                                                                               continue loop41;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.mParentContainer);
                                                                                                                                                               addr619:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(_loc5_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.mParentContainer);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().mClip.addChild(this.mClip);
                                                                                                                                                                           §§goto(addr633);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop17;
                                                                                                                                                                     addr620:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr644:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr596);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr438);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr367);
                                                                                                                                                   addr139:
                                                                                                                                                   if(_loc6_ && param2)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop().§§slot[1].@animateOnActivation.toString().toUpperCase() == "TRUE")
                                                                                                                                                      {
                                                                                                                                                         while(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop25;
                                                                                                                                                               }
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop19;
                                                                                                                                                               }
                                                                                                                                                               this.§+L§ = true;
                                                                                                                                                               loop72:
                                                                                                                                                               while(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  this.mClip.stop();
                                                                                                                                                                  loop73:
                                                                                                                                                                  for(; _loc5_; if(!(_loc5_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  },if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop42;
                                                                                                                                                                  },addr328:,while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr217);
                                                                                                                                                                  })
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop35;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        super(this.mClip);
                                                                                                                                                                        while(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           addr95:
                                                                                                                                                                           if(_loc5_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr102);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              loop65:
                                                                                                                                                                              for(; !_loc6_; §§goto(addr95))
                                                                                                                                                                              {
                                                                                                                                                                                 loop70:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr183:
                                                                                                                                                                                             if(!(_loc5_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr339);
                                                                                                                                                                                                   §§goto(addr183);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop6;
                                                                                                                                                                                                addr217:
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc5_ || this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop39;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop().§§slot[2]);
                                                                                                                                                                                             if(!(_loc6_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().mClip.setChildIndex(this.mClip,0);
                                                                                                                                                                                                continue loop65;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr301:
                                                                                                                                                                                             addr301:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().mClip.setChildIndex(this.mClip,1);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop70;
                                                                                                                                                                                                   addr34:
                                                                                                                                                                                                   if(_loc6_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      return;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr243:
                                                                                                                                                                                                   addr609:
                                                                                                                                                                                                   loop62:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                                                                         continue loop22;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr608:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                                                                         break loop62;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().§§slot[4] = §-'§.§]`§(this.mName);
                                                                                                                                                                                                      addr615:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.mClip = new cls();
                                                                                                                                                                                                         §§goto(addr588);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop36;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr429);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr543);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                       addr174:
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr139);
                                                                                                                                                                                    §§goto(addr588);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr369);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr573);
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop73;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop72;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop38;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr516);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr374);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  while(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop13;
                                                                                                                                                                  addr495:
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc6_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr283);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.mClip = clip;
                                                                                                                                                                           §§goto(addr644);
                                                                                                                                                                        }
                                                                                                                                                                        addr640:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr596);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr581);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr336);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr620);
                                                                                                                                                         addr156:
                                                                                                                                                         addr268:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr88);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr609);
                                                                                                                                                }
                                                                                                                                                continue loop8;
                                                                                                                                                if(_loc6_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   this.§0!Y§(data);
                                                                                                                                                   addr81:
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      loop77:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr56);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§5!V§(data);
                                                                                                                                                               continue loop77;
                                                                                                                                                            }
                                                                                                                                                            addr87:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr615);
                                                                                                                                                   }
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr34);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr156);
                                                                                                                                                }
                                                                                                                                                §§goto(addr615);
                                                                                                                                             }
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          continue loop37;
                                                                                                                                       }
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(!(_loc6_ && param1))
                                                                                                                                 {
                                                                                                                                    function():void
                                                                                                                                    {
                                                                                                                                       throw new Error(error);
                                                                                                                                    }();
                                                                                                                                    §§goto(addr495);
                                                                                                                                 }
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr478:
                                                                                                            }
                                                                                                            §§goto(addr517);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   §§goto(addr478);
                                                                                                }
                                                                                                §§goto(addr629);
                                                                                             }
                                                                                             §§goto(addr572);
                                                                                          }
                                                                                          §§goto(addr577);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr608);
                                                                                    if(!(_loc5_ || param3))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr301);
                                                                                    §§push(§§pop().§§slot[2]);
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              §§goto(addr640);
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function § E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§[Y§);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§[Y§ = new §!r§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§00§,this.§=&§,this.§#!7§,this.§8-§,this.§1$§,this.§var§,this.§4!§,this.§=H§);
                     addr162:
                     while(true)
                     {
                     }
                  }
                  addr122:
               }
               while(true)
               {
                  §§push(this.§[Y§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().§"!T§(this.§3i§,this.§&!=§);
               }
            }
         }
         while(true)
         {
            this.mClip.x = this.§[Y§.x;
            while(true)
            {
               this.mClip.y = this.§[Y§.y;
               while(true)
               {
                  this.mClip.scaleX = this.§[Y§.scaleX;
                  loop7:
                  while(true)
                  {
                     this.mClip.scaleY = this.§[Y§.scaleY;
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(!this.§'!;§)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr63:
                           if(_loc2_)
                           {
                              continue loop7;
                           }
                           continue;
                        }
                        §§goto(addr162);
                     }
                     return;
                  }
               }
            }
         }
      }
      
      private function §5!V§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!_loc4_)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr132:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        addr133:
                        while(true)
                        {
                           this.§3i§ = this.mParentContainer.viewWidth;
                           addr138:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        addr133:
                     }
                     else
                     {
                        this.§3i§ = _loc2_;
                        while(true)
                        {
                           continue loop0;
                           addr107:
                           loop10:
                           while(!(_loc4_ && _loc3_))
                           {
                              this.§&!=§ = this.mParentContainer.viewHeight;
                              loop9:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§00§ = this.§3i§;
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§=&§ = this.§&!=§;
                                                if(_loc5_ || _loc2_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break loop5;
                                                   }
                                                   continue loop9;
                                                }
                                                continue;
                                             }
                                             addr160:
                                             while(true)
                                             {
                                                this.§&!=§ = _loc3_;
                                                break loop6;
                                             }
                                             addr160:
                                          }
                                          break;
                                       }
                                       addr65:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr157:
                                                   while(true)
                                                   {
                                                      this.§3i§ = _loc2_;
                                                      §§goto(addr160);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr133);
                                                }
                                             }
                                             break;
                                          }
                                          continue loop10;
                                       }
                                       §§goto(addr138);
                                       §§goto(addr160);
                                    }
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      private function §0!Y§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§#!7§ = param1.@alignH;
            loop0:
            while(true)
            {
               this.§8-§ = param1.@alignV;
               while(true)
               {
                  this.§1$§ = param1.@scaleH;
                  continue loop0;
                  addr36:
                  if(_loc5_ || _loc2_)
                  {
                     if(true)
                     {
                        var _loc2_:String = param1.@scrollRect;
                        var _loc3_:String = param1.@scaleOnMouseOver;
                     }
                     loop4:
                     while(true)
                     {
                        this.§=H§ = param1.@scaleFunction;
                        do
                        {
                           this.§4!§ = param1.@aspectRatioFixed;
                        }
                        while(_loc4_ && _loc2_);
                        
                        if(_loc5_)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           §§goto(addr36);
                        }
                        else
                        {
                           while(true)
                           {
                              continue loop4;
                           }
                           addr56:
                        }
                     }
                     continue loop0;
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§9d§(_loc2_);
                        do
                        {
                           this.§^G§(_loc3_);
                        }
                        while(!(_loc5_ || _loc3_));
                        
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §^G§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop().toUpperCase());
                        addr84:
                        loop2:
                        while(true)
                        {
                           param1 = §§pop();
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc3_)
                                 {
                                    if(§§pop() != "TRUE")
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       this.§ ^§ = true;
                                    }
                                    if(_loc3_)
                                    {
                                       addr61:
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr61);
      }
      
      private function §9d§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr87:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           this.§'!;§ = true;
                        }
                        if(_loc3_ || param1)
                        {
                           addr84:
                           break;
                        }
                        continue loop0;
                     }
                     return;
                     addr55:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.@visible;
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
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
                              §§push(_loc2_);
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 addr42:
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop().toUpperCase() == "FALSE");
                                 if(_loc4_)
                                 {
                                    loop13:
                                    while(§§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc4_)
                                          {
                                             this.setEnabled(false);
                                             addr70:
                                             if(!(_loc3_ && this))
                                             {
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                addr165:
                                                loop16:
                                                while(true)
                                                {
                                                   this.setVisibility(false);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(param1.@enabled);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr143:
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(_loc2_);
                                                                  while(!(_loc3_ && param1))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        addr111:
                                                                        while(!(_loc3_ && param1))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              break loop11;
                                                                           }
                                                                           if(!(_loc4_ || _loc3_))
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§pop();
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           addr157:
                                                                           this.setVisibility(true);
                                                                           while(true)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§goto(addr111);
                                                                        }
                                                                        addr111:
                                                                     }
                                                                     §§goto(addr111);
                                                                     §§push(_loc2_);
                                                                     if(_loc3_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr42);
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop17;
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr157);
                                                §§goto(addr127);
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr70);
                                    }
                                    return;
                                 }
                                 §§goto(addr111);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr164);
                     }
                  }
               }
            }
         }
         §§goto(addr165);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            do
            {
               §§push(this.mParentContainer);
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr57);
                  }
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  §§push(this.mParentContainer);
               }
               §§pop().mClip.removeChild(this.mClip);
            }
            while(!_loc1_);
            
         }
         addr57:
         while(true)
         {
            if(this.mClip.numChildren <= 0)
            {
               if(_loc2_ && _loc1_)
               {
                  break;
               }
               if(_loc1_ || _loc2_)
               {
                  this.mClip = null;
                  break;
               }
            }
            else
            {
               this.mClip.removeChildAt(0);
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.listenerEventOccured(param1,param2);
         }
         while(true)
         {
            §§push(this.mParentContainer);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  addr70:
               }
               return;
            }
            break;
         }
         §§pop().containerEventOccured(param1,param2,this);
         §§goto(addr70);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+F§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§+F§ && this.§4!>§;
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(this.visible)
                     {
                        if(!_loc2_)
                        {
                           addEventListeners();
                           break;
                        }
                        break;
                     }
                     removeEventListeners();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr20);
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4!>§ = param1;
         }
         loop0:
         while(true)
         {
            this.mClip.visible = this.§+F§ && this.§4!>§;
            loop1:
            while(true)
            {
               §§push(this.visible);
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     removeEventListeners();
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§+L§);
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc2_ && this))
                                    {
                                       if(_loc3_)
                                       {
                                          addr69:
                                          §§push(param1);
                                          if(!_loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   addr74:
                                                   if(!_loc2_)
                                                   {
                                                      this.mClip.gotoAndPlay(1);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break loop4;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr93:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                this.mClip.gotoAndStop(1);
                                                if(_loc3_)
                                                {
                                                   break loop3;
                                                }
                                             }
                                             break loop3;
                                          }
                                          continue loop2;
                                       }
                                       continue loop0;
                                    }
                                    addr91:
                                    while(true)
                                    {
                                       addEventListeners();
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr74);
                              }
                              break loop3;
                           }
                           §§goto(addr69);
                        }
                        continue loop1;
                     }
                     return;
                  }
                  §§goto(addr91);
               }
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(!_loc3_)
               {
                  this.mClip.mouseEnabled = param1;
               }
               while(true)
               {
               }
               addr74:
            }
            loop1:
            for(; this.mClip.mouseChildren != param1; §§goto(addr74))
            {
               if(!(_loc3_ && param1))
               {
                  while(true)
                  {
                     this.mClip.mouseChildren = param1;
                  }
                  addr46:
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     break loop1;
                  }
                  continue loop1;
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function getParentView() : §,!N§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.mClip.x = Math.round(param1);
            if(_loc2_ || _loc3_)
            {
               addr56:
               if(!this.§[Y§)
               {
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mClip.y = Math.round(param1);
            if(_loc3_ || _loc3_)
            {
               addr52:
               if(!this.§[Y§)
               {
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function get x() : Number
      {
         return this.mClip.x;
      }
      
      public function get y() : Number
      {
         return this.mClip.y;
      }
      
      public function get visible() : Boolean
      {
         return this.mClip.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.mClip.visible = param1;
         }
      }
      
      public function get width() : Number
      {
         return this.mClip.width;
      }
      
      public function get height() : Number
      {
         return this.mClip.height;
      }
      
      override public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super.goToFrame(param1,param2);
         }
         loop0:
         while(true)
         {
            §§push(Boolean(this.mClip));
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.mClip is MovieClip);
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              loop4:
                              while(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(param2);
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      this.mClip.gotoAndPlay(param1);
                                                      break loop3;
                                                   }
                                                   continue loop3;
                                                }
                                                addr85:
                                             }
                                             break loop3;
                                          }
                                          this.mClip.gotoAndStop(param1);
                                          if(!(_loc4_ || this))
                                          {
                                             break loop3;
                                          }
                                          if(_loc4_)
                                          {
                                             break loop4;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    addr70:
                                 }
                                 §§goto(addr85);
                              }
                              addr25:
                              return;
                              addr65:
                           }
                           continue loop1;
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr25);
                  }
               }
               §§goto(addr65);
            }
         }
      }
      
      public function get viewWidth() : Number
      {
         return this.§3i§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§&!=§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3i§ = param1;
            do
            {
               this.§ E§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!=§ = param1;
         }
         do
         {
            this.§ E§();
         }
         while(!_loc2_);
         
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
   }
}
