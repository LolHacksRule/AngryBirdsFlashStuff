package §>!-§
{
   import §4!9§.§6"§;
   import §6b§.Log;
   import §]!6§.UIContainerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §;!M§:Boolean = false;
      
      public var §@!#§:Boolean = true;
      
      public var §^!g§:Boolean = false;
      
      public var §%o§:Boolean = false;
      
      private var §<,§:§7,§;
      
      private var §9+§:Boolean = false;
      
      protected var §8j§:Boolean = false;
      
      private var §&D§:Number;
      
      private var §=!j§:Number;
      
      private var §6D§:Number;
      
      private var §8X§:Number;
      
      private var § !I§:String;
      
      private var §[g§:String;
      
      private var §-l§:String;
      
      private var §?f§:String;
      
      private var §;r§:String;
      
      private var §'!8§:String;
      
      public function UIComponentRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
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
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(!_loc6_)
                     {
                        §§push(§§pop());
                        loop5:
                        while(true)
                        {
                           §§pop().§§slot[5] = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(§§newactivation());
                              loop7:
                              while(true)
                              {
                                 §§push(NaN);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().§§slot[6] = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       loop10:
                                       while(true)
                                       {
                                          §§push(NaN);
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().§§slot[7] = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§newactivation());
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   §§pop().§§slot[8] = §§pop();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§newactivation());
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§pop().§§slot[1] = param1;
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§§newactivation());
                                                            while(true)
                                                            {
                                                               §§pop().§§slot[2] = param2;
                                                               loop18:
                                                               while(!_loc6_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§§slot[3] = param3;
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        this.mParentContainer = parentContainer;
                                                                        while(true)
                                                                        {
                                                                           this.mName = data.@name;
                                                                           while(true)
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              continue loop7;
                                                                              addr269:
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    loop73:
                                                                                    while(_loc5_)
                                                                                    {
                                                                                       §§push(§§pop().§§slot[2]);
                                                                                       loop74:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop().§^!g§)
                                                                                          {
                                                                                             loop79:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                loop80:
                                                                                                while(_loc5_ || param3)
                                                                                                {
                                                                                                   addr292:
                                                                                                   §§push(§§pop().§§slot[2]);
                                                                                                   loop77:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().mClip.setChildIndex(this.mClip,1);
                                                                                                      loop78:
                                                                                                      while(!_loc6_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            loop81:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr135:
                                                                                                                        if(_loc6_ && param3)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     continue loop73;
                                                                                                                  }
                                                                                                                  continue loop80;
                                                                                                               }
                                                                                                               addr172:
                                                                                                               loop75:
                                                                                                               while(_loc5_ || param3)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && param3))
                                                                                                                        {
                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop74;
                                                                                                                           }
                                                                                                                           continue loop77;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().§§slot[4] = AssetCache.§-9§(this.mName);
                                                                                                                           addr695:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.mClip = new cls();
                                                                                                                              addr676:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.mParentContainer);
                                                                                                                                 addr660:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    addr661:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.mParentContainer);
                                                                                                                                             addr664:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().mClip.addChild(this.mClip);
                                                                                                                                                addr669:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr662:
                                                                                                                                       }
                                                                                                                                       loop93:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr530:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             continue loop93;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr688:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop().§§slot[1].@isOverlay.toString().toUpperCase() == "TRUE")
                                                                                                                        {
                                                                                                                           loop44:
                                                                                                                           while(!(_loc6_ && param2))
                                                                                                                           {
                                                                                                                              this.§^!g§ = true;
                                                                                                                              loop45:
                                                                                                                              while(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(16777215));
                                                                                                                                    loop47:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§§slot[6] = §§pop();
                                                                                                                                       loop48:
                                                                                                                                       while(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§newactivation());
                                                                                                                                          while(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(0.5);
                                                                                                                                             if(!(_loc6_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().§§slot[7] = §§pop();
                                                                                                                                                addr519:
                                                                                                                                                while(_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   loop52:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop().§§slot[1].@overlayColor.toString() != "")
                                                                                                                                                      {
                                                                                                                                                         while(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(parseInt(data.@overlayColor)));
                                                                                                                                                               addr496:
                                                                                                                                                               while(_loc5_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§§slot[6] = §§pop();
                                                                                                                                                                  loop56:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr423:
                                                                                                                                                                     addr701:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop56;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                        addr638:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                                                                                                                           break loop45;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.mParentContainer);
                                                                                                                                                                        addr703:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().mClip.addChild(this.mClip);
                                                                                                                                                                           addr708:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr677:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr530);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr669);
                                                                                                                                                         addr487:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         addr418:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr423);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                  break loop75;
                                                                                                                                                               }
                                                                                                                                                               addr363:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                loop33:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || param1)
                                                                                                                                                   {
                                                                                                                                                      function():void
                                                                                                                                                      {
                                                                                                                                                         throw new Error(error);
                                                                                                                                                      }();
                                                                                                                                                      while(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      continue loop14;
                                                                                                                                                      addr556:
                                                                                                                                                   }
                                                                                                                                                   loop98:
                                                                                                                                                   while(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      this.mClip = clip;
                                                                                                                                                      loop35:
                                                                                                                                                      while(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.mParentContainer);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            addr700:
                                                                                                                                                            addr318:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr701);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr677);
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc5_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            loop67:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc5_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr337:
                                                                                                                                                                     while(!(_loc6_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop48;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc5_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           break loop81;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr676);
                                                                                                                                                                     }
                                                                                                                                                                     addr243:
                                                                                                                                                                     §§goto(addr423);
                                                                                                                                                                     if(_loc6_ && param3)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr269);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr519);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr708);
                                                                                                                                                                                       addr110:
                                                                                                                                                                                       if(!(_loc5_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                super(this.mClip);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.readInitialVisibility(data);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§9H§(data);
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop79;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr206:
                                                                                                                                                                                                      addr621:
                                                                                                                                                                                                      while(!(_loc6_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop81;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         Log.log(error);
                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                         §§goto(addr206);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr206:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                   if(_loc6_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc6_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         return;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr337);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.mClip.stop();
                                                                                                                                                                                                         §§goto(addr108);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr167:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr676);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr97:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr688);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr687:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§newactivation());
                                                                                                                                                                                          break loop80;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc6_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc6_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.mClip.addChildAt(tmp,0);
                                                                                                                                                                                                   break loop78;
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr662);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr487);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                    addr397:
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop81;
                                                                                                                                                                              }
                                                                                                                                                                              addr261:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr700);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr677);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr661);
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr638);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr530);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop98;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§newactivation());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop().§§slot[1].@fromLibrary.toString().toUpperCase() == "TRUE")
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr687);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.mParentContainer);
                                                                                                                                                                              loop26:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc6_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr635);
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr660);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr530);
                                                                                                                                                                                 addr304:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.mParentContainer);
                                                                                                                                                                                    if(!(_loc5_ || param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr318);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr664);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr703);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr660);
                                                                                                                                                                           addr218:
                                                                                                                                                                           if(_loc6_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop19;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop().§§slot[1].@isBehind.toString().toUpperCase() == "TRUE");
                                                                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop67;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr243);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr635:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr261);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop20;
                                                                                                                                                   }
                                                                                                                                                   continue loop6;
                                                                                                                                                   §§goto(addr530);
                                                                                                                                                }
                                                                                                                                                addr462:
                                                                                                                                                if(_loc6_ && this)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop47;
                                                                                                                                                }
                                                                                                                                                if(_loc6_ && param1)
                                                                                                                                                {
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                                §§pop().§§slot[7] = §§pop();
                                                                                                                                                §§goto(addr479);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       continue loop44;
                                                                                                                                    }
                                                                                                                                    addr369:
                                                                                                                                    if(!(_loc5_ || param2))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§pop().§§slot[8] = this.getParentView().§'T§(color,alpha);
                                                                                                                                    §§goto(addr397);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                 {
                                                                                                                                    if(this.mClip == null)
                                                                                                                                    {
                                                                                                                                       §§goto(addr579);
                                                                                                                                    }
                                                                                                                                    §§goto(addr530);
                                                                                                                                 }
                                                                                                                                 §§goto(addr701);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        §§goto(addr304);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr507);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr369);
                                                                                                                     }
                                                                                                                     §§goto(addr490);
                                                                                                                  }
                                                                                                                  §§goto(addr418);
                                                                                                                  §§goto(addr172);
                                                                                                               }
                                                                                                               addr172:
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr218);
                                                                                                               }
                                                                                                               break;
                                                                                                               §§goto(addr135);
                                                                                                            }
                                                                                                            §§goto(addr433);
                                                                                                         }
                                                                                                         §§goto(addr556);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr304);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push("Asset instance not found!! [");
                                                                                                   if(!(_loc6_ && param3))
                                                                                                   {
                                                                                                      §§push(§§pop() + this.mName);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push("] parent: [");
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc6_ && param3))
                                                                                                            {
                                                                                                               addr617:
                                                                                                               §§push(§§pop() + this.mParentContainer.mName);
                                                                                                               if(!(_loc6_ && param2))
                                                                                                               {
                                                                                                                  §§push("]");
                                                                                                               }
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§pop().§§slot[5] = §§pop();
                                                                                                               §§goto(addr621);
                                                                                                            }
                                                                                                            §§goto(addr617);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr617);
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                          }
                                                                                          §§goto(addr172);
                                                                                       }
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                           }
                                                                           if(!(_loc5_ || param2))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr81);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop16;
                                                               if(_loc5_ || param1)
                                                               {
                                                                  continue loop15;
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
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §4^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§<,§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr140:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§<,§ = new §7,§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§6D§,this.§8X§,this.§ !I§,this.§[g§,this.§-l§,this.§?f§,this.§'!8§,this.§;r§);
            §§goto(addr181);
         }
      }
      
      private function §9H§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(_loc5_ || _loc2_)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  loop1:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        this.§&D§ = _loc2_;
                        while(true)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(0);
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    this.§=!j§ = _loc3_;
                                    loop4:
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(_loc4_ && param1)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(_loc4_ && param1)
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         this.§&D§ = this.mParentContainer.viewWidth;
                                                         break loop4;
                                                      }
                                                      addr163:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.§&D§ = _loc2_;
                                                         addr181:
                                                         while(true)
                                                         {
                                                            this.§=!j§ = _loc3_;
                                                            addr173:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr178:
                                                   }
                                                }
                                                addr156:
                                             }
                                          }
                                          addr118:
                                       }
                                       while(true)
                                       {
                                          this.§6D§ = this.§&D§;
                                          continue loop4;
                                       }
                                       addr51:
                                       return;
                                    }
                                    continue;
                                 }
                                 §§goto(addr111);
                              }
                              continue loop0;
                           }
                           §§goto(addr181);
                        }
                     }
                     §§goto(addr156);
                  }
               }
            }
            §§goto(addr178);
         }
         §§goto(addr163);
      }
      
      private function §if §(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§ !I§ = param1.@alignH;
            loop0:
            while(true)
            {
               this.§[g§ = param1.@alignV;
               while(true)
               {
                  this.§-l§ = param1.@scaleH;
                  while(!_loc5_)
                  {
                     this.§?f§ = param1.@scaleV;
                     loop3:
                     while(true)
                     {
                        addr47:
                        while(true)
                        {
                           this.§;r§ = param1.@scaleFunction;
                           continue loop3;
                        }
                     }
                     if(!(_loc5_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§'!8§ = param1.@aspectRatioFixed;
            if(!_loc5_)
            {
               §§goto(addr31);
            }
            §§goto(addr52);
         }
         §§goto(addr95);
      }
      
      private function §'!"§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr81:
                     §§push(param1);
                     while(true)
                     {
                        §§push(§§pop().toUpperCase());
                        addr84:
                        while(true)
                        {
                           param1 = §§pop();
                        }
                     }
                     addr82:
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!(_loc3_ && param1))
                        {
                           if(§§pop() != "TRUE")
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              this.§8j§ = true;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr84);
                  }
               }
               return;
            }
            §§goto(addr84);
         }
         §§goto(addr81);
      }
      
      private function §8S§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     while(true)
                     {
                        addr62:
                        while(§§pop())
                        {
                           if(!_loc2_)
                           {
                              this.§9+§ = true;
                           }
                           if(!(_loc2_ && this))
                           {
                              addr85:
                              break;
                           }
                           continue loop0;
                        }
                        return;
                        addr60:
                     }
                  }
               }
               addr100:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr85);
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.@visible;
         if(!(_loc3_ && this))
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
                  if(!(_loc3_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr204:
                           while(true)
                           {
                              §§push(_loc2_);
                              continue loop0;
                           }
                        }
                        addr203:
                     }
                     else
                     {
                        loop7:
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.setVisibility(false);
                                    loop10:
                                    while(true)
                                    {
                                       addr140:
                                       loop11:
                                       while(true)
                                       {
                                          §§push(param1.@enabled);
                                          addr144:
                                          loop12:
                                          while(!(_loc3_ && _loc2_))
                                          {
                                             _loc2_ = §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop14:
                                                while(_loc4_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   continue loop2;
                                                   addr139:
                                                   §§push(_loc2_);
                                                   if(_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().toUpperCase() == "FALSE");
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         addr54:
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ || param1))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr139);
                                                                     }
                                                                     continue loop14;
                                                                     addr132:
                                                                  }
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.setEnabled(false);
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               addr29:
                                                               return;
                                                               addr63:
                                                            }
                                                            continue loop1;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop7;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§pop();
                                                            §§goto(addr132);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr203);
                                                         }
                                                      }
                                                      §§goto(addr204);
                                                      addr124:
                                                   }
                                                   §§goto(addr54);
                                                }
                                                continue loop12;
                                             }
                                             continue loop11;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 this.setVisibility(true);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr140);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.mParentContainer);
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr69);
                  }
                  if(!_loc1_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.mParentContainer);
                  }
               }
               while(true)
               {
                  §§pop().mClip.removeChild(this.mClip);
                  continue loop0;
               }
            }
            addr69:
            while(true)
            {
               if(this.mClip.numChildren <= 0)
               {
                  do
                  {
                     this.mClip = null;
                     do
                     {
                        this.§<,§ = null;
                     }
                     while(_loc2_ && _loc2_);
                     
                  }
                  while(_loc2_ && this);
                  
                  if(_loc1_ || this)
                  {
                     break;
                  }
               }
               else
               {
                  this.mClip.removeChildAt(0);
               }
            }
            return;
         }
         §§goto(addr102);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
         do
         {
            §§push(this.mParentContainer);
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
                  §§goto(addr35);
               }
               if(_loc3_)
               {
                  continue;
               }
               §§push(this.mParentContainer);
            }
            §§pop().containerEventOccured(param1,param2,this);
         }
         while(_loc3_);
         
         addr35:
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§@!#§ = param1;
         }
         do
         {
            this.mClip.visible = this.§@!#§ && this.§;!M§;
            do
            {
               if(!this.visible)
               {
                  removeEventListeners();
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  if(!(_loc2_ && param1))
                  {
                     §§goto(addr25);
                  }
               }
               addEventListeners();
            }
            while(_loc2_);
            
         }
         while(!_loc3_);
         
         addr25:
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!M§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§@!#§ && this.§;!M§;
               loop1:
               while(true)
               {
                  §§push(this.visible);
                  addr97:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        removeEventListeners();
                        continue loop0;
                     }
                     while(true)
                     {
                        addEventListeners();
                        continue loop1;
                        addr65:
                        if(_loc2_ || _loc3_)
                        {
                           this.mClip.gotoAndPlay(1);
                           addr77:
                           if(_loc2_)
                           {
                              addr19:
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(_loc2_ || param1)
               {
                  addr75:
                  this.mClip.mouseEnabled = param1;
               }
               while(true)
               {
                  addr41:
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  this.mClip.mouseChildren = param1;
                  addr19:
                  return;
                  addr62:
               }
               addr79:
            }
            while(true)
            {
               if(this.mClip.mouseChildren != param1)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr62);
               }
               break;
               §§goto(addr79);
            }
            §§goto(addr19);
         }
         §§goto(addr75);
      }
      
      public function getParentView() : §6"§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mClip.x = Math.round(param1);
            while(true)
            {
               §§push(this.§<,§);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        continue;
                     }
                     addr75:
                  }
                  return;
               }
               break;
            }
            addr71:
            §§pop().x = this.mClip.x;
            §§goto(addr75);
         }
         §§goto(addr71);
         §§push(this.§<,§);
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.mClip.y = Math.round(param1);
            while(true)
            {
               §§push(this.§<,§);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || param1)
                     {
                        continue;
                     }
                     addr80:
                  }
                  return;
               }
               break;
            }
            addr76:
            §§pop().y = this.mClip.y;
            §§goto(addr80);
         }
         §§goto(addr76);
         §§push(this.§<,§);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
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
         if(_loc4_ || this)
         {
            super.goToFrame(param1,param2);
            while(true)
            {
               §§push(Boolean(this.mClip));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr123:
                        do
                        {
                           §§push(this.mClip is MovieClip);
                           if(_loc4_ || param1)
                           {
                              continue loop2;
                           }
                           addr99:
                        }
                        while(_loc4_);
                        
                        continue loop1;
                     }
                     addr65:
                     §§goto(addr25);
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§goto(addr103);
                     }
                     §§goto(addr25);
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function get viewWidth() : Number
      {
         return this.§&D§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§=!j§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&D§ = param1;
            do
            {
               this.§4^§();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!j§ = param1;
         }
         do
         {
            this.§4^§();
         }
         while(_loc3_ && param1);
         
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§8j§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8j§ = param1;
         }
      }
   }
}
