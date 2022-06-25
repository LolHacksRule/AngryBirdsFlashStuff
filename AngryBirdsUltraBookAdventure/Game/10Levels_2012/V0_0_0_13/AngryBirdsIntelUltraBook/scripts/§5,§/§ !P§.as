package §5,§
{
   import §+p§.§&!>§;
   import §@!`§.UserLevelScoreVO;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class § !P§ extends BasePlate
   {
       
      
      private var §^!J§:LevelScorePlateAsset;
      
      public function § !P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  while(_loc2_)
                  {
                     this.init();
                     loop3:
                     while(_loc2_ || this)
                     {
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr76);
      }
      
      private static function §=3§(number:*, maxDecimals:int = 2, forceDecimals:Boolean = false, siStyle:Boolean = false) : String
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || forceDecimals)
         {
         }
         var j:* = 0;
         if(_loc13_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        addr106:
                        while(true)
                        {
                           continue loop2;
                        }
                        loop11:
                        while(_loc13_ || § !P§)
                        {
                           if(_loc13_ || forceDecimals)
                           {
                              addr39:
                              if(_loc13_ || forceDecimals)
                              {
                                 if(_loc14_)
                                 {
                                    continue loop0;
                                 }
                                 addr48:
                                 if(_loc14_ && forceDecimals)
                                 {
                                    while(!(_loc14_ && § !P§))
                                    {
                                       if(!_loc13_)
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr48);
                                    }
                                    continue loop2;
                                    addr84:
                                 }
                                 if(!_loc14_)
                                 {
                                    if(true)
                                    {
                                       §§push(0);
                                       if(!(_loc14_ && maxDecimals))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       var i:* = §§pop();
                                       var inc:Number = Math.pow(10,maxDecimals);
                                       var str:String = String(Math.round(inc * Number(number)) / inc);
                                       if(_loc14_ && forceDecimals)
                                       {
                                       }
                                       §§push(str.indexOf(".") == -1);
                                       if(_loc13_ || maxDecimals)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       var hasSep:* = §§pop();
                                       if(_loc13_)
                                       {
                                          if(hasSep)
                                          {
                                             addr175:
                                             §§push(str);
                                             if(_loc13_ || § !P§)
                                             {
                                                §§push(int(§§pop().length));
                                                if(_loc13_)
                                                {
                                                   addr199:
                                                   §§push(int(§§pop()));
                                                }
                                             }
                                             else
                                             {
                                                addr189:
                                                §§push(int(§§pop().indexOf(".")));
                                                if(!(_loc14_ && forceDecimals))
                                                {
                                                   §§goto(addr199);
                                                }
                                             }
                                             var sep:* = §§pop();
                                             if(!_loc14_)
                                             {
                                                if(_loc13_ || forceDecimals)
                                                {
                                                   §§push(hasSep);
                                                   if(_loc13_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc14_ && number))
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc14_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc14_ && forceDecimals))
                                                            {
                                                               §§pop();
                                                               if(_loc13_ || number)
                                                               {
                                                                  addr242:
                                                                  §§push(forceDecimals);
                                                                  if(!(_loc14_ && number))
                                                                  {
                                                                     addr250:
                                                                     §§push(!§§pop());
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!(_loc14_ && number))
                                                                        {
                                                                           addr261:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr293:
                                                                                 var ret:* = (!(_loc14_ && number) ? §§pop() : §§pop()) + str.substr(sep + 1);
                                                                                 §§push("");
                                                                                 if(_loc13_ || § !P§)
                                                                                 {
                                                                                    addr450:
                                                                                    if(forceDecimals)
                                                                                    {
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                       }
                                                                                       addr441:
                                                                                       if(_loc13_ || number)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc13_ || § !P§)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                          }
                                                                                          j = §§pop();
                                                                                          if(!(_loc14_ && § !P§))
                                                                                          {
                                                                                             if(!(_loc13_ || forceDecimals))
                                                                                             {
                                                                                                §§goto(addr441);
                                                                                             }
                                                                                             addr309:
                                                                                             §§push(j);
                                                                                             if(_loc13_ || number)
                                                                                             {
                                                                                                §§push(maxDecimals);
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   §§push(str.length);
                                                                                                   if(hasSep)
                                                                                                   {
                                                                                                      addr332:
                                                                                                      if(§§pop() > §§pop() - (§§pop() - (sep - 1)))
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               addr509:
                                                                                                               §§push(i + 3);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  if(str.substr(0,1) == "-")
                                                                                                                  {
                                                                                                                     addr531:
                                                                                                                     §§push(sep);
                                                                                                                     if(_loc13_ || forceDecimals)
                                                                                                                     {
                                                                                                                        addr545:
                                                                                                                        if(§§pop() >= §§pop() - 1)
                                                                                                                        {
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              if(_loc14_)
                                                                                                                              {
                                                                                                                                 §§goto(addr509);
                                                                                                                                 addr553:
                                                                                                                              }
                                                                                                                              addr550:
                                                                                                                           }
                                                                                                                           §§goto(addr498);
                                                                                                                        }
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              addr405:
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    addr351:
                                                                                                                                    §§push(j);
                                                                                                                                    if(_loc13_ || § !P§)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                       if(!(_loc14_ && maxDecimals))
                                                                                                                                       {
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr509);
                                                                                                                                    }
                                                                                                                                    j = §§pop();
                                                                                                                                    §§goto(addr309);
                                                                                                                                 }
                                                                                                                                 if(siStyle)
                                                                                                                                 {
                                                                                                                                    if(_loc13_ || § !P§)
                                                                                                                                    {
                                                                                                                                       §§push(".");
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr467);
                                                                                                                                       }
                                                                                                                                       addr466:
                                                                                                                                       addr467:
                                                                                                                                       §§push(§§pop() + str.substr(sep - (i = int(i + 3)),3) + ret);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          addr487:
                                                                                                                                          ret = §§pop();
                                                                                                                                          if(!(_loc14_ && maxDecimals))
                                                                                                                                          {
                                                                                                                                             addr495:
                                                                                                                                          }
                                                                                                                                          §§goto(addr553);
                                                                                                                                       }
                                                                                                                                       addr498:
                                                                                                                                       return str.substr(0,sep - i) + ret;
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr550);
                                                                                                                                 }
                                                                                                                                 §§goto(addr466);
                                                                                                                                 §§push(",");
                                                                                                                              }
                                                                                                                              §§push(ret);
                                                                                                                              if(!(_loc14_ && forceDecimals))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + "0");
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       ret = §§pop();
                                                                                                                                       if(_loc13_ || number)
                                                                                                                                       {
                                                                                                                                          addr375:
                                                                                                                                          §§goto(addr351);
                                                                                                                                       }
                                                                                                                                       §§goto(addr495);
                                                                                                                                    }
                                                                                                                                    §§goto(addr498);
                                                                                                                                 }
                                                                                                                                 §§goto(addr467);
                                                                                                                              }
                                                                                                                              §§goto(addr487);
                                                                                                                           }
                                                                                                                           §§goto(addr351);
                                                                                                                        }
                                                                                                                        §§goto(addr495);
                                                                                                                     }
                                                                                                                     addr544:
                                                                                                                     §§goto(addr545);
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr544);
                                                                                                                  §§push(sep);
                                                                                                               }
                                                                                                               §§goto(addr531);
                                                                                                               addr339:
                                                                                                            }
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         §§goto(addr550);
                                                                                                      }
                                                                                                      §§goto(addr405);
                                                                                                   }
                                                                                                   §§goto(addr332);
                                                                                                   §§push(sep);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr509);
                                                                                             addr431:
                                                                                          }
                                                                                          addr434:
                                                                                          §§goto(addr434);
                                                                                       }
                                                                                       §§goto(addr450);
                                                                                    }
                                                                                    §§goto(addr339);
                                                                                 }
                                                                                 §§goto(addr431);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr286:
                                                                                 §§push(",");
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§goto(addr293);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(siStyle);
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                     }
                                                                     §§goto(addr261);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr286);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(".");
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr286);
                                          }
                                          else
                                          {
                                             §§push(str);
                                          }
                                          §§goto(addr189);
                                       }
                                       §§goto(addr175);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr106);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§goto(addr39);
                                 }
                                 addr71:
                              }
                              while(true)
                              {
                                 continue loop11;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            if(_loc3_ || _loc1_)
            {
               addChild(this.§^!J§ = new LevelScorePlateAsset());
               if(!_loc3_)
               {
               }
               do
               {
                  this.§^!J§.§]!g§.stop();
                  while(_loc2_)
                  {
                  }
               }
               while(!_loc3_);
               
               return;
               addr89:
            }
         }
         §§goto(addr89);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(this.§`9§);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§^!J§);
                           loop4:
                           while(true)
                           {
                              if(§`!E§)
                              {
                                 loop51:
                                 while(true)
                                 {
                                    §§push(2);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§push(§§pop());
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          continue loop51;
                                       }
                                       addr537:
                                    }
                                    while(true)
                                    {
                                       §§pop().gotoAndStop(§§pop());
                                       loop7:
                                       while(true)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §3!P§();
                                             loop9:
                                             while(!(_loc1_ && _loc2_))
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§^!J§);
                                                      while(true)
                                                      {
                                                         §§pop().§9y§.text = this.§`9§.userName || "";
                                                         while(!_loc1_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§`9§);
                                                               continue loop1;
                                                            }
                                                            loop26:
                                                            while(true)
                                                            {
                                                               addr440:
                                                               if(_loc1_ && _loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               addr441:
                                                               §§push(this.§`9§);
                                                               if(!_loc2_)
                                                               {
                                                                  while(_loc2_)
                                                                  {
                                                                     §§goto(addr441);
                                                                  }
                                                                  continue loop1;
                                                                  addr392:
                                                               }
                                                               §§push(§§pop().mightyEagleScore);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     if(!(_loc1_ && this))
                                                                     {
                                                                        addr364:
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           addr372:
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr456:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr457:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          addr458:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                             }
                                                                                             addr459:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr456:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr385:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§^!J§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§]!g§.visible = false;
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§push(this.§^!J§);
                                                                                                      loop31:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§]!g§.gotoAndStop(this.§`9§.rank);
                                                                                                         loop32:
                                                                                                         while(_loc2_ || this)
                                                                                                         {
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§^!J§);
                                                                                                               loop34:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().§2G§.text = §=3§(this.§`9§.levelScore) || "0";
                                                                                                                  loop35:
                                                                                                                  while(_loc2_ || this)
                                                                                                                  {
                                                                                                                     if(!_loc1_)
                                                                                                                     {
                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                        {
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                     §§goto(addr277);
                                                                                                                     addr91:
                                                                                                                     if(_loc1_ && this)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!(_loc1_ && _loc1_))
                                                                                                                     {
                                                                                                                        addr105:
                                                                                                                        §§push(this.§^!J§);
                                                                                                                        if(!_loc1_)
                                                                                                                        {
                                                                                                                           if(!_loc1_)
                                                                                                                           {
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 if(!_loc1_)
                                                                                                                                 {
                                                                                                                                    §§pop().mcStar3.visible = this.§`9§.stars >= 3;
                                                                                                                                    while(!(_loc1_ && this))
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ || _loc1_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!(_loc1_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          continue loop29;
                                                                                                                                       }
                                                                                                                                       §§goto(addr251);
                                                                                                                                    }
                                                                                                                                    loop42:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          addr82:
                                                                                                                                          if(!(_loc1_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr91);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr171:
                                                                                                                                          }
                                                                                                                                          loop39:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   if(_loc1_ && _loc2_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                      addr109:
                                                                                                                                                   }
                                                                                                                                                   §§push(this.§^!J§);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc1_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§pop().mcStar2.visible = this.§`9§.stars >= 2;
                                                                                                                                                         loop41:
                                                                                                                                                         while(_loc2_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               continue loop42;
                                                                                                                                                            }
                                                                                                                                                            addr344:
                                                                                                                                                            addr344:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop41;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§^!J§);
                                                                                                                                                               continue loop4;
                                                                                                                                                            }
                                                                                                                                                            continue loop26;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr440);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(!(_loc1_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§pop().mcStar1.visible = this.§`9§.stars >= 1;
                                                                                                                                                            §§goto(addr171);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr272);
                                                                                                                                                         addr157:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr344);
                                                                                                                                                      §§goto(addr105);
                                                                                                                                                   }
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                                addr246:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      break loop35;
                                                                                                                                                   }
                                                                                                                                                   continue loop10;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop39;
                                                                                                                                                }
                                                                                                                                                addr174:
                                                                                                                                             }
                                                                                                                                             §§goto(addr157);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             continue loop30;
                                                                                                                                          }
                                                                                                                                          addr332:
                                                                                                                                       }
                                                                                                                                       §§goto(addr120);
                                                                                                                                    }
                                                                                                                                    addr70:
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              continue loop31;
                                                                                                                           }
                                                                                                                           §§goto(addr222);
                                                                                                                        }
                                                                                                                        §§goto(addr109);
                                                                                                                     }
                                                                                                                     §§goto(addr385);
                                                                                                                  }
                                                                                                                  continue loop33;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr550);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         §§push(this.§^!J§);
                                                                                                      }
                                                                                                      addr386:
                                                                                                   }
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop52:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§^!J§);
                                                                                                addr272:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop51;
                                                                                                   }
                                                                                                   §§pop().§5w§.visible = true;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop52;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().§]!g§.visible = true;
                                                                                                §§goto(addr344);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr386);
                                                                                 }
                                                                                 addr383:
                                                                              }
                                                                              §§goto(addr459);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(!_loc1_)
                                                                              {
                                                                                 §§goto(addr372);
                                                                              }
                                                                              continue loop2;
                                                                              addr407:
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              if(_loc2_ || this)
                                                                              {
                                                                                 addr425:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    addr433:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr383);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop26;
                                                                                       §§goto(addr364);
                                                                                    }
                                                                                    addr433:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr457);
                                                                                 }
                                                                              }
                                                                              §§goto(addr458);
                                                                           }
                                                                           §§goto(addr425);
                                                                        }
                                                                        §§goto(addr433);
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr455:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr456);
                                                                     }
                                                                     addr455:
                                                                     addr396:
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§goto(addr407);
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr455);
                                                                     }
                                                                     §§goto(addr456);
                                                                  }
                                                                  §§goto(addr433);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr395:
                                                               }
                                                               §§goto(addr396);
                                                               §§goto(addr395);
                                                               §§push(§§pop().levelScore);
                                                            }
                                                         }
                                                         continue loop3;
                                                         if(!(_loc2_ || this))
                                                         {
                                                            continue;
                                                         }
                                                         §§pop().§5w§.text = this.§`9§.rank.toString() || "";
                                                         §§goto(addr246);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr549);
                                                   }
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(1);
                              }
                              §§goto(addr537);
                           }
                        }
                     }
                     addr549:
                     addr550:
                     return;
                  }
               }
            }
         }
         §§goto(addr282);
      }
      
      private function §[!Z§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || _loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  dispatchEvent(new §&!>§(§&!>§.BRAG,this.§`9§,true));
                  loop2:
                  do
                  {
                     while(!_loc3_)
                     {
                        continue loop0;
                        while(_loc2_ || _loc2_)
                        {
                           if(!(_loc3_ && this))
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop1;
                  }
                  while(_loc3_);
                  
               }
            }
         }
      }
      
      public function get §`9§() : UserLevelScoreVO
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return data as UserLevelScoreVO;
      }
   }
}
