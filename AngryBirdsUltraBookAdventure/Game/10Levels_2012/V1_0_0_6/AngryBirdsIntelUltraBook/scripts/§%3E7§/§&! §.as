package §>7§
{
   import §"x§.§-8§;
   import §1!E§.§#?§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §&! § extends §,!c§
   {
       
      
      public var mParentContainer:§#?§;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var §=F§:Boolean = false;
      
      public var §8!N§:Boolean = true;
      
      public var §>`§:Boolean = false;
      
      public var §4§:Boolean = false;
      
      private var §8!a§:§>p§;
      
      private var §,!_§:Boolean = false;
      
      protected var §3x§:Boolean = false;
      
      private var §"!V§:Number;
      
      private var §-!e§:Number;
      
      private var §>!1§:Number;
      
      private var §1!w§:Number;
      
      private var §7R§:String;
      
      private var §5!Q§:String;
      
      private var §`!u§:String;
      
      private var §#F§:String;
      
      private var §7`§:String;
      
      private var §@!M§:String;
      
      public function §&! §(param1:XML, param2:§#?§, param3:MovieClip = null)
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
                                                if(!(_loc5_ || param1))
                                                {
                                                   break;
                                                }
                                                §§pop().§§slot[8] = §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§newactivation());
                                                   while(!_loc6_)
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
                                                                     while(true)
                                                                     {
                                                                        this.mName = data.@name;
                                                                        loop21:
                                                                        while(_loc5_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop().§§slot[3])
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 continue loop6;
                                                                              }
                                                                              loop91:
                                                                              while(true)
                                                                              {
                                                                                 this.mClip = clip;
                                                                                 loop32:
                                                                                 for(; _loc5_ || param1; if(_loc6_ && param2)
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr511),§§push(§§newactivation()))
                                                                                 {
                                                                                    §§push(this.mParentContainer);
                                                                                    loop78:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.mParentContainer);
                                                                                             addr703:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().mClip.addChild(this.mClip);
                                                                                                addr707:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr701:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          loop33:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             loop34:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop().§§slot[1].@isOverlay.toString().toUpperCase() == "TRUE")
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§>`§ = true;
                                                                                                      addr533:
                                                                                                      while(_loc5_)
                                                                                                      {
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                   }
                                                                                                   addr530:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop57:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.mParentContainer);
                                                                                                      if(_loc6_ && this)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop58:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop59:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr295:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     addr223:
                                                                                                                     do
                                                                                                                     {
                                                                                                                        §§push(§§pop().§§slot[1].@isBehind.toString().toUpperCase() == "TRUE");
                                                                                                                        if(_loc6_ && param2)
                                                                                                                        {
                                                                                                                           continue loop59;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(_loc5_);
                                                                                                                     
                                                                                                                     continue loop58;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop63:
                                                                                                                  for(; _loc5_; while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ || param1))
                                                                                                                     {
                                                                                                                        continue loop63;
                                                                                                                     }
                                                                                                                     this.mClip.stop();
                                                                                                                     §§goto(addr113);
                                                                                                                  })
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§newactivation());
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           §§push(§§pop().§§slot[2]);
                                                                                                                           if(_loc5_ || param2)
                                                                                                                           {
                                                                                                                              if(§§pop().§>`§)
                                                                                                                              {
                                                                                                                                 loop66:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§newactivation());
                                                                                                                                    addr265:
                                                                                                                                    loop69:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§§slot[2]);
                                                                                                                                       addr266:
                                                                                                                                       loop67:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().mClip.setChildIndex(this.mClip,1);
                                                                                                                                          loop68:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                loop70:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§newactivation());
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ || param3))
                                                                                                                                                         {
                                                                                                                                                            continue loop69;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc5_ || this))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(_loc6_ && param3)
                                                                                                                                                         {
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop().§§slot[2]);
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            continue loop67;
                                                                                                                                                         }
                                                                                                                                                         §§pop().mClip.setChildIndex(this.mClip,0);
                                                                                                                                                         while(!(_loc6_ && param3))
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop70;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr701);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
                                                                                                                                                                  addr638:
                                                                                                                                                                  while(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(this.mClip != null)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop33;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop11;
                                                                                                                                                               }
                                                                                                                                                               addr628:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr533);
                                                                                                                                                      }
                                                                                                                                                      continue loop3;
                                                                                                                                                      addr180:
                                                                                                                                                   }
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      addr129:
                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                      addr496:
                                                                                                                                                      while(_loc5_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ && param2)
                                                                                                                                                         {
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                         if(§§pop().§§slot[1].@overlayAlpha.toString() != "")
                                                                                                                                                         {
                                                                                                                                                            addr365:
                                                                                                                                                            while(_loc5_ || param1)
                                                                                                                                                            {
                                                                                                                                                               continue loop13;
                                                                                                                                                            }
                                                                                                                                                            addr365:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            addr318:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr129);
                                                                                                                                                      }
                                                                                                                                                      loop45:
                                                                                                                                                      while(!(_loc6_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(parseInt(data.@overlayColor)));
                                                                                                                                                         while(_loc5_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§§slot[6] = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr344:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr346);
                                                                                                                                                                  continue loop45;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop10;
                                                                                                                                                      }
                                                                                                                                                      addr346:
                                                                                                                                                      loop40:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0.5);
                                                                                                                                                         if(_loc5_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§§slot[7] = §§pop();
                                                                                                                                                            break loop68;
                                                                                                                                                            addr409:
                                                                                                                                                            if(!(_loc5_ || param2))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            addr416:
                                                                                                                                                            if(_loc5_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§§slot[7] = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ || param2))
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(!(_loc6_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           continue loop40;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.mParentContainer);
                                                                                                                                                                           addr654:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().mClip.addChild(this.mClip);
                                                                                                                                                                              addr658:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr613:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr652:
                                                                                                                                                                        addr464:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr493);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr318);
                                                                                                                                                               }
                                                                                                                                                               continue loop19;
                                                                                                                                                               addr424:
                                                                                                                                                            }
                                                                                                                                                            addr520:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§§slot[6] = §§pop();
                                                                                                                                                               break loop63;
                                                                                                                                                               §§goto(addr416);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr472:
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr223);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                      continue loop12;
                                                                                                                                                      §§goto(addr365);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      while(_loc5_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(16777215));
                                                                                                                                                      }
                                                                                                                                                      continue loop12;
                                                                                                                                                      addr511:
                                                                                                                                                   }
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      continue loop34;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc6_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(parseFloat(data.@overlayAlpha)));
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr409);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   addr688:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§§slot[4] = §`!t§.§=J§(this.mName);
                                                                                                                                                      addr694:
                                                                                                                                                      while(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         this.mClip = new cls();
                                                                                                                                                         while(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.mParentContainer);
                                                                                                                                                            if(!(_loc6_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr652);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr613);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      continue loop17;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr654);
                                                                                                                                                   §§goto(addr520);
                                                                                                                                                }
                                                                                                                                                §§goto(addr485);
                                                                                                                                                addr121:
                                                                                                                                                addr380:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             addr149:
                                                                                                                                             while(!(_loc6_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   addr158:
                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                   {
                                                                                                                                                      this.§4§ = true;
                                                                                                                                                      continue loop63;
                                                                                                                                                   }
                                                                                                                                                   addr554:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         function():void
                                                                                                                                                         {
                                                                                                                                                            throw new Error(error);
                                                                                                                                                         }();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               continue loop91;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr688);
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                         }
                                                                                                                                                         addr685:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr158);
                                                                                                                                                   }
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                addr303:
                                                                                                                                                while(_loc5_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ && param3))
                                                                                                                                                   {
                                                                                                                                                      continue loop57;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr694);
                                                                                                                                                }
                                                                                                                                                §§goto(addr665);
                                                                                                                                                loop73:
                                                                                                                                                while(!(_loc6_ && param2))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      super(this.mClip);
                                                                                                                                                      while(!(_loc6_ && this))
                                                                                                                                                      {
                                                                                                                                                         continue loop66;
                                                                                                                                                         if(_loc6_ && param2)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            continue loop63;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc6_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               continue loop5;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr530);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr295);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop73;
                                                                                                                                                   }
                                                                                                                                                   continue loop66;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§newactivation());
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(§§newactivation());
                                                                                                                              }
                                                                                                                              §§goto(addr180);
                                                                                                                           }
                                                                                                                           §§goto(addr266);
                                                                                                                        }
                                                                                                                        §§goto(addr265);
                                                                                                                     }
                                                                                                                     §§goto(addr638);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr496);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr121);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr703);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc5_ || this))
                                                                                                         {
                                                                                                            continue loop78;
                                                                                                         }
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                         §§goto(addr628);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr654);
                                                                                                      }
                                                                                                   }
                                                                                                   addr274:
                                                                                                   addr618:
                                                                                                }
                                                                                                §§goto(addr707);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      if(_loc5_ || this)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   continue loop9;
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
      
      private function §`F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§8!a§);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§8!a§ = new §>p§(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.§>!1§,this.§1!w§,this.§7R§,this.§5!Q§,this.§`!u§,this.§#F§,this.§@!M§,this.§7`§);
                     addr177:
                     while(true)
                     {
                     }
                  }
                  addr137:
               }
               while(true)
               {
                  §§push(this.§8!a§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().§+_§(this.§"!V§,this.§-!e§);
                  while(true)
                  {
                     if(_loc2_)
                     {
                        this.mClip.x = this.§8!a§.x;
                        loop4:
                        for(; _loc2_; while(true)
                        {
                           if(_loc1_ && _loc2_)
                           {
                              continue loop4;
                           }
                           if(_loc1_)
                           {
                              break;
                           }
                           this.mClip.scaleY = this.§8!a§.scaleY;
                           §§goto(addr85);
                           §§goto(addr35);
                        })
                        {
                           this.mClip.y = this.§8!a§.y;
                           while(true)
                           {
                              this.mClip.scaleX = this.§8!a§.scaleX;
                              continue loop4;
                              addr42:
                              if(_loc1_ && _loc1_)
                              {
                                 continue;
                              }
                              this.mClip.scrollRect = new Rectangle(0,0,this.§>!1§,this.§1!w§);
                              addr60:
                              if(!(_loc2_ || this))
                              {
                                 for(; this.§,!_§; §§goto(addr60))
                                 {
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc1_ && this)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr42);
                                 }
                                 addr25:
                                 return;
                                 addr85:
                              }
                              §§goto(addr25);
                           }
                        }
                        continue;
                     }
                     §§goto(addr137);
                  }
               }
            }
         }
         §§goto(addr177);
      }
      
      private function §>!h§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(_loc5_)
         {
            if(this.mParentContainer)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(0);
                  addr147:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        this.§"!V§ = _loc2_;
                        loop2:
                        while(true)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 addr162:
                                 while(true)
                                 {
                                    this.§"!V§ = _loc2_;
                                    while(true)
                                    {
                                       this.§-!e§ = _loc3_;
                                       loop4:
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             this.§>!1§ = this.§"!V§;
                                             addr64:
                                             loop6:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                addr87:
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break loop6;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             addr108:
                                             while(true)
                                             {
                                                continue loop5;
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr148:
                                 while(true)
                                 {
                                    this.§"!V§ = this.mParentContainer.viewWidth;
                                 }
                                 addr148:
                              }
                           }
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr148);
                  }
               }
            }
            §§goto(addr162);
         }
         §§goto(addr103);
      }
      
      private function §"m§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§7R§ = param1.@alignH;
            while(true)
            {
               this.§5!Q§ = param1.@alignV;
               addr85:
               while(true)
               {
                  this.§`!u§ = param1.@scaleH;
                  addr79:
                  while(true)
                  {
                     this.§#F§ = param1.@scaleV;
                  }
               }
               addr50:
               if(!(_loc5_ || this))
               {
                  continue;
               }
               this.§@!M§ = param1.@aspectRatioFixed;
               if(!(_loc4_ && _loc3_))
               {
                  if(false)
                  {
                     loop4:
                     while(true)
                     {
                        this.§7`§ = param1.@scaleFunction;
                        addr39:
                        while(true)
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr50);
                                 }
                                 else
                                 {
                                    §§goto(addr85);
                                 }
                              }
                              break;
                           }
                           addr73:
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        §§goto(addr79);
                     }
                  }
                  var _loc2_:String = param1.@scrollRect;
                  var _loc3_:String = param1.@scaleOnMouseOver;
                  if(_loc5_)
                  {
                     this.§#!N§(_loc2_);
                  }
                  do
                  {
                     this.§=!i§(_loc3_);
                  }
                  while(_loc4_ && this);
                  
                  return;
               }
               §§goto(addr39);
            }
         }
         §§goto(addr73);
      }
      
      private function §=!i§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(§§pop().toUpperCase());
                        addr78:
                        while(true)
                        {
                           param1 = §§pop();
                        }
                     }
                     addr76:
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(_loc2_ || this)
                     {
                        if(_loc2_)
                        {
                           if(§§pop() == "TRUE")
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_ || this)
                                 {
                                    this.§3x§ = true;
                                    addr68:
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr68);
                           }
                           break;
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr78);
                  }
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr68);
      }
      
      private function §#!N§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue loop0;
                              }
                              this.§,!_§ = true;
                           }
                           break;
                        }
                        break;
                        addr38:
                        §§push(§§pop().toUpperCase() == "TRUE");
                        if(_loc3_)
                        {
                           continue;
                        }
                        addr79:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr38);
                        }
                        addr79:
                     }
                     return;
                     addr53:
                  }
               }
               §§goto(addr79);
            }
            addr69:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§goto(addr38);
            }
            else
            {
               §§goto(addr69);
            }
            §§goto(addr79);
         }
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = param1.@visible;
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        addr158:
                        while(true)
                        {
                           §§pop();
                           addr159:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr143:
                              while(true)
                              {
                                 §§push(§§pop().toUpperCase() == "FALSE");
                              }
                           }
                        }
                        addr158:
                     }
                     while(true)
                     {
                        addr147:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr148:
                              while(true)
                              {
                                 this.setVisibility(false);
                              }
                              addr148:
                           }
                           else
                           {
                              this.setVisibility(true);
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    addr151:
                                    while(true)
                                    {
                                    }
                                    addr151:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.@enabled);
                                    continue loop0;
                                    §§goto(addr151);
                                 }
                              }
                              addr138:
                           }
                           §§goto(addr151);
                        }
                     }
                  }
                  addr157:
               }
               §§goto(addr158);
            }
         }
         §§goto(addr108);
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            loop0:
            while(true)
            {
               §§push(this.mParentContainer);
               if(_loc2_ || this)
               {
                  if(!§§pop())
                  {
                     §§goto(addr55);
                  }
                  if(!_loc2_)
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
            addr55:
            while(true)
            {
               if(this.mClip.numChildren <= 0)
               {
                  if(_loc2_)
                  {
                     this.mClip = null;
                  }
                  do
                  {
                     this.§8!a§ = null;
                  }
                  while(!_loc2_);
                  
                  if(_loc2_)
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
         §§goto(addr86);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.listenerEventOccured(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.mParentContainer);
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr44);
                  }
                  if(_loc4_ && param2)
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
                  §§pop().containerEventOccured(param1,param2,this);
                  continue loop0;
               }
            }
            addr44:
            return;
         }
         §§goto(addr61);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8!N§ = param1;
            loop0:
            while(true)
            {
               this.mClip.visible = this.§8!N§ && this.§=F§;
               while(true)
               {
                  if(!this.visible)
                  {
                     removeEventListeners();
                     if(_loc3_ && this)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        §§goto(addr19);
                     }
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc3_)
                     {
                        addEventListeners();
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         addr19:
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§=F§ = param1;
            while(true)
            {
               this.mClip.visible = this.§8!N§ && this.§=F§;
               while(true)
               {
                  §§push(this.visible);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           addEventListeners();
                        }
                        addr123:
                     }
                     else
                     {
                        removeEventListeners();
                        while(true)
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              addr125:
                              while(true)
                              {
                              }
                              addr125:
                           }
                           while(true)
                           {
                              §§push(this.§4§);
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              if(!§§pop())
                              {
                                 break;
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 continue loop2;
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr25);
                        }
                        addr101:
                     }
                  }
                  if(_loc3_ || this)
                  {
                     addr25:
                     return;
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.mClip.mouseEnabled != param1)
            {
               if(!_loc3_)
               {
                  this.mClip.mouseEnabled = param1;
                  addr79:
                  while(true)
                  {
                  }
                  addr79:
               }
               §§goto(addr79);
            }
            while(this.mClip.mouseChildren != param1)
            {
               if(_loc2_ || param1)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  this.mClip.mouseChildren = param1;
               }
               break;
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function getParentView() : §4`§
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
         }
         while(true)
         {
            §§push(this.§8!a§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§8!a§);
                        break;
                     }
                     continue;
                  }
                  addr64:
               }
               return;
            }
            break;
         }
         §§pop().x = this.mClip.x;
         §§goto(addr64);
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mClip.y = Math.round(param1);
         }
         while(true)
         {
            §§push(this.§8!a§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc2_)
                     {
                        §§push(this.§8!a§);
                        break;
                     }
                     continue;
                  }
                  addr70:
               }
               return;
            }
            break;
         }
         §§pop().y = this.mClip.y;
         §§goto(addr70);
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
         if(_loc2_)
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
         if(!_loc4_)
         {
            super.goToFrame(param1,param2);
            loop0:
            while(true)
            {
               §§push(Boolean(this.mClip));
               if(_loc3_ || param2)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(this.mClip is MovieClip);
                           if(_loc3_)
                           {
                              loop1:
                              while(§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr60:
                                    addr88:
                                    while(true)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                this.mClip.gotoAndPlay(param1);
                                             }
                                          }
                                          else
                                          {
                                             this.mClip.gotoAndStop(param1);
                                             if(_loc3_ || param1)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break loop1;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                    }
                                    break loop1;
                                 }
                              }
                              return;
                              addr57:
                           }
                           §§goto(addr60);
                        }
                     }
                     addr102:
                  }
                  §§goto(addr57);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr88);
      }
      
      public function get viewWidth() : Number
      {
         return this.§"!V§;
      }
      
      public function get viewHeight() : Number
      {
         return this.§-!e§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!V§ = param1;
            do
            {
               this.§`F§();
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-!e§ = param1;
            do
            {
               this.§`F§();
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.§3x§;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§3x§ = param1;
         }
      }
   }
}
