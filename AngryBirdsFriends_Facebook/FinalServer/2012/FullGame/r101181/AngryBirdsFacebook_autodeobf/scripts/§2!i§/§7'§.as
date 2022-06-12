package §2!i§
{
   import §#^§.§7!A§;
   import §4!e§.§08§;
   import §6o§.§+!k§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §7'§ extends §'M§
   {
       
      
      public var mParentContainer:§08§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §+L§:Boolean = false;
      
      public var §5!d§:Boolean = true;
      
      public var §[>§:Boolean = false;
      
      public var §6"6§:Boolean = false;
      
      private var §6!J§:§&"+§;
      
      private var §8"%§:Boolean = false;
      
      protected var §,7§:Boolean = false;
      
      private var §+"D§:Number;
      
      private var §[8§:Number;
      
      private var §!!8§:Number;
      
      private var §"!S§:Number;
      
      private var §1!c§:String;
      
      private var § x§:String;
      
      private var §%!I§:String;
      
      private var §@`§:String;
      
      private var §8!D§:String;
      
      private var §-M§:String;
      
      public function §7'§(param1:XML, param2:§08§, param3:MovieClip = null)
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
               §§pop().§§slot[5] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     loop4:
                     while(!(_loc6_ && param3))
                     {
                        §§pop().§§slot[6] = §§pop();
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
                                 §§pop().§§slot[7] = §§pop();
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
                                          §§pop().§§slot[8] = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§newactivation());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(null);
                                                if(_loc6_ && param2)
                                                {
                                                   break;
                                                }
                                                §§pop().§§slot[9] = §§pop();
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
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§pop().§§slot[2] = param2;
                                                            while(true)
                                                            {
                                                               §§push(§§newactivation());
                                                               while(true)
                                                               {
                                                                  §§pop().§§slot[3] = param3;
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     this.mParentContainer = parentContainer;
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        this.mName = data.@name;
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!§§pop().§§slot[3])
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 loop23:
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    if(§§pop().§§slot[1].@fromLibrary.toString().toUpperCase() != "TRUE")
                                                                                    {
                                                                                       §§push(this.mParentContainer);
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc6_ && param2))
                                                                                                   {
                                                                                                      if(this.mClip == null)
                                                                                                      {
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push("Asset instance not found!! [");
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.mName);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push("] parent: [");
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr631:
                                                                                                                           §§push(§§pop() + this.mParentContainer.mName);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              addr638:
                                                                                                                              §§push(§§pop() + "]");
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§pop().§§slot[6] = §§pop();
                                                                                                                        loop29:
                                                                                                                        while(!(_loc6_ && param3))
                                                                                                                        {
                                                                                                                           §+!k§.log(error);
                                                                                                                           loop30:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              function():void
                                                                                                                              {
                                                                                                                                 throw new Error(error);
                                                                                                                              }();
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr576:
                                                                                                                                 loop39:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    loop40:
                                                                                                                                    while(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(§§pop().§§slot[1].@isOverlay.toString().toUpperCase() == "TRUE")
                                                                                                                                       {
                                                                                                                                          loop41:
                                                                                                                                          for(; _loc5_; while(_loc5_ || param2)
                                                                                                                                          {
                                                                                                                                             §§goto(addr514);
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                          })
                                                                                                                                          {
                                                                                                                                             this.§[>§ = true;
                                                                                                                                             loop42:
                                                                                                                                             while(_loc5_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(16777215));
                                                                                                                                                   addr574:
                                                                                                                                                   addr441:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§§slot[7] = §§pop();
                                                                                                                                                      addr575:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         addr559:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0.5);
                                                                                                                                                            addr560:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr561:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§§slot[8] = §§pop();
                                                                                                                                                                  continue loop41;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc5_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc6_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§pop().§§slot[9] = this.getParentView().§&""§(color,alpha);
                                                                                                                                                      loop62:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            this.mClip.addChildAt(tmp,0);
                                                                                                                                                            while(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                            continue loop29;
                                                                                                                                                            addr429:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr706:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                         }
                                                                                                                                                         addr192:
                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            loop88:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               addr295:
                                                                                                                                                               loop84:
                                                                                                                                                               for(; _loc5_; continue loop88)
                                                                                                                                                               {
                                                                                                                                                                  addr204:
                                                                                                                                                                  if(_loc5_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     addr211:
                                                                                                                                                                     if(_loc5_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop22;
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§§slot[4] = this.mClip;
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc6_ && param2)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop41;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop26;
                                                                                                                                                                              }
                                                                                                                                                                              if(!this.mClip.MouseHitArea)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    super(targetSprite);
                                                                                                                                                                                    loop92:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.readInitialVisibility(data);
                                                                                                                                                                                       loop93:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop92;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc6_ && param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§5!Y§(data);
                                                                                                                                                                                             while(!_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§9[§(data);
                                                                                                                                                                                                if(_loc5_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop93;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop31;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr373:
                                                                                                                                                                                          addr373:
                                                                                                                                                                                          addr373:
                                                                                                                                                                                          addr257:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc6_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§6"6§ = true;
                                                                                                                                                                                                loop81:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc6_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr274:
                                                                                                                                                                                                      if(_loc5_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop62;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop5;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr274);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                      addr684:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr357:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                                                                      break loop81;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr183:
                                                                                                                                                                                                   while(_loc5_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr192);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr429);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(!(_loc6_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_ && param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr373);
                                                                                                                                                                                                   §§push(§§pop().§§slot[2]);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop40;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr337:
                                                                                                                                                                                             while(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop8;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().mClip.setChildIndex(this.mClip,1);
                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr140:
                                                                                                                                                                                       while(_loc5_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc5_ || param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                         addr491:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                                                                      while(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(parseFloat(data.@overlayAlpha)));
                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc6_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop10;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§§slot[8] = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr432:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                                                                     addr434:
                                                                                                                                                                                                                     while(_loc5_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr441);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr707:
                                                                                                                                                                                                                     break loop84;
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().§§slot[5] = §8B§.§6"C§(this.mName);
                                                                                                                                                                                                                        break loop62;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr162:
                                                                                                                                                                                                                  while(_loc5_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop27;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr561);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr526);
                                                                                                                                                                                                         §§goto(addr204);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.mParentContainer);
                                                                                                                                                                                                      addr675:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.mParentContainer);
                                                                                                                                                                                                               addr678:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().mClip.addChild(this.mClip);
                                                                                                                                                                                                                     §§goto(addr684);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr736);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr676:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr648);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr693:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop11;
                                                                                                                                                                                             addr474:
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop88;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr519:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§newactivation());
                                                                                                                                                                                             addr520:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(parseInt(data.@overlayColor)));
                                                                                                                                                                                                addr526:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc6_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                            addr538:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().§§slot[7] = §§pop();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc5_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop13;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr734:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.mParentContainer);
                                                                                                                                                                                                                  addr736:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().mClip.addChild(this.mClip);
                                                                                                                                                                                                                     break loop41;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr574);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr560);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop7;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr575);
                                                                                                                                                                                          §§goto(addr73);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc6_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    return;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop19;
                                                                                                                                                                                 addr83:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr162);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr243:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                    addr245:
                                                                                                                                                                                    while(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop().§§slot[1].@animateOnActivation.toString().toUpperCase() == "TRUE")
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr257);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                loop83:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   continue loop84;
                                                                                                                                                                                                   addr242:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop83;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr559);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop().§§slot[1].@overlayColor.toString() != "")
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr519);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                                                                   addr469:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr474);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr432);
                                                                                                                                                                                                      §§goto(addr211);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr467:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr520);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr514:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr560);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop12;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr317:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr519);
                                                                                                                                                                           addr109:
                                                                                                                                                                           while(!(_loc6_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr83);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr242);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        loop67:
                                                                                                                                                                        while(!(_loc6_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().§§slot[1].@isBehind.toString().toUpperCase() == "TRUE");
                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr328:
                                                                                                                                                                                 if(_loc6_ && this)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr243);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr337);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr335:
                                                                                                                                                                              }
                                                                                                                                                                              addr413:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 continue loop67;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr413);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr335);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr538);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr469);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr491);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr434);
                                                                                                                                                               }
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc6_ && param2))
                                                                                                                                                            {
                                                                                                                                                               this.mClip = new cls();
                                                                                                                                                               §§goto(addr693);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.mClip = clip;
                                                                                                                                                                  addr755:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.mParentContainer);
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr734);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop39;
                                                                                                                                                                        }
                                                                                                                                                                        addr694:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr751:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr736);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr755);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr707);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          while(_loc5_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr694);
                                                                                                                                          }
                                                                                                                                          continue loop20;
                                                                                                                                       }
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     §§goto(addr638);
                                                                                                                  }
                                                                                                                  §§goto(addr631);
                                                                                                               }
                                                                                                               §§goto(addr638);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr576);
                                                                                                   }
                                                                                                   §§goto(addr676);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr576);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr706);
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              §§goto(addr751);
                                                                           }
                                                                           continue loop9;
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
      
      private function §6"%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§6!J§);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§6!J§ = new §&"+§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§!!8§,this.§"!S§,this.§1!c§,this.§ x§,this.§%!I§,this.§@`§,this.§-M§,this.§8!D§);
                     addr176:
                     while(true)
                     {
                     }
                  }
                  addr136:
               }
               while(true)
               {
                  §§push(this.§6!J§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().§8!A§(this.§+"D§,this.§[8§);
                  while(true)
                  {
                     this.mClip.x = this.§6!J§.x;
                     loop7:
                     while(!(_loc2_ && this))
                     {
                        this.mClip.scaleY = this.§6!J§.scaleY;
                        while(true)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc2_ && this)
                              {
                                 break;
                              }
                              if(this.§8"%§)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    addr36:
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       this.mClip.scrollRect = new Rectangle(0,0,this.§!!8§,this.§"!S§);
                                       addr54:
                                       if(_loc1_)
                                       {
                                          §§goto(addr19);
                                       }
                                    }
                                    else
                                    {
                                       while(!_loc2_)
                                       {
                                          this.mClip.scaleX = this.§6!J§.scaleX;
                                          continue loop7;
                                          §§goto(addr36);
                                       }
                                       §§goto(addr136);
                                       addr111:
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr54);
                              }
                              addr19:
                           }
                           continue loop7;
                           return;
                        }
                        while(true)
                        {
                           this.mClip.y = this.§6!J§.y;
                           §§goto(addr111);
                           §§goto(addr71);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      private function §5!Y§(param1:XML) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(_loc4_ || this)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr151:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        addr152:
                        while(true)
                        {
                           this.§+"D§ = this.mParentContainer.viewWidth;
                           addr157:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        addr152:
                     }
                     else
                     {
                        this.§+"D§ = _loc2_;
                        while(true)
                        {
                           continue loop0;
                           addr84:
                           if(!(_loc4_ || _loc2_))
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              this.§"!S§ = this.§[8§;
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                this.§[8§ = _loc3_;
                                                addr162:
                                                while(true)
                                                {
                                                   addr62:
                                                   loop5:
                                                   while(true)
                                                   {
                                                      this.§!!8§ = this.§+"D§;
                                                      addr67:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§goto(addr84);
                                                         }
                                                         addr138:
                                                         while(true)
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                      continue loop13;
                                                   }
                                                   §§goto(addr152);
                                                }
                                             }
                                             addr169:
                                          }
                                          return;
                                       }
                                       §§goto(addr152);
                                    }
                                    while(true)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          this.§[8§ = this.mParentContainer.viewHeight;
                                          §§goto(addr138);
                                       }
                                       §§goto(addr162);
                                    }
                                    addr116:
                                 }
                                 while(_loc4_)
                                 {
                                    §§goto(addr62);
                                 }
                                 §§goto(addr157);
                                 addr100:
                              }
                              §§goto(addr67);
                           }
                           while(true)
                           {
                              this.§+"D§ = _loc2_;
                              §§goto(addr169);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      private function §9[§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.§1!c§ = param1.@alignH;
            while(true)
            {
               this.§ x§ = param1.@alignV;
            }
            addr80:
         }
         while(true)
         {
            this.§%!I§ = param1.@scaleH;
            loop2:
            while(!_loc4_)
            {
               if(!_loc4_)
               {
                  this.§@`§ = param1.@scaleV;
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        this.§8!D§ = param1.@scaleFunction;
                        while(!_loc4_)
                        {
                           this.§-M§ = param1.@aspectRatioFixed;
                           if(_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 if(true)
                                 {
                                    var _loc2_:String = param1.@scrollRect;
                                    var _loc3_:String = param1.@scaleOnMouseOver;
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       this.§5"%§(_loc2_);
                                       this.§2!T§(_loc3_);
                                       addr126:
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          §§goto(addr126);
                                       }
                                    }
                                 }
                                 continue loop4;
                                 return;
                              }
                              break loop4;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               else
               {
                  §§goto(addr80);
               }
            }
         }
      }
      
      private function §2!T§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        addr77:
                        §§push(§§pop().toUpperCase());
                     }
                     while(true)
                     {
                        param1 = §§pop();
                        §§goto(addr80);
                     }
                  }
                  addr80:
                  §§goto(addr20);
               }
               addr20:
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() == "TRUE")
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           this.§,7§ = true;
                        }
                        break;
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr64);
      }
      
      private function §5"%§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_)
                           {
                              this.§8"%§ = true;
                              addr84:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr84);
                     }
                     return;
                     addr70:
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.@visible;
         if(!(_loc4_ && _loc3_))
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
                        while(true)
                        {
                           §§pop();
                           addr188:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr174:
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                              }
                           }
                        }
                        addr187:
                     }
                     while(true)
                     {
                        addr178:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              this.setVisibility(true);
                              loop8:
                              while(!_loc4_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(param1.@enabled);
                                    loop10:
                                    while(!_loc4_)
                                    {
                                       _loc2_ = §§pop();
                                       while(true)
                                       {
                                          if(_loc3_ || this)
                                          {
                                             §§push(_loc2_);
                                             continue loop0;
                                          }
                                          addr57:
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          this.setEnabled(false);
                                          addr67:
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop().toUpperCase() == "FALSE");
                                                      if(!_loc4_)
                                                      {
                                                         while(§§pop())
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr57);
                                                            }
                                                            §§goto(addr67);
                                                         }
                                                         addr28:
                                                         return;
                                                         addr53:
                                                      }
                                                      else
                                                      {
                                                         addr125:
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            continue loop14;
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop0;
                                                   addr137:
                                                }
                                                continue loop8;
                                             }
                                             continue loop10;
                                          }
                                          if(!(_loc3_ || param1))
                                          {
                                             break;
                                          }
                                          §§goto(addr28);
                                       }
                                       continue loop9;
                                    }
                                    §§goto(addr174);
                                 }
                              }
                              §§goto(addr188);
                           }
                           while(true)
                           {
                              this.setVisibility(false);
                           }
                           addr109:
                           if(!(_loc3_ || param1))
                           {
                              continue;
                           }
                           §§push(§§pop());
                           if(_loc4_ && param1)
                           {
                              continue loop2;
                           }
                           if(§§pop())
                           {
                              §§goto(addr125);
                           }
                           §§goto(addr53);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr182);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.mParentContainer);
               if(!(_loc1_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(this.mParentContainer);
                     }
                  }
                  else
                  {
                     addr65:
                     loop1:
                     while(true)
                     {
                        if(this.mClip.numChildren <= 0)
                        {
                           loop2:
                           while(true)
                           {
                              this.mClip = null;
                              while(!_loc1_)
                              {
                                 this.§6!J§ = null;
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc1_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                           return;
                        }
                        this.mClip.removeChildAt(0);
                     }
                  }
               }
               while(true)
               {
                  §§pop().mClip.removeChild(this.mClip);
                  continue loop0;
               }
            }
            §§goto(addr65);
         }
         §§goto(addr101);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
         while(true)
         {
            §§push(this.mParentContainer);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc4_)
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
         if(!(_loc2_ && param1))
         {
            this.§5!d§ = param1;
         }
         loop0:
         while(true)
         {
            this.mClip.visible = this.§5!d§ && this.§+L§;
            while(true)
            {
               if(_loc3_ || param1)
               {
                  if(this.visible)
                  {
                     addr25:
                     break;
                     addr77:
                  }
                  removeEventListeners();
                  if(_loc2_ && _loc2_)
                  {
                     return;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            addEventListeners();
            §§goto(addr77);
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+L§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§5!d§ && this.§+L§;
               loop1:
               while(true)
               {
                  §§push(this.visible);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           addEventListeners();
                        }
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§6"6§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    return;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 addr80:
                                 if(_loc3_ || param1)
                                 {
                                    this.mClip.gotoAndPlay(1);
                                    break;
                                 }
                                 addr99:
                                 while(_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop0;
                                 addr20:
                              }
                              continue loop2;
                           }
                           addr91:
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           §§goto(addr20);
                        }
                     }
                     else
                     {
                        removeEventListeners();
                     }
                     §§goto(addr99);
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.mClip.mouseEnabled != param1)
            {
               while(true)
               {
                  this.mClip.mouseEnabled = param1;
                  addr85:
                  while(true)
                  {
                  }
                  addr68:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  §§goto(addr25);
               }
            }
            while(this.mClip.mouseChildren != param1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  this.mClip.mouseChildren = param1;
               }
               §§goto(addr68);
            }
            addr25:
            return;
         }
         §§goto(addr85);
      }
      
      public function getParentView() : §7!A§
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.mClip.x = Math.round(param1);
            do
            {
               §§push(this.§6!J§);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr35);
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§push(this.§6!J§);
               }
               §§pop().x = this.mClip.x;
            }
            while(!(_loc3_ || this));
            
         }
         addr35:
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mClip.y = Math.round(param1);
            loop0:
            while(true)
            {
               §§push(this.§6!J§);
               if(_loc2_ || param1)
               {
                  if(!§§pop())
                  {
                     §§goto(addr19);
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§6!J§);
                  }
               }
               while(true)
               {
                  §§pop().y = this.mClip.y;
                  continue loop0;
               }
            }
            addr19:
            return;
         }
         §§goto(addr56);
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
         if(_loc3_)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.goToFrame(param1,param2);
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
                           if(!(_loc4_ && param1))
                           {
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(param2);
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr96:
                                                this.mClip.gotoAndPlay(param1);
                                                break loop3;
                                             }
                                             break loop3;
                                          }
                                          this.mClip.gotoAndStop(param1);
                                          if(_loc4_ && param1)
                                          {
                                             break loop3;
                                          }
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       addr93:
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr19);
                              }
                           }
                           §§goto(addr93);
                        }
                        addr19:
                        return;
                     }
                  }
                  §§goto(addr88);
               }
            }
         }
         §§goto(addr96);
      }
      
      public function get viewWidth() : Number
      {
         return this.§+"D§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§[8§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+"D§ = param1;
            do
            {
               this.§6"%§();
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[8§ = param1;
            do
            {
               this.§6"%§();
            }
            while(_loc3_);
            
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§,7§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§,7§ = param1;
         }
      }
   }
}
